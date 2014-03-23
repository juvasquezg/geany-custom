# For complete documentation of this file, please see Geany's main documentation # styling for PHP/HTML is done in filetypes.xml

[styling]
default=0xAAFF57;0x1E1E1E;false;false
simplestring=0xAAFF57;0x1E1E1E;false;false
hstring=0xA18651;0x1E1E1E;false;false
number=0xAAFF57;0x1E1E1E;false;false
word=0xFFCB4F;0x1E1E1E;true;false
variable=0x5ABEFD;0x1E1E1E;false;false
comment=0x747474;0x1E1E1E;false;false
commentline=0x747474;0x1E1E1E;false;false
operator=0x98BAC5;0x1E1E1E;false;false
hstring_variable=0x5ABEFD;0x1E1E1E;false;false
complex_variable=0xFFFFFF;0x1E1E1E;false;false


[lexer_properties]
phpscript.mode=1

[settings]
# default extension used when saving files
#extension=php

# the following characters are these which a "word" can contains, see documentation
#wordchars=_abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789

# if only single comment char is supported like # in this file, leave comment_close blank
# these comments are used for PHP, the comments used in HTML are in filetypes.xml
comment_open=/*
comment_close=*/

# set to false if a comment character/string should start at column 0 of a line, true uses any
# indentation of the line, e.g. setting to true causes the following on pressing CTRL+d
	#command_example();
# setting to false would generate this
#	command_example();
# This setting works only for single line comments
comment_use_indent=true

# context action command (please see Geany's main documentation for details)
context_action_cmd=

[build_settings]
# %f will be replaced by the complete filename
# %e will be replaced by the filename without extension
# (use only one of it at one time)
compiler=php ~/.config/geany/scripts/lightCode.php "%f" > /tmp/out.html && firefox /tmp/out.html
#run_cmd=php "%f"

# use can also use something like this, to view your PHP or HTML files through a browser and webserver
run_cmd=php ~/.config/geany/scripts/lightCode.php "%f" > /tmp/out.html && firefox /tmp/out.html

[build-menu]
FT_00_LB=_Compilar
FT_00_CM=php ~/.config/geany/scripts/lightCode.php "%f" > /tmp/out.html && firefox /tmp/out.html
FT_00_WD=
