vim.o.fenc="utf-8"
vim.o.backup=false
vim.o.swapfile=false
vim.o.autoread=true
vim.o.hidden=true
vim.o.showcmd=true
vim.o.number=true
vim.o.virtualedit="onemore"
vim.o.smartindent=true
vim.o.showmatch=true
vim.o.laststatus=2
vim.o.wildmode="list:longest"
vim.o.wrap=false


vim.o.listchars="tab:>-"
vim.o.expandtab=true
vim.o.tabstop=4
vim.o.shiftwidth=4
vim.o.ignorecase=true
vim.o.smartcase=true
vim.o.incsearch=true
vim.o.wrapscan=true
vim.o.hlsearch=true
vim.o.clipboard="unnamedplus"
vim.o.background='dark'
vim.o.imdisable=true
vim.o.encoding='UTF-8'

vim.g.mapleader=" "

opt_ns = { noremap = true, silent = true }

vim.api.nvim_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opt_ns)
vim.api.nvim_set_keymap('n', '<Leader>R', '<cmd>lua vim.lsp.buf.rename()<CR>', opt_ns)
vim.api.nvim_set_keymap('n', '<Leader>N', '<cmd>lua vim.lsp.buf.references<CR>', opt_ns)
vim.api.nvim_set_keymap('n', '<Leader>s', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opt_ns)
vim.api.nvim_set_keymap('n', '[s', '<cmd>lua vim.lsp.buf.diagnostic.goto_prev()<CR>', opt_ns)
vim.api.nvim_set_keymap('n', ']s', '<cmd>lua vim.lsp.buf.diagnostic.goto_next()<CR>', opt_ns)
vim.api.nvim_set_keymap('n', '<Leader>F', '<cmd>lua vim.lsp.buf.formatting()<CR>', opt_ns)


vim.api.nvim_set_keymap('n', 'sh', '<C-w>h', opt_ns)
vim.api.nvim_set_keymap('n', 'sj', '<C-w>j', opt_ns)
vim.api.nvim_set_keymap('n', 'sk', '<C-w>k', opt_ns)
vim.api.nvim_set_keymap('n', 'sl', '<C-w>l', opt_ns)
vim.api.nvim_set_keymap('n', '<Leader>u', '<C-r>', opt_ns)

opt_n = { noremap = true, silent = false }

vim.api.nvim_set_keymap('n', '<Leader>D', '<cmd>lua vim.lsp.buf.declaration()<CR>', opt_n)
vim.api.nvim_set_keymap('n', '<Leader>d', '<cmd>lua vim.lsp.buf.definition()<CR>', opt_n)
vim.api.nvim_set_keymap('n', '<Leader>r', '<cmd>lua vim.lsp.buf.references()<CR>', opt_n)

vim.api.nvim_set_keymap('n', '<Leader>w', ':w<CR>', opt_n)
vim.api.nvim_set_keymap('n', '<Leader>q', ':q<CR>', opt_n)
vim.api.nvim_set_keymap('n', '<Leader>n', ':nohlsearch<CR><ESC>', opt_n)
vim.api.nvim_set_keymap('n', '<Leader>f', ':VimFiler<CR>', opt_n)

vim.g.vimfiler_safe_mode_by_default=0
vim.g['eskk#directory'] = "~/.jisho"
vim.g['eskk#dictionary'] = { path = '~/.jisho/.eskk-jisyo', sorted = 1, encoding = 'utf-8' }
vim.g['eskk#large_dictionary'] = { path = "~/.jisho/SKK-JISYO.L", sorted = 1, encoding = 'euc-jp' }
vim.g['eskk#enable_completion'] = 1
vim.g['eskk#keep_state'] = 0
vim.g['eskk#egg_like_newline'] = 1

