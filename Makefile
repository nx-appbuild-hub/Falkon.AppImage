# Copyright 2020 Alex Woroschilow (alex.woroschilow@gmail.com)
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.

all:
	curl -sLo appimagetool \
	    https://github.com/AppImage/appimagetool/releases/download/continuous/appimagetool-x86_64.AppImage
	curl -sLo fill-appdir \
	    https://raw.githubusercontent.com/nx-appbuild-hub/base-tools/refs/heads/main/fill-appdir

	chmod +x appimagetool fill-appdir

	./fill-appdir falkon libqt5sql5-sqlite qml-module-qtwebengine qtwebengine5-dev-tools kio \
								libc6 libgcc-s1 libkf5archive5 libkf5coreaddons5 libkf5crash5 libkf5kiocore5 \
								libkf5kiowidgets5 libkf5purpose-bin libkf5purpose5 libkf5wallet-bin libkf5wallet5 \
								libqt5core5a libqt5dbus5 libqt5gui5 libqt5gui5-gles libqt5network5 libqt5printsupport5 \
								libqt5qml5 libqt5quickwidgets5 libqt5sql5 libqt5webchannel5 libqt5webenginecore5 \
								libqt5webenginewidgets5 libqt5widgets5 libqt5x11extras5 libssl3 libstdc++6 libxcb1

	ARCH=x86_64 ./appimagetool AppDir Falkon.AppImage
	chmod +x Falkon.AppImage
