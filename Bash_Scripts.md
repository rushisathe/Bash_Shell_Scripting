## Module 1 - Shell Scripting basics

- Shell is interface between the user and the system.
- Powerful than windows cmd

  #### Types of Shell :
  1. sh - the original shell
  2. csh,tcsh,zch - c shell and derivatives
  3. ksh,pdksh - the Korn shell
  4. bash - bourne again shell

  - Available shells (`cat /etc/shells`)
    
    `rushikesh_sathe@onb-vm3-3:~$ cat /etc/shells`  
    `etc/shells: valid login shells`  
    `/bin/sh`  
    `/bin/bash`  
    `/usr/bin/bash`  
    `/bin/rbash`  
    `/usr/bin/rbash`  
    `/usr/bin/sh`  
    `/bin/dash`  
    `/usr/bin/dash`  
    `/usr/bin/tmux`  
    `/usr/bin/screen`  

- shell script start with **shebang**(#!)
- To display, use env or printenv commands
- HOME, PATH, USER, HOSTNAME, PWD etc.
-  To print, use $
- echo $HOME

  #### System Variables

`rushikesh_sathe@onb-vm3-3:~$ echo $BASH_VERSION`  
`5.1.16(1)-release`  
`rushikesh_sathe@onb-vm3-3:~$ echo $BASH`  
`/bin/bash`  
`rushikesh_sathe@onb-vm3-3:~$ echo $HOME`  
`/home/rushikesh_sathe`  
`rushikesh_sathe@onb-vm3-3:~$ echo $PWD`  
`/home/rushikesh_sathe`  
`rushikesh_sathe@onb-vm3-3:~$ echo $UID`  
`1002`  
`rushikesh_sathe@onb-vm3-3:~$ echo $OSTYPE`  
`linux-gnu`  
`rushikesh_sathe@onb-vm3-3:~$ echo $GROUPS`  
`1002`  

#### Reading User input
#### Script 
#!/bin/bash  

echo "please enter your name"  
read name  
echo "Welcome $name !!"  
echo "taking inout in same line "  
echo -n "enter text > "  
read text    
echo "your text is $text"  

#### Output
rushikesh_sathe@onb-vm3-3:~$ ./input.sh  
please enter your name  
rushikesh  
Welcome rushikesh !!  
taking inout in same line  
enter text > rushikesh sathe is best  
your text is rushikesh sathe is best  

#### Option in echo 
1. `-n` to ignore new line  
2. `-e`


#### Positional Parameters
- $0 is script and $1 , $2 are respective arguments
- after $9 arguments should be enclosed ${10} ${11}....
- `$#` = number of arguments

#### Assignments:
added file named ass_1_1 and ass_1_1



## Module 2 - Shell scripting basics part 2

#### Shell Metacharacters
1.Escaping : backlash (\)
2.Grave ascent : Backquotes (`)
3. Partial quoting : double quote (")
4. Full quoting : single quote (')

#### shell built in variables:
1. $0 : filename
2. $# : number of args supplied to script
3. $* : string containing args
4. $@ : Array of args a scripts receive
5. $? : exit status of last cmd
6. $$ : process ID number of current shell

#### basic shell cmds
- pwd : present working directory
- cd ~ : changes to users home directory
- cd .. : one directory up
- cd - : return to previous working directory
- ls -lah : display all files including hidden
- mv is also used to rename

#### Assignments:
added file by name ass_2_1 and ass_2_1

  



