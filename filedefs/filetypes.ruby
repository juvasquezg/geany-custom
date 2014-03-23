# For complete documentation of this file, please see Geany's main documentation

[styling]
# foreground;background;bold;italic
default=0xffffff;0x2e3436;false;false
comment=0x888a85;0x2e3436;false;false
commentline=0x888a85;0x2e3436;false;false
commentdoc=0x888a85;0x2e3436;false;false
number=0xef2929;0x2e3436;false;false
word=0x8ae234;0x2e3436;false;false
word2=0x729fcf;0x2e3436;false;false
string=0xedd400;0x2e3436;false;false
character=0xedd400;0x2e3436;false;false
#includes, defines, etc
operator=0xad7fa8;0x2e3436;false;false
identifier=0xffffff;0x2e3436;false;false
#end of line where string is not closed
stringeol=0xffffff;0xad7fa8;false;false
#string @"str"
verbatim=0xfce94f;0x2e3436;false;false
regex=0xef2929;0x2e3436;false;false

commentlinedoc=0x888a85;0x2e3436;false;false
commentdockeyword=0xad7fa8;0x2e3436;false;false
commentdockeyworderror=0x888a85;0x2e3436;false;false
#array index
globalclass=0x729fcf;0x2e3436;false;false

styling_within_preprocessor=1;0;false;false


global=0x729fcf;0x2e3436;false;false
symbol=0x729fcf;0x2e3436;false;false
classname=0xad7fa8;0x2e3436;true;false
defname=0x729fcf;0x2e3436;false;false
modulename=0x729fcf;0x2e3436;true;false
backticks=0x729fcf;0x2e3436;false;false
instancevar=0x729fcf;0x2e3436;false;true
classvar=0x729fcf;0x2e3436;true;true
worddemoted=0x729fcf;0x2e3436;true;true

[keywords]
# all items must be in one line
primary=__FILE__ load define_method attr_accessor attr_writer attr_reader and def end in or self unless __LINE__ begin defined? ensure module redo super until BEGIN break do next rescue then when END case else for include require retry while alias class elsif if not return undef yield true false nil alert new extends try catch null of isnt continue typeof is
#fix this
#secondary=true false nil

[settings]
# default extension used when saving files
#extension=rb

# the following characters are these which a "word" can contains, see documentation
#wordchars=_abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789

# if only single comment char is supported like # in this file, leave comment_close blank
comment_open=#
comment_close=

# set to false if a comment character/string should start at column 0 of a line, true uses any
# indentation of the line, e.g. setting to true causes the following on pressing CTRL+d
    #command_example();
# setting to false would generate this
#   command_example();
# This setting works only for single line comments
comment_use_indent=true

# context action command (please see Geany's main documentation for details)
context_action_cmd=

[build_settings]
# %f will be replaced by the complete filename
# %e will be replaced by the filename without extension
# (use only one of it at one time)
compiler=ruby -c "%f"
run_cmd=ruby "%f"

[build-menu]
FT_00_LB=_Compilar
FT_00_CM=coffee -c "%f"
FT_00_WD=
EX_00_LB=_Ejecutar
EX_00_CM=node "%e".js
EX_00_WD=
error_regex=Error: In (.+), .* ([0-9]+): (.+)
