PATH=$HOME/bin:$HOME/Library/Python/2.7/bin:/usr/local/mysql/bin:/usr/local/bin:$HOME/.nodebrew/current/bin:$PATH
export PATH

# Added by the Heroku Toolbelt
export PATH=/usr/local/heroku/bin:$PATH

#if [ -d ${HOME}/.phpenv ] ; then
#  export PATH="$HOME/.phpenv/bin:$PATH"
#  eval "$(phpenv init - zsh)"
#fi

if [ -d ${HOME}/.rbenv  ] ; then
  export PATH="$HOME/.rbenv/bin:$PATH"
  eval "$(rbenv init - zsh)"
fi


# Add environment variable COCOS_CONSOLE_ROOT for cocos2d-x
#if  [ -d ${HOME}/cocos2d-x/cocos2d-x-3.2 ] ; then
#  export COCOS_CONSOLE_ROOT=$HOME/cocos2d-x/cocos2d-x-3.2/tools/cocos2d-console/bin
#  export PATH=$COCOS_CONSOLE_ROOT:$PATH
#fi
if  [ -d ${HOME}/cocos2d-x/cocos2d-x-3.8 ] ; then
  export COCOS_CONSOLE_ROOT=$HOME/cocos2d-x/cocos2d-x-3.8/tools/cocos2d-console/bin
  export PATH=$COCOS_CONSOLE_ROOT:$PATH
fi

# Add environment variable NDK_ROOT for cocos2d-x
if [ -d /Applications/eclipse ] ; then
#  export NDK_ROOT=/Applications/adt-bundle-mac-x86_64-20140321/android-ndk-r9d
#  export ANDROID_SDK_ROOT=/Applications/adt-bundle-mac-x86_64-20140321/sdk
#  export ANT_ROOT=/Applications/adt-bundle-mac-x86_64-20140321/sdk/tools
  export NDK_ROOT=/Applications/eclipse/android-ndk-r10e
  export ANDROID_SDK_ROOT=/Applications/eclipse/android-sdk-macosx
  export ANT_ROOT=/usr/local/bin
  export ANDROID_HOME=$ANDROID_SDK_ROOT
  export ANDROID_SDK_HOME=$ANDROID_SDK_ROOT
  export PATH=$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools:$NDK_ROOT:$PATH
  export NDK_CCACHE=`which ccache`
fi

# boot2docker
export DOCKER_CERT_PATH=${HOME}/.boot2docker/certs/boot2docker-vm
export DOCKER_TLS_VERIFY=1
export DOCKER_HOST=tcp://192.168.59.103:2376

#phpbrew
export PHPBREW_SET_PROMPT=1
source ~/.phpbrew/bashrc

export HOMEBREW_CASK_OPTS="--appdir=/Applications --caskroom=/usr/local/Caskroom"
export EDITOR=vim
export SYS_NOTIFIER=`which terminal-notifier`
#export GROWL_NOTIFIER=`which growlnotify`
export NOTIFY_COMMAND_COMPLETE_TIMEOUT=20
