#!/bin/bash
# EVOLVE KY — double-click me at the venue.
# Starts the deck fully offline, opens it, and keeps the screen awake for 4 hours.
# (Everything is local: fonts, video, calculators. Wifi can die; the talk can't.)
cd "$(dirname "$0")"
lsof -ti:8899 | xargs kill 2>/dev/null
nohup python3 -m http.server 8899 >/dev/null 2>&1 &
nohup caffeinate -d -t 14400 >/dev/null 2>&1 &
sleep 1
open "http://localhost:8899"
echo ""
echo "  Deck is up at http://localhost:8899  (fully offline)"
echo "  Screen will not sleep for 4 hours."
echo ""
echo "  F fullscreen · space next beat · T timer · R run report · P pre-show"
echo ""
echo "  You can close this window."
