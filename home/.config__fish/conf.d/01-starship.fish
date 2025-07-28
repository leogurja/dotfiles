if not command -s starship > /dev/null
  curl -sS https://starship.rs/install.sh | sh
end

if status is-interactive
  starship init fish | source
end
