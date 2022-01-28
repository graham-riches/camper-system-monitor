import QtQuick 2.0
import QtQuick.Controls 2.4
import QtQuick.Window 2.15

Page {
    width: 800
    height: 480
    opacity: 1
    background: Rectangle {
        color: "Black"
    }

    Button {
        x: 156
        y: 118
        text: qsTr("Click Me")
    }

    Label {
        id: label
        x: 88
        y: 224
        text: qsTr("This is a test label string for font sizing")
        font.pointSize: 14
        color: "White"
    }

    Label {
        id: label1
        x: 537
        y: 192
        width: 169
        height: 111
        text: qsTr("This is a test label1 string for font sizing")
        wrapMode: Text.WordWrap
        font.pointSize: 14
        color: "White"
    }

    Button {
        x: 581
        y: 118
        text: qsTr("Click Me")
    }
}
