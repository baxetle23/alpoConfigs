return {
    {
        "rcarriga/nvim-dap-ui",
        dependencies = {
            "mfussenegger/nvim-dap",  -- основной DAP
            "nvim-neotest/nvim-nio",  -- для интеграции тестов (если нужно)
        },
        config = function()
            require("dapui").setup()
            -- vim.api.nvim_buf_set_keymap(0, "n", "<leader>ddt", ':DapUiToggle<CR>',{})
            vim.keymap.set('n', '<leader>dt', ':DapUiToggle<CR>', {noremap=true})
            vim.keymap.set('n', '<leader>db', ':DapToggleBreakpoint<CR>', {noremap=true})
            vim.keymap.set('n', '<leader>dc', ':DapContinue<CR>', {noremap=true})
            vim.keymap.set('n', '<leader>dr', ":lua require('dapui').open({reset = true})<CR>", {noremap=true})
        end,
    },
    {
        "theHamsta/nvim-dap-virtual-text",
        dependencies = {
            "mfussenegger/nvim-dap",  -- требуется для работы
        },
        config = function()
            require("nvim-dap-virtual-text").setup({
                virt_text_pos = 'eol', -- показывает виртуальный текст в конце строки
                all_frames = true,     -- отображает информацию для всех кадров          
            })
        end,
    },
    {
        "leoluz/nvim-dap-go",
        dependencies = {
            "mfussenegger/nvim-dap",
        },
        config = function()
            require("dap-go").setup({
                dap_configurations = {
                    -- ваши настройки отладки
                },
            })
        end,
    },
}
