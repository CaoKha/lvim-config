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
-- lvim.keys.normal_mode["<S-l>"] = ":BufferLineCycleNext<CR>"
-- lvim.keys.normal_mode["<S-h>"] = ":BufferLineCyclePrev<CR>"
-- unmap a default keymapping
-- vim.keymap.del("n", "<C-Up>")
-- override a default keymapping
-- lvim.keys.normal_mode["<C-q>"] = ":q<cr>" -- or vim.keymap.set("n", "<C-q>", ":q<cr>" )

-- Change Telescope navigation to use j and k for navigation and n and p for history in both input and normal mode.
-- we use protected-mode (pcall) just in case the plugin wasn't loaded yet.
-- local _, actions = pcall(require, "telescope.actions")
-- lvim.builtin.telescope.defaults.mappings = {
--   -- for input mode
--   i = {
--     ["<C-j>"] = actions.move_selection_next,
--     ["<C-k>"] = actions.move_selection_previous,
--     ["<C-n>"] = actions.cycle_history_next,
--     ["<C-p>"] = actions.cycle_history_prev,
--   },
--   -- for normal mode
--   n = {
--     ["<C-j>"] = actions.move_selection_next,
--     ["<C-k>"] = actions.move_selection_previous,
--   },
-- }

-- Change theme settings
-- lvim.builtin.theme.options.dim_inactive = true
-- lvim.builtin.theme.options.style = "storm"

-- Use which-key to add extra bindings with the leader-key prefix
-- lvim.builtin.which_key.mappings["P"] = { "<cmd>Telescope projects<CR>", "Projects" }
-- lvim.builtin.which_key.mappings["t"] = {
--   name = "+Trouble",
--   r = { "<cmd>Trouble lsp_references<cr>", "References" },
--   f = { "<cmd>Trouble lsp_definitions<cr>", "Definitions" },
--   d = { "<cmd>Trouble document_diagnostics<cr>", "Diagnostics" },
--   q = { "<cmd>Trouble quickfix<cr>", "QuickFix" },
--   l = { "<cmd>Trouble loclist<cr>", "LocationList" },
--   w = { "<cmd>Trouble workspace_diagnostics<cr>", "Workspace Diagnostics" },
-- }

-- TODO: User Config for predefined plugins
-- After changing plugin config exit and reopen LunarVim, Run :PackerInstall :PackerCompile
-- lvim.builtin.alpha.active = true
-- lvim.builtin.alpha.mode = "dashboard"
-- lvim.builtin.terminal.active = true
-- lvim.builtin.nvimtree.setup.view.side = "left"
-- lvim.builtin.nvimtree.setup.renderer.icons.show.git = false

-- if you don't want all the parsers change this to a table of the ones you want
lvim.builtin.treesitter.ensure_installed = {
  "bash",
  "c",
  "javascript",
  "json",
  "lua",
  "python",
  "typescript",
  "tsx",
  "css",
  "rust",
  "java",
  "yaml",
}

lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enable = true

-- generic LSP settings

-- -- make sure server will always be installed even if the server is in skipped_servers list
-- lvim.lsp.installer.setup.ensure_installed = {
--     "sumneko_lua",
--     "jsonls",
-- }
-- -- change UI setting of `LspInstallInfo`
-- -- see <https://github.com/williamboman/nvim-lsp-installer#default-configuration>
-- lvim.lsp.installer.setup.ui.check_outdated_servers_on_open = false
-- lvim.lsp.installer.setup.ui.border = "rounded"
-- lvim.lsp.installer.setup.ui.keymaps = {
--     uninstall_server = "d",
--     toggle_server_expand = "o",
-- }

-- ---@usage disable automatic installation of servers
-- lvim.lsp.installer.setup.automatic_installation = false

-- ---configure a server manually. !!Requires `:LvimCacheReset` to take effect!!
-- ---see the full default list `:lua print(vim.inspect(lvim.lsp.automatic_configuration.skipped_servers))`
-- vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "pyright" })
-- local opts = {} -- check the lspconfig documentation for a list of all possible options
-- require("lvim.lsp.manager").setup("pyright", opts)

-- ---remove a server from the skipped list, e.g. eslint, or emmet_ls. !!Requires `:LvimCacheReset` to take effect!!
-- ---`:LvimInfo` lists which server(s) are skipped for the current filetype
-- lvim.lsp.automatic_configuration.skipped_servers = vim.tbl_filter(function(server)
--   return server ~= "emmet_ls"
-- end, lvim.lsp.automatic_configuration.skipped_servers)

-- -- you can set a custom on_attach function that will be used for all the language servers
-- -- See <https://github.com/neovim/nvim-lspconfig#keybindings-and-completion>
-- lvim.lsp.on_attach_callback = function(client, bufnr)
--   local function buf_set_option(...)
--     vim.api.nvim_buf_set_option(bufnr, ...)
--   end
--   --Enable completion triggered by <c-x><c-o>
--   buf_set_option("omnifunc", "v:lua.vim.lsp.omnifunc")
-- end

-- -- set a formatter, this will override the language server formatting capabilities (if it exists)
local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
  { command = "black", filetypes = { "python" } },
  -- { command = "isort", filetypes = { "python" } },
  {
    -- each formatter accepts a list of options identical to https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md#Configuration
    command = "prettier",
    ---@usage arguments to pass to the formatter
    -- these cannot contain whitespaces, options such as `--line-width 80` become either `{'--line-width', '80'}` or `{'--line-width=80'}`
    extra_args = { "--print-with", "80" },
    ---@usage specify which filetypes to enable. By default a providers will attach to all the filetypes it supports.
    filetypes = { "typescript", "typescriptreact" },
  },
}

-- -- set additional linters
local linters = require "lvim.lsp.null-ls.linters"
linters.setup {
  { command = "flake8", filetypes = { "python" }, extra_args = { "--line-width", "90" },
  },
  -- {
  -- each linter accepts a list of options identical to https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md#Configuration
  -- command = "shellcheck",
  ---@usage arguments to pass to the formatter
  -- these cannot contain whitespaces, options such as `--line-width 80` become either `{'--line-width', '80'}` or `{'--line-width=80'}`
  -- extra_args = { "--severity", "warning" },
  -- },
  -- {
  -- command = "codespell",
  ---@usage specify which filetypes to enable. By default a providers will attach to all the filetypes it supports.
  -- filetypes = { "javascript", "python" },
  -- },
}


-- Autocommands (https://neovim.io/doc/user/autocmd.html)
-- vim.api.nvim_create_autocmd("BufEnter", {
--   pattern = { "*.json", "*.jsonc" },
--   -- enable wrap mode for json files only
--   command = "setlocal wrap",
-- })
-- vim.api.nvim_create_autocmd("FileType", {
--   pattern = "zsh",
--   callback = function()
--     -- let treesitter use bash highlight for zsh files as well
--     require("nvim-treesitter.highlight").attach(0, "bash")
--   end,
-- })

-- DAP
-- Setup dap for python
-- lvim.builtin.dap.active = true
-- local mason_path = vim.fn.glob(vim.fn.stdpath "data" .. "/mason/")
-- pcall(function() require("dap-python").setup(mason_path .. "packages/debugpy/venv/bin/python") end)


-- Supported test frameworks are unittest, pytest and django. By default it
-- tries to detect the runner by probing for pytest.ini and manage.py, if
-- neither are present it defaults to unittest.
-- pcall(function() require("dap-python").test_runner = "pytest" end)
