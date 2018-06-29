import QtQuick 2.0
import Sailfish.Silica 1.0


Page {

    property var item

    Rectangle {
        id: header
        width: parent.width
        height: 150
        color: "#ff4292d6"
        Image {
            id: logo
            source: item.logo
            sourceSize: "100x100"
            x: 50
            y: 25
        }

        Label {
            text: item.name
            horizontalAlignment: Text.AlignCenter
            anchors.left: logo.right
            anchors.leftMargin: 25
            anchors.verticalCenter: parent.verticalCenter
            font.pixelSize: 80
        }
    }

    Rectangle {
        anchors.centerIn: parent
    Text {
        id: folderHolder
        text: item.folder
    }
    }
}
