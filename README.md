# Dotfiles

## Quick installation:

### 1. Install iTerm2

### 2. Change color scheme of iTerm2

In iTerm2 cmd+i -> colors -> 'Color Presents' -> 'Import...' and upload file `dank_neon.itermcolors` 

Source: https://github.com/DankNeon/iterm

### 3.1 OSx

You can run `bash activate_mac.sh` but it is better to go one by one

### 3.2 Ubuntu

You can run `bash activate_ubuntu.sh` but it is better to go one by one


### Useful plagins which are included in Quick Installation files:

1. Auto suggestions, see 'Oh My Zsh':

https://github.com/zsh-users/zsh-autosuggestions

2. Spelling correction:

You enable the feature by adding `setopt correct` to your config `~/.zshrc` (already added)

3. zsh-syntax-highlighting, see installation 'Oh-my-zsh':

https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md

4. Enable mouse in vim:

https://www.youtube.com/watch?v=kvmD_N1iIwg

5. Add shortcut for cut and paste:

https://www.youtube.com/watch?v=E_rbfQqrm7g&t=239s

6. Auto-Complete in vim (aka plugin YouCompleteMe):

https://github.com/ycm-core/YouCompleteMe#installation

7. Syntastic

Install:

add to .vimrc plugin

Plugin 'vim-syntastic/syntastic'

Plugin 'nvie/vim-flake8'

Settings:

set statusline+=%#warningmsg#

set statusline+=%{SyntasticStatuslineFlag()}

set statusline+=%*

let g:syntastic_always_populate_loc_list = 1

let g:syntastic_auto_loc_list = 1

let g:syntastic_check_on_open = 1

let g:syntastic_check_on_wq = 0

For using python3 checker instead of python2:

let g:syntastic_python_python_exec = 'python3

let g:syntastic_python_checkers = ['python']

Source:
https://github.com/vim-syntastic/syntastic

8. NERDTree 

Install: 

Plugin 'scrooloose/nerdtree'

Plugin 'jistr/vim-nerdtree-tabs'

Create file/rename file/remove file:
https://sookocheff.com/post/vim/creating-a-new-file-or-directoryin-vim-using-nerdtree/

Switch between windows:
https://superuser.com/questions/280500/how-does-one-switch-between-windows-on-vim

Some shortcuts: 

<C-w>n - :new horizontal split (editing a new empty buffer)
  
<C-w>s - :split window horizontally (editing current buffer)
  
<C-w>v - :vsplit window vertically (editing current buffer)
  
<C-w>c - :close window
  
<C-w>o - close all windows, leaving :only the current window open

Switch between vim tabs with ctrl-left/right/up/down:

nnoremap <C-Right> <C-W>l
  
nnoremap <C-Left> <C-W>h
  
nnoremap <C-Up> <C-W>k
  
nnoremap <C-Down> <C-W>j
  
For launcing by ctrl+n NERDTreeToggle:

map <C-n> :NERDTreeToggle<CR>

Remove/add/rename/copy file:

m -> a (add file)

m -> d (delete file)

Source:
https://github.com/preservim/nerdtree


### Useful plugins that are not included in Quick installation:

0. **Add support of 3rd party libraries for YouCompleteMe**:

Add to `~/.vimrc`:

`let g:ycm_path_to_python_interpreter='/usr/local/bin/python3'`
where you **need to specify your path to python3**

1. **Ranger:**

To install `brew install ranger`

To draw borders:

1) `ranger --copy-config=all`

2) path to config: `~/.config/rc.conf`

3) Inside config file: `set draw_borders true`

To enable preview of images:

1) `set preview_images true`

2) `set preview_images_method iterm2`

2. **Midnight commander (mc):**

To install: `brew install midnight-commander`

3. **fzf:**

Isntall:  `git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install`

Usage: ctrl+t in command line for searching through computer
ctrl+r for searching on history of command line

Exmples:

`ssh **` press tab => suggests all ip

`vim **` and then tab


## Shortcuts in CLI:
cmd + enter - FullScreen
cmd + K - clear
ctrl + u - clear typed 
ctrl + k - clear the line after cursor

## Shortcuts in vim:
u - undo
ctrl + r - redo
Ctrl-o, 0 beginning of line
Ctrl-o, $ end of line
Ctrl-o, f, y find first y in sentence

Shft+0 - start of next line (NOT i mode)
shift+$ - beggining of line (NOT i mode)


### Shortcuts for iTerm2:

Split horizontally: **cmd+d**

Split vertically: **cmd-shift-d**

### Some useful notes:

1. `cd /u/lo/ce` then press tab => `cd /usr/local/Cellar/`

2. Themes for ZSH:

https://github.com/ohmyzsh/ohmyzsh/wiki/Themes

3. Aliases examples:

Add to ~/.zshrc: `alias virtual="ssh mail_2020q1@virtual-client.bigdatateam.ru -L 50070:virtual-master:50070"`

4. If backspace in insert mode does not workin vim: add `set backspace=indent,eol,start` to `.vimrc` file
