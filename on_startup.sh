#!/bin/bash

sleep 2;

google-chrome --new-window "https://tldr.tech/" & sleep 1;
google-chrome --new-window "https://www.youtube.com/" & sleep 1;
google-chrome --new-window "https://www.linkedin.com/feed/" & sleep 1;

i3-msg '[title="TLDR*"] move to workspace 1'
sleep 0.5;
i3-msg '[title="*YouTube*"] move to workspace 2'
sleep 0.5;
i3-msg '[title="*LinkedIn"] move to workspace 3'
sleep 0.5;

alacritty & sleep 1;
i3-msg '[class="Alacritty"] move to workspace 3'

flatpak run com.discordapp.Discord & sleep 1;
i3-msg '[class="discord"] move to workspace 2'
