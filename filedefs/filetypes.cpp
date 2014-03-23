# For complete documentation of this file, please see Geany's main documentation
[styling]
# foreground;background;bold;italic
default=0xffffff;0x2e3436;false;false
comment=0x888a85;0x2e3436;false;false
commentline=0x888a85;0x2e3436;false;false
commentdoc=0x888a85;0x2e3436;false;false

number=0xef2929;0x2e3436;false;false
word=0x8ae234;0x2e3436;true;false
word2=0x729fcf;0x2e3436;true;false

string=0xedd400;0x2e3436;false;false
character=0xA18651;0x2e3436;false;false

uuid=0xffffff;0xffffff;true;false
preprocessor=0xad7fa8;0x2e3436;true;false

operator=0xad7fa8;0x2e3436;true;false
identifier=0xffffff;0x2e3436;false;false

#end of line where string is not closed
stringeol=0xffffff;0xad7fa8;false;false

#string @"str"
verbatim=0xfce94f;0x2e3436;false;false
regex=0x4e9a06;0x2e3436;false;false

commentlinedoc=0x888a85;0x2e3436;false;false
commentdockeyword=0xad7fa8;0x2e3436;false;false
commentdockeyworderror=0x888a85;0x2e3436;false;false

#array index
globalclass=0x729fcf;0x2e3436;true;false

styling_within_preprocessor=1;0;false;false

[keywords]
# all items must be in one line
primary=and and_eq asm auto bitand bitor break case catch class compl const const_cast continue default delete do dynamic_cast else enum explicit export extern for friend goto if inline mutable namespace new not not_eq operator or or_eq private protected public register reinterpret_cast return  sizeof static static_cast struct switch template this throw try typedef typeid typename union using virtual volatile wchar_t while xor xor_eq
secondary=bool char void unsigned short signed int long float false double true
# these are some doxygen keywords (incomplete)
docComment=attention author brief bug class code date def enum example exception file fn namespace note param remarks return see since struct throw todo typedef var version warning union

[settings]
# default extension used when saving files
#extension=cpp

# the following characters are these which a "word" can contains, see documentation
#wordchars=_abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789

# if only single comment char is supported like # in this file, leave comment_close blank
comment_open=//
comment_close=
# this is an alternative way, so multiline comments are used
#comment_open=/*
#comment_close=*/

# set to false if a comment character/string should start at column 0 of a line, true uses any
# indentation of the line, e.g. setting to true causes the following on pressing CTRL+d
  #command_example();
# setting to false would generate this
# command_example();
# This setting works only for single line comments
comment_use_indent=true

# context action command (please see Geany's main documentation for details)
context_action_cmd=

[build_settings]
# %f will be replaced by the complete filename
# %e will be replaced by the filename without extension
# (use only one of it at one time)
compiler=g++ -Wall -c "%f"
linker=g++ -Wall -o "%e" "%f"
run_cmd="./%e"

