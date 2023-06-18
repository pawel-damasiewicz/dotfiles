local zenmode = require('zen-mode')

vim.keymap.set('n', '<leader>z', function () zenmode.toggle({}) end)
