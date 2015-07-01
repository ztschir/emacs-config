emacs-config
============

Need to link .emacs to ~/.emacs and .emacs.d to ~/.emacs.d

For Server mode
- Chmod 755 "edit", then copy "edit" file to /bin/edit (or ~/bin/edit for mulit-user system)

For Linux
- export EDITOR=/bin/edit (or ~/bin/edit for multi-user system)

For OSX
- Run: launchctl setenv EDITOR /bin/edit
- Move /usr/bin/emacs and /usr/bin/emacsclient to emacs-default and emacsclient-default, respectivly.
- ln -s /Applications/Emacs.app/Contents/MacOS/Emacs /usr/bin/emacs
- ln -s /Applications/Emacs.app/Contents/MacOS/bin/emacsclient /usr/bin/emacsclient
- Copy move "Emacs" application included in this repo to a menu bar

