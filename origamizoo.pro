# NOTICE:
#
# Application name defined in TARGET has a corresponding QML filename.
# If name defined in TARGET is changed, the following needs to be done
# to match new name:
#   - corresponding QML filename must be changed
#   - desktop icon filename must be changed
#   - desktop filename must be changed
#   - icon definition filename in desktop file must be changed
#   - translation filenames have to be changed

# The name of your application
TARGET = origamizoo

CONFIG += sailfishapp

DEPLOYMENT_PATH = /usr/share/$${TARGET}

SOURCES += src/origamizoo.cpp \
    src/origamiitem.cpp \
    src/loadorigamies.cpp

DISTFILES += qml/origamizoo.qml \
    qml/cover/CoverPage.qml \
    qml/pages/FirstPage.qml \
    qml/pages/SecondPage.qml \
    rpm/origamizoo.changes.in \
    rpm/origamizoo.changes.run.in \
    rpm/origamizoo.spec \
    rpm/origamizoo.yaml \
    translations/*.ts \
    origamizoo.desktop \
    qml/pages/MainPage.qml \
    qml/items/OrigamiListItem.qml \
    content/fonts/font.ttf \
    content/figures/* \
    qml/pages/ViewPage.qml

SAILFISHAPP_ICONS = 86x86 108x108 128x128 172x172

data.files = content
data.path = $${DEPLOYMENT_PATH}

INSTALLS += data

# to disable building translations every time, comment out the
# following CONFIG line
CONFIG += sailfishapp_i18n

# German translation is enabled as an example. If you aren't
# planning to localize your app, remember to comment out the
# following TRANSLATIONS line. And also do not forget to
# modify the localized app name in the the .desktop file.
TRANSLATIONS += translations/origamizoo-de.ts

HEADERS += \
    src/origamiitem.h \
    src/loadorigamies.h

RESOURCES += \
    data.qrc
