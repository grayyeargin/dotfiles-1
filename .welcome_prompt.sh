#-------------------------------------------------------------------------------
# Welcome Prompt
# prints stats on terminal load
#-------------------------------------------------------------------------------

# welcome and unwelcome functions to toggle welcome_prompt are in .bash_prompt
WELCOME_PROMPT=true

welcome_msg() {
  echo ${white}${bg_cyan} \
      GRAY ${reset}${white}${bg_violet} \
      YEARGIN ${reset}${white}${bg_orange} \
      Brooklyn, NY ${reset}
  echo "------------------------------------------"
  echo $(git --version)
  if which brew >/dev/null; then
    echo $(brew -v)
  fi
  echo ${violet}${bg_cyan} \
      NODE $(node --version)${reset}
  echo ${reset}${white}${bg_violet} \
      NPM $(npm --version)${reset}
  echo "------------------------------------------"
  echo "type ${BOLD}unwelcome${RESET} to remove this message"
}

if [[ $WELCOME_PROMPT == true ]]; then welcome_msg; fi
  