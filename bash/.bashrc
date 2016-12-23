for file in ~/.{path,bash_prompt,exports,aliases,bash_aliases,functions,extra}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file"
done
unset file

shopt -s histappend

HISTSIZE=
HISTFILESIZE=

export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"


eval "$(fasd --init auto)"
#export PS1="\e[1;34m\u\e[m \e[1;31m\w\e[m$ "
export PS1="\[\033[1;34m\]\u\[\e[m\] \[\033[1;31m\]\w\[\e[m\]: "

if [ -f $(brew --prefix)/share/bash-completion/bash_completion ]; then
  . $(brew --prefix)/share/bash-completion/bash_completion
fi


eval "$(register-python-argcomplete conda)"


export PATH=/Users/gerke/torch/install/bin:$PATH  # Added automatically by torch-dist
export LD_LIBRARY_PATH=/Users/gerke/torch/install/lib:$LD_LIBRARY_PATH  # Added automatically by torch-dist
export DYLD_LIBRARY_PATH=/Users/gerke/torch/install/lib:$DYLD_LIBRARY_PATH  # Added automatically by torch-dist

source ~/.aws/export_credentials.sh
export GDAL_DATA=/usr/local/Cellar/gdal-20/2.1.0/share/gdal

export EDITOR=nvim

export PYTHONPATH=/Users/gerke/dev/objectdetection

export HOMEBREW_GITHUB_API_TOKEN=3b9f02e948e7c6f879df720e59c70aadc435c43f 


[ -f ~/.fzf.bash ] && source ~/.fzf.bash
