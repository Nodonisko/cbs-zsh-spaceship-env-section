# ------------------------------------------------------------------------------
# CBS Section
# ------------------------------------------------------------------------------

SPACESHIP_CBS_PREFIX="instance "
SPACESHIP_CBS_SUFFIX="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"
SPACESHIP_CBS_SYMBOL="🇨🇿 "
SPACESHIP_CBS_COLOR="red"

spaceship_cbs() {
  if [[ -f .env.override ]]; then
    env_file_content=$(<.env.override)
    [[ $env_file_content =~ 'ENVIRONMENT: ([a-zA-Z]*) ([a-zA-Z]*)' ]]
    instance="${match[1]}"
    team="${match[2]}"
  else
    return
  fi

  if [[ -z "$instance" && -z "$team" ]]; then
    return
  fi

  if [ "$instance" = "LKA" ]; then
    SPACESHIP_CBS_SYMBOL="🇱🇰 "
  elif [ "$instance" = "OMN" ]; then
    SPACESHIP_CBS_SYMBOL="🇴🇲 "
  elif [ "$instance" = "GEO" ]; then
    SPACESHIP_CBS_SYMBOL="🇬🇪 "
  elif [ "$instance" = "LTU" ]; then
    SPACESHIP_CBS_SYMBOL="🇱🇹 "
  elif [ "$instance" = "BRB" ]; then
    SPACESHIP_CBS_SYMBOL="🇧🇧 "
  elif [ "$instance" = "JAM" ]; then
    SPACESHIP_CBS_SYMBOL="🇯🇲 "
  elif [ "$instance" = "GUY" ]; then
    SPACESHIP_CBS_SYMBOL="🇬🇾 "
  fi

  # Display foobar section
  spaceship::section \
    "$SPACESHIP_CBS_COLOR" \
    "$SPACESHIP_CBS_PREFIX" \
    "$SPACESHIP_CBS_SYMBOL${instance}:${team}" \
    "$SPACESHIP_CBS_SUFFIX"
}