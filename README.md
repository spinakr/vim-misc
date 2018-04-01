# Vim 

## Configuration
> This repo contains the content of my .vim directory, including plugins as sumodules. To Initialize the config execute the following steps

- Clone this repo into .vim dictonary in home folder ~
- Run bootstrapper script, which downloads plugins and links the .vimrc
#### Optional (JS/react specific):
- Add eslint to project: `yarn add --dev eslint babel-eslint eslint-plugin-react` and `eslint --init`
- If using createreactapp add the following to package.json of project
```javascript
"eslintConfig": {
  "extends": "react-app"
},
```

## Plugins
- ale : Connects to project eslint configuration and displays errors
- ctrlP : Fuzzy file finder (opens with `,t`)
- nerdtree : File explorer (opens with `,n` and reveals current file with `,v`)
- vim-json : Json highlighting
- vim-prettier : File formatter (Format current file with `,p`) 
- auto-pairs : Inserts and deletes brackets in pairs
- emmet-vim : Exands abbreviation when writing html (activates with `<Tab>,`) 
- vim-airline : Status bar
- vim-javascript : Javascript highlihting
- vim-jsx : Highlighting for jsx


## Cheat Sheets
I use vim on mac, windows and as a plugin to vs code. Cheet sheets containing the commmands and key combinations I use the most:

- [VIM](/cheat-sheets/vim.md)
- [VsCodeVim](/cheat-sheets/vscodevim.md)

## Vim Talk
Demo/showcase of the power of vim - [vim-a-lovestory](VIM - a lovestory)

