import QtQuick 2.0
import QtQuick.Controls 2.4
import QtQuick.Window 2.15
import "." as Components

Page {
    width: 800
    height: 480
    opacity: 1
    background: Rectangle {
        color: "Black"
    }       

    readonly property color colorGlow: "#1d6d64"
    readonly property color colorBright: "#ffffff"
    readonly property color checkedColor: "#ee94b3af"
    readonly property int fontSizeExtraSmall: 12


    Column {
        id: tabMenu
        x: 20
        y: 36
        width: 100
        height: 408
        spacing: 1

        ButtonGroup {
            buttons: tabMenu.children
        }

        Components.FeatureButton {
            width: 100
            height: 80
            text: qsTr("Settings")
            font.bold: true
            checked: true
            id: settingsIcon
            icon.source: checked ? "music_checked.png" : "music.png"
            icon.color: "transparent"
            background: Rectangle {
                color: parent.checked ? colorGlow : "Black"
                radius: 2
                border.color: colorGlow
                border.width: 1
            }
        }

        Components.FeatureButton {
            width: 100
            height: 80
            id: batteryIcon
            text: qsTr("Battery")
            font.bold: true
            icon.source: checked ? "music_checked.png" : "music.png"
            icon.color: "transparent"
            background: Rectangle {
                color: parent.checked ? colorGlow : "Black"
                radius: 2
                border.color: colorGlow
                border.width: 1
            }
        }

        Components.FeatureButton {
            width: 100
            height: 80
            id: waterIcon
            text: qsTr("Water")
            font.bold: true
            icon.source: "music.png"
            icon.color: "transparent"
            background: Rectangle {
                color: parent.checked ? colorGlow : "Black"
                radius: 2
                border.color: colorGlow
                border.width: 1
            }
        }

        Components.FeatureButton {
            width: 100
            height: 80
            id: climateIcon
            text: qsTr("Climate")
            font.bold: true
            icon.source: "music.png"
            icon.color: "transparent"
            background: Rectangle {
                color: parent.checked ? colorGlow : "Black"
                radius: 2
                border.color: colorGlow
                border.width: 1
            }
        }

        Components.FeatureButton {
            width: 100
            height: 80
            id: musicIcon
            text: qsTr("Music")
            font.bold: true
            icon.color: "transparent"
            icon.source: "music.png"
            background: Rectangle {
                color: parent.checked ? colorGlow : "Black"
                radius: 2
                border.color: colorGlow
                border.width: 1
            }
        }

    }

    Rectangle {
        width: 3
        height: 408
        x: 135
        y: 36
        color: "Black"
        border.width: 3
        border.color: colorGlow
    }

    Label {
        id: label
        x: 279
        y: 0
        color: "#1d6d64"
        text: qsTr("12:00")
        font.pointSize: 90
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:1.33}D{i:3}D{i:4}D{i:6}D{i:8}D{i:10}D{i:12}D{i:2}D{i:14}D{i:15}
}
##^##*/
