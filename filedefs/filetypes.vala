# For complete documentation of this file, please see Geany's main documentation

[styling]
# foreground;background;bold;italic
default=0xffffff;0x2e3436;false;false
comment=0x747474;0x2e3436;false;false
commentline=0x888a85;0x2e3436;false;false
commentdoc=0x747474;0x2e3436;false;false
number=0xef2929;0x2e3436;false;false
word=0x8ae234;0x2e3436;true;false
word2=0x729fcf;0x2e3436;true;false
string=0xedd400;0x2e3436;false;false
character=0xA18651;0x2e3436;false;false
uuid=0xffffff;0x2e3436;false;false
preprocessor=0xad7fa8;0x2e3436;true;false
operator=0xad7fa8;0x2e3436;true;false
identifier=0xffffff;0x2e3436;false;false
stringeol=0xffffff;0xffffff;true;false
# @"verbatim"
verbatim=0xDBB260;0x2e3436;false;false

# (/regex/)
regex=0xAAFF57;0x2e3436;false;false

commentlinedoc=0x747474;0x2e3436;false;false
commentdockeyword=0xffffff;0x2e3436;false;false
commentdockeyworderror=0x747474;0x2e3436;false;false

#array index
globalclass=0x729fcf;0x2e3436;true;false

# whether arguments of preprocessor commands should be styled (only first argument is used)
# 1 to enable, 0 to disable
styling_within_preprocessor=1;0;false;false

[keywords]
# all items must be in one line
primary=else if switch case default break continue return for foreach in do while is try catch finally throw namespace interface class struct enum signal errordomain construct callback get set base const static var weak virtual abstract override inline extern public protected private delegate out ref lock using true false null generic new delete base this value typeof sizeof throws requires ensures void bool char uchar int uint short ushort long ulong size_t ssize_t int8 uint8 int16 uint16 int32 uint32 int64 uint64 float double unichar string constpointer time_t
#secondary=
# these are some doxygen keywords (incomplete)
docComment=attention author brief bug class code date def enum example exception file fn namespace note param remarks return see since struct throw todo typedef var version warning union

[lexer_properties]
styling.within.preprocessor=1
preprocessor.symbol.$(file.patterns.cpp)=#
preprocessor.start.$(file.patterns.cpp)=if
preprocessor.middle.$(file.patterns.cpp)=else elif
preprocessor.end.$(file.patterns.cpp)=endif

[settings]
lexer_filetype=C

# default extension used when saving files
extension=vala

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
#   command_example();
# This setting works only for single line comments
#comment_use_indent=true

# context action command (please see Geany's main documentation for details)
#context_action_cmd=

[build_settings]
# %f will be replaced by the complete filename
# %e will be replaced by the filename without extension
# (use only one of it at one time)
compiler=valac -c "%f"
linker=valac "%f"
run_cmd=./"%e"

[build-menu]
FT_00_LB=_Compilar
FT_00_CM=valac -c "%f"
FT_00_WD=
