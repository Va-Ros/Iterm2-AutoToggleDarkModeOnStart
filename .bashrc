# append to your code

if [[ "$(uname -s)" == "Darwin" ]]; then
    sith() {
        val=$(defaults read -g AppleInterfaceStyle 2>/dev/null)
        if [[ $val == "Dark" ]]; then
	    da
        else
	    li
	fi
    }

    da() {
	echo "ITERM: toggle dark theme"
        if [[ $ITERM_PROFILE != "Dark" ]]; then
	  echo -ne "\033]50;SetProfile=Dark\a"
          export ITERM_PROFILE="Dark"
	fi
    }
    li() {
        echo "toggle light theme"
	if [[ $ITERM_PROFILE != "Light" ]]; then
          echo -ne "\033]50;SetProfile=Light\a"
          export ITERM_PROFILE="Light"
	fi
    }

    sith
fi
