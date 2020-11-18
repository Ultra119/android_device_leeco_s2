#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

import hashlib
import common
import re

def FullOTA_InstallEnd(info):
  RunCustomScript(info, "devinfo.sh", "")
  return

def IncrementalOTA_InstallEnd(info):
  RunCustomScript(info, "devinfo.sh", "")
  return

def RunCustomScript(info, name, arg):
  info.script.AppendExtra(('run_program("/tmp/install/bin/%s", "%s");' % (name, arg)))
  return
