import QtQuick 2.0
import QtQuick.Controls 2.0
import "."

ApplicationWindow {
    visible: true
    visibility: "FullScreen"
    width: 800
    height: 480

    MainView {

    }

    MouseArea {
        anchors.fill: parent
        enabled: false
        cursorShape: Qt.BlankCursor
  }
}