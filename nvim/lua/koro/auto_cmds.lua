-- https://www.youtube.com/watch?v=v36vLiFVOXY

vim.api.nvim_create_autocmd("TextYankPost", {
    group = vim.api.nvim_create_augroup("highlight_yank", {clear = true}),
    pattern = "*",
    desc = "highlight selection on yank",
    callback = function()
        vim.highlight.on_yank({timeout = 200, visual = true})
    end,
})

-- autocmd [group] event pattern command
-- tut: https://www.youtube.com/watch?v=qN6BuJpsFbQ
-- clear = true -> when reloading clear this so it doesnt add duplicates
-- :help event -> list of events
-- with command you pass vim commands, with callback you pass lua functions
-- :autocmd! <group> -> to disable command

vim.api.nvim_create_augroup("on_save", {clear = true})

-- can also do for more events and patterns, with a table -> {"", ""}
vim.api.nvim_create_autocmd("BufWrite", {
    group = "on_save",
    pattern = "*",
    desc = "trim spaces at the ends of line when saving",
    callback = function ()
        local save_cursor = vim.fn.getpos(".")
        pcall(function() vim.cmd [[%s/\s\+$//e]] end)
        vim.fn.setpos(".", save_cursor)
    end

})
