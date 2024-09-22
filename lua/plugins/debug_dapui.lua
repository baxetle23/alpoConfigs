return {
    {
        "rcarriga/nvim-dap-ui",
        dependencies = {
            "mfussenegger/nvim-dap",  -- основной DAP
            "nvim-neotest/nvim-nio",  -- для интеграции тестов (если нужно)
        },
        config = function()
            require("dapui").setup()
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