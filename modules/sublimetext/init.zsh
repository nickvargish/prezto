
_sublbin=$(whence subl)
if [[ -z "$_sublbin" ]]; then
	if [[ -x '/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl' ]]; then
		_sublbin='/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl'
	fi
fi
if [[ -z "$_sublbin" ]]; then
	return 1
fi

# Open the specified file and/or directory in a new window
alias subl="$_sublbin -n"

# Add the specified file and/or directory to the current winsow
alias subla='$_sublbin -a'

# load a project
alias sublp="$_sublbin --project"

return 0
