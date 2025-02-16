/*
    DSDL
    Copyright (C) 2025 Inochi2D Project <luna@foxgirls.gay>

    This software is provided 'as-is', without any express or implied
    warranty.  In no event will the authors be held liable for any damages
    arising from the use of this software.

    Permission is granted to anyone to use this software for any purpose,
    including commercial applications, and to alter it and redistribute it
    freely, subject to the following restrictions:

    1. The origin of this software must not be misrepresented; you must not
        claim that you wrote the original software. If you use this software
        in a product, an acknowledgment in the product documentation would be
        appreciated but is not required.
    2. Altered source versions must be plainly marked as such, and must not be
        misrepresented as being the original software.
    3. This notice may not be removed or altered from any source distribution.

    ==========================================================================

    Simple DirectMedia Layer
    Copyright (C) 1997-2025 Sam Lantinga <slouken@libsdl.org>

    This software is provided 'as-is', without any express or implied
    warranty.  In no event will the authors be held liable for any damages
    arising from the use of this software.

    Permission is granted to anyone to use this software for any purpose,
    including commercial applications, and to alter it and redistribute it
    freely, subject to the following restrictions:

    1. The origin of this software must not be misrepresented; you must not
        claim that you wrote the original software. If you use this software
        in a product, an acknowledgment in the product documentation would be
        appreciated but is not required.
    2. Altered source versions must be plainly marked as such, and must not be
        misrepresented as being the original software.
    3. This notice may not be removed or altered from any source distribution.
*/

/**
    SDL GUID

    See_Also:
        $(LINK2 https://wiki.libsdl.org/SDL3/CategoryGUID, SDL3 GUID Documentation)
    
    Copyright: © 2025 Inochi2D Project, © 1997-2025 Sam Lantinga
    License: Subject to the terms of the Zlib License, as written in the LICENSE file.
    Authors: 
        Luna Nielsen
*/
module sdl.guid;
import sdl.stdc;

extern(C) nothrow @nogc:

/**
    An SDL_GUID is a 128-bit identifier for an input device that identifies
    that device across runs of SDL programs on the same platform.

    If the device is detached and then re-attached to a different port, or if
    the base system is rebooted, the device should still report the same GUID.

    GUIDs are as precise as possible but are not guaranteed to distinguish
    physically distinct but equivalent devices. For example, two game
    controllers from the same vendor with the same product ID and revision may
    have the same GUID.

    GUIDs may be platform-dependent (i.e., the same device may report different
    GUIDs on different operating systems).
*/
alias SDL_GUID = ubyte[16];



/**
    Get an ASCII string representation for a given SDL_GUID.

    Params:
        guid =      the SDL_GUID you wish to convert to string.
        pszGUID =   buffer in which to write the ASCII string.
        cbGUID =    the size of pszGUID, should be at least 33 bytes.

    See_Also:
        $(D SDL_StringToGUID)
*/
extern void SDL_GUIDToString(SDL_GUID guid, char* pszGUID, int cbGUID);

/**
    Convert a GUID string into a SDL_GUID structure.

    Performs no error checking. If this function is given a string containing
    an invalid GUID, the function will silently succeed, but the GUID generated
    will not be useful.

    Params:
        pchGUID = string containing an ASCII representation of a GUID.
    
    Returns:
        A SDL_GUID.

    See_Also:
        $(D SDL_GUIDToString)
*/
extern SDL_GUID SDL_StringToGUID(const(char)* pchGUID);