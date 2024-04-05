# FiveM-AFKMode

This script introduces an advanced AFK (Away From Keyboard) system for GTA V servers utilizing FiveM. Designed to enhance player retention and server management, it allows players to toggle an AFK mode. This feature is particularly useful for servers looking to maintain high player counts and offers players a way to earn in-game money even while they are not actively playing.

## Features

- **AFK Mode Toggle**: Allows players to enter an AFK state with a simple in-game command.
- **Visual Indicators**: Reduces player opacity and applies screen effects to indicate AFK status visually.
- **Player Immobilization**: Prevents any in-game damage or interactions by freezing the player in place while AFK.
- **In-Game Earnings**: Players can accumulate in-game money while in AFK mode, contributing to their virtual economy without active participation.
- **Customizable UI**: Features a Native UI for interactions, allowing players to exit AFK mode or perform specific actions while AFK.
- **Server-side Integration**: Triggers server-side events for additional actions related to AFK status, offering extensive customization possibilities.

## Prerequisites

- FiveM server with the capability to register and execute custom scripts.
- Basic understanding of FiveM scripting for seamless installation and potential customization.

## Installation

1. Download the script and insert it into the `resources` directory of your FiveM server.
2. Incorporate `ensure script_name` into your `server.cfg` file.
3. Restart your FiveM server or employ the `refresh` command followed by `ensure script_name` in the server console to load the script immediately.

## Usage

Activate or deactivate AFK mode using the following command in-game:

/afk


Upon activation:
- The player's opacity is reduced, and screen effects are applied to signify AFK status.
- The player is immobilized to prevent any form of in-game interaction.
- An interface (NUI) becomes available for exiting AFK mode or executing predefined actions.
- Players start accumulating in-game currency as a passive income feature.

## Customization

This script comes prepared for further customization to meet specific server requirements, including server-side event triggers and UI interactions. Comments within the script files offer guidance for these customizations.

## Contribution

We welcome contributions from the community. Feel free to fork the project, make your enhancements, and submit a pull request. Your contributions could range from new features and bug fixes to documentation improvements.

## License

This script is made available under the public domain, offering unrestricted use, modification, and distribution. It aims to support the community by providing a useful tool for player engagement and retention.
