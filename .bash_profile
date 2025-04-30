
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if [ -f '/d/software/anaconda3/Scripts/conda.exe' ]; then
    eval "$('/d/software/anaconda3/Scripts/conda.exe' 'shell.bash' 'hook')"
fi
# <<< conda initialize <<<

eval "$(oh-my-posh --init --shell bash --config ~/wow.omp.json)" 

alias ls='eza --icons -a'
export EZA_CONFIG_DIR="C:/Users/yt/.config/eza"