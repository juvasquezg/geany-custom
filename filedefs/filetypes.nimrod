# For complete documentation of this file, please see Geany's main documentation
[styling]
default=0xffffff;0x2e3436;false;false
commentline=0x888a85;0x2e3436;false;false
number=0xef2929;0x2e3436;false;false
string=0xedd400;0x2e3436;false;false
character=0xA18651;0x2e3436;false;false
word=0x8ae234;0x2e3436;true;false
word2=0x729fcf;0x2e3436;true;false
triple=0x729fcf;0x2e3436;false;false
tripledouble=0x888a85;0x2e3436;false;false
classname=0xad7fa8;0x2e3436;true;false
defname=0x729fcf;0x2e3436;true;false
operator=0xad7fa8;0x2e3436;true;false
identifier=0xffffff;0x2e3436;false;false
commentblock=0x747474;0x2e3436;false;false
stringeol=0xffffff;0xad7fa8;false;false
decorator=0x729fcf;0x2e3436;false;false
commentdockeyword=0xad7fa8;0x2e3436;false;false
commentdockeyworderror=0x888a85;0x2e3436;false;false

[keywords]
# all items must be in one line
primary=and as assert break class continue def del elif else except exec finally for from global if import in is lambda not or pass print raise return try while with yield isinstance self True False None
#uncomment this when bug is fixed:
#secondary=True False None

[settings]
# default extension used when saving files
extension=nim

# the following characters are these which a "word" can contains, see documentation
#wordchars=_abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789

# if only single comment char is supported like # in this file, leave comment_close blank
comment_open=#
comment_close=

# set to false if a comment character/string should start at column 0 of a line, true uses any
# indentation of the line, e.g. setting to true causes the following on pressing CTRL+d
	#command_example();
# setting to false would generate this
#	command_example();
# This setting works only for single line comments
comment_use_indent=true

docComment=attention author brief bug class code date def enum example exception file fn namespace note param remarks return see since struct throw todo typedef var version warning union

# context action command (please see Geany's main documentation for details)
context_action_cmd=

[build_settings]
# %f will be replaced by the complete filename
# %e will be replaced by the filename without extension
# (use only one of it at one time)
compiler=python -c "import py_compile; py_compile.compile('%f')"
run_cmd=python "%f"
