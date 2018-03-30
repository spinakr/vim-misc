# Vim Cheat Sheet
> Contains commands and key combinations realted to the configurations and plugins in this repo.

### IDE commands (mostly omnisharp)
 - :%/<word>/<new word>/ : Replace all occurenses of word with new word
 - ,rn : Rename selection
 - ,kd : Format code
 - F5 : Build 
 - gd : Go to definition
 - fi : Find implementations
 - fu : Find usages
 - ,tt : Lookup type

### Movement
- E / B : Goto end / beginning of line 

### Buffers and splits
- Shift + h/l : Switch back and forth between buffers
- ,bd : Close buffer
- Ctrl + h/j/k/l : Switch between windows
 - F5 : Buffer menu
- ,n : Open/close nerdTREE split
- ,v : Reveal file in nerdTREE

### Search
* : Highlight occurenses of word under cursor
N/P : Goto next / previous search hit

### Misc
- ,S : Save vim session (opens with vim -S)
