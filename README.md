# sc_package 2.0.5

![](https://github.com/user-attachments/assets/1fa0d736-21c8-42a5-89e2-761f660e44ba)

# 📦 ESX Package Script
This script allows players to receive and open special “packages” as items in their inventory. Each package contains predefined rewards (e.g. food, drinks) that are placed directly in the inventory when opened. The animation and a progress bar provide an immersive experience.

# Features
- **Packages as items:** Players can collect and use different packages.
- **Rewards:** Each package contains individually configurable items and quantities.
- **Animated opening:** Progress bar and animation when opening a package.
- **Place & Pick Up:** Packages can be placed on the ground and picked up again.
- **Multilingual:** Support for German, English, Spanish and French.
- **ESX-compatible:** Uses the ESX framework and is easy to integrate.

# What's new?
- **Multilingual notifications:** All text and notifications are now available in multiple languages.
- **Place and pick up:** Packages can not only be opened, but also placed and picked up again later.
- **Improved configuration:** Package contents and names are now easily customizable in config.lua.
- **Progress indicator:** When opening a package, a progress indicator with animation is displayed.
- **Optimized server and client communication:** Stable events and better error handling.

# What else is needed?

To get the most out of the script you need:

> [ESX-Legacy](https://github.com/esx-framework/esx-legacy)

> [sc_progress](https://github.com/ScubeScripts/sc_progress)

### How to install?
Clone or download this repository

Add sc_package to your resources directory

Add this in your server.cfg :
```
ensure sc_package
```

Add the SQL file to your database


### You have problems with the script? Support is available here: [Discord](https://discord.gg/Mqgewse3Yc)
