local h = require("null-ls.helpers")
local methods = require("null-ls.methods")

local FORMATTING = methods.internal.FORMATTING

return h.make_builtin({
    name = "djlint",
    method = FORMATTING,
    filetypes = { "django", "jinja.html", "htmldjango" },
    generator_opts = {
        command = "djlint",
        args = {
            "--reformat",
            "--stdin-filename",
            "$FILENAME",
            "--quiet",
            "-",
        },
        to_stdin = true,
    },
    factory = h.formatter_factory,
})
