                                                 
--   ▄▄▄     ▄▄▄                                    
--    ███▄ ▄███                  █▄                 
--    ██ ▀█▀ ██         ▄     ▀▀▄██▄      ▄         
--    ██     ██   ▄███▄ ████▄ ██ ██ ▄███▄ ████▄▄██▀█
--    ██     ██   ██ ██ ██ ██ ██ ██ ██ ██ ██   ▀███▄
--  ▀██▀     ▀██▄▄▀███▀▄██ ▀█▄██▄██▄▀███▀▄█▀  █▄▄██▀
                                                 
                                                 
-- My main monitor
hl.monitor({
    output   = "eDP-1",
    mode     = "preferred",
    position = "0x0",
    scale    = "auto",
})

-- Secondary monitor (Not currently in use)
-- hl.monitor({
--     output   = "HDMI-A-1,
--     mode     = "1366x768",
--     position = "-768x0",
--     scale    = "1.5",
-- })