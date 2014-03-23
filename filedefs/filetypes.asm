# For complete documentation of this file, please see Geany's main documentation
[styling]
# foreground;background;bold;italic
default=0xffffff;0x2e3436;false;false
comment=0x888a85;0x2e3436;false;false
number=0xef2929;0x2e3436;false;false
string=0xedd400;0x2e3436;false;false
operator=0xad7fa8;0x2e3436;true;false
identifier=0xffffff;0x2e3436;false;false
commentblock=0x888a85;0x2e3436;false;false
character=0xA18651;0x2e3436;false;false
stringeol=0xffffff;0xad7fa8;false;false
cpuinstruction=0x8ae234;0x2e3436;true;false
mathinstruction=0xef2929;0x2e3436;false;false
register=0x729fcf;0x2e3436;true;false
directive=0x729fcf;0x2e3436;true;false
directiveoperand=0xad7fa8;0x2e3436;true;false
extinstruction=0xedd400;0x2e3436;false;false




[keywords]
# all items must be in one line
# this is by default a very simple instruction set; not of Intel or so
instructions=hlt lad spi add sub mul div jmp jez jgz jlz swap jsr ret pushac popac addst subst mulst divst lsa lds push pop cli ldi ink lia dek ldx
registers=
directives=org list nolist page equivalent word text


[settings]
# default extension used when saving files
extension=asm

# the following characters are these which a "word" can contains, see documentation
#wordchars=_abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789

# if only single comment char is supported like # in this file, leave comment_close blank
comment_open=;
comment_close=

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
compiler=nasm "%f"

