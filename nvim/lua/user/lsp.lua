-- Настройка mypy с null-ls для диагностики
local null_ls = require('null-ls')

null_ls.setup({
    sources = {
        null_ls.builtins.diagnostics.mypy.with({
            extra_args = { '--ignore-missing-imports' }
        }),
    },
})




-- Настройка LSP
local lspconfig = require('lspconfig')

-- Настройка Pyright для Python
lspconfig.pyright.setup{
  settings = {
    python = {
      analysis = {
        typeCheckingMode = "basic",  -- или "strict"
      },
    },
  },
}

-- Настройка автодополнения с помощью nvim-cmp
local cmp = require('cmp')
cmp.setup({
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },
  mapping = {
    ['<C-p>'] = cmp.mapping.select_prev_item(),
    ['<C-n>'] = cmp.mapping.select_next_item(),
    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.close(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
  },
  sources = {
    { name = 'nvim_lsp' },
    { name = 'luasnip' },
    { name = 'buffer' },
    { name = 'path' },
  },
})


