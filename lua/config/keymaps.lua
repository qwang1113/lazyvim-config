-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--

-- vim.api.nvim_del_keymap("n", "<leader>l")

local function map(mode, key, cmd, opts)
  opts = opts or {}
  opts.noremap = opts.noremap or true
  opts.silent = opts.silent or true
  opts.expr = opts.expr or false
  opts.nowait = opts.nowait or false
  vim.api.nvim_set_keymap(mode, key, cmd, opts)
end

map("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

map("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })

map("n", "<leader>qq", "<cmd>qa<cr>", { desc = "Quit all" })

map("n", "<C-Up>", "<cmd>resize +2<cr>", { desc = "Increase window height" })
map("n", "<C-Down>", "<cmd>resize -2<cr>", { desc = "Decrease window height" })
map("n", "<C-Left>", "<cmd>vertical resize -2<cr>", { desc = "Decrease window width" })
map("n", "<C-Right>", "<cmd>vertical resize +2<cr>", { desc = "Increase window width" })

map("n", "<leader>gl", '<cmd>lua require("gitsigns").blame_line()<cr>', {
  desc = "View Git blame",
})

map("n", "<leader>gd", '<cmd>lua require("gitsigns").diffthis()<cr>', {
  desc = "View Git diff",
})

map("n", "<leader>gL", '<cmd>lua require("gitsigns").blame_line({ full = true })<cr>', {
  desc = "View full Git blame",
})

map("v", "<S-Tab>", "<gv", {
  desc = "unindent line",
})

map("v", "<Tab>", ">gv", {
  desc = "indent line",
})

map("n", "<leader>/", '<cmd>lua require("Comment.api").toggle.linewise.count(vim.v.count > 0 and vim.v.count or 1)<CR>', {
  noremap = true,
  desc = "Comment",
})

map("v", "<leader>/", '<esc><cmd>lua require("Comment.api").toggle.linewise(vim.fn.visualmode())<cr>', {
  noremap = true,
  desc = "Comment",
})

map("n", "<leader>la", "<cmd>lua vim.lsp.buf.code_action()<cr>", {
  noremap = true,
  desc = "Code Action",
})

map("n", "<leader>lr", "<cmd>lua vim.lsp.buf.rename()<cr>", {
  noremap = true,
  desc = "Code Action",
})

map("n", "<leader>ti", "<cmd>TypescriptAddMissingImports<cr>", {
  noremap = true,
  desc = "TypescriptAddMissingImports",
})

map("n", "<leader>tf", "<cmd>TypescriptFixAll<cr>", {
  noremap = true,
  desc = "TypescriptFixAll",
})

map("n", "<leader>to", "<cmd>TypescriptOrganizeImports<cr>", {
  noremap = true,
  desc = "TypescriptOrganizeImports",
})

map("n", "<leader>tu", "<cmd>TypescriptRemoveUnused<cr>", {
  noremap = true,
  desc = "TypescriptRemoveUnused",
})

map("n", "zR", '<cmd> lua require("ufo").openAllFolds()<cr>', {
  desc = "Open all folds",
})

map("n", "zM", '<cmd>lua require("ufo").closeAllFolds()<cr>', {
  desc = "Close all folds",
})

map("n", "zr", '<cmd>lua require("ufo").openFoldsExceptKinds()<cr>', {
  desc = "Fold less",
})

map("n", "zm", '<cmd>lua require("ufo").closeFoldsWith()<cr>', {
  desc = "Fold more",
})
map("n", "zp", '<cmd>lua require("ufo").peekFoldedLinesUnderCursor()<cr>', {
  desc = "Peek fold",
})

map("n", "<C-n>", "<cmd>lua vim.diagnostic.goto_next()<cr>")
map("n", "<C-p>", "<cmd>lua vim.diagnostic.goto_prev()<cr>")
map("n", "H", "<cmd>bprev<cr>")

map("n", "L", "<cmd>bnext<cr>")
