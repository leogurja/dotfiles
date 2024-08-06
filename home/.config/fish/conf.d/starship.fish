if not command -s starship
  curl -sS https://starship.rs/install.sh | sh
end

if status is-interactive
  starship init fish | source
end
