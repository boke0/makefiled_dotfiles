-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/boke0/.cache/nvim/packer_hererocks/2.0.5/share/lua/5.1/?.lua;/home/boke0/.cache/nvim/packer_hererocks/2.0.5/share/lua/5.1/?/init.lua;/home/boke0/.cache/nvim/packer_hererocks/2.0.5/lib/luarocks/rocks-5.1/?.lua;/home/boke0/.cache/nvim/packer_hererocks/2.0.5/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/boke0/.cache/nvim/packer_hererocks/2.0.5/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["auto-pairs"] = {
    loaded = true,
    path = "/home/boke0/.local/share/nvim/site/pack/packer/start/auto-pairs",
    url = "https://github.com/jiangmiao/auto-pairs"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/boke0/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/boke0/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-vsnip"] = {
    loaded = true,
    path = "/home/boke0/.local/share/nvim/site/pack/packer/start/cmp-vsnip",
    url = "https://github.com/hrsh7th/cmp-vsnip"
  },
  ["iceberg.vim"] = {
    loaded = true,
    path = "/home/boke0/.local/share/nvim/site/pack/packer/start/iceberg.vim",
    url = "https://github.com/cocopon/iceberg.vim"
  },
  ["monokai.nvim"] = {
    loaded = true,
    path = "/home/boke0/.local/share/nvim/site/pack/packer/start/monokai.nvim",
    url = "https://github.com/tanvirtin/monokai.nvim"
  },
  ["nvim-cmp"] = {
    config = { "\27LJ\1\2;\0\1\3\0\4\0\0064\1\0\0007\1\1\0017\1\2\0017\2\3\0>\1\2\1G\0\1\0\tbody\20vsnip#anonymous\afn\bvimÂ\5\1\0\a\0+\0[4\0\0\0%\1\1\0>\0\2\0027\1\2\0003\2\6\0003\3\4\0001\4\3\0:\4\5\3:\3\a\0023\3\n\0007\4\b\0007\4\t\4>\4\1\2:\4\v\0037\4\b\0007\4\f\4>\4\1\2:\4\r\0037\4\b\0007\4\14\0043\5\17\0007\6\15\0007\6\16\6:\6\18\5>\4\2\2:\4\19\0037\4\b\0007\4\20\0043\5\21\0007\6\15\0007\6\16\6:\6\18\5>\4\2\2:\4\22\0037\4\b\0007\4\14\0043\5\24\0007\6\15\0007\6\23\6:\6\18\5>\4\2\2:\4\25\0037\4\b\0007\4\20\0043\5\26\0007\6\15\0007\6\23\6:\6\18\5>\4\2\2:\4\27\0037\4\b\0007\4\28\4'\5üÿ>\4\2\2:\4\29\0037\4\b\0007\4\28\4'\5\4\0>\4\2\2:\4\30\0037\4\b\0007\4\t\4>\4\1\2:\4\31\0037\4\b\0007\4\f\4>\4\1\2:\4 \0037\4\b\0007\4!\0043\5$\0007\6\"\0007\6#\6:\6\18\5>\4\2\2:\4%\3:\3\b\0027\3&\0007\3'\0032\4\3\0003\5(\0;\5\1\0043\5)\0;\5\2\0042\5\3\0003\6*\0;\6\1\5>\3\3\2:\3'\2>\1\2\1G\0\1\0\1\0\1\tname\vbuffer\1\0\1\tname\nvsnip\1\0\1\tname\rnvim_lsp\fsources\vconfig\t<CR>\1\0\1\vselect\2\fReplace\20ConfirmBehavior\fconfirm\n<C-e>\14<C-Space>\n<C-f>\n<C-b>\16scroll_docs\t<Up>\1\0\0\v<Down>\1\0\0\vSelect\n<C-p>\1\0\0\21select_prev_item\n<C-n>\rbehavior\1\0\0\vInsert\19SelectBehavior\21select_next_item\n<C-c>\nclose\n<C-y>\1\0\0\rcomplete\fmapping\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\bcmp\frequire\0" },
    loaded = true,
    path = "/home/boke0/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lsp-installer"] = {
    config = { "\27LJ\1\2ò\1\0\1\5\0\f\0\0232\1\0\0004\2\0\0:\2\0\0014\2\2\0%\3\3\0>\2\2\0027\2\4\0024\3\5\0007\3\6\0037\3\a\0037\3\b\3>\3\1\0=\2\0\2:\2\1\1\16\3\0\0007\2\t\0\16\4\1\0>\2\3\0014\2\5\0007\2\n\2%\3\v\0>\2\2\1G\0\1\0\31 do User LspAttachBuffers \bcmd\nsetup\29make_client_capabilities\rprotocol\blsp\bvim\24update_capabilities\17cmp_nvim_lsp\frequire\17capabilities\14on_attachO\1\0\3\0\4\0\a4\0\0\0%\1\1\0>\0\2\0027\1\2\0001\2\3\0>\1\2\1G\0\1\0\0\20on_server_ready\23nvim-lsp-installer\frequire\0" },
    loaded = true,
    path = "/home/boke0/.local/share/nvim/site/pack/packer/start/nvim-lsp-installer",
    url = "https://github.com/williamboman/nvim-lsp-installer"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/boke0/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/boke0/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["unite.vim"] = {
    loaded = true,
    path = "/home/boke0/.local/share/nvim/site/pack/packer/start/unite.vim",
    url = "https://github.com/Shougo/unite.vim"
  },
  ["vim-airline"] = {
    loaded = true,
    path = "/home/boke0/.local/share/nvim/site/pack/packer/start/vim-airline",
    url = "https://github.com/vim-airline/vim-airline"
  },
  ["vim-devicons"] = {
    loaded = true,
    path = "/home/boke0/.local/share/nvim/site/pack/packer/start/vim-devicons",
    url = "https://github.com/ryanoasis/vim-devicons"
  },
  ["vim-multiple-cursors"] = {
    loaded = true,
    path = "/home/boke0/.local/share/nvim/site/pack/packer/start/vim-multiple-cursors",
    url = "https://github.com/terryma/vim-multiple-cursors"
  },
  ["vim-polyglot"] = {
    loaded = true,
    path = "/home/boke0/.local/share/nvim/site/pack/packer/start/vim-polyglot",
    url = "https://github.com/sheerun/vim-polyglot"
  },
  ["vim-vsnip"] = {
    loaded = true,
    path = "/home/boke0/.local/share/nvim/site/pack/packer/start/vim-vsnip",
    url = "https://github.com/hrsh7th/vim-vsnip"
  },
  ["vimfiler.vim"] = {
    loaded = true,
    path = "/home/boke0/.local/share/nvim/site/pack/packer/start/vimfiler.vim",
    url = "https://github.com/Shougo/vimfiler.vim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\1\2;\0\1\3\0\4\0\0064\1\0\0007\1\1\0017\1\2\0017\2\3\0>\1\2\1G\0\1\0\tbody\20vsnip#anonymous\afn\bvimÂ\5\1\0\a\0+\0[4\0\0\0%\1\1\0>\0\2\0027\1\2\0003\2\6\0003\3\4\0001\4\3\0:\4\5\3:\3\a\0023\3\n\0007\4\b\0007\4\t\4>\4\1\2:\4\v\0037\4\b\0007\4\f\4>\4\1\2:\4\r\0037\4\b\0007\4\14\0043\5\17\0007\6\15\0007\6\16\6:\6\18\5>\4\2\2:\4\19\0037\4\b\0007\4\20\0043\5\21\0007\6\15\0007\6\16\6:\6\18\5>\4\2\2:\4\22\0037\4\b\0007\4\14\0043\5\24\0007\6\15\0007\6\23\6:\6\18\5>\4\2\2:\4\25\0037\4\b\0007\4\20\0043\5\26\0007\6\15\0007\6\23\6:\6\18\5>\4\2\2:\4\27\0037\4\b\0007\4\28\4'\5üÿ>\4\2\2:\4\29\0037\4\b\0007\4\28\4'\5\4\0>\4\2\2:\4\30\0037\4\b\0007\4\t\4>\4\1\2:\4\31\0037\4\b\0007\4\f\4>\4\1\2:\4 \0037\4\b\0007\4!\0043\5$\0007\6\"\0007\6#\6:\6\18\5>\4\2\2:\4%\3:\3\b\0027\3&\0007\3'\0032\4\3\0003\5(\0;\5\1\0043\5)\0;\5\2\0042\5\3\0003\6*\0;\6\1\5>\3\3\2:\3'\2>\1\2\1G\0\1\0\1\0\1\tname\vbuffer\1\0\1\tname\nvsnip\1\0\1\tname\rnvim_lsp\fsources\vconfig\t<CR>\1\0\1\vselect\2\fReplace\20ConfirmBehavior\fconfirm\n<C-e>\14<C-Space>\n<C-f>\n<C-b>\16scroll_docs\t<Up>\1\0\0\v<Down>\1\0\0\vSelect\n<C-p>\1\0\0\21select_prev_item\n<C-n>\rbehavior\1\0\0\vInsert\19SelectBehavior\21select_next_item\n<C-c>\nclose\n<C-y>\1\0\0\rcomplete\fmapping\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\bcmp\frequire\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: nvim-lsp-installer
time([[Config for nvim-lsp-installer]], true)
try_loadstring("\27LJ\1\2ò\1\0\1\5\0\f\0\0232\1\0\0004\2\0\0:\2\0\0014\2\2\0%\3\3\0>\2\2\0027\2\4\0024\3\5\0007\3\6\0037\3\a\0037\3\b\3>\3\1\0=\2\0\2:\2\1\1\16\3\0\0007\2\t\0\16\4\1\0>\2\3\0014\2\5\0007\2\n\2%\3\v\0>\2\2\1G\0\1\0\31 do User LspAttachBuffers \bcmd\nsetup\29make_client_capabilities\rprotocol\blsp\bvim\24update_capabilities\17cmp_nvim_lsp\frequire\17capabilities\14on_attachO\1\0\3\0\4\0\a4\0\0\0%\1\1\0>\0\2\0027\1\2\0001\2\3\0>\1\2\1G\0\1\0\0\20on_server_ready\23nvim-lsp-installer\frequire\0", "config", "nvim-lsp-installer")
time([[Config for nvim-lsp-installer]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
