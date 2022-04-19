#!/bin/zsh

###
 # Required Commands
 #
 # - Note, if antigen above hasn't installed yet, a reload will install require and install the below.
 #
 # @see   https://github.com/aubreypwd/zsh-plugin-require Uses this bundle to run require function/command.
 # @since Friday, 10/2/2020                               The initial ones.
 # @since Tuesday, April 19, 2022.                        Moved to own plugin.
 ##
if [[ ! $( command -v require ) ]]; then

	echo "Could not find the 'require' function."
	echo "  Please install: https://github.com/aubreypwd/zsh-plugin-require"
else

	###
	 # Install homebrew.
	 #
	 # You probably have this installed aready though.
	 #
	 # E.g: brew
	 #
	 # @since Friday, 10/2/2020
	 # @see   https://brew.sh
	 ##
	require "brew" '/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"'

	###
	 # Install package managers from homebrew.
	 #
	 # Also installs gem
	 #
	 # @since Friday, 10/2/2020
	 ##
	require "composer" "brew reinstall composer" "brew" # Composer, @see https://composer.org
	require "npm" "brew reinstall node" "brew" # Also installs node.
	require "python" "brew reinstall python" "brew" # Installs pip3 and easy_install
	require "ruby" "brew reinstall ruby" "brew" # Installs gems

	###
	 # Install repo managers.
	 #
	 # @since Friday, 10/2/2020
	 ##
	require "ghq" "brew reinstall ghq" "brew"

	###
	 # Homebrew Requirements
	 #
	 # @since Friday, 10/2/2020
	 # @see   https://brew.sh
	 ##
	require "m" "brew reinstall m" "brew" # What does this do?
	require "git" "brew reinstall git" "brew"
	require "svn" "brew reinstall subversion" "brew"
	require "ffmpeg" "brew reinstall ffmpeg" "brew"
	require "fzf" "brew reinstall fzf" "brew"
	require "watch" "brew reinstall watch" "brew"
	require "watchexec" "brew reinstall watchexec" "brew"
	require "wget" "brew reinstall wget" "brew"
	require "wp" "brew reinstall wp-cli" "brew"
	require "exa" "brew reinstall exa" "brew" # Exa makes ls even more awesome.
	require "cmatrix" "brew reinstall cmatrix" "brew" # Exa makes ls even more awesome.
	require "terminal-notifier" "brew reinstall terminal-notifier" "brew" # Terminal notifications
	require "highlight" "brew reinstall highlight" "brew" # Highlighting cat
	require "mycli" "brew reinstall mycli" "brew" # Better than mysql
	require "http" "brew install httpie" "brew" # Better than curl, replaces curl.
	require "m" "brew install m-cli" "brew" # Love m-cli!

	## https://github.com/RichiH/vcsh
	require "vcsh" "brew reinstall vcsh" "brew"

	## lazygit for git gui
	require "ttab" "npm install ttab -g" "npm" # Used to open new windows in iTerm, etc.
fi
