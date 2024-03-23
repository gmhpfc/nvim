-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua

-- close some filetypes with <q>
-- vim.api.nvim_create_autocmd("FileType", {
--   pattern = {
--     "dap-float",
--     "httpResult",
--   },
--   callback = function(event)
--     vim.bo[event.buf].buflisted = false
--     vim.keymap.set("n", "q", "<cmd>close<cr>", { buffer = event.buf, silent = true })
--   end,
-- })
--
-- Disable next line comments
-- vim.api.nvim_create_autocmd("BufEnter", {
--   callback = function()
--     vim.cmd("set formatoptions-=cro")
--     vim.cmd("setlocal formatoptions-=cro")
--   end,
-- })
--
vim.api.nvim_create_autocmd("TermOpen", {
  pattern = "term://*",
  callback = function()
    vim.cmd("setlocal listchars= nonumber norelativenumber")
    vim.cmd("setlocal nospell")
    vim.cmd.startinsert() --vim.cmd("startinsert")
  end,
})
