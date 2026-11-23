# Inspect visual work properly

## What happened

On 3D character work, results were posted as improved after checking only the front view or a downscaled contact sheet ("the face works now"). The defects were obvious to the owner at a glance. This happened twice.

## What it changes

A visual fix isn't done until you've looked the way the owner will look: full-resolution crops from every relevant angle. Before fixing, find the cause with diagnostic renders. Useful ones are bare geometry, a loud fallback colour where data is missing, a colour map per source, and outlines or shadows switched on and off. Drop a hypothesis when the evidence disagrees with it. After the fix, re-check the same crops and show before and after side by side. Keep a running list of defects so nothing is silently forgotten.

The agent that made a change is a poor judge of it. Where possible, have a separate check or reviewer look.
