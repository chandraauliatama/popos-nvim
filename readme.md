# This is my specific NVIM configuration for my popos machine

## Requirement

Before installing make sure of the following points
- Install Neovim >= 0.8.0 Version. You can check the steps [here](https://linux.how2shout.com/3-ways-to-install-neovim-on-ubuntu-22-04-or-20-04/)
- NodeJs and NPM installed. This for some Mason linter, formatter, etc
- Make sure ripgrep installed, so fuzzy finder(telescope is working fine)
```
sudo apt install -y ripgrep
```

## Steps
1. Install Neovim
2. Make sure you are in .config directory and remove other nvim configuration
```
cd ~/.config
rm -rf nvim
```
3. clone this repo in .config folder
```
git clone https://github.com/chandraauliatama/popos-nvim.git nvim
```
or
```
git clone git@github.com:chandraauliatama/popos-nvim.git nvim
```
4. open neovim


## Extra (Useful Nvim Commands)
```
:PackerSync
:chekchealth

```


