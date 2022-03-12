import QtQuick 2.0
import QtQuick.Controls 2.0
import "." as Components

ApplicationWindow {
    visible: true
    visibility: "FullScreen"
    width: 800
    height: 480    
    background: Rectangle {
        color: "Black"
    }

    Components.TabMenu {
        
    }

    Loader {
        id: pageLoader
        source: "MainView.qml"
        x: 100
    }

    MouseArea {
        anchors.fill: parent
        enabled: false
        cursorShape: Qt.BlankCursor
  }
}
