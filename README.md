# Alien Attack

This is a 2D spaceship shooter game developed with Godot 4 and GDScript. In the game, the player controls a spaceship and must destroy waves of enemies coming toward them. The project is built as part of my learning journey through the [Complete Godot 4 Game Developer 2D Online Course](https://www.udemy.com/course/complete-godot-4-game-developer-2d/), where I practice GDScript and game development principles.

## Table of Contents
- [Game Overview](#game-overview)
- [Features](#features)
- [Installation](#installation)
- [How to Play](#how-to-play)
- [Project Structure](#project-structure)
- [License](#license)

## Game Overview

The game is a 2D arcade-style shooter where the player controls a spaceship that can move in four directions (up, down, left, right) and shoot rockets at incoming enemies. The goal is to destroy as many enemies as possible while avoiding their attacks.

As you progress, enemies come faster and more frequently. The game continues until the player is hit by an enemy or their projectiles.

## Features
- Player spaceship with movement in all four directions (up, down, left, and right).
- Player shoots rockets with the spacebar.
- Enemies that spawn at the top of the screen and move toward the player.
- Health system for the player.
- Score system to track progress.
- Multiple enemy types with varying speeds and behaviors.
- Sound effects for shooting and enemy destruction.

## Installation

1. Download and install [Godot Engine 4](https://godotengine.org/download).
2. Clone or download the project to your local machine.
3. Open the project folder in Godot by selecting the project file `project.godot`.

## How to Play

1. Launch the game from the Godot editor or the exported executable.
2. Use the **W** key to move up, **A** key to move left, **S** key to move down, and **D** key to move right.
3. Press the **spacebar** to shoot rockets at the enemies.
4. Destroy enemies to score points. Avoid getting hit by enemies or their projectiles.
5. The game will end when your spaceship's health reaches zero.

## Project Structure

- **/Assets**: Contains images, sounds, and other assets used in the game.
  - `spaceship.png`: Image of the player's spaceship.
  - `enemy.png`: Image of the enemy ship.
  - `rocket.png`: Image of the rocket projectile.
  - `explosion.wav`: Sound effect for enemy destruction.
  - `shoot.wav`: Sound effect for player shooting.
- **/Scenes**: Contains the main game scene and other sub-scenes (e.g., player spaceship, enemies).
  - `Main.tscn`: The main scene of the game that holds the logic for the player, enemies, and the UI.
- **/Scripts**: Contains GDScript files for game logic.
  - `Player.gd`: Handles the player's movement and rocket shooting mechanics.
  - `Enemy.gd`: Controls the behavior of enemy ships.
  - `GameController.gd`: Manages the game state, score, and health system.

## License

This project is open-source and available for personal use and modification. Feel free to use, modify, and distribute it as you see fit. See the [LICENSE](LICENSE) file for more information.
