function export_apps() {
  sudo dpkg-query -l | awk '{if ($1 == "ii") print $2}' > "$OS_LINUX_PATH/apt/packages_list.txt"
  echo 'apt apps exported!'

  brew bundle dump --file="$OS_LINUX_PATH/brew/brewfile" --force
  echo 'brew apps exported!'
}
