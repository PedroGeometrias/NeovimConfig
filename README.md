# Neovim Configuration

This repository contains my personal Neovim configuration.

## Sections

[Why](#why)

[Main Points](#main-points)

[Installation](#installation)

[Credits](#credits)

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

## Why <a name="why"></a>

Having a text editor made for you is almost impossible with the currenty available products on the market. 
You can only find a handful of applications with the customization properties that allow you to have that type
of experience. Neovim is of those applications. Thats why I wrote this Configuration, wanting to have all my programming
need's being fulfilled into the text editor.

## Main Points <a name="main-points"></a>

### Key Mappings
I have seperated my keymappings into four different types of files, I will give a breafy explanation about them

## Custom Commands

Here I have declared some functions that make my life easier. Like:

- A cobol template generator, that just puts a pre written a cobol template on the buffer
- A Markdown viwer, that opens a markdown file as a html on the web using a terminal program, this makes easier to write
  READMES
## Navigation

- it only has one command, that gives me faster acsses to the last buffer

## Split and Tab

this honestly is quite complex to explain here, it just makes managing tabs easier in my opnion, like:

- clearing especific tabs by their number
- getting out of tabs, splits, terminals and the undutree split
- getting around tabs, split, terminals and the undutree split
- resizing splits

## Text Manipulation

Mainly to move around a single buffer faster, and so manipulate the contents of the buffer too, like:

- COPY and PASTE mappings.
- quick fix
- find&replace
- Ident the file 

---
### Custom Behavior and Appearance

I've implemented a configuration file inspired by [chris@machine](https://youtu.be/ctH-a-1eUME?si=K0w9GymVUW7bHsXj), with several adjustments:

- I show the number if the tab, works well with my style of navigating through tabs
- Custom status line, people use plugins for that but I'm a simple man 
- Custom title String
- A hole lot of other changes too

#### Centralized Configuration

To streamline the lsp's setup process, I have a central file named `servers.lua`. This file serves as a hub for requiring all the individual language server configurations. By requiring this single file in my main lsp configuration file (`lsp-config.lua`), I keep the setup clean, modular, and easy to manage.

#### Benefits

- **Modularity:** Each language server configuration is isolated in its ownfile, making it easy to maintain and customize.
- **Simplicity:** The central `servers.lua` file abstracts away the complexity of individual LSP setups, providing a straightforward way to manage all language servers collectively.
- **Scalability:** Adding or removing language servers is as simple as creating or deleting a file in the `syntax` directory and requiring it in the `servers.lua` file.
---
### Plugins

I have added some plugins, but I can't stop expanding and messing around with my config, so the plugins might change in the future.

---
## Installation <a name="installation"></a>

Before proceeding with the installation, ensure you have Neovim installed on your system. Additionally, make sure you have Git installed to clone this repository.

### Prerequisites:

- [Neovim installed](https://neovim.io/)
- [Git installed](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)

### Linux Installation:

1. Clone this repository to your Neovim configuration directory using HTTPS:

    ```bash
    git clone https://github.com/PedroGeometrias/NeovimConfig ~/.config/nvim
    ```

    > **Note:** Adjust the path according to your Neovim installation on Linux.

### Windows Installation:

1. Clone this repository to your Neovim configuration directory using HTTPS. Replace `YourUsername` with your actual Windows username:

    ```bash
    git clone https://github.com/PedroGeometrias/NeovimConfig C:\Users\YourUsername\AppData\Local\nvim
    ```

    > **Note:** If you're unsure about your username or the exact path, you can open File Explorer, navigate to  `C:\Users`, you can open File Explorer, navigate to `C:\Users`, and find your username folder.

---

### Verification:

After the installation, verify that Neovim is working correctly. Open your command prompt or PowerShell and enter the following command:

```bash
nvim --version
```

### Troubleshooting:

If you encounter any issues during the installation process, consider the following troubleshooting tips:

- Ensure you have the necessary permissions to write to the Neovim configuration directory.
- Double-check that Neovim is correctly installed and accessible from your command line.
- **Make sure Git is added to the system's PATH environment variable:** Sometimes, users may encounter issues if Git is not recognized as a command in their command prompt or PowerShell. You can verify this by typing `git --version` in your command prompt or PowerShell. If Git is not recognized, you may need to add it to your PATH environment variable. Instructions for adding Git to the PATH can be found [here](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git).
- For more information, you can check [Neovim's website](https://neovim.io/).

### Usage:

Feel free to explore and customize the configuration to suit your preferences. Here are some examples of how you can extend it:

- Add more plugins to enhance functionality.
- Modify keybindings to align with your preferred workflow.
- Customize color schemes and themes to personalize your editing environment.
- You might need to adjust some parts of the config to your pc.
  
---

##### Credits <a name="credits"></a>
- [ThePrimeagen](https://www.youtube.com/@ThePrimeagen)
- [typecraft](https://www.youtube.com/@typecraft_dev)
- [chris@machine](https://youtu.be/ctH-a-1eUME?si=K0w9GymVUW7bHsXj)
- probably other's, but I forgot their names and if they exist (sorry...)


