
import XMonad

main = xmonad $ defaultConfig
    { borderWidth       = 2
    , terminal          = "gnome-terminal"
    , focusFollowsMouse = True
    , workspaces        = ["1", "2", "3", "4", "5" ]
    , layoutHook        = Full
    }

