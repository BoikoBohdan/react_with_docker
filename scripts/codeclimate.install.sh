if [[ "$OSTYPE" == "darwin"* ]]; then
        printf "Your OS: Mac OS \nYour brew will be updated or installed(if not exist) and installed codeclimate!\n"
        which -s brew
        if [[ $? != 0 ]] ; then
            # Install Homebrew
            ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
        else
            brew update
        fi
        brew tap codeclimate/formulae
        brew install codeclimate
else
        printf "Your OS: Windows \nCodeclimate will be downloaded and installed to you PC!\n"
        curl -L https://github.com/codeclimate/codeclimate/archive/master.tar.gz | tar xvz
        cd codeclimate-* && sudo make install
fi

mkdir reports
printf "Create folder reports for your codeclimate reports!"
