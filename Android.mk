LOCAL_PATH := $(call my-dir)

LIBXFONT_SOURCES := 	\
    src/bitmap/bitscale.c   \
    src/bitmap/bitmap.c   \
    src/bitmap/bitmapfunc.c   \
    src/bitmap/pcfread.c   \
    src/bitmap/snfread.c   \
    src/builtins/dir.c   \
    src/builtins/file.c   \
    src/builtins/fonts.c   \
    src/builtins/fpe.c   \
    src/builtins/render.c  \
    src/fontfile/bitsource.c   \
    src/fontfile/bufio.c   \
    src/fontfile/decompress.c   \
    src/fontfile/defaults.c   \
    src/fontfile/dirfile.c   \
    src/fontfile/fileio.c   \
    src/fontfile/fontdir.c   \
    src/fontfile/fontfile.c   \
    src/fontfile/fontscale.c   \
    src/fontfile/gunzip.c   \
    src/fontfile/renderers.c   \
    src/fontfile/register.c   \
    src/stubs/libxfontstubs.c   \
    src/stubs/atom.c \
    src/util/fontaccel.c   \
    src/util/fontnames.c   \
    src/util/fontutil.c   \
    src/util/fontxlfd.c   \
    src/util/format.c   \
    src/util/miscutil.c   \
    src/util/patcache.c   \
    src/util/private.c   \
    src/util/utilbitmap.c

include $(CLEAR_VARS)

LOCAL_MODULE    := libXfont
LOCAL_C_INCLUDES := \
	$(LOCAL_PATH)/src/stubs		\
	$(LOCAL_PATH)/include		\
	external/xorgproto/include	\
	external/zlib
LOCAL_CFLAGS    :=			\
	-DNO_LOCALE=1			\
	-DXFONT_PCFFORMAT=1		\
	-DXFONT_SNFFORMAT=1
LOCAL_EXPORT_LDFLAGS   := -lz
LOCAL_SRC_FILES := $(LIBXFONT_SOURCES)
LOCAL_STATIC_LIBRARIES := libfontconfig

include $(BUILD_STATIC_LIBRARY)
