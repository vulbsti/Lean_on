# Listening State Map

An interactive page that predicts how a track, played at a given volume, moves you from where you are now. Your current state is a dot on an energy × tension map; a track at a volume is an arrow showing where it is likely to land you, and a side panel shows which forces moved it (rhythmic pull, tension from harshness, loudness load, mismatch irritation, masking, absorption).

## What it does

- Rate your current energy and tension, pick a goal (deep focus, fast execution, loose and creative, dreamy reset), and see which tracks from your library get you there and at what volume.
- Suggests a two-step sequence (a bridge track first) when no single track reaches the goal from your current state.
- Syncs playlists and recent tracks from Spotify, and asks Claude to estimate each track's acoustic profile (tempo, sharp hits, density, harshness, unpredictability, bass, lyrics). You can override any value by ear.
- Logs what actually happened after 10–15 minutes, and lets you tune the model's assumptions until predictions match your logs.
- Warns about hearing exposure at high volumes.

## Install

In claude.ai, the desktop app or Cowork: Customize → Plugins → Add → Add marketplace, enter `vulbsti/Lean_on`, then install **listening-state-map**.

In Claude Code:

```
/plugin install listening-state-map --marketplace vulbsti/Lean_on
```

## How to use it

After installing, ask Claude: "open my listening state map" (or run `/listening-state-map:listening-state-map`). Claude publishes the page as a private artifact in your claude.ai account. Connect the Spotify connector in claude.ai to sync your library.

Works fully in claude.ai, the Claude desktop app and Cowork. In a terminal-only Claude Code session the page is written to a local HTML file without Spotify sync, Claude estimation or saving.

## Data and privacy

- Your tracks, playlists, logs and model settings are stored in the artifact's own database, readable only by you (and anyone you make an Editor).
- Spotify is called with your own connector credentials, using its search tool only.
- Track names, artists and albums are sent to Claude when you ask it to estimate a track's profile.
- Nothing is sent anywhere else.

## The model

The predictions come from a small hand-built model, not measurements. See `skills/listening-state-map/references/model.md` for every variable and how each one changes the outcome.

## License

MIT
