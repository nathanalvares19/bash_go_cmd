# Bash Script + Bash Function for quick access to project directory

Go through the setup instructions below to create a bash script/command that will change the shell path to your desired project directory.

## Bash Script Method (.sh file)

### Setup Instructions

1. Open the go.sh file
2. Change the directory paths according to need:

   - TARGET: argument passed to the script; shorthand for a particular project directory
   - DEST: the actual directory path to navigate to
   - else block takes a default directory if no TARGET was provided

```bash
#!/bin/bash

TARGET="$1"

if [ "$TARGET" = "project1" ]; then
    DEST="path/to/project1"
elif [ "$TARGET" = "project2" ]; then
    DEST="path/to/project2"
elif [ "$TARGET" = "project3" ]; then
    DEST="path/to/project3"
else
    DEST="path/to/default/directory"
fi

cd "$HOME/$DEST" || echo "Directory not found: $HOME/$DEST"

```

3. Make go.sh executable (optional; already done mostly)

```bash
chmod +x ~/go.sh
```

4. Move the go.sh file to your home directory (~/go.sh)

5. Run this command from your home directory

```bash
# default directory
source go.sh

# project1
source go.sh project1

# project2
source go.sh project2

# project3
source go.sh project3

```

## Bash Function Method (Recommended)

This version works like a built-in command and doesn't need source.

### Setup Instructions

1. Open your shell config

```bash
nano ~/.bashrc

```

If file does not exist, create it in the home directory

```bash
touch ~/.bashrc

```

2. Paste the following code in the file

```bash
go() {
    local TARGET="$1"
    local DEST=""

    case "$TARGET" in
        project1)
            DEST="path/to/project1"
            ;;
        project2)
            DEST="path/to/project2"
            ;;
        project3)
            DEST="path/to/project3"
            ;;
        *)
            DEST="path/to/default/directory"
            ;;
    esac

    cd "$HOME/$DEST" || echo "Directory not found: $HOME/$DEST"
}

```

3. Save and reload the config file

```bash
source ~/.bashrc

```

4. Now simply run this command from any directory

```bash
# default directory
go

# project1
go project1

# project2
go project2

# project3
go project3

```
