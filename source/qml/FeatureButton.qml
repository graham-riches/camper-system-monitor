import QtQuick 2.9
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.3

Button {
    id: button
    checkable: true
    font.pixelSize: fontSizeExtraSmall
    leftPadding: 0
    rightPadding: 0
    topPadding: 4
    bottomPadding: 4
    implicitWidth: 80
    implicitHeight: 80

    icon.name: "placeholder"    
    icon.width: 64
    icon.height: 64
    display: Button.TextUnderIcon
}
/*##^##
Designer {
    D{i:0;height:96;width:174}
}
##^##*/
