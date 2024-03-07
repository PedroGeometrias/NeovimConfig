# My Neovim Configuration

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
|   |   │   ├── /syntax
|   |   │   ├── assembly.lua
|   |   │   ├── clangd.lua
|   |   │   ├── html.lua
|   |   │   ├── lua_ls.lua
|   |   │   ├── markdown.lua
|   |   │   ├── servers.lua
|   |   │   ├── tsserver.lua
|   |   │   ├── vim.lua
|   |   │   └── ...
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
│   ├── cobolTemplate.cob
│   ├── plugins.lua
│   ├── pedroConfiguracoes.lua
│   ├── keymaps.lua
│   └── ...
├── README.md
└── ...
```
> **Note:** It's just an illustration, my configuration is always changing.

## Why <a name="why"></a>

This configuration is meticulously crafted to optimize my Neovim experience, prioritizing seamless navigation within and across files while enhancing cursor movement efficiency, without compromising its fundamental principles, this configuration aims to achieve the following key benefits:

1.   **Efficient Navigation:** Smooth movement within files and across your codebase with streamlined key mappings and intuitive shortcuts, with some plugins that help with that quest.

2.    **Enhanced Cursor Control:** Enjoy precise cursor manipulation and seamless code editing with fine-tuned settings and visual cues.

3.    **Customization Without Compromise:** My main focus was making the configuration process fun, messing with NeoVim's incredible cuztomization capabilities, without removing its essence.

In summary, this configuration prioritizes speed, efficiency, and customization, offering a tailored Neovim environment that empowers you to focus on writing code without being encumbered by unnecessary complexities.


## Main Points <a name="main-points"></a>

### Key Mappings

I have created a robust key mappings file, featuring shortcuts for:

- Copying and pasting.
- Navigation for quick movement within files.
- Search shortcuts for efficient navigation.
- Trimming trailing whitespace on file save.
- Faster scrolling commands.
- Visual mode adjustments.
- Quick access to splits, tabs, and the quickfix window.
- Find and replace functionality.
- Indentation and screen centering adjustments.
- File explorer and terminal management.
- COBOL custom mainframe template autocomplete.
---
### Custom Behavior and Appearance

I've implemented a configuration file inspired by [chris@machine](https://youtu.be/ctH-a-1eUME?si=K0w9GymVUW7bHsXj), with several adjustments:

- Indentation and Formatting: Auto-indentation, smart-indentation, tab width, indentation width, and the use of spaces instead of tabs.
- Display Settings: Showing matching brackets, line numbers, relative line numbers, width for line numbers, and cursor highlighting.
- Search and Navigation: Incremental search, search highlighting, case insensitivity, and smart case searching.
- Split Management: Opening new splits below or to the right of the current split.
- Terminal and GUI Settings: Enabling true colors in the terminal, always showing the sign column, disabling error bells, disabling line wrapping, and setting the file encoding to UTF-8.
- Backup and Undo Settings: Disabling backup files, disabling writing backup files before overwriting, disabling swap files, enabling persistent undo with a specified directory, and setting a column highlight at 120 characters.
- Performance and Behavior: Setting the time for updating text, setting a minimum number of lines to keep above/below the cursor when scrolling, enabling mouse support, and setting the GUI cursor shape.
- Window Title and Font: Showing the title bar with a customized format, and setting the GUI font.
---
### Different and Easy Way of Setting LSPs

In this Neovim configuration, I've adopted a unique and modular approach to setting up Language Server Protocols (LSPs). Instead of cluttering the main configuration file with individual LSP setups, I organize them neatly within a separate directory called `syntax`.

#### Modularity and Organization

Inside the `syntax` directory, you'll find individual Lua files for each language server, such as `lua_ls.lua`, `clangd.lua`, `tsserver.lua`, and so on. Each of these files contains the configuration specific to the corresponding language server.

#### Centralized Configuration

To streamline the setup process, I utilize a central file named `servers.lua`. This file serves as a hub for requiring all the individual language server configurations. By requiring this single file in my main lsp configuration file (`lsp-config.lua`), I keep the setup clean, modular, and easy to manage.

#### Benefits

- **Modularity:** Each language server configuration is isolated in its own file, making it easy to maintain and customize.
- **Simplicity:** The central `servers.lua` file abstracts away the complexity of individual LSP setups, providing a straightforward way to manage all language servers collectively.
- **Scalability:** Adding or removing language servers is as simple as creating or deleting a file in the `syntax` directory and requiring it in the `servers.lua` file.
---
### Plugins

I have added some plugins, but I just can't stop expanding and messing around with my config, so the plugins might change in the future.

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

- Add additional plugins to enhance functionality.
- Modify keybindings to align with your preferred workflow.
- Customize color schemes and themes to personalize your editing environment.
- You might need to adjust some parts of the config to your pc.
  
---

##### Credits <a name="credits"></a>
- [ThePrimeagen](https://www.youtube.com/@ThePrimeagen)
- [typecraft](https://www.youtube.com/@typecraft_dev)
- [chris@machine](https://youtu.be/ctH-a-1eUME?si=K0w9GymVUW7bHsXj)
- probably other's, but I forgot their names and if they exist (sorry...)

