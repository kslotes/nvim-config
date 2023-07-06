local dap = require('dap')
dap.configurations.java = {
    {
        type = 'java';
        request = 'launch';
        name = "Launch file";
        program = "${file}";
    },
}
dap.configurations.lua = {
    {
        type = 'lua';
        request = 'launch';
        name = "Launch file";
        program = "${file}";
    },
}
