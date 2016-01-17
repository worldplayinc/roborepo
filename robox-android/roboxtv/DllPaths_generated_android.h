/*
 *      Copyright (C) 2005-2013 Team XBMC
 *      http://xbmc.org
 *
 *  This Program is free software; you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation; either version 2, or (at your option)
 *  any later version.
 *
 *  This Program is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 *  GNU General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License
 *  along with XBMC; see the file COPYING.  If not, see
 *  <http://www.gnu.org/licenses/>.
 *
 */
#pragma once
/* libraries */

//Android rules:
// - All solibs must be in the form ^lib*.so$
// - All solibs must be in the same dir
// - Arch need not be specified, each arch will get its own lib dir.
//   We only keep arm here to retain the same structure as *nix.
// * foo.so will be renamed libfoo.so in the packaging stage

#define DLL_PATH_CPLUFF        "libcpluff-arm.so"
#define DLL_PATH_LIBEXIF       "libexif-arm.so"

#define DLL_PATH_LIBRTMP       "librtmp.so"
#define DLL_PATH_LIBNFS        "libnfs.so"
#define DLL_PATH_LIBGIF        "libgif.so"
#define DLL_PATH_LIBPLIST      "libplist.so"
#define DLL_PATH_LIBSHAIRPLAY  "libshairplay.so"
#define DLL_PATH_LIBCEC        "libcec.so"

#ifndef DLL_PATH_LIBCURL
#define DLL_PATH_LIBCURL       "libcurl.so"
#endif

/* VideoPlayer */
#define DLL_PATH_LIBASS        "libass.so"
#define DLL_PATH_LIBDVDNAV     "libdvdnav-arm.so"

/* libbluray */
#define DLL_PATH_LIBBLURAY     "libbluray.so"

/* Android's libui for gralloc */
#define DLL_PATH_LIBUI         "libui.so"
