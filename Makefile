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

all: clean
	curl -sL https://raw.githubusercontent.com/nx-appbuild-hub/base-tools/refs/heads/main/install.sh | sh
	export PATH="${PATH}:${HOME}/.bin"

	fill-appdir falkon libqt5webenginecore5 libqt5xml5 libqt5sql5 libqt5dbus5 libselinux1 \
								libqt5printsupport5 libqt5widgets5 libqt5qml5 libqt5network5 libqt5gui5 libqt5core5a libqt5quick5

	ARCH=x86_64 ./appimagetool AppDir Falkon.AppImage
	chmod +x Falkon.AppImage

clean:
	rm -rf build
