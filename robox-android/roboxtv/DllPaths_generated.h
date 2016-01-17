#ifndef DLL_PATHS_GENERATED_H_
#define DLL_PATHS_GENERATED_H_

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

/* prefix install location */
#define PREFIX_USR_PATH        "/home/zach/zach/opt/xbmc-depends/arm-linux-androideabi-android-17"

/* libraries */
#define DLL_PATH_CPLUFF        "special://xbmcbin/system/libcpluff-arm.so"
#define DLL_PATH_LIBEXIF       "special://xbmcbin/system/libexif-arm.so"

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
#define DLL_PATH_LIBDVDNAV     "special://xbmcbin/system/players/VideoPlayer/libdvdnav-arm.so"
#define DLL_PATH_LIBMPEG2      "@MPEG2_SONAME@"

/* libbluray */
#define DLL_PATH_LIBBLURAY     "libbluray.so"

/* wayland */
#define DLL_PATH_WAYLAND_CLIENT ""
#define DLL_PATH_WAYLAND_EGL ""

/* xkbcommon */
#define DLL_PATH_XKBCOMMON ""

/* sse4 */
#define DLL_PATH_LIBSSE4      "special://xbmcbin/system/libsse4-arm.so"

#endif
