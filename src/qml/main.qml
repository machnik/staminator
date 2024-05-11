import QtQuick
import QtQuick.Controls

ApplicationWindow {

    visible: true
    width: Screen.width; height: Screen.height
    // flags: Qt.Window | Qt.FramelessWindowHint

    Rectangle {
        width: parent.width; height: parent.height
        color: "black"
        opacity: 0.5
    }
}
