#!/usr/bin/env bash
# Mix Jason's recorded voiceover into the panel-check clip and re-install it on slide 12.
#
#   ./mix-vo.sh                          uses rehearsal/vo-panel-check.m4a
#   ./mix-vo.sh ~/Desktop/whatever.m4a   or point it at any audio file
#
# The video is unchanged — this only adds the audio track, so it stays frame-identical
# to the take. Safe to re-run as many times as you like; it keeps a backup of the
# silent version the first time.
set -euo pipefail
cd "$(dirname "$0")/.."          # -> ~/dev/evolve-ky

VO="${1:-rehearsal/vo-panel-check.m4a}"
VID="video-howitworks.mp4"
SILENT="rehearsal/video-howitworks-SILENT.mp4"

if [[ ! -f "$VO" ]]; then
  echo "No VO file at: $VO" >&2
  echo "Record to rehearsal/vo-panel-check.m4a (see VO-panel-check-90s.md), or pass a path." >&2
  exit 1
fi

# Keep the silent master once, so a bad take never costs us the video.
[[ -f "$SILENT" ]] || cp "$VID" "$SILENT"

VDUR=$(ffprobe -v error -show_entries format=duration -of csv=p=0 "$SILENT")
ADUR=$(ffprobe -v error -show_entries format=duration -of csv=p=0 "$VO")
echo "video ${VDUR}s · vo ${ADUR}s"

# loudnorm to broadcast-ish -16 LUFS so it plays at a sane level on venue speakers
# without anyone touching a mixer. -shortest guards against a long VO tail.
ffmpeg -hide_banner -loglevel error -y \
  -i "$SILENT" -i "$VO" \
  -filter_complex "[1:a]loudnorm=I=-16:TP=-1.5:LRA=11,aresample=48000[a]" \
  -map 0:v -map "[a]" \
  -c:v copy -c:a aac -b:a 160k -shortest -movflags +faststart \
  "$VID"

echo
echo "✅ mixed → $VID"
ffprobe -v error -show_entries format=duration:stream=codec_type,codec_name \
        -of default=noprint_wrappers=1 "$VID"
echo
echo "Silent master kept at $SILENT"
echo "Now:  git add -A && git commit -m 'Add VO to panel-check clip' && git push"
