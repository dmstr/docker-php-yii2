PS1="\e[0;35m[$APP_NAME] $APP_VERSION \e[0;0m\w \e[0;37m\u \h \e[0;0m\n$ "

cat <<'MSG'
 ___________
|           |
|     _     |      _               _
|  /\| |/\  |     | |             | |
|  \ ` ' /  |   __| |_ __ ___  ___| |_ _ __
| |_     _| |  / _` | '_ ` _ \/ __| __| '__|
|  / , . \  | | (_| | | | | | \__ \ |_| |
|  \/|_|\/  |  \__,_|_| |_| |_|___/\__|_|
 \         /
  \_______/

Docker image dmstr/php-yii2

Console commands: composer, codecept, phpunit, yii

MSG

echo "PHP version: ${PHP_VERSION}"

if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion.d/yii ]; then
    . /etc/bash_completion.d/yii
  fi
fi