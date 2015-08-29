# Initialize rb environment
if which rbenv > /dev/null; then
  eval "$(rbenv init - --no-rehash)";
fi

# Adding gnu coreutils path
PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"

# Personal Access Token for Homebrew
HOMEBREW_GITHUB_API_TOKEN="0c281dda5217d59ecc212d2ef4b6d00cb923ad16"

# Use dracula theme
ZSH_THEME="dracula"
