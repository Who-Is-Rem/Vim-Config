require("nvim-tree").setup {
    on_attach = "default",
    hijack_cursor = false,
    disable_netrw = true,
    hijack_netrw = true,
    root_dirs = {},
    sync_root_with_cwd = false,
    select_prompts = false,
    sort = {
        sorter = "name",
        folders_first = true,
        files_first = false,
    },
    view = {
        centralize_selection = false,
        cursorline = true,
        debounce_delay = 15,
        side = "left",
        number = false,
        relativenumber = false,
        signcolumn = "yes",
        width = 30,

        -- play with later
        float = {
            enable = false,
            quit_on_focus_loss = false,

            -- look into this one more
            open_win_config = {
                relative = "editor",
                border = "rounded",
                width = 30,
                height = 30,
                row = 1,
                col = 1,
            },
        },
    },
    renderer = {
        add_trailing = false,
        group_empty = true,
        full_name = false,
        root_folder_label = true,
        indent_width = 2,
        special_files = { "Cargo.toml", "Makefile", "README.md", "readme.md" },

        -- git stuff
        highlight_git = "none",
        highlight_diagnostics = "none",
        highlight_opened_files = "none",
        highlight_modified = "none",
        highlight_bookmarks = "none",
        highlight_clipboard = "name",

        -- change to nerd icons later if need be
        indent_markers = {
            enable = false,
            inline_arrows = true,
        },

        -- import in from git repo
        icons = {
            web_devicons = {
                file = {
                    enable = true,
                    color = true,
                },
                folder = {
                    enable = false,
                    color = true,
                },
            },
            git_placement = "before",
            modified_placement = "after",
            diagnostics_placement = "signcolumn",
            bookmarks_placement = "signcolumn",
            padding = " ",
            symlink_arrow = " ➛ ",
            glyphs = {
                default = "",
                symlink = "",
                git = {
                    unstaged = "",
                    staged = "S",
                    unmerged = "",
                    renamed = "➜",
                    deleted = "",
                    untracked = "U",
                    ignored = "◌",
                },
                folder = {
                    arrow_closed = "",
                    arrow_open = "",
                    default = "",
                    open = "",
                    empty = "",
                    empty_open = "",
                    symlink = "",
                },
            }
        },
    },
    git = {
        enable = true,
        show_on_dirs = true,
        show_on_open_dirs = true,
        disable_for_dirs = {},
        timeout = 500,
        cygwin_support = false,
    },
    diagnostics = {
        enable = true,
        show_on_dirs = true,
        show_on_open_dirs = true,
        debounce_delay = 50,
        severity = {
            min = vim.diagnostic.severity.HINT,
            max = vim.diagnostic.severity.ERROR,
        },
        icons = {
            hint = "",
            info = "",
            warning = "",
            error = "",
        },
    },
    modified = {
        enable = true,
        show_on_dirs = true,
        show_on_open_dirs = true,
    },
    filters = {
        git_ignored = true,
        dotfiles = true,

        -- Custom list of vim regex for file/directory names that will not be shown.
        custom = { 
            enable = true,
            "Applications", 
            "Desktop", 
            "go", 
            "Music", 
            "Movies", 
            "Pictures", 
            "Public",
        },
        -- List of directories or files to exclude from filtering: always show them.
        exclude = {".config", ".local"},
    },

    -- somehow improves efficiency, look into if bored
    filesystem_watchers = {
        enable = true,
        debounce_delay = 50,
        ignore_dirs = {},
    },

    actions = {
        use_system_clipboard = true,
        change_dir = {
            enable = true,
            global = false,
            restrict_above_cwd = false,
        },
        expand_all = {
            max_folder_discovery = 150,
            -- A list of directories that should not be expanded automatically.
            exclude = {},
        },
        open_file = {
            quit_on_open = true,
            eject = true,
            window_picker = {
                enable = true,
                exclude = {
                    filetype = { "notify", "packer", "qf", "diff", "fugitive", "fugitiveblame" },
                    buftype = { "nofile", "terminal", "help" },
                },
            },
        },
        remove_file = {
            close_window = true,
        },
    },

    -- look into more, wasn't all too clear on what this does
    trash = {
        cmd = "gio trash",
    },
    ui = {
        confirm = {
            remove = true,
            trash = true,
            default_yes = true,
        },
    },
}

