import QtQuick 2.0
import Sailfish.Silica 1.0
import "../items"

Page {
    id: main_page

    FontLoader { id: localFont; source: Qt.resolvedUrl("qrc:/content/fonts/font.ttf") }

    Rectangle {
        id: header
        width: parent.width
        height: 150
        color: "#ff4292d6"
        Image {
            id: logo
            source: "qrc:/content/ic_launcher.png"
            sourceSize: "100x100"
            x: 25
            y: 25
        }

        Label {
            text: "Origami Zoo"
            horizontalAlignment: Text.AlignLeft
            font {family: localFont.name; pixelSize: 80 }
            anchors.left: logo.right
            anchors.leftMargin: 25
            anchors.verticalCenter: parent.verticalCenter
        }
    }

    SilicaListView {
        anchors {
            top: header.bottom
            bottom: parent.bottom
            left: parent.left
            right: parent.right
        }
        clip: true
        id: origamiList
        model: origamiListModel
        delegate: OrigamiListItem { }
    }
}
