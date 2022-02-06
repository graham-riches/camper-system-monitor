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
        width: 80
        height: 412
        spacing: 3

        ButtonGroup {
            buttons: tabMenu.children
        }

        Button {
            width: 80
            height: 80
            id: homeIcon
            checked: true
            icon.source: checked ? "home_icon_checked.png" : "home_icon.png"
            icon.color: "transparent"
            icon.width: 64
            icon.height: 64
            background: Rectangle {
                color: parent.checked ? colorGlow : "Black"
                radius: 3
                border.color: colorGlow
                border.width: 1
            }
        }

        Button {
            width: 80
            height: 80
            id: batteryIcon                        
            icon.source: checked ? "battery_icon_checked.png" : "battery_icon.png"
            icon.color: "transparent"
            icon.width: 64
            icon.height: 64
            background: Rectangle {
                color: parent.checked ? colorGlow : "Black"
                radius: 3
                border.color: colorGlow
                border.width: 1
            }
        }

        Button {
            width: 80
            height: 80
            id: waterIcon
            icon.source: checked ? "water_icon_checked.png" : "water_icon.png"
            icon.color: "transparent"
            icon.width: 64
            icon.height: 64
            background: Rectangle {
                color: parent.checked ? colorGlow : "Black"
                radius: 3
                border.color: colorGlow
                border.width: 1
            }
        }

        Button {
            width: 80
            height: 80
            id: musicIcon
            icon.source: checked ? "music_icon_checked.png" : "music_icon.png"
            icon.color: "transparent"
            icon.width: 64
            icon.height: 64
            background: Rectangle {
                color: parent.checked ? colorGlow : "Black"
                radius: 3
                border.color: colorGlow
                border.width: 1
            }
        }

        Button {
            width: 80
            height: 80
            id: temperatureIcon
            icon.source: checked ? "temperature_icon_checked.png" : "temperature_icon.png"
            icon.color: "transparent"
            icon.width: 64
            icon.height: 64
            background: Rectangle {
                color: parent.checked ? colorGlow : "Black"
                radius: 3
                border.color: colorGlow
                border.width: 1
            }
        }
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
    D{i:0;formeditorZoom:1.25}D{i:3}D{i:4}D{i:6}D{i:8}D{i:10}D{i:12}D{i:2}D{i:14}
}
##^##*/
