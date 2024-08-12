require("dom.core")
require("dom.lazy")

--This will run :lcd to change the cwd to the file in the buffer so opening the file from nvim-tree will output the correct dir when running :pw
vim.api.nvim_create_autocmd("BufEnter", {
    pattern = "*",
    callback = function()
        if vim.fn.isdirectory(vim.fn.expand('%:p:h')) == 1 then
            vim.cmd('lcd ' .. vim.fn.expand('%:p:h'))
        end
    end
})

