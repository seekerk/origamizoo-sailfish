import QtQuick 2.0
import Sailfish.Silica 1.0
import "../items"

Page {
    id: main_page

    SilicaListView {
        anchors.fill: parent
        id: origamiList
        model: origamiListModel
        delegate: OrigamiListItem { }
    }
}
