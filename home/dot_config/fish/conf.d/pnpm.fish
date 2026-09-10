set -gx NPM_CONFIG_USERCONFIG "$HOME/.config/npmrc"
set -gx PNPM_HOME "$HOME/.local/share/pnpm"

if not string match -q -- "$PNPM_HOME/bin" $PATH
  set -gx PATH "$PNPM_HOME/bin" $PATH
end
