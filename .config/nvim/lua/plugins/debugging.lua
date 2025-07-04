return {
  "mfussenegger/nvim-dap-python",
  dependencies = {
    "rcarriga/nvim-dap-ui",
    "nvim-neotest/nvim-nio",
    "mfussenegger/nvim-dap",
  },
  config = function()
    local dap = require("dap")
    local dapui = require("dapui")

    dapui.setup()

    require("dap-python").setup("~/.virtualenvs/debugpy/bin/python")

    dap.listeners.before.attach.dapui_config = function()
      dapui.open()
    end
    dap.listeners.before.launch.dapui_config = function()
      dapui.open()
    end
    dap.listeners.before.event_terminated.dapui_config = function()
      dapui.close()
    end

    dap.listeners.before.event_exited.dapui_config = function()
      dapui.close()
    end

    vim.keymap.set("n", "<leader>db", dap.toggle_breakpoint, { desc = "Toggle Breakpoint" })
    vim.keymap.set("n", "<leader>dB", function()
      dap.set_breakpoint(vim.fn.input("Breakpoint condition: "))
    end, { desc = "Set Conditional Breakpoint" })
    vim.keymap.set("n", "<leader>dc", dap.continue, { desc = "Start/Continue" })
    vim.keymap.set("n", "<leader>ds", dap.step_over, { desc = "Step Over" })
    vim.keymap.set("n", "<leader>di", dap.step_into, { desc = "Step Into" })
    vim.keymap.set("n", "<leader>do", dap.step_out, { desc = "Step Out" })
    vim.keymap.set("n", "<leader>dr", dap.repl.toggle, { desc = "Toggle REPL" })
    vim.keymap.set("n", "<leader>du", dapui.toggle, { desc = "Toggle DAP UI" })
    vim.keymap.set("n", "<leader>dt", dap.terminate, { desc = "Terminate Debugger" })
    vim.keymap.set("n", "<leader>dl", dap.run_last, { desc = "Run Last Debug Session" })
  end,
}
