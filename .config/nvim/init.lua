vim.opt.number = true
vim.opt.relativenumber = true
vim.o.updatetime = 500
vim.opt.termguicolors = true
vim.opt.background = 'light'

vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4

vim.opt.clipboard = 'unnamedplus'

vim.opt.completeopt = { 'popup', 'menuone', 'noselect' }

vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(args)
    local opts = { buffer = args.buf }
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
    vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)
    vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, opts)
    vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
    vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
  end,
})

vim.api.nvim_create_autocmd('CursorHold', {
  callback = function()
    vim.diagnostic.open_float(nil, {
      focusable = false,
      scope = 'cursor',
      border = 'rounded',
    })
  end,
})

vim.cmd.colorscheme('alabaster')

vim.lsp.config.pyright = {
  cmd = { 'pyright-langserver', '--stdio' },
  filetypes = { 'python' },
  root_markers = { 'pyproject.toml', 'setup.py', 'requirements.txt', '.git' },
}
vim.lsp.enable('pyright')

vim.lsp.config.clangd = {
  cmd = { 'clangd' },
  filetypes = { 'c', 'cpp', 'objc', 'objcpp' },
  root_markers = { '.clangd', 'compile_commands.json', '.git' },
}
vim.lsp.enable('clangd')

vim.diagnostic.config({
  virtual_text = false,
  signs = true,
  underline = true
})
