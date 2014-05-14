package = "battery_statusgit push"
rockspec_format = "1.0"
version = "1.0-2"
source = {
   url = "https://github.com/svarogg/battery_status"
}
description = {
   summary = "Battery status indicator.",
   detailed = [[
      A tiny app to display a battery status indicator
      for primitive window managers such as Awesome
   ]],
   homepage = "http://everythingisvoid.com/", -- We don't have one yet
   license = "MIT/X11" -- or whatever you like
}
dependencies = {
   "lua ~> 5.1",
   "lgi ~> 0.7.2-1" ,
   "lrexlib-posix ~> 2.7.2-1"
}
build = {
   type = "builtin",
   modules = {
      battery_status = "battery_status.lua",
   },
   copy_directories = {"battery_icons"}
   install = {
      bin = {"runner.lua"}
   }
}