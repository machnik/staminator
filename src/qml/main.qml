import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

ApplicationWindow {
    id: appWindow

    visible: true
    title: "Staminator 1.0"
    readonly property int margin: 8

    Component.onCompleted: {
        width = mainLayout.implicitWidth + 2 * margin
        height = mainLayout.implicitHeight + 2 * margin
    }

    minimumWidth: mainLayout.Layout.minimumWidth + 2 * margin
    minimumHeight: mainLayout.Layout.minimumHeight + 2 * margin

    ColumnLayout {
        id: mainLayout
        anchors.fill: parent
        anchors.margins: appWindow.margin

        GroupBox {
            id: roundGroupBox
            Layout.fillWidth: true
            Layout.fillHeight: false
            Layout.minimumWidth: roundGroupBoxLayout.Layout.minimumWidth + 32

            RowLayout {
                id: roundGroupBoxLayout
                anchors.fill: parent
                TextField {
                    placeholderText: "Round type here"
                    Layout.fillWidth: true
                }
                Button {
                    text: "Button"
                    Layout.fillWidth: false
                }
            }
        }

        GroupBox {
            id: timelineGroupBox
            Layout.fillWidth: true
            Layout.fillHeight: false
            Layout.minimumWidth: timelineGroupBoxLayout.Layout.minimumWidth + 32
            Layout.minimumHeight: roundGroupBox.height * 2

            RowLayout {
                id: timelineGroupBoxLayout
                anchors.fill: parent
                TextField {
                    placeholderText: "Timeline here"
                    Layout.fillWidth: true
                }
                Button {
                    text: "Button"
                    Layout.fillWidth: false
                }
            }
        }
        GroupBox {
            id: sourceAndOptionsGroupBox
            Layout.minimumHeight: 30
            Layout.fillHeight: true
            Layout.fillWidth: true

            TextArea {
                text: "Source files and options here"
            }
        }

        GroupBox {
            id: generatorGroupBox
            Layout.fillWidth: true
            Layout.fillHeight: false
            Layout.minimumWidth: generatorGroupBoxLayout.Layout.minimumWidth + 30
            Layout.minimumHeight: roundGroupBox.height

            RowLayout {
                id: generatorGroupBoxLayout
                anchors.fill: parent
                TextField {
                    placeholderText: "Generate here"
                    Layout.fillWidth: true
                }
                Button {
                    text: "Button"
                    Layout.fillWidth: false
                }
            }
        }
    }
}
