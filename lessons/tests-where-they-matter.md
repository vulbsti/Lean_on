# Tests where they matter

## What happened

On a website's image-quality work, every small tweak came with its own unit test, and the test suite grew without protecting anything important. The owner asked for only the tests that matter, with everything else checked once by running it.

## What it changes

Add a test when logic could silently break later: timing, invariants, failure paths, a regression that already happened once. For visual, performance and config changes, verify once by actually running the thing and report what you saw or measured. A test that can't fail meaningfully just adds bloat that every later change has to carry.
