import QtQuick 2.0

Component {
    id: origamiListDelegate

    Rectangle {
        height: 125
        width: parent.width
        Text {
            text: name
        }
    }
}
