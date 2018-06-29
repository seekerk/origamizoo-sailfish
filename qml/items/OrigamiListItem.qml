import QtQuick 2.0

Component {
    id: origamiListDelegate

    Rectangle {
        height: nameHolder.height + complexityHolder.height + stepsHolder.height + 10
        width: parent.width
        border { width: 2; color: "blue" }
        radius: 8
        Image {
            id: logoHolder
            source: logo
            sourceSize: "80x80"
            anchors.verticalCenter: parent.verticalCenter
            x: 10
        }
        Text {
            id: nameHolder
            text: name
            font.pixelSize: 45
            anchors.left: logoHolder.right
            anchors.leftMargin: 10
        }
        Text {
            id: complexityHolder
            text: "complexity: " + complexity
            anchors.top: nameHolder.bottom
            anchors.left: logoHolder.right
            anchors.leftMargin: 10
        }
        Text {
            id: stepsHolder
            text: steps + " steps"
            anchors.top: complexityHolder.bottom
            anchors.left: logoHolder.right
            anchors.leftMargin: 10
        }
        MouseArea {
            anchors.fill: parent
            onClicked: {
                origamiList.currentIndex = index;
                console.log("Clicked " + index);
                pageStack.push(Qt.resolvedUrl("../pages/ViewPage.qml"), {item: origamiList.model[index]})
            }
        }
    }
}
