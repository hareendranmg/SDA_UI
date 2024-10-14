import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.15
import Qt.labs.qmlmodels 1.0

Rectangle {
    id: backgroundComponent
    width: 1280
    height: 800
    visible: true

    Image {
        id: backgroundImage
        anchors.fill: parent
        source: "../background_image.jpg"
        sourceSize.width: 1280
        anchors.rightMargin: 0
        anchors.bottomMargin: 0
        anchors.leftMargin: 0
        anchors.topMargin: 0
        fillMode: Image.Stretch

        RoundButton {
            id: dashboardButton1
            x: 30
            y: 225
            width: 200
            height: 46
            radius: 12
            text: qsTr("Dashboard")
            onClicked: {
                sidebarActions.handleSidebarButton('dashboard')
            }
            icon.width: 22
            icon.source: "qrc:/assets/images/dashboard_icon.png"
            highlighted: false
            font.weight: Font.Medium
            font.pointSize: 13
            font.italic: false
            font.bold: true
            flat: false
        }

        RoundButton {
            id: configurationButton1
            x: 30
            y: 285
            width: 200
            height: 46
            radius: 12
            text: qsTr("Configuration")
            onClicked: {
                sidebarActions.handleSidebarButton('list_configurations')
            }
            icon.width: 22
            icon.source: "qrc:/assets/images/configuration_icon.png"
            icon.color: "#00000000"
            font.weight: Font.Medium
            font.pointSize: 13
            font.italic: false
            font.bold: true
        }

        RoundButton {
            id: dataLogsButton1
            x: 30
            y: 345
            width: 200
            height: 46
            radius: 12
            text: qsTr("Data Logs")
            onClicked: {
                sidebarActions.handleSidebarButton(dataLogsButton1.text)
            }
            icon.width: 22
            icon.source: "qrc:/assets/images/data_logs_icon.png"
            icon.color: "#00000000"
            font.weight: Font.Medium
            font.pointSize: 13
            font.italic: false
            font.bold: true
        }

        RoundButton {
            id: storageButton1
            x: 30
            y: 405
            width: 200
            height: 46
            radius: 12
            text: qsTr("Data Dump")
            onClicked: {
                sidebarActions.handleSidebarButton(storageButton1.text)
            }
            icon.width: 22
            icon.source: "qrc:/assets/images/storage_icon.png"
            icon.color: "#00000000"
            font.weight: Font.Medium
            font.pointSize: 13
            font.italic: false
            font.bold: true
        }

        RoundButton {
            id: settingsButton1
            x: 30
            y: 465
            width: 200
            height: 46
            radius: 12
            text: qsTr("Settings")
            onClicked: {
                sidebarActions.handleSidebarButton(settingsButton1.text)
            }
            icon.width: 22
            icon.source: "qrc:/assets/images/settings_icon.png"
            icon.color: "#00000000"
            font.weight: Font.Medium
            font.pointSize: 13
            font.italic: false
            font.bold: true
        }

        Rectangle {
            id: portOnePage
            visible: true
            x: 294
            y: 225
            anchors.top: tabBar.bottom
            width: 890
            height: 460
            color: "#0a0d2c"

            Text {
                id: portOneEnabledText
                x: 20
                y: 20
                width: 58
                height: 17
                color: "#fffbfb"
                text: qsTr("Enabled")
                font.pixelSize: 15
                font.italic: false
                font.bold: true
                ComboBox {
                    id: portOneEnabled
                    x: 0
                    y: 20
                    width: 150
                    height: 35
                    opacity: 1
                    visible: true
                    spacing: 0
                    rightPadding: 0
                    currentIndex: 0
                    model: ListModel {
                        ListElement {
                            text: "No"
                        }
                        ListElement {
                            text: "Yes"
                        }
                    }
                    flat: false
                    editable: false
                    background: Rectangle {
                        x: 0
                        y: 20
                        width: 250
                        height: 35
                        color: "#ffffff"
                        radius: 6
                        border.color: "#00000000"
                        anchors.fill: parent
                    }
                }
            }
            Text {
                id: portOneBaudRateText
                x: 190
                y: 20
                width: 77
                height: 17
                color: "#ffffff"
                text: qsTr("Baud rate")
                font.pixelSize: 15
                font.italic: false
                font.bold: true
                Rectangle {
                    x: 0
                    y: 20
                    width: 160
                    height: 35
                    radius: 6
                    border.color: "#000000"
                    border.width: 1
                    TextInput {
                        id: portOneBaudRateInput
                        opacity: 0.7
                        visible: true
                        color: "#0b0b0b"
                        text: "2000000"
                        anchors.fill: parent
                        font.pixelSize: 14
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignVCenter
                        leftPadding: 10
                        font.weight: Font.Black
                        font.bold: true
                        MouseArea {
                            anchors.fill: parent
                            onClicked: {
                                virtualKeyboard.visible = false
                                virtualNumberKeyboard.visible = true
                                virtualNumberKeyboard.inputField = portOneBaudRateInput
                                portOneBaudRateInput.focus = true // Set focus to the TextInput
                            }
                            drag.threshold: 8
                        }
                        clip: false
                        anchors.topMargin: 0
                        anchors.rightMargin: 0
                        anchors.leftMargin: 0
                        anchors.bottomMargin: 0
                    }
                }
            }
            Text {
                id: portOneParityText
                x: 370
                y: 20
                width: 60
                height: 17
                color: "#ffffff"
                text: qsTr("Parity")
                font.pixelSize: 15
                font.italic: false
                font.bold: true
                ComboBox {
                    id: portOneParityCombo
                    x: 0
                    y: 20
                    width: 160
                    height: 35
                    opacity: 1
                    model: ListModel {
                        ListElement {
                            text: "No Parity"
                        }

                        ListElement {
                            text: "Even Parity"
                        }

                        ListElement {
                            text: "Odd Parity"
                        }

                        ListElement {
                            text: "Space Parity"
                        }

                        ListElement {
                            text: "Mark Parity"
                        }
                    }
                    background: Rectangle {
                        x: 0
                        y: 20
                        width: 250
                        height: 35
                        color: "#ffffff"
                        radius: 6
                        border.color: "#00000000"
                        anchors.fill: parent
                    }
                }
            }
            Text {
                id: portOneDataBitText
                x: 550
                y: 20
                width: 60
                color: "#ffffff"
                text: qsTr("Data Bit")
                font.pixelSize: 15
                font.italic: false
                font.bold: true
                ComboBox {
                    id: portOneDataBitCombo
                    x: 0
                    y: 20
                    width: 150
                    height: 35
                    opacity: 1
                    currentIndex: 3
                    model: ListModel {
                        ListElement {
                            text: "5"
                        }

                        ListElement {
                            text: "6"
                        }

                        ListElement {
                            text: "7"
                        }

                        ListElement {
                            text: "8"
                        }
                    }
                    background: Rectangle {
                        x: 0
                        y: 20
                        width: 250
                        height: 35
                        color: "#ffffff"
                        radius: 6
                        border.color: "#00000000"
                        anchors.fill: parent
                    }
                }
            }
            Text {
                id: portOneStopBitText
                x: 720
                y: 20
                width: 65
                height: 1
                color: "#ffffff"
                text: qsTr("Stop Bit")
                font.pixelSize: 15
                font.italic: false
                font.bold: true
                ComboBox {
                    id: portOneStopBitCombo
                    x: 0
                    y: 20
                    width: 150
                    height: 35
                    opacity: 1
                    model: ListModel {
                        ListElement {
                            text: "1"
                        }

                        ListElement {
                            text: "1.5"
                        }

                        ListElement {
                            text: "2"
                        }
                    }
                    background: Rectangle {
                        x: 0
                        y: 20
                        width: 250
                        height: 35
                        color: "#ffffff"
                        radius: 6
                        border.color: "#00000000"
                        anchors.fill: parent
                    }
                }
            }
        }
    }
}
