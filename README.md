# cbs-zsh-spaceship-env-section
Show current CBS instance + team in your prompt according to your .env.override file. Only [SpaceShip Prompt](https://spaceship-prompt.sh) is supported but I think this could be pretty easily ported to other prompts.

# Installation
1. Copy content of file `env-section.sh` file from this repo to your prompt config located in `~/.zshrc`
2. Add `cbs` to your `SPACESHIP_PROMPT_ORDER` variable in `~/.zshrc`, if you don't have it here, [copy it from docs](https://spaceship-prompt.sh/options/#order) or use my [custom version](#my-spaceship-prompt-order).
3. Close and open your terminal.
4. That's it. Enjoy.

![Screenshot](screenshot.png)

# My SpaceShip prompt order

Feel free to use my recommended prompt order. Copy it to '~/.zshrc'.

```bash
SPACESHIP_PROMPT_ORDER=(
  time          # Time stamps section
  user          # Username section
  dir           # Current directory section
  host          # Hostname section
  git           # Git section (git_branch + git_status)
  #hg            # Mercurial section (hg_branch  + hg_status)
  #package       # Package version
  cbs           # CBS show current team + instance
  #gradle        # Gradle section
  #maven         # Maven section
  node          # Node.js section
  #ruby          # Ruby section
  #elixir        # Elixir section
  xcode         # Xcode section
  swift         # Swift section
  #golang        # Go section
  #php           # PHP section
  #rust          # Rust section
  #haskell       # Haskell Stack section
  #julia         # Julia section
  #docker        # Docker section
  #aws           # Amazon Web Services section
  #gcloud        # Google Cloud Platform section
  #venv          # virtualenv section
  #conda         # conda virtualenv section
  #pyenv         # Pyenv section
  #dotnet        # .NET section
  #ember         # Ember.js section
  #kubectl       # Kubectl context section
  #terraform     # Terraform workspace section
  #ibmcloud      # IBM Cloud section
  exec_time     # Execution time
  line_sep      # Line break
  #battery       # Battery level and status
  #vi_mode       # Vi-mode indicator
  #jobs          # Background jobs indicator
  exit_code     # Exit code section
  char          # Prompt character
)
```