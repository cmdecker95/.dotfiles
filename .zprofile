# Native equivalent of `brew shellenv zsh` for this Apple Silicon install.
# Login shells (including tmux panes) should not launch Homebrew each time.
export HOMEBREW_PREFIX=/opt/homebrew
export HOMEBREW_CELLAR="$HOMEBREW_PREFIX/Cellar"
export HOMEBREW_REPOSITORY="$HOMEBREW_PREFIX"
typeset -U path fpath
path=("$HOMEBREW_PREFIX/bin" "$HOMEBREW_PREFIX/sbin" $path)
fpath=("$HOMEBREW_PREFIX/share/zsh/site-functions" $fpath)
export PATH FPATH
if [[ -n ${MANPATH-} ]]; then
  MANPATH="${MANPATH%"${MANPATH##*[!:]}"}"
  export MANPATH=":${MANPATH#"${MANPATH%%[!:]*}"}"
fi
case ":${INFOPATH-}:" in
  *":$HOMEBREW_PREFIX/share/info:"*) ;;
  *) export INFOPATH="$HOMEBREW_PREFIX/share/info:${INFOPATH:-}" ;;
esac
