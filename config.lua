lvim.plugins = {
  { "Saecki/crates.nvim" },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
  },
  {
    "phaazon/hop.nvim",
    event = "BufRead",
    config = function()
      require("hop").setup()
      vim.api.nvim_set_keymap("n", "s", ":HopChar2<cr>", { silent = true })
      vim.api.nvim_set_keymap("n", "S", ":HopWord<cr>", { silent = true })
    end,
  },
  {
    "kevinhwang91/nvim-bqf",
    event = { "BufRead", "BufNew" },
    config = function()
      require("bqf").setup({
        auto_enable = true,
        preview = {
          win_height = 12,
          win_vheight = 12,
          delay_syntax = 80,
          border_chars = { "┃", "┃", "━", "━", "┏", "┓", "┗", "┛", "█" },
        },
        func_map = {
          vsplit = "",
          ptogglemode = "z,",
          stoggleup = "",
        },
        filter = {
          fzf = {
            action_for = { ["ctrl-s"] = "split" },
            extra_opts = { "--bind", "ctrl-o:toggle-all", "--prompt", "> " },
          },
        },
      })
    end,
  },
  {
    "pwntester/octo.nvim",
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-telescope/telescope.nvim',
      'nvim-tree/nvim-web-devicons',
    },
    config = function()
      require("octo").setup()
    end,
  },
}

lvim.colorscheme = "catppuccin"
lvim.transparent_window = true
lvim.builtin.autopairs.active = true
lvim.keys.normal_mode["<A-Up>"] = ":m .-2<cr>=="
lvim.keys.normal_mode["<A-Down>"] = ":m .+1<cr>=="
lvim.keys.insert_mode["<A-Up>"] = "<esc>:m .-2<cr>==gi"
lvim.keys.insert_mode["<A-Down>"] = "<esc>:m .+1<cr>==gi"
lvim.keys.insert_mode["<A-k>"] = "<C-\\><C-N><C-w>k"
lvim.keys.insert_mode["<A-j>"] = "<C-\\><C-N><C-w>j"
lvim.keys.insert_mode["<A-h>"] = "<C-\\><C-N><C-w>h"
lvim.keys.insert_mode["<A-l>"] = "<C-\\><C-N><C-w>l"
lvim.keys.visual_block_mode["<A-Down>"] = ":m '>+1<cr>gv-gv"
lvim.keys.visual_block_mode["<A-Up>"] = ":m '<-2<cr>gv-gv"
lvim.keys.normal_mode["<C-Up>"] = "<C-w>k"
lvim.keys.normal_mode["<C-Down>"] = "<C-w>j"
lvim.keys.normal_mode["<C-Left>"] = "<C-w>h"
lvim.keys.normal_mode["<C-Right>"] = "<C-w>l"
lvim.keys.normal_mode["<C-k>"] = ":resize -2<CR>"
lvim.keys.normal_mode["<C-j>"] = ":resize +2<CR>"
lvim.keys.normal_mode["<C-h>"] = ":vertical resize -2<CR>"
lvim.keys.normal_mode["<C-l>"] = ":vertical resize +2<CR>"
