
set -gx --prepend ASDF_DATA_DIR "$XDG_DATA_HOME/asdf"
set -gx --prepend ASDF_CONFIG_FILE "$XDG_CONFIG_HOME/asdfrc"
set _asdf_shims "$ASDF_DATA_DIR/shims"

# Do not use fish_add_path (added in Fish 3.2) because it
# potentially changes the order of items in PATH
if not contains $_asdf_shims $PATH
    set -gx --prepend PATH $_asdf_shims
end
set --erase _asdf_shims
