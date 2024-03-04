-- Keymaps are automatically loaded on the VeryLazy event
-- if vim.fn.executable("btop") == 1 then
if vim.fn.executable("top") == 1 then
  -- btop
  vim.keymap.set("n", "<leader>xb", function()
    require("lazyvim.util").terminal.open({ "top" }, { esc_esc = false, ctrl_hjkl = false })
  end, { desc = "table of process" })
end
