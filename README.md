# Scripts for TWIAL 
Twitch Installs Arch Linux: Scripts

## What is this?
These are community contributed scripts that can be run on http://www.twitch.tv/twitchinstallsarchlinux

### THIS MAKES IT WORK RUN:
#### ~~`curl xy.s.co|sh`~~
## Update Nov 3 2015 4:00 UTC
For some reason this breaks with the error `:SSL routines:SSL3_READ_BYTES:sslv3 alert bad record mac`. Can't seem to repro locally. If you have a fix, submit a PR. Come by https://gitter.im/twial/twial-dev to help debug.

![](https://i.imgur.com/XE5pKRr.png)

However, `alias p='curl -L https://raw.githubusercontent.com/twial/scripts/master/p | sh'` is in .bash_profile (99% certain). No more typing curl commands? We can run `p`, and then `enter`, to curl the script.

## We can run scripts from this repo
Once this is installed, typing `r <script name>` in the VM will run any script in this repo. Fork and pull request to submit your scripts

## 'r' doesn't work yet. We need to create the alias. ~~(the previous curl installed a broken alias). We need to `curl xy.s.co|sh` first.~~ Once we fix the script we should be able to run `p` + `enter` to run the script.

## Scripts

`index.sh` - install script

`p` - post install script, and adds aliases so we can access this repo

`memtest.sh` - Calls index.sh and covers screen in blue saying memtest during installation.

`run` - runs any script in this repo

`tpp` - pokemon (untested)

`sw` - ASCII star wars
