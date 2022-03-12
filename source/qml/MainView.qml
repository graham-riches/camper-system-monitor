import QtQuick 2.0
import QtQuick.Controls 2.4
import QtQuick.Window 2.15
import "." as Components

Page {
    width: 700
    height: 480

    opacity: 1
    background: Rectangle {
        color: "Black"
    }       

    Label {
        id: label
        x: 210
        y: 0
        color: "#1d6d64"
        text: qsTr("12:00")
        font.pointSize: 90
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:1.25}D{i:2}
}
##^##*/
