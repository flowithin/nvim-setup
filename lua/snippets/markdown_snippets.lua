local ls = require 'luasnip'
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node -- Import insert_node for placeholders

ls.add_snippets('markdown', {
  s('theorem', {
    t { '<div class="theorem-box">', '   <div class="theorem-box-title">Theorem</div>', '   <p>' },
    i(1, 'This is the statement of the theorem.'), -- First placeholder
    t { '</p>', '   <p>' },
    i(2, 'Additional theorem content goes here.'), -- Second placeholder
    t { '</p>', '</div>' },
  }),
})
