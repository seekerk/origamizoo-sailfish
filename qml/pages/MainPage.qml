import QtQuick 2.0
import Sailfish.Silica 1.0
import "../items"

Page {
    id: main_page

    FontLoader { id: localFont; source: Qt.resolvedUrl("qrc:/content/fonts/font.ttf") }

    Rectangle {
        id: header
        width: parent.width
        height: 80
        color: "#ff4292d6"
        Image {
            id: logo
            source: "qrc:/content/ic_launcher.png"
            sourceSize: "60x60"
            x: 10
            y: 10
        }

        Label {
            text: "Origami Zoo"
            horizontalAlignment: Text.AlignLeft
            font {family: localFont.name; pixelSize: 56 }
            x: 80
            y: 10
            height: 70
        }
    }

    SilicaListView {
        anchors {
            fill: parent
            topMargin: header.height
        }
        id: origamiList
        model: origamiListModel
        delegate: OrigamiListItem { }
    }
}
