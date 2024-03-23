-- Keymaps are automatically loaded on the VeryLazy event
-- if vim.fn.executable("btop") == 1 then
if vim.fn.executable("top") == 1 then
  -- btop
  vim.keymap.set("n", "<leader>xb", function()
    require("lazyvim.util").terminal.open({ "top" }, { esc_esc = false, ctrl_hjkl = false })
  end, { desc = "table of process" })
end
--vsplit terminal
-- vim.keymap.set("n", "<leader>fv", function()
--   vim.cmd.vsplit("term://bash")
--   -- vim.cmd.term()
-- end, { desc = "terminal |" })
-- vim.keymap.set("t", "<ESC><ESC>", function()
--   local win = vim.api.nvim_get_current_win()
--   vim.api.nvim_win_close(win, true)
-- end, { desc = "Terminal Close term in terminal mode" })
--
