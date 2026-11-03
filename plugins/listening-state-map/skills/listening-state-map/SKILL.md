---
name: listening-state-map
description: Opens the Listening State Map, an interactive page that predicts how a track at a given volume moves the listener's energy and tension from their current state toward a goal (deep focus, fast execution, creative, dreamy reset). Use when the user asks for the listening state map, a music mood or focus calibrator, which song or volume to play for their current state, or wants to log how music affected them.
---

# Listening State Map

Publish the bundled page as the user's own private Artifact, then explain it in a few lines. The page holds all the logic; this skill only installs it.

## 1. Check for an existing copy

Call the Artifact tool with `action: "list"` and look for an artifact titled "Listening State Map". If one exists, give the user that one (`action: "open"` with its url) instead of publishing a second copy, unless they ask for a fresh one. Their tracks, playlists, logs and tuned model live in that artifact's database, and a new copy starts empty.

## 2. Publish

1. Copy `assets/listening-state-map.html` from this skill's folder into the working directory (or the scratchpad directory if the system prompt lists one) as `listening-state-map.html`. Do not edit it.
2. Call the Artifact tool:
   - `action: "publish"`
   - `file_path`: the copied file
   - `icon: "music"`
   - `description: "Where you are now is a dot; a track at a volume is an arrow showing where it moves you."`
   - `capabilities`:
     ```json
     {
       "db": {
         "rules": [
           {"path": "tracks", "read": "admin", "write": "admin"},
           {"path": "playlists", "read": "admin", "write": "admin"},
           {"path": "logs", "read": "admin", "write": "admin"},
           {"path": "settings", "read": "admin", "write": "admin"}
         ]
       },
       "user": {},
       "mcp": {"servers": [{"server": "Spotify", "tools": ["search"]}]},
       "sample": {}
     }
     ```
   The `admin` rules keep the listening log private to the owner and Editors even if the link is shared.
3. If publishing is refused because a capability is unavailable for this account, publish again without that capability and tell the user which feature is off: no `mcp` means no Spotify sync or search; no `sample` means track profiles are set by hand; no `db` means nothing is saved between visits.

## 3. Tell the user

In three or four sentences, plain language:
- Rate energy and tension (or drag the dot), pick a goal, pick a track and a volume step. The arrow is the predicted end state; the side panel shows which forces moved it.
- Press **Sync from Spotify** to pull playlists and recent tracks. This needs the Spotify connector connected in claude.ai Settings → Connectors. Without it, nothing else in the page has tracks to work with.
- After 10–15 minutes of listening, log where they actually landed. The model's assumptions (under "Model assumptions") are hypotheses to tune until predicted arrows match logged ones.
- Loud listening has a hearing cost: around 85 dB is safe for about 8 hours, and the safe time halves for every 3 dB above that.

## Without the Artifact tool

When no Artifact tool is available (for example in a terminal session), write the page to the working directory as `listening-state-map.html`, send it to the user if a file-sending tool exists, and say plainly that the page renders but cannot sync Spotify, estimate tracks or save anything outside claude.ai. Suggest running the skill again from claude.ai or the Claude desktop app.

## Explaining the model

If the user asks why the page predicts what it does, read `references/model.md` and answer from it in terms of the variables and how each one changes the outcome.
