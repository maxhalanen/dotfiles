return {
  "NvChad/nvterm",
  config = function()
    require("nvterm").setup()
    local term = require("nvterm.terminal")
    vim.keymap.set({ "n", "t" }, "<A-i>", function()
      term.toggle("float")
    end, { noremap = true, silent = true, desc = "Toggle float terminal" })

    -- Map Alt+h to toggle horizontal terminal
    vim.keymap.set({ "n", "t" }, "<A-h>", function()
      term.toggle("horizontal")
    end, { noremap = true, silent = true, desc = "Toggle horizontal terminal" })

    -- Map Alt+v to toggle vertical terminal
    vim.keymap.set({ "n", "t" }, "<A-v>", function()
      term.toggle("vertical")
    end, { noremap = true, silent = true, desc = "Toggle vertical terminal" })
  end,
}
