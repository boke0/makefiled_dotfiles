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
local package_path_str = "/home/boke0/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/boke0/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/boke0/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/boke0/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/boke0/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
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
  ["eskk.vim"] = {
    loaded = true,
    path = "/home/boke0/.local/share/nvim/site/pack/packer/start/eskk.vim",
    url = "https://github.com/tyru/eskk.vim"
  },
  ["iceberg.vim"] = {
    loaded = true,
    path = "/home/boke0/.local/share/nvim/site/pack/packer/start/iceberg.vim",
    url = "https://github.com/cocopon/iceberg.vim"
  },
  ["nvim-cmp"] = {
    config = { "\27LJ\2\n;\0\1\4\0\4\0\0066\1\0\0009\1\1\0019\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\20vsnip#anonymous\afn\bvimÂ\5\1\0\t\0+\0[6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\6\0005\4\4\0003\5\3\0=\5\5\4=\4\a\0035\4\n\0009\5\b\0009\5\t\5B\5\1\2=\5\v\0049\5\b\0009\5\f\5B\5\1\2=\5\r\0049\5\b\0009\5\14\0055\a\17\0009\b\15\0009\b\16\b=\b\18\aB\5\2\2=\5\19\0049\5\b\0009\5\20\0055\a\21\0009\b\15\0009\b\16\b=\b\18\aB\5\2\2=\5\22\0049\5\b\0009\5\14\0055\a\24\0009\b\15\0009\b\23\b=\b\18\aB\5\2\2=\5\25\0049\5\b\0009\5\20\0055\a\26\0009\b\15\0009\b\23\b=\b\18\aB\5\2\2=\5\27\0049\5\b\0009\5\28\5)\aüÿB\5\2\2=\5\29\0049\5\b\0009\5\28\5)\a\4\0B\5\2\2=\5\30\0049\5\b\0009\5\t\5B\5\1\2=\5\31\0049\5\b\0009\5\f\5B\5\1\2=\5 \0049\5\b\0009\5!\0055\a$\0009\b\"\0009\b#\b=\b\18\aB\5\2\2=\5%\4=\4\b\0039\4&\0009\4'\0044\6\3\0005\a(\0>\a\1\0065\a)\0>\a\2\0064\a\3\0005\b*\0>\b\1\aB\4\3\2=\4'\3B\1\2\1K\0\1\0\1\0\1\tname\vbuffer\1\0\1\tname\nvsnip\1\0\1\tname\rnvim_lsp\fsources\vconfig\t<CR>\1\0\1\vselect\2\fReplace\20ConfirmBehavior\fconfirm\n<C-e>\14<C-Space>\n<C-f>\n<C-b>\16scroll_docs\t<Up>\1\0\0\v<Down>\1\0\0\vSelect\n<C-p>\1\0\0\21select_prev_item\n<C-n>\rbehavior\1\0\0\vInsert\19SelectBehavior\21select_next_item\n<C-c>\nclose\n<C-y>\1\0\0\rcomplete\fmapping\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\bcmp\frequire\0" },
    loaded = true,
    path = "/home/boke0/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lsp-installer"] = {
    config = { "\27LJ\2\nò\1\0\1\6\0\f\0\0234\1\0\0006\2\0\0=\2\0\0016\2\2\0'\4\3\0B\2\2\0029\2\4\0026\4\5\0009\4\6\0049\4\a\0049\4\b\4B\4\1\0A\2\0\2=\2\1\1\18\4\0\0009\2\t\0\18\5\1\0B\2\3\0016\2\5\0009\2\n\2'\4\v\0B\2\2\1K\0\1\0\31 do User LspAttachBuffers \bcmd\nsetup\29make_client_capabilities\rprotocol\blsp\bvim\24update_capabilities\17cmp_nvim_lsp\frequire\17capabilities\14on_attachO\1\0\4\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\1\2\0003\3\3\0B\1\2\1K\0\1\0\0\20on_server_ready\23nvim-lsp-installer\frequire\0" },
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
  ["photon.vim"] = {
    loaded = true,
    path = "/home/boke0/.local/share/nvim/site/pack/packer/start/photon.vim",
    url = "https://github.com/axvr/photon.vim"
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
try_loadstring("\27LJ\2\n;\0\1\4\0\4\0\0066\1\0\0009\1\1\0019\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\20vsnip#anonymous\afn\bvimÂ\5\1\0\t\0+\0[6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\6\0005\4\4\0003\5\3\0=\5\5\4=\4\a\0035\4\n\0009\5\b\0009\5\t\5B\5\1\2=\5\v\0049\5\b\0009\5\f\5B\5\1\2=\5\r\0049\5\b\0009\5\14\0055\a\17\0009\b\15\0009\b\16\b=\b\18\aB\5\2\2=\5\19\0049\5\b\0009\5\20\0055\a\21\0009\b\15\0009\b\16\b=\b\18\aB\5\2\2=\5\22\0049\5\b\0009\5\14\0055\a\24\0009\b\15\0009\b\23\b=\b\18\aB\5\2\2=\5\25\0049\5\b\0009\5\20\0055\a\26\0009\b\15\0009\b\23\b=\b\18\aB\5\2\2=\5\27\0049\5\b\0009\5\28\5)\aüÿB\5\2\2=\5\29\0049\5\b\0009\5\28\5)\a\4\0B\5\2\2=\5\30\0049\5\b\0009\5\t\5B\5\1\2=\5\31\0049\5\b\0009\5\f\5B\5\1\2=\5 \0049\5\b\0009\5!\0055\a$\0009\b\"\0009\b#\b=\b\18\aB\5\2\2=\5%\4=\4\b\0039\4&\0009\4'\0044\6\3\0005\a(\0>\a\1\0065\a)\0>\a\2\0064\a\3\0005\b*\0>\b\1\aB\4\3\2=\4'\3B\1\2\1K\0\1\0\1\0\1\tname\vbuffer\1\0\1\tname\nvsnip\1\0\1\tname\rnvim_lsp\fsources\vconfig\t<CR>\1\0\1\vselect\2\fReplace\20ConfirmBehavior\fconfirm\n<C-e>\14<C-Space>\n<C-f>\n<C-b>\16scroll_docs\t<Up>\1\0\0\v<Down>\1\0\0\vSelect\n<C-p>\1\0\0\21select_prev_item\n<C-n>\rbehavior\1\0\0\vInsert\19SelectBehavior\21select_next_item\n<C-c>\nclose\n<C-y>\1\0\0\rcomplete\fmapping\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\bcmp\frequire\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: nvim-lsp-installer
time([[Config for nvim-lsp-installer]], true)
try_loadstring("\27LJ\2\nò\1\0\1\6\0\f\0\0234\1\0\0006\2\0\0=\2\0\0016\2\2\0'\4\3\0B\2\2\0029\2\4\0026\4\5\0009\4\6\0049\4\a\0049\4\b\4B\4\1\0A\2\0\2=\2\1\1\18\4\0\0009\2\t\0\18\5\1\0B\2\3\0016\2\5\0009\2\n\2'\4\v\0B\2\2\1K\0\1\0\31 do User LspAttachBuffers \bcmd\nsetup\29make_client_capabilities\rprotocol\blsp\bvim\24update_capabilities\17cmp_nvim_lsp\frequire\17capabilities\14on_attachO\1\0\4\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\1\2\0003\3\3\0B\1\2\1K\0\1\0\0\20on_server_ready\23nvim-lsp-installer\frequire\0", "config", "nvim-lsp-installer")
time([[Config for nvim-lsp-installer]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
