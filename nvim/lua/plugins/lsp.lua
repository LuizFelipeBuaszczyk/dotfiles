return {
    { 
        "neovim/nvim-lspconfig",
        dependencies = {
            "mason-org/mason.nvim",
            "mason-org/mason-lspconfig.nvim"
        },
        config = function () 
            -- Mason
            require("mason").setup({
                ui = {
                    icons = {
                        package_installed = "✓",
                        package_pending = "➜",
                        package_uninstalled = "✗"
                    }
                }
            })

            local lsp_servers = {
                    "lua_ls",
                    "clangd",
                    "dockerls",
                    "docker_compose_language_service",
                    "html",
                    "ruff",
                    "pyright",
                    "cssls",
                    "yamlls",
                    "jsonls",
                    "rust_analyzer"
                }
            local nvim_cmp = require("cmp_nvim_lsp") 

            for index, server in ipairs(lsp_servers) do
                vim.lsp.config(server, {capabilities=nvim_cmp.default_capabilities()})
            end

            -- mason-lspconfig
            require("mason-lspconfig").setup({
                ensure_installed = lsp_servers,
            })

       end,
   }
}
