#!/usr/bin/env python
# -*- coding: utf-8 -*-
#
#       python_completion.py
#
#       Copyright 2012 Eddy Ernesto del Valle Pino <edelvalle@hab.uci.cu>
#
#       This program is free software; you can redistribute it and/or modify
#       it under the terms of the GNU General Public License as published by
#       the Free Software Foundation; either version 2 of the License, or
#       (at your option) any later version.
#
#       This program is distributed in the hope that it will be useful,
#       but WITHOUT ANY WARRANTY; without even the implied warranty of
#       MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#       GNU General Public License for more details.
#
#       You should have received a copy of the GNU General Public License
#       along with this program; if not, write to the Free Software
#       Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
#       MA 02110-1301, USA.
#
#


import sys
from rope.base.project import Project
from rope.base.resources import File
from rope.contrib import codeassist


project_path = sys.argv[1]
file_path = sys.argv[2]
source_path = sys.argv[3]
position = int(sys.argv[4])
file_name = file_path[len(project_path) + 1:]

source = open(source_path).read()


KINDS = {
    'keyword': 0,
    'local': 1,
    'parameter_keyword': 2,
    'attribute': 3,
    'global': 4,
}

TYPES = {
    'variable': 0,
    'parameter': 1,
    'function': 2,
    'class': 3,
    'imported': 4,
    'builtin': 5,
    None: 6,
}

class Icon:
    variable = '?1'
    method = '?2'
    klass = '?3'
    member = '?4'
    namespace = '?5'
    struct = '?6'


ICONS = {
    #types
    'variable': Icon.variable,
    'parameter': Icon.variable,
    'function': Icon.method,
    'class': Icon.klass,
    'imported': Icon.namespace,
    'builtin': Icon.struct,
    #kids
    'attribute': Icon.member,
}



def sort_function(element):
    #scintilla requires the list sorted
    #return KINDS.get(element.kind), TYPES.get(element.type), element.name
    return element.name



project = Project(project_path)
resource = File(project, name=file_name)
elements = codeassist.code_assist(project, source, position, resource=resource)
elements.sort(key=sort_function)

for element in elements:
    icon = ICONS.get(element.type) or ICONS.get(element.kind) or '?7'
    #print element
    print element.name + icon

