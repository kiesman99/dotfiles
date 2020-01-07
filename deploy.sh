# -----------------------------
# function hr {
#    #echo "\n\n";
#    #echo "-----------------";
#    #echo "\n\n";
#    echo "";
#}
# -----------------------------


## variables

## collect dotfiles, that neet to be saved here
files="zshrc vim vimrc antigenrc zsh_plugins.txt aliases.sh p10k.zsh exports.sh";
##

dir=~/dotfiles
backuptDir=~/dotfiles_old

echo "deploy.sh";
# hr

echo "Following files will be deployed:\n"

# print all files
for file in $files; do
echo $file;
done
# hr

echo "Making Backup of old dotfiles in $backupDir"
mkdir -p $backuptDir
for file in $files; do
mv ~/.$file ~/dotfiles_old/
done
echo "...done"

# hr

echo "Make Symbolic from $dir to '~'"

for file in $files; do
ln -s $dir/$file ~/.$file
done
echo "...done"

# hr

# Downloads

echo "Downloading ANTIBODY\n"
# curl -L git.io/antigen > "$PWD/antigen.zsh"
curl -sfL git.io/antibody | sudo sh -s - -b /usr/local/bin
echo "...done"

# hr

echo "Downloaing and installing oh-my-zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
echo "...done"
