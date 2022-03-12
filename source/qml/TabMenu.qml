import QtQuick 2.9
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.3
import "." as Components

Column {
    id: tabMenu
    x: 20
    y: 74
    width: 80
    height: 332
    spacing: 4

    readonly property color colorGlow: "#1d6d64"
    readonly property color colorBright: "#ffffff"
    readonly property color checkedColor: "#ee94b3af"
    readonly property int fontSizeExtraSmall: 12

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