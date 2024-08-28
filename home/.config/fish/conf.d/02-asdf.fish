set -gx ASDF_CONFIG_FILE $XDG_CONFIG_HOME/asdfrc
set -gx ASDF_DIR $XDG_DATA_HOME/asdf
set -gx ASDF_DATA_DIR $ASDF_DIR/plugins


[ -s $ASDF_DIR/asdf.fish ] && source $ASDF_DIR/asdf.fish
[ -s $ASDF_DATA_DIR/java/set-java-home.fish ] && source $ASDF_DATA_DIR/java/set-java-home.fish
