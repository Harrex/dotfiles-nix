local lsp = require('lsp-zero').preset({})

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({buffer = bufnr})
end)

lsp.setup()

require('lspconfig.ui.windows').default_options.border = 'single'

local lspconfig = require('lspconfig')
lspconfig.rust_analyzer.setup{}

lspconfig.hls.setup {
      on_attach = on_attach,
      settings = {
          haskell = {
              hlintOn = true,
              formattingProvider = "fourmolu"
          }
       }
}

lspconfig.jdtls.setup {
      root_dir = function(fname)
          return (require("lspconfig").util.root_pattern("pom.xml", "gradle.build", ".git")(fname) or vim.fn.getcwd())
      end,
}
