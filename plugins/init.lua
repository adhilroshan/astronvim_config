return {
    ["goolord/alpha-nvim"] = {
        disable = false
    },
    ["max397574/better-escape.nvim"] = {
        disable = false
    },
    ["EdenEast/nightfox.nvim"] = {
        config = require "user.plugins.nightfox"
    },
    ["ur4ltz/surround.nvim"] = {
        event = "BufRead",
        config = function()
            require("surround").setup {
                mappings_style = "surround",
                map_insert_mode = false
            }
        end
    },
    {
        "phaazon/hop.nvim",
        branch = "v2", -- optional but strongly recommended
        event = "BufRead",
        config = function()
            require("hop").setup{ keys = 'etovxqpdygfblzhckisuran'}
        end
    },
    ["ray-x/lsp_signature.nvim"] = {
        event = "InsertEnter",
        config = function()
            require("lsp_signature").setup {}
        end
    },
    ["KabbAmine/vCoolor.vim"] = {
        cmd = "VCoolor"
    },
    ["mfussenegger/nvim-dap"] = {
        module = "dap",
        config = require "user.plugins.nvim-dap"
    },
    ["rcarriga/nvim-dap-ui"] = {
        after = "nvim-dap",
        config = require "user.plugins.nvim-dapui"
    },
    {
        "sindrets/winshift.nvim",
        cmd = "WinShift",
        config = require "user.plugins.WinShift"
    },
    ["nvim-telescope/telescope-dap.nvim"] = {
        module = "telescope._extensions.dap"
    },
    ["nvim-telescope/telescope-packer.nvim"] = {
        module = "telescope._extensions.packer"
    },
    ["aserowy/tmux.nvim"] = {
        module = "tmux"
    },
    ["nvim-treesitter/playground"] = {
        cmd = {"TSPlaygroundToggle", "TSHighlightCapturesUnderCursor"}
    },
    {
        "theHamsta/nvim-dap-virtual-text",
        after = "nvim-dap",
        config = function()
            require("nvim-dap-virtual-text").setup()
        end
    },
    ["ziontee113/syntax-tree-surfer"] = {
        module = "syntax-tree-surfer"
    },
    ["nvim-treesitter/nvim-treesitter-textobjects"] = {
        after = "nvim-treesitter"
    },
    ["andymass/vim-matchup"] = {
        event = "BufRead",
        config = function()
            vim.g.matchup_matchparen_offscreen = {}
        end
    },
    ["hrsh7th/cmp-nvim-lua"] = {
        after = "cmp_luasnip"
    },
    ["jvgrootveld/telescope-zoxide"] = {
        module = "telescope._extensions.zoxide"
    },
    ["mickael-menu/zk-nvim"] = {
        -- module = { "zk", "zk.commands" },
        config = function()
            require "user.plugins.zk"
        end
    },
    ["tzachar/cmp-tabnine"] = {
        after = "nvim-cmp",
        run = "pwsh ./install.ps1",
        config = function()
            require "user.plugins.tabnine"
        end
    },
    {'wakatime/vim-wakatime'},
    {"lukas-reineke/cmp-under-comparator"},
    {
  "utilyre/barbecue.nvim",
  branch = "dev", -- omit this if you only want stable updates
  requires = {
    "neovim/nvim-lspconfig",
    "smiteshp/nvim-navic",
    "kyazdani42/nvim-web-devicons", -- optional dependency
  },
  after = "nvim-web-devicons", -- keep this if you're using NvChad
  config = function()
    require "user.plugins.barbecue"
  end,
}
}
