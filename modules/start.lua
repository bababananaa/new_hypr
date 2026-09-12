--   ▄▄▄▄▄                                
--  ██▀▀▀▀█▄ █▄             █▄            
--  ▀██▄  ▄▀▄██▄      ▄    ▄██▄           
--    ▀██▄▄  ██ ▄▀▀█▄ ████▄ ██ ██ ██ ████▄
--  ▄   ▀██▄ ██ ▄█▀██ ██    ██ ██ ██ ██ ██
--  ▀██████▀▄██▄▀█▄██▄█▀   ▄██▄▀██▀█▄████▀
--                                   ██   
--                                   ▀    

hl.on("hyprland.start", function () 
  -- graphical-session.target refuses manual start, so go through the
  -- hyprland-session.target wrapper; this is what starts portals/gvfs/at-spi
  hl.exec_cmd("systemctl --user import-environment WAYLAND_DISPLAY HYPRLAND_INSTANCE_SIGNATURE XDG_CURRENT_DESKTOP && systemctl --user start hyprland-session.target")
  hl.exec_cmd("waybar")
  hl.exec_cmd("~/.config/hypr/scripts/sidebar.sh") -- Watcher script for the pop up side bar
  hl.exec_cmd("hyprpaper & swaync")
  hl.exec_cmd("nm-applet --indicator") -- Should have fixed the tray,, doesn't seem to lol
  hl.exec_cmd("~/Documents/scripts/startUp.sh") -- My start up script for a couple things
  hl.exec_cmd("kitty -o font_size=7 --title=pomodoro -e ~/.cargo/bin/timr-tui -m pomodoro --sound ~/.config/hypr/assets/pomodoro-done.wav &") -- Starts up the pomodoro timer on special workspace like the calendar
  hl.exec_cmd("btop &") -- Starts up calendar in background on special workspace
end)

hl.on("hyprland.shutdown", function ()
  hl.exec_cmd("systemctl --user stop hyprland-session.target") -- Tear down so units don't linger past logout
end)
