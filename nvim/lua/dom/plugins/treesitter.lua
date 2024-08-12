return {
    "nvim-treesitter/nvim-treesitter",

    build = ":TSUpdate",
    config = function()
        local treesitter = require("nvim-treesitter.configs")

        --configure treesitter
        treesitter.setup({
            -- highlight = {
            --     enable = true,
            -- },
            --enable indentation
            indent = { enable = true },
            ensure_installed = {
                "go",
                "javascript",
                "typescript",
                "rust"
            },
            incremental_selection = {
                enable = true,
                keymaps = {
                    init_selection = "<Enter>",
                    node_incremental = "<Enter>",
                    node_decremental = "<BS>",
                },
            },
            -- Previously Used : 
            -- incremental_selection = {
            --     enable = true,
            --     incremental_selection = "Enter",
            --     node_incremental = "Enter",
            --     scope_incremental = false,
            --     node_decremental = "<bs>",
            -- },
        })
    end
}
