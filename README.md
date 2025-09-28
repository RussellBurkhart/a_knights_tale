\# A Knight's Tale



A small “Vampire Survivors”-style action game built in Godot 4. The plan is to nail the core loop and physics first, then layer in art and animation. This repo is primarily a learning vehicle: Godot workflow, GDScript, pixel art, and animation—ending with a published, playable game.



---



\## Vision



\- \*\*Core loop\*\*: Survive waves of enemies while the player auto/semiauto-attacks or triggers abilities on cooldowns. Collect pickups to grow stronger.

\- \*\*Feel\*\*: Snappy movement, readable hits, crunchy SFX, and clear telegraphs for danger.

\- \*\*Art direction\*\*: Characters/NPCs in \*\*black \& white silhouettes\*\* (Hollow Knight–inspired), with \*\*dark, moody backgrounds\*\* and high-contrast VFX.

\- \*\*Attacks \& abilities\*\*: Melee swings (sword) and spells (projectiles/aoe) with hand-made, frame-based animations.



---



\## Learning Goals → Sub-Goals



\### 1) Godot \& GDScript

\- \[X] Install Godot 4.x and pin a project version in this README

\- \[ ] Understand scenes, nodes, and instancing (Player, Enemy, Projectile)

\- \[ ] Input mapping and state handling (idle/run/attack/dodge)

\- \[ ] 2D physics bodies \& collision layers/masks

\- \[ ] Timers, signals, and groups for waves/spawners

\- \[ ] Resource management (PackedScene, .tres, autoload singletons)

\- \[ ] Export templates \& build pipeline



\### 2) Game \& Combat Design

\- \[ ] Define the \*\*core loop\*\* (survive, collect, power up)

\- \[ ] Movement feel (acceleration, friction, dash distance, i-frames)

\- \[ ] Enemy archetypes (chaser, shooter, tank; simple AI)

\- \[ ] Difficulty ramp (wave cadence, spawn curves, boss gates)

\- \[ ] Pickups (xp, health, currency) \& progression (stat ups, cooldowns)

\- \[ ] HUD readability (health, cooldowns, xp bar)



\### 3) Pixel Art (Hollow Knight–inspired look)

\- \[ ] Palette study: dark backgrounds, high-contrast highlight tones

\- \[ ] Character silhouette sheets (idle, run, attack poses)

\- \[ ] Tileable backgrounds and simple parallax layers

\- \[ ] VFX sprites: hitsparks, slash trails, spell glows



\### 4) Animation

\- \[ ] Key attack sequences (anticipation → action → recovery)

\- \[ ] Sword swing arcs (2–4 frames + afterimage)

\- \[ ] Spell cast (charge, release, cooldown tell)

\- \[ ] AnimationTree/AnimationPlayer basics

\- \[ ] Hitstop (brief freeze), screenshake \& flash for impact



\### 5) Production \& Publishing

\- \[ ] In-game options (sound/music sliders, window/fullscreen)

\- \[ ] Save data (basic settings, high score, unlocks)

\- \[ ] Platform export (Windows to start; web if feasible)

\- \[ ] Page assets (itch.io/Steam capsule, screenshots, trailer clip)



---



\## Roadmap (Milestones)



\*\*M0 — Repo \& Boilerplate\*\*

\- \[X] Initialize repo and .gitignore

\- \[X] Add `project.godot` and a minimal main scene

\- \[X] Document Godot version (4.5)



\*\*M1 — Core Movement \& Camera\*\*

\- \[X] Player movement + dash

\- \[X] Basic camera (limits, smoothing)

\- \[X] Collisions with world



\*\*M2 — Combat MVP\*\*

\- \[ ] Melee swing with basic hitbox

\- \[ ] Simple projectile spell

\- \[ ] Enemy spawner + basic AI (chaser)



\*\*M3 — Game Loop\*\*

\- \[ ] Waves/timers and spawn curves

\- \[ ] Pickups (xp/health)

\- \[ ] HUD (hp, xp, cooldown hints)



\*\*M4 — Feel \& Polish\*\*

\- \[ ] Hitstop, screenshake, impact VFX

\- \[ ] Audio stubs (footsteps, swing, hit)

\- \[ ] Basic pause/options menu



\*\*M5 — Art \& Animation Pass\*\*

\- \[ ] Silhouette player \& enemy sheets

\- \[ ] Background tiles/parallax

\- \[ ] Sword/spell animation sets



\*\*M6 — Export \& Page\*\*

\- \[ ] Windows export profile

\- \[ ] Build and upload to itch.io

\- \[ ] Screenshots + short clip



---



\## Planned Features



\- Player: run, dash, melee, spell (cooldowns)

\- Enemies: chaser + shooter + tank variants

\- Progression: xp pickups → stat steps or cooldown reductions

\- Arena waves with ramping difficulty

\- Minimal meta-loop (score/time survived, unlocks TBD)



---



\## Tech



\- \*\*Engine\*\*: Godot 4.5 (GDScript)

\- \*\*Art\*\*: Pixel art (Aseprite or Blender)

\- \*\*Audio\*\*: Free SFX packs or self-made; OGG preferred

\- \*\*Target\*\*: Windows (initial), possibly Web export, eventually get it to work on Linux too



---



\## Project Structure (suggested)



a\_knights\_tale/

├─ project.godot

├─ scenes/

│ ├─ main.tscn

│ ├─ player.tscn

│ ├─ enemy\_chaser.tscn

│ └─ projectile.tscn

├─ scripts/

│ ├─ player.gd

│ ├─ enemy\_chaser.gd

│ └─ spawner.gd

├─ assets/

│ ├─ art/

│ ├─ audio/

│ └─ vfx/

├─ ui/

│ └─ hud.tscn

├─ .gitignore

└─ README.md





---



\## Getting Started



1\. Open with \*\*Godot 4.x\*\* (pin exact version once chosen).

2\. Run the `main.tscn` scene (F6) or set it as the main scene and run (F5).

3\. Use the HUD to verify inputs and cooldowns while building.



---



\## Git \& Workflow (short)



\- Commit small, focused changes with clear messages.

\- Branch per feature: `feature/movement`, `feature/melee-swing`.

\- Use issues for tasks; link commits/PRs to issues.



---



\## License



TBD (e.g., MIT for code; list art/audio licenses separately if needed).





