vim.g.mapleader = " "

vim.keymap.set("n", "<leader>frm", function()
    vim.lsp.buf.format({ async = true })
  end, { noremap = true, silent = true })