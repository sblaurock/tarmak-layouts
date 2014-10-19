#!/bin/bash

DESTINATION='/Library/Keyboard Layouts/'

# Ensure user meets dependency requirements (OS X, tar)
if [[ "$OSTYPE" != "darwin"* ]] || [ -z $(which tar) ]; then
  echo "Installation failed. You must be running a variant of OS X with 'git' and 'tar' available."
  exit 1
fi

# Ensure destination directory exists
if [[ ! -d $DESTINATION ]]; then
  echo "Installation failed. Could not verify existence of destination directory."
  exit 2
fi

# Verify passed argument is valid
if [[ -z "$1" ]] || [[ "$1" != "etoir" && "$1" != "etroi" ]]; then
  echo "Installation failed. Supplied argument must be either 'etoir' or 'etroi'."
  exit 3
fi

# Unpack requested layout bundle
tar -xzf "tarmak-$1.tar.gz"

PACKAGE=$(ls . | grep "Tarmak")

# Ensure layout bundle hasn't already been installed
if [[ -d "${DESTINATION}${PACKAGE}" ]]; then
  rm -rf "Tarmak"*".bundle"

  echo "Installation failed. Layout is already installed."
  exit 4
fi

# Finally, move layout bundle to destination
mv "$PACKAGE" "$DESTINATION"

# Win
echo "Installation complete. Add your Tarmak layouts to OS X keyboard input sources to enable them."
exit 0