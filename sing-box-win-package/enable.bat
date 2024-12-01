sc create sing-box binPath= "\"%~dp0\sing-box.exe\" -D \"%~dp0\" -c \"%~dp0\config.json\" run" DisplayName= "sing-box" start= auto
sc description sing-box "sing-box proxy service"
sc start sing-box
