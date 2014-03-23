--
--       python_completion.lua
--
--       Copyright 2012 Eddy Ernesto del Valle Pino <edelvalle@hab.uci.cu>
--
--       This program is free software; you can redistribute it and/or modify
--       it under the terms of the GNU General Public License as published by
--       the Free Software Foundation; either version 2 of the License, or
--       (at your option) any later version.
--
--       This program is distributed in the hope that it will be useful,
--       but WITHOUT ANY WARRANTY; without even the implied warranty of
--       MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
--       GNU General Public License for more details.
--
--       You should have received a copy of the GNU General Public License
--       along with this program; if not, write to the Free Software
--       Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
--       MA 02110-1301, USA.
--
--


is_autocompleted = false

print ()

if geany.fileinfo().ext == '.py' then

    -- resolve the project path
    local function project_path()
        folder = geany.filename()
        is_root = false
        while not is_root do
            is_root = true
            folder = geany.dirname(folder)
            for file_name in geany.dirlist(folder) do
                if file_name == '__init__.py' then
                    is_root = false
                    break
                end
            end
        end
        return folder
    end

    local function is_in(char, big_string)
        for i=1, #big_string do
            if char == big_string:sub(i, i) then
                return i
            end
        end
        return nil
    end

    script_dir = geany.dirname(geany.script)..geany.dirsep
    buffer_path = script_dir..'buffer'

    buffer_file = io.open(buffer_path, 'w')
    text = geany.text()
    buffer_file:write(text)

    script_path = script_dir..'python_completion.py'
    geany_caret = geany.caret()
    script_params = project_path()..' '
                    ..geany.filename()..' '
                    ..buffer_path..' '
                    ..geany_caret

    auto_separator = string.char(geany.scintilla('SCI_AUTOCGETSEPARATOR'))

    buffer_file:flush()
    buffer_file:close()

    output = io.popen('python '..script_path..' '..script_params)

    autocompletion = output:read('*a')
    autocompletion = autocompletion:gsub('\n', auto_separator)
    autocompletion = autocompletion:sub(0, -2)

    if #autocompletion ~= 0 then
        -- set the icons
        icons = {
            -- class
            [3] = [[/* XPM */ static char * classviewer_class_xpm[] = { "16 16 10 1", "     c None", ". c #000000", "+  c #A4E8FC", "@  c #24D0FC", "#  c #001CD0", "$  c #0080E8", "%  c #C0FFFF", "&  c #00FFFF", "*  c #008080", "=  c #00C0C0", "     ..         ", "    .++..       ", "   .+++@@.      ", "  .@@@@@#...    ", "  .$$@@##.%%..  ", "  .$ $##.%%%&&. ", "  .$$$#.&&&&&*. ", "   ...#.==&&**. ", "   . +..===***. ", "  .+++@@.==**.  ", " .@@@@@#..=*.   ", " . $@@##. ..    ", " .$$$###.       ", " .$$$##.        ", "  . $#.         ", "    ..          "};]],
            -- member
            [4] = [[/* XPM */ static char * classviewer_member_xpm[] = { "16 16 8 1", "     c None", ". c #240000", "+  c #E0BC38", "@  c #440000", "#  c #000000", "$  c #ACB4C0", "%  c #8C748C", "&  c #9C94A4", " ........       ", ".++++++++.      ", ".++++++++.      ", " ......@@       ", "                ", "                ", "         ##     ", "        #$$##   ", "       #$$$$$#  ", "      # $$$$%#  ", "      #&&$$%%#  ", "      #&&&%%%#  ", "      #&&&%%#   ", "       ##&%#    ", "         ##     ", "                "};]],
            -- namespace
            [5] = [[/* XPM */ static char * classviewer_namespace_xpm[] = { "16 16 7 1", "     c None", ". c #AAAAAA", "+  c #1D1D1D", "@  c #555555", "#  c #000000", "$  c #393939", "%  c #A8A8A8", "                ", "    .           ", "   +@           ", "   #.           ", "   #.           ", "  .+       .    ", "  .#       @+   ", "   #.      .#   ", "   #.      .#   ", "   +$       +.  ", "    %       #.  ", "           .#   ", "           .#   ", "           $+   ", "           %    ", "                "};]],
            -- struct
            [6] = [[/* XPM */ static char * classviewer_struct_xpm[] = { "16 16 14 1", "    c None", ". c #000000", "+  c #C0FFC0", "@  c #00FF00", "#  c #008000", "$  c #00C000", "%  c #C0FFFF", "&  c #00FFFF", "*  c #008080", "=  c #00C0C0", "-  c #FFFFC0", ";  c #FFFF00", ">  c #808000", ",  c #C0C000", "     ..         ", "    .++..       ", "   .+++@@.      ", "  .@@@@@#...    ", "  .$$@@##.%%..  ", "  .$ $##.%%%&&. ", "  .$$$#.&&&&&*. ", "   ...#.==&&**. ", "   .--..===***. ", "  .---;;.==**.  ", " .;;;;;>..=*.   ", " .,,;;>>. ..    ", " .,,,>>>.       ", " .,,,>>.        ", "  ..,>.         ", "    ..          "};]],
            -- other
            [7] = [[/* XPM */ static char * classviewer_other_xpm[] = { "16 16 10 1", "     g None", ". g #000000", "+  g #DBDBDB", "@  g #ACACAC", "#  g #404040", "$  g #777777", "%  g #EEEEEE", "&  g #BBBBBB", "*  g #6D6D6D", "=  g #949494", "     ..         ", "    .++..       ", "   .+++@@.      ", "  .@@@@@#...    ", "  .$$@@##.%%..  ", "  .$ $##.%%%&&. ", "  .$$$#.&&&&&*. ", "   ...#.==&&**. ", "   . +..===***. ", "  .+++@@.==**.  ", " .@@@@@#..=*.   ", " . $@@##. ..    ", " .$$$###.       ", " .$$$##.        ", "  . $#.         ", "    ..          "};]],
        }

        for i, icon in pairs(icons) do
            geany.scintilla('SCI_REGISTERIMAGE', i, icon)
        end

        -- calculate how many chararters writed
        chars_writed = 0
        if  is_in(string.char(geany.byte(geany_caret - 1)),  geany.wordchars) then
            word_start = geany_caret - 1
            while is_in(string.char(geany.byte(word_start)), geany.wordchars)
              and word_start ~= 0 do
                word_start = word_start - 1
                chars_writed = chars_writed + 1
            end
        end

        geany.scintilla('SCI_AUTOCSETIGNORECASE', false)
        geany.scintilla('SCI_AUTOCSHOW', chars_writed, autocompletion)
        is_autocompleted = true
    end
end

if not is_autocompleted then
    geany.keycmd('EDITOR_AUTOCOMPLETE')
end