require('packer').startup(function()
    use 'wbthomason/packer.nvim'
    use 'cocopon/iceberg.vim'
    use 'Shougo/unite.vim'
    use 'Shougo/vimfiler.vim'
    use 'sheerun/vim-polyglot'
    use 'ryanoasis/vim-devicons'
    use 'vim-airline/vim-airline'
    use 'jiangmiao/auto-pairs'
    use 'terryma/vim-multiple-cursors'
    use {
        'neovim/nvim-lspconfig',
        config=function()
            require'lspconfig'.tsserver.setup{
                cmd = { "typescript-language-server", "--stdio" }
            }
        end
    }
    use 'tyru/eskk.vim'
    use 'nvim-lua/plenary.nvim'
    use 'vim-denops/denops.vim'
    use {
        'matsui54/denops-popup-preview.vim',
        config = function()
            vim.cmd("call popup_preview#enable()")
        end
    }
    use {
        'nvim-telescope/telescope.nvim',
        config = function()
            vim.api.nvim_set_keymap('n', '<Leader>ff', '<cmd>lua require("telescope.builtin").find_files()<CR>', opt_n)
            vim.api.nvim_set_keymap('n', '<Leader>fg', '<cmd>lua require("telescope.builtin").live_grep()<CR>', opt_n)
            vim.api.nvim_set_keymap('n', '<Leader>fb', '<cmd>lua require("telescope.builtin").buffers()<CR>', opt_n)
            vim.api.nvim_set_keymap('n', '<Leader>fh', '<cmd>lua require("telescope.builtin").help_tags()<CR>', opt_n)
        end
    }
    use {
        'williamboman/nvim-lsp-installer',
        config = function()
            local lsp_installer = require("nvim-lsp-installer")
            lsp_installer.on_server_ready(function(server)
                local opts = {}
                opts.on_attach = on_attach
                opts.capabilities = require("cmp_nvim_lsp").update_capabilities(vim.lsp.protocol.make_client_capabilities())

                server:setup(opts)
                vim.cmd [[ do User LspAttachBuffers ]]
            end)
        end
    }
    use 'axvr/photon.vim'
    use {
        "hrsh7th/nvim-cmp",
        config = function()
            local cmp = require("cmp")
            cmp.setup({
                snippet = {
                    expand = function(args)
                        vim.fn["vsnip#anonymous"](args.body)
                    end,
                },
                mapping = {
                    ["<C-y>"] = cmp.mapping.complete(),
                    ["<C-c>"] = cmp.mapping.close(),
                    ['<C-n>'] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
                    ['<C-p>'] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),
                    ['<Down>'] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Select }),
                    ['<Up>'] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Select }),
                    ['<C-b>'] = cmp.mapping.scroll_docs(-4),
                    ['<C-f>'] = cmp.mapping.scroll_docs(4),
                    ['<C-Space>'] = cmp.mapping.complete(),
                    ['<C-e>'] = cmp.mapping.close(),
                    ['<CR>'] = cmp.mapping.confirm({
                        behavior = cmp.ConfirmBehavior.Replace,
                        select = true,
                    })
                },
                sources = cmp.config.sources({
                    { name = "nvim_lsp" },
                    { name = "vsnip" },
                }, {
                    { name = "buffer" },
                })
            })
        end
    }
    use "hrsh7th/cmp-nvim-lsp"
    use "hrsh7th/cmp-vsnip"
    use "hrsh7th/cmp-buffer"

    use "hrsh7th/vim-vsnip"
    
    use {
        "tomtom/tcomment_vim",
        config = function()
        end
    }

    use {
        "mfussenegger/nvim-dap",
        config = function()
            vim.api.nvim_set_keymap('n', '<Leader>b', '<cmd>lua require("dap").toggle_breakpoint()<CR>', opt_n)
            vim.api.nvim_set_keymap('n', '<Leader>dc', '<cmd>lua require("dap").continue()<CR>', opt_n)
            vim.api.nvim_set_keymap('n', '<Leader>dd', '<cmd>lua require("dapui").toggle()<CR>', opt_n)
            vim.api.nvim_set_keymap('n', '<Leader>dgt', '<cmd>lua require("dap-go").debug_test()<CR>', opt_n)
        end
    }
    use "mfussenegger/nvim-dap-ui"
    use "leoluz/nvim-dap-go"
    use "theHamsta/nvim-dap-virtual-text"
    use {
        "ferrine/md-img-paste.vim",
        config = function()
            vim.g['mdip_imgdir_absolute'] = 'img'
            vim.api.nvim_set_keymap('n', '<Leader>p', ':call mdip#MarkdownClipboardImage()<CR>', opt_n)
        end
    }

    vim.cmd("colorscheme photon")
end)

vim.opt.completeopt = "menu,menuone,noselect"
