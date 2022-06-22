# Set this variable to ubuntu or mac
os="mac"
#os="ubuntu"

# Set this variable to your Atlas username
atlas_username="sbanthony"

if [ "$os" == "mac" ]; then
    mkdir $HOME/scripts 2>/dev/null && mkdir $HOME/scripts/zsh 2>/dev/null
    echo "#!/bin/zsh" > $HOME/scripts/zsh/streamtunnel.sh
    echo "(trap 'kill 0' SIGINT; ssh -vNL 4554:\$2:554 $atlas_username@\$1 & sleep 3 && /Applications/VLC.app/Contents/MacOS/VLC rtsp://localhost:4554)" >> $HOME/scripts/zsh/streamtunnel.sh
    chmod +x $HOME/scripts/zsh/streamtunnel.sh
    sudo ln -s $HOME/scripts/zsh/streamtunnel.sh /usr/local/bin/streamtunnel
elif [ "$os" == "ubuntu"]; then
    mkdir $HOME/scripts 2>/dev/null && mkdir $HOME/scripts/bash 2>/dev/null
    echo "#!/bin/bash" > $HOME/scripts/bash/streamtunnel.sh
    echo "(trap 'kill 0' SIGINT; ssh -vNL 4554:\$2:554 $atlas_username@\$1 & sleep 3 && /mnt/c/Program\ Files/VideoLAN/VLC/vlc.exe rtsp://localhost:4554)" >> $HOME/scripts/bash/streamtunnel.sh
    chmod +x $HOME/scripts/bash/streamtunnel.sh
    sudo ln -s $HOME/scripts/bash/streamtunnel.sh /usr/local/bin/streamtunnel
fi