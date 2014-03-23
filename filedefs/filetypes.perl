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
#includes, defines, etc
preprocessor=0xad7fa8;0x2e3436;true;false
operator=0xad7fa8;0x2e3436;true;false
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
globalclass=0x729fcf;0x2e3436;true;false
styling_within_preprocessor=1;0;false;false

scalar=0x729fcf;0x2e3436;true;false
pod=0x729fcf;0x2e3436;false;true
regex=0x729fcf;0x2e3436;false;false
array=0x729fcf;0x2e3436;false;false
hash=0x729fcf;0x2e3436;false;false
symboltable=0x729fcf;0x2e3436;false;false
datasection=0x729fcf;0x2e3436;false;false
longquote=0x729fcf;0x2e3436;false;false
sub_prototype=0x729fcf;0x2e3436;false;true
format_ident=0x729fcf;0x2e3436;true;false
format=0x729fcf;0x2e3436;false;false

here_q=0xedd400;0x2e3436;false;false
here_qq=0xedd400;0x2e3436;true;false
here_qx=0xedd400;0x2e3436;false;true
string_q=0xedd400;0x2e3436;false;false
string_qq=0xedd400;0x2e3436;false;false
string_qx=0xedd400;0x2e3436;false;false
string_qr=0xedd400;0x2e3436;false;false
string_qw=0xedd400;0x2e3436;false;false
here_delim=0xedd400;0x2e3436;false;false
variable_indexer=0xedd400;0x2e3436;false;false
pod_verbatim=0xedd400;0x2e3436;false;false
reg_subst=0xedd400;0x2e3436;false;false

[keywords]
primary=NULL __FILE__ __LINE__ __PACKAGE__ __DATA__ __END__ AUTOLOAD BEGIN CORE DESTROY END EQ GE GT INIT LE LT NE CHECK abs accept alarm and atan2 bind binmode bless caller chdir chmod chomp chop chown chr chroot close closedir cmp connect continue cos crypt dbmclose dbmopen defined delete die do dump each else elsif endgrent endhostent endnetent endprotoent endpwent endservent eof eq eval exec exists exit exp fcntl fileno flock for foreach fork format formline ge getc getgrent getgrgid getgrnam gethostbyaddr gethostbyname gethostent getlogin getnetbyaddr getnetbyname getnetent getpeername getpgrp getppid getpriority getprotobyname getprotobynumber getprotoent getpwent getpwnam getpwuid getservbyname getservbyport getservent getsockname getsockopt glob gmtime goto grep gt hex if index int ioctl join keys kill last lc lcfirst le length link listen local localtime lock log lstat lt m map mkdir msgctl msgget msgrcv msgsnd my ne next no not oct open opendir or ord our pack package pipe pop pos print printf prototype push q qq qr quotemeta qu qw qx rand read readdir readline readlink readpipe recv redo ref rename require reset return reverse rewinddir rindex rmdir s scalar seek seekdir select semctl semget semop send setgrent sethostent setnetent setpgrp setpriority setprotoent setpwent setservent setsockopt shift shmctl shmget shmread shmwrite shutdown sin sleep socket socketpair sort splice split sprintf sqrt srand stat study sub substr symlink syscall sysopen sysread sysseek system syswrite tell telldir tie tied time times tr truncate uc ucfirst umask undef unless unlink unpack unshift untie until use utime values vec wait waitpid wantarray warn while write x xor y

[settings]
# default extension used when saving files
#extension=pl

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

# context action command (please see Geany's main documentation for details)
context_action_cmd=

[build_settings]
# %f will be replaced by the complete filename
# %e will be replaced by the filename without extension
# (use only one of it at one time)

# B - The Perl Bytecode Compiler (requires Perl 5.8 or higher)
compiler=perl -MO=Bytecode,-H,-o"%f"c "%f"

# alternatively use perlcc
#compiler=perlcc -o "%e" "%f"

# instead of actual compiling, just run a nice syntax check
#compiler=perl -c "%f"

run_cmd=perl "%f"
