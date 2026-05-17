return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "nvim-tree/nvim-web-devicons",
 },
    config = function ()
        require('neo-tree').setup({
            window = {
                mappings = { -- Default mappings
                    ["h"] = "close_node",
                    ["l"] = "open",
                    ["d"] = "delete",
                    ["r"] = "rename",
                    ["q"] = "close_window",
                    ["a"] = "add",
                }
            }
        })
    end,
 
    lazy = false, -- neo-tree will lazily load itself
  }
}
