return {
  {
     "hrsh7th/nvim-cmp",
     dependencies = {
       "hrsh7th/cmp-nvim-lsp",
       "hrsh7th/cmp-buffer",
       "hrsh7th/cmp-path",
       "L3MON4D3/LuaSnip",
       "saadparwaiz1/cmp_luasnip",
     },
     config = function()
       local cmp = require("cmp")

        cmp.setup {
            snippet = {
                expand = function(args)
                    require('luasnip').lsp_expand(args.body)
                end,
            },
	        sources = {
  	            { name = "nvim_lsp" },
	            { name = "buffer" },
	            { name = "path" },
	            { name = "luasnip" },
	        },
         mapping = {
	   ["<Tab>"] = cmp.mapping.select_next_item { behavior = cmp.SelectBehavior.Insert },
	   ["<S-Tab>"] = cmp.mapping.select_prev_item { behavior = cmp.SelectBehavior.Insert },
	   ["<CR>"] = cmp.mapping.confirm({
	     behavior = cmp.ConfirmBehavior.Insert,
	     select = true,
	   }),
       ["<C-Space>"] = cmp.mapping.complete(),
	 }
       }
     end,
  }
}
