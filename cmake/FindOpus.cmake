find_package(Opus CONFIG)
if(NOT TARGET Opus::opus)
  find_package(PkgConfig REQUIRED)
  pkg_check_modules(Opus REQUIRED IMPORTED_TARGET opus)
  add_library(Opus::opus ALIAS PkgConfig::Opus)
endif()