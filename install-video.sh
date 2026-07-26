#!/usr/bin/env bash
# Install a NotebookLM clip into a deck video slot.
#
#   ./install-video.sh ~/Downloads/whatever.mp4 methods      -> slide 9  (video-methods.mp4)
#   ./install-video.sh ~/Downloads/whatever.mp4 howitworks   -> slide 12 (video-howitworks.mp4)
#
# Probes the source, transcodes to a web-safe H.264/AAC mp4 with faststart
# (so it begins playing before the whole file buffers — matters on venue wifi),
# and drops it where the deck expects it.

set -euo pipefail
cd "$(dirname "$0")"

SRC="${1:-}"; SLOT="${2:-methods}"

if [[ -z "$SRC" || ! -f "$SRC" ]]; then
  echo "usage: ./install-video.sh <downloaded-file> [methods|howitworks]" >&2
  echo "  (file not found: '${SRC}')" >&2
  exit 1
fi

case "$SLOT" in
  methods)    OUT="video-methods.mp4";    WHERE="slide 9 — after the panel-myth bars" ;;
  howitworks) OUT="video-howitworks.mp4"; WHERE="slide 12 — after the product slide" ;;
  *) echo "unknown slot '$SLOT' (use: methods | howitworks)" >&2; exit 1 ;;
esac

echo "── source ─────────────────────────────────"
ffprobe -v error -show_entries format=duration,size:stream=codec_name,codec_type,width,height \
        -of default=noprint_wrappers=1 "$SRC"

DUR=$(ffprobe -v error -show_entries format=duration -of csv=p=0 "$SRC" | cut -d. -f1)
echo "── transcoding → $OUT ─────────────────────"

# -movflags +faststart : metadata up front, starts playing immediately
# -pix_fmt yuv420p     : the only pixel format every browser reliably decodes
# scale to even dims   : H.264 requires them; -2 keeps aspect ratio
ffmpeg -hide_banner -loglevel error -y -i "$SRC" \
  -vf "scale='min(1280,iw)':-2" \
  -c:v libx264 -preset medium -crf 23 -pix_fmt yuv420p \
  -c:a aac -b:a 128k -movflags +faststart \
  "$OUT"

SIZE=$(du -h "$OUT" | cut -f1)
echo
echo "✅ installed $OUT  (${DUR}s, ${SIZE})  →  $WHERE"

if [[ "${DUR:-0}" -gt 150 ]]; then
  echo "⚠️  ${DUR}s is long for a mid-talk breather. Under ~90s is the target."
  echo "    Re-roll it in NotebookLM as format=Short, or trim:"
  echo "    ffmpeg -i $OUT -t 90 -c copy ${OUT%.mp4}-trimmed.mp4"
fi

echo
echo "Now:  git add -A && git commit -m 'Add $OUT' && git push"
echo "Then it's live at https://evolve-deck.vercel.app"
