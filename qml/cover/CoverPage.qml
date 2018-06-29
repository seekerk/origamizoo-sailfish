import QtQuick 2.0
import Sailfish.Silica 1.0

CoverBackground {
        Image {
            id: logo
            source: "qrc:/content/ic_launcher.png"
            anchors.centerIn: parent
            anchors.verticalCenterOffset: -80
        }
        Text {
            text: "Origami Zoo"
            anchors.top: logo.bottom
            anchors.horizontalCenter: parent.horizontalCenter
        }


    CoverActionList {
        id: coverAction

        CoverAction {
            iconSource: "image://theme/icon-cover-next"
        }

        CoverAction {
            iconSource: "image://theme/icon-cover-pause"
        }
    }
}
