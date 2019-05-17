---
title: "Usage Of Ortp"
date: 2018-07-09
tags: ['rtp','media','linux']
published: true
comments: true
---

## client

1. Get source of *ortp* from github,switch to branch *0.25-simulator-fix*(version under 0.27 don't depend on special shared library).

2. Build *ortp* by `./autogen.sh && ./configure && make` or `mkdir -p ortp.build && cd ortp.build && cmake .. && make -j8`.

3. Install library to system by `sudo make install`.


4. Build test program by `gcc -o rtpsend -lortp rtpsend.c`.

5. Transmite stream *g711* media by `./rtpsend xxx.g711 <ip> <port>`

## server

1. Install *vlc* for server.

2. Write a *sdp* file for *g711* stream session, and open *sdp* file by vlc.

## H214

1. Add support to *H264* payload by add profile in *ortp/src/avprofile.c* by function *av_profile_init*.
2. Recompile ortp library.
3. Change *ortp/src/tests/rtpsend.c* to transmite *H264* file by function *rtp_session_set_payload_type*.
4. Extract *NALU* from *H264* file, pack *NALU* to *RTP* payload and send it.

## Cross Compile

Using *CMAKE_TOOLCHAIN_FILE* of *CMake*.
