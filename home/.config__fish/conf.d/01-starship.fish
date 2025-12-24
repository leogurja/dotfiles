if not command -s /home/linuxbrew/.linuxbrew/bin/starship > /dev/null
  /home/linuxbrew/.linuxbrew/bin/brew install starship
end

if status is-interactive
  /home/linuxbrew/.linuxbrew/bin/starship init fish | source
end
