"use strict";
module.exports = {
    config: {
        updateChannel: 'stable',
        fontSize: 12,
        fontFamily: '"FiraCode Nerd Font Mono", monospace',
        fontWeight: 'normal',
        fontWeightBold: 'bold',
        lineHeight: 1,
        letterSpacing: 0,
        cursorColor: 'rgba(248,28,229,0.8)',
        cursorAccentColor: '#000',
        cursorShape: 'BEAM',
        cursorBlink: true,
        backgroundColor: '#222',
        showWindowControls: false
    },
    plugins: [
        "hyper-highlight-active-pane",
        "hyper-tabs-enhanced",
        "hyper-pane",
        'nord-hyper'
    ],
    localPlugins: [],
    keymaps: {
    },
};
