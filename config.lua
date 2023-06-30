--[[
lvim is the global options object

Linters should be
filled in as strings with either
a global executable or a path to
an executable
]]

-- Additional Plugins
lvim.plugins = {
  { "ellisonleao/gruvbox.nvim" },
  { "mfussenegger/nvim-dap-python" },
  { "Saecki/crates.nvim" },
  { "catppuccin/nvim", as = "catppuccin" },
  { "kevinhwang91/nvim-ufo", requires = "kevinhwang91/promise-async" }
}
-- lvim.plugins = {
--     {
--       "folke/trouble.nvim",
--       cmd = "TroubleToggle",
--     },
-- }

-- general
lvim.log.level = "warn"
lvim.format_on_save = false
lvim.colorscheme = "catppuccin"

vim.o.foldcolumn = '1'
vim.o.foldlevel = 90
vim.o.foldlevelstart = 90
vim.o.foldenable = true

require("catppuccin").setup({
  flavour = "mocha", -- latte, frappe, macchiato, mocha
  background = { -- :h background
    light = "latte",
    dark = "mocha",
  },
  compile_path = vim.fn.stdpath("cache") .. "/catppuccin",
  transparent_background = true,
  term_colors = false,
  dim_inactive = {
    enabled = false,
    shade = "dark",
    percentage = 0.15,
  },
  styles = {
    comments = { "italic" },
    conditionals = { "italic" },
    loops = {},
    functions = {},
    keywords = {},
    strings = {},
    variables = {},
    numbers = {},
    booleans = {},
    properties = {},
    types = {},
    operators = {},
  },
  color_overrides = {},
  custom_highlights = {},
  integrations = {
    cmp = true,
    gitsigns = true,
    nvimtree = true,
    telescope = true,
    treesitter = true,
    -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
  },
})

require('crates').setup {
  smart_insert = true,
  insert_closing_quote = true,
  avoid_prerelease = true,
  autoload = true,
  autoupdate = true,
  loading_indicator = true,
  date_format = "%Y-%m-%d",
  thousands_separator = ".",
  notification_title = "Crates",
  disable_invalid_feature_diagnostic = false,
  text = {
    loading = "   Loading",
    version = "   %s",
    prerelease = "   %s",
    yanked = "   %s",
    nomatch = "   No match",
    upgrade = "   %s",
    error = "   Error fetching crate",
  },
  highlight = {
    loading = "CratesNvimLoading",
    version = "CratesNvimVersion",
    prerelease = "CratesNvimPreRelease",
    yanked = "CratesNvimYanked",
    nomatch = "CratesNvimNoMatch",
    upgrade = "CratesNvimUpgrade",
    error = "CratesNvimError",
  },
  popup = {
    autofocus = false,
    copy_register = '"',
    style = "minimal",
    border = "none",
    show_version_date = false,
    show_dependency_version = true,
    max_height = 30,
    min_width = 20,
    padding = 1,
    text = {
      title = " %s",
      pill_left = "",
      pill_right = "",
      description = "%s",
      created_label = " created        ",
      created = "%s",
      updated_label = " updated        ",
      updated = "%s",
      downloads_label = " downloads      ",
      downloads = "%s",
      homepage_label = " homepage       ",
      homepage = "%s",
      repository_label = " repository     ",
      repository = "%s",
      documentation_label = " documentation  ",
      documentation = "%s",
      crates_io_label = " crates.io      ",
      crates_io = "%s",
      categories_label = " categories     ",
      keywords_label = " keywords       ",
      version = "  %s",
      prerelease = " %s",
      yanked = " %s",
      version_date = "  %s",
      feature = "  %s",
      enabled = " %s",
      transitive = " %s",
      normal_dependencies_title = " Dependencies",
      build_dependencies_title = " Build dependencies",
      dev_dependencies_title = " Dev dependencies",
      dependency = "  %s",
      optional = " %s",
      dependency_version = "  %s",
      loading = "  ",
    },
    highlight = {
      title = "CratesNvimPopupTitle",
      pill_text = "CratesNvimPopupPillText",
      pill_border = "CratesNvimPopupPillBorder",
      description = "CratesNvimPopupDescription",
      created_label = "CratesNvimPopupLabel",
      created = "CratesNvimPopupValue",
      updated_label = "CratesNvimPopupLabel",
      updated = "CratesNvimPopupValue",
      downloads_label = "CratesNvimPopupLabel",
      downloads = "CratesNvimPopupValue",
      homepage_label = "CratesNvimPopupLabel",
      homepage = "CratesNvimPopupUrl",
      repository_label = "CratesNvimPopupLabel",
      repository = "CratesNvimPopupUrl",
      documentation_label = "CratesNvimPopupLabel",
      documentation = "CratesNvimPopupUrl",
      crates_io_label = "CratesNvimPopupLabel",
      crates_io = "CratesNvimPopupUrl",
      categories_label = "CratesNvimPopupLabel",
      keywords_label = "CratesNvimPopupLabel",
      version = "CratesNvimPopupVersion",
      prerelease = "CratesNvimPopupPreRelease",
      yanked = "CratesNvimPopupYanked",
      version_date = "CratesNvimPopupVersionDate",
      feature = "CratesNvimPopupFeature",
      enabled = "CratesNvimPopupEnabled",
      transitive = "CratesNvimPopupTransitive",
      normal_dependencies_title = "CratesNvimPopupNormalDependenciesTitle",
      build_dependencies_title = "CratesNvimPopupBuildDependenciesTitle",
      dev_dependencies_title = "CratesNvimPopupDevDependenciesTitle",
      dependency = "CratesNvimPopupDependency",
      optional = "CratesNvimPopupOptional",
      dependency_version = "CratesNvimPopupDependencyVersion",
      loading = "CratesNvimPopupLoading",
    },
    keys = {
      hide = { "q", "<esc>" },
      open_url = { "<cr>" },
      select = { "<cr>" },
      select_alt = { "s" },
      toggle_feature = { "<cr>" },
      copy_value = { "yy" },
      goto_item = { "gd", "K", "<C-LeftMouse>" },
      jump_forward = { "<c-i>" },
      jump_back = { "<c-o>", "<C-RightMouse>" },
    },
  },
  src = {
    insert_closing_quote = true,
    text = {
      prerelease = "  pre-release ",
      yanked = "  yanked ",
    },
    coq = {
      enabled = false,
      name = "Crates",
    },
  },
  null_ls = {
    enabled = false,
    name = "Crates",
  },
}

require('ufo').setup({
  provider_selector = function()
    return { 'treesitter', 'indent' }
  end
})

-- to disable icons and use a minimalist setup, uncomment the following
-- lvim.use_icons = false

-- keymappings [view all the defaults by pressing <leader>Lk]
-- add your own keymapping
lvim.leader = "space"
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
lvim.builtin.autopairs.active = true
lvim.colorscheme = "catppuccin"
