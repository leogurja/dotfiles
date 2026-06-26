set -gx NPM_CONFIG_USERCONFIG "/home/gurja/.config/npmrc"
set -gx PNPM_HOME "/home/gurja/.local/share/pnpm"

if not string match -q -- "$PNPM_HOME/bin" $PATH
  set -gx PATH "$PNPM_HOME/bin" $PATH
end
