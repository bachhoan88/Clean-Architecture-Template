#!/bin/bash
# Installs IntelliJ templates

echo "Installing template files..."

find /Applications -path "*.app" -prune \( -name "*Android Studio*" -or -name "*IntelliJ IDEA*" \) -print0 | while read -d $'\0' folder
do
  echo "\nInstalling to $folder"
  cp -frv $( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )/CleanFragment* "$folder/Contents/plugins/android/lib/templates/activities/"
  cp -frv $( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )/CleanModel* "$folder/Contents/plugins/android/lib/templates/activities/"
  cp -frv $( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )/CleanRecycleViewAdapter* "$folder/Contents/plugins/android/lib/templates/activities/"
done


echo "Done."
echo ""
echo "Restart IntelliJ and/or AndroidStudio"
