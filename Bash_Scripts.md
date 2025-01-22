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

  
## MOdule 3

### while loop

- while..do..done

- while read -r line; do CMD ; done<input.txt
- The -r option passed to read command prevents backslash escapes from being interpreted.
- IFS= to prevent trainling spaces to get trimmed
- > this is for overwritting a file
- >> this is for append

#### using for
`for line in $(cat file.txt)`
`do`
`  echo $line`
`done`


#### using while 
-1
`cat file.txt | while IFS= read -r line;`
`do`
` printf '%s\n' "$line"
`done`
- 2
  `file="file/path"`
  `while IFS= read -r line`
  `do`
  `  printf '%s\n' "$line"
  `done < $file`

## Module 4 - Pipes and Redirections

### Filters
- something like -- cmd1 | cmd2 | cmd3
- cat file.txt | sort | uniq
- Filters below
1. sort - sort the input line
2. uniq - discard indenticals ( -d jo cpy hai vo dikhega , -u jo uniq , -c count dikhega line ke samne kitni baar hai vo)
3. head - shows beginning lines (10 line)
4. tail - shows ending 10 lines
5. wc - counts word characters and lines
6. tr - deletes specific charaters
7. pr - pr cmd is used for printing files
8. split - split is used to split a larger file into two or more
9. cut - cut cmd is used for text processsing

- wc -L == prints longest file in the file
  

## Module 5 - Grep 

### grep 

- grep : global regular expression print
- syntax : grep options pattern file_name

#### options of grep 
1. -i : case insensetive
2. -n : it will print line number in front
3. -v : print line which do not have pattern
4.  -c : count number of matching line
5.  -l : list all files which contain patterns
6.  -x : exact match
7.  
8.  


## Module 6 regular expression

- set of characters
- Anchors : specifies position of pattern
- quantifiers : specifies number of symbol could occur
- character class : match one or more charater in single position
- 


## Module 7 - SED Stream Editor

#### SED - stream editor

- non- intractive
- sed works line oriented
- sed is shell independent
USES :
1. to automate editing to be performed on one or more files
2. simplify the task of performing the same edits on multiplefiles
3. to write conversion programs

SYNTAX
 sed 'command' filename

sed ke sare 

## Module 8 - Shell Arithmetic

- Ways to do math in Shell
  1. Using expr cmd
  2. using $(())
  3. using bc cmd
  4. using $[] construct

## Module 9 - Shell Control Structures

- two types slection structures
  1. if/then/elif/else/fi
  2. case
- iteration structures
  1. For
  2. While
  3. until
     
## Module 10 - Arrays

- multiple type of values

- initialize methods
  1. declare -a var
  2. arr_name[index]=value
  3. arr=(ele1 ele2 ele3)

## Module 11 - How to debug shell scripts

1. `-n` : command will not execute and also do syntax check
2. `-v` : line by line output show

## module 12 - Functions

Syntax : `function fxn_name {`
          `commands..`
          `}`

          OR
        `function_name(){`
        `commands..`
        `}`

- Function can be anywhere in command also
- `$?` for return value of function
- FUNCNAME mai function name stored hai
- 


