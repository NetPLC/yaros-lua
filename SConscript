# -*- coding: utf-8 -*-
# @file SConscript
# @brief main building script
# @author Han Pengfei <pengphei@sina.cn>
#

Import('genv')

proj_script = "src/SConscript"
proj_files = genv.SConscript(proj_script)
genv.Install(genv["out"], proj_files)


