# My Neovim Config

This repo contains my personal Neovim config.

## Directory Structure
```
.config/nvim
├── init.lua
├── lua
|   ├── /plugins   
|   |   │   └── /syntax
|   |   │       ├── assembly.lua
|   |   │       ├── clangd.lua
|   |   │       ├── html.lua
|   |   │       ├── lua_ls.lua
|   |   │       ├── markdown.lua
|   |   │       ├── servers.lua
|   |   │       ├── tsserver.lua
|   |   │       ├── vim.lua
|   |   │       └── ...
|   │   ├── auto-pairs.lua
|   │   ├── cmp.lua
|   │   ├── cobol.lua
|   │   ├── colorizer.lua
|   │   ├── colorScheme.lua
|   │   ├── comment.lua
|   │   ├── harpoon.lua
|   │   ├── lsp-config.lua
|   │   ├── null-ls.lua
|   │   ├── plenary.lua
|   │   ├── telescope.lua
|   │   ├── tressiter.lua
│   |   └── ...
│   ├── /mappings
│   │   ├── customCommands.lua
│   │   ├── navigation.lua
│   │   ├── splitAndTab.lua
│   │   ├── textManipulation.lua
│   │   └── ...
│   ├── cobolTemplate.cob
│   ├── plugins.lua
│   ├── pedroConfiguracoes.lua
│   ├── keymaps.lua
│   ├── requireMappings.lua
│   └── ...
├── README.md
└── ...
```
> **Note:** It's an illustration, my configuration is always changing.

## Why

This config is mainly focused on navigating between tabs and buffers in a fast way. I have made some modifications to make the UI more good looking, like adding numbers to tabs, showing lines and columns on the bottom.

#### Main Changes
Centralized Configuration

- To streamline the LSP setup process, I have a central file named servers.lua. This file serves as a hub for requiring all the individual language server configurations. To make it work, I require this single file in my main LSP configuration file (lsp-config.lua).

#### Key Mappings

I have created a directory to organize my key mappings in a semi-logical way, works well enough for me:

- **Custom Commands**: These mappings simplify actions like loading custom templates or quickly switching to Firefox.
- **Navigation**: Custom mappings for smooth buffer and file navigation, including quick buffer listing and selection.
- **Split and Tab Management**: Efficiently handle tabs and splits for multi-file workflows with single-key mappings.
- **Text Manipulation**: Mappings for quick text operations like moving lines or blocks, and find-and-replace.


## Installation                                                                                                   
Before proceeding with the installation, ensure you have Neovim installed on your system. Additionally, make sure you have Git installed, and please remember to make a backup
       
### Prerequisites:

- [Neovim installed](https://neovim.io/)
- [Git installed](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)

### Linux Installation (The right way):

1. Clone this repository to your Neovim configuration directory (Make a back up before doing this):

    ```bash
    git clone https://github.com/PedroGeometrias/NeovimConfig ~/.config/nvim
    ```

    > **Note:** Adjust the path according to your Neovim installation on Linux.

### Windows Installation:

1. Clone this repository to your Neovim configuration directory. Replace `YourUsername` with your actual Windows username (Make a back up before doing this):

    ```bash
    git clone https://github.com/PedroGeometrias/NeovimConfig C:\Users\YourUsername\AppData\Local\nvim
    ```

    > **Note:** If you're unsure about your username or the exact path, you can open File Explorer, navigate to  `C:\Users`, and find your username folder.

---

##### Credits <a name="credits"></a>
- [ThePrimeagen](https://www.youtube.com/@ThePrimeagen)
- [typecraft](https://www.youtube.com/@typecraft_dev)
- [chris@machine](https://youtu.be/ctH-a-1eUME?si=K0w9GymVUW7bHsXj)
- probably other's, but I forgot their names and if they exist (sorry...)

