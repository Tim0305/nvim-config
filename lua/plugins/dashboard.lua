return {
  -- {
  --   "goolord/alpha-nvim",
  --   dependencies = {
  --     "nvim-tree/nvim-web-devicons",
  --   },
  --
  --   config = function()
  --     local alpha = require("alpha")
  --     local dashboard = require("alpha.themes.startify")
  --
  --     dashboard.section.header.val = {
  --       [[                                                                       ]],
  --       [[                                                                       ]],
  --       [[                                                                       ]],
  --       [[                                                                       ]],
  --       [[                                                                     ]],
  --       [[       ████ ██████           █████      ██                     ]],
  --       [[      ███████████             █████                             ]],
  --       [[      █████████ ███████████████████ ███   ███████████   ]],
  --       [[     █████████  ███    █████████████ █████ ██████████████   ]],
  --       [[    █████████ ██████████ █████████ █████ █████ ████ █████   ]],
  --       [[  ███████████ ███    ███ █████████ █████ █████ ████ █████  ]],
  --       [[ ██████  █████████████████████ ████ █████ █████ ████ ██████ ]],
  --       [[                                                                       ]],
  --       [[                                                                       ]],
  --       [[                                                                       ]],
  --     }
  --
  --     alpha.setup(dashboard.opts)
  --   end,
  -- }
  {
    "goolord/alpha-nvim",
    config = function()
      -- Dashboard original
      -- require'alpha'.setup(require'alpha.themes.dashboard'.config)

      -- Dashboard personalizado

      local alpha = require("alpha")
      local dashboard = require("alpha.themes.dashboard")

      dashboard.section.header.val = {
        [[                                                                       ]],
        [[                                                                     ]],
        [[       ████ ██████           █████      ██                     ]],
        [[      ███████████             █████                             ]],
        [[      █████████ ███████████████████ ███   ███████████   ]],
        [[     █████████  ███    █████████████ █████ ██████████████   ]],
        [[    █████████ ██████████ █████████ █████ █████ ████ █████   ]],
        [[  ███████████ ███    ███ █████████ █████ █████ ████ █████  ]],
        [[ ██████  █████████████████████ ████ █████ █████ ████ ██████ ]],
        [[                                                                       ]],
        [[                                                                       ]],
        [[                                                                       ]],
      }

      alpha.setup(dashboard.opts)
    end,
  },
}
