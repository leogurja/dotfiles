export EDITOR=nvim
export PATH="~/.local/bin:~/bin:$PATH"

[ -f ~/.asdf/asdf.fish ] && source ~/.asdf/asdf.fish
[ -f ~/.asdf/completions/asdf.fish ] && source ~/.asdf/completions/asdf.fish
[ -f ~/.gh-completion.sh ] && source ~/.gh-completion.sh
[ -f ~/.cargo/env ] && source ~/.cargo/env


abbr g "git"
abbr c "clear"
abbr q "exit 0"
abbr dev "cd ~/Projetos"
abbr copy "xclip -sel clipboard <"
abbr cat "bat"
abbr ll "ls -la"
abbr cp "cp -i"
abbr rm "rm -i"
abbr mv "mv -i"
abbr vim "nvim"

if status is-interactive
    eval $(starship init fish)
end
