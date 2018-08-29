# lua cmake scripts

set(core_src
    lapi.c
    lcode.c
    lctype.c
    ldebug.c
    ldo.c
    ldump.c
    lfunc.c
    lgc.c
    llex.c
    lmem.c
    lobject.c
    lopcodes.c
    lparser.c
    lstate.c
    lstring.c
    ltable.c
    ltm.c
    lundump.c
    lvm.c
    lzio.c
)

set(lib_src
    lauxlib.c
    lbaselib.c
    lbitlib.c
    lcorolib.c
    ldblib.c
    liolib.c
    lmathlib.c
    loslib.c
    lstrlib.c
    ltablib.c
    lutf8lib.c
    loadlib.c
    linit.c
)

set(lua_headers
    lua_conf.h
    lua.h
    lua.hpp
    lualib.h
    lauxlib.h
)

add_library(lua ${core_src} ${lib_src})
add_executable(lua5 "lua.c")
add_executable(lua5c "luac.c")

if (WIN32)
    target_link_libraries(lua5 lua)
    target_link_libraries(lua5c lua)
elseif (UNIX)
    add_definitions(-DLUA_USE_LINUX)
    target_link_libraries(lua5 lua dl readline m)
    target_link_libraries(lua5c lua dl readline m)
endif()

# install target
install(TARGETS lua5 lua5c lua
        RUNTIME DESTINATION bin
        LIBRARY DESTINATION lib
        ARCHIVE DESTINATION lib)

# install header
install(FILES ${lua_headers} DESTINATION include)
