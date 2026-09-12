                                                                    --   ▄▄▄                                                               
--  █▀██  ██  ██▀▀                                                     
--    ██  ██  ██       ▄     ▄▄                                        
--    ██  ██  ██ ▄███▄ ████▄ ██ ▄█▀ ▄██▀█ ████▄ ▄▀▀█▄ ▄███▀ ▄█▀█▄ ▄██▀█
--    ██▄ ██▄ ██ ██ ██ ██    ████   ▀███▄ ██ ██ ▄█▀██ ██    ██▄█▀ ▀███▄
--    ▀████▀███▀▄▀███▀▄█▀   ▄██ ▀█▄█▄▄██▀▄████▀▄▀█▄██▄▀███▄▄▀█▄▄▄█▄▄██▀
--                                        ██                           
--                                        ▀                            

-- All workspace rules live here. The 5x3 grid navigation that uses them is in grid.lua

-- Row 1
hl.workspace_rule({ workspace = "1",  persistent = true,  monitor = "eDP-1", default = true })
hl.workspace_rule({ workspace = "2",  persistent = true,  monitor = "eDP-1" })
hl.workspace_rule({ workspace = "3",  persistent = true,  monitor = "eDP-1" })
hl.workspace_rule({ workspace = "4",  persistent = true,  monitor = "eDP-1" })
hl.workspace_rule({ workspace = "5",  persistent = true,  monitor = "eDP-1" })

-- Row 2
hl.workspace_rule({ workspace = "6",  persistent = false, monitor = "eDP-1" })
hl.workspace_rule({ workspace = "7",  persistent = false, monitor = "eDP-1" })
hl.workspace_rule({ workspace = "8",  persistent = false, monitor = "eDP-1" })
hl.workspace_rule({ workspace = "9",  persistent = false, monitor = "eDP-1" })
hl.workspace_rule({ workspace = "10", persistent = false, monitor = "eDP-1" })

-- Row 3
hl.workspace_rule({ workspace = "11", persistent = false, monitor = "eDP-1" })
hl.workspace_rule({ workspace = "12", persistent = false, monitor = "eDP-1" })
hl.workspace_rule({ workspace = "13", persistent = false, monitor = "eDP-1" })
hl.workspace_rule({ workspace = "14", persistent = false, monitor = "eDP-1" })
hl.workspace_rule({ workspace = "15", persistent = false, monitor = "eDP-1" })

-- Lands on workspace 1 (top left of the grid) at launch
hl.on("hyprland.start", function ()
    hl.dispatch(hl.dsp.focus({ workspace = "1" }))
end)
