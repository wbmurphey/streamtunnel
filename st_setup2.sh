# Set this variable to ubuntu or mac
os="mac"
# Set this variable to your Atlas username
atlas_username="bmurphey"

if [ "$os" == "mac" ]; then
    mkdir $HOME/scripts && mkdir $HOME/scripts/zsh
    echo "#!/bin/zsh" > $HOME/scripts/zsh/streamtunnel.sh
    echo "(trap 'kill 0' SIGINT; ssh -vNL 4554:\$2:554 $atlas_username@\$1 & sleep 3 && /Applications/VLC.app/Contents/MacOS/VLC rtsp://localhost:4554)" >> $HOME/scripts/zsh/streamtunnel.sh
    chmod +x $HOME/scripts/zsh/streamtunnel.sh
    sudo ln -s $HOME/scripts/zsh/streamtunnel.sh /usr/local/bin/streamtunnel
elif [ "$os" == "ubuntu"]; then
    mkdir $HOME/scripts && mkdir $HOME/scripts/bash
    echo "#!/bin/bash" > $HOME/scripts/bash/streamtunnel.sh
    echo "ssh -vNL 4554:\$2:554 $atlas_username@\$1" >> $HOME/scripts/bash/streamtunnel.sh
    chmod +x $HOME/scripts/bash/streamtunnel.sh
    sudo ln -s $HOME/scripts/bash/streamtunnel.sh /usr/local/bin/streamtunnel
fi