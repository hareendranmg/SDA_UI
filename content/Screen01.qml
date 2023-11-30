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
        id: backgroundImage1
        anchors.fill: parent
        source: "../background_image.png"
        sourceSize.width: 1280
        anchors.rightMargin: 0
        anchors.bottomMargin: 0
        anchors.leftMargin: 0
        anchors.topMargin: 0
        fillMode: Image.Stretch

        Label {
            id: tachlogLabel
            x: 110
            y: 55
            width: 130
            height: 30
            color: "#ffffff"
            text: qsTr("Tachlog")
            font.weight: Font.Bold
            font.pointSize: 16
        }

        Label {
            id: conceptsRedifinedLabel
            x: 110
            y: 80
            width: 130
            height: 30
            color: "#ffffff"
            text: qsTr("Concepts Redefined")
            font.weight: Font.Medium
            font.pointSize: 10
        }

        Label {
            id: serialDataLabel
            x: 54
            y: 142
            color: "#ffffff"
            text: qsTr("SERIAL DATA")
            font.pointSize: 12
        }

        Label {
            id: acquisitionLabel
            x: 80
            y: 160
            color: "#ffffff"
            text: qsTr("ACQUISITION")
            font.pointSize: 12
        }

        RoundButton {
            id: dashboardButton
            x: 30
            y: 200
            icon.source: "qrc:/assets/images/dashboard_icon.png"
            width: 200
            height: 46
            radius: 12
            text: qsTr("Dashboard")
            highlighted: false
            flat: false
            icon.width: 22
            font.weight: Font.Medium
            font.italic: false
            font.bold: true
            font.pointSize: 13
            onClicked: {
                sidebarActions.handleSidebarButton('dashboard')
            }
        }

        RoundButton {
            id: configurationButton
            x: 30
            y: 260
            icon.source: "qrc:/assets/images/configuration_icon.png"
            icon.color: "#00000000"
            width: 200
            height: 46
            radius: 12
            text: qsTr("Configuration")
            icon.width: 22
            font.weight: Font.Medium
            font.pointSize: 13
            font.italic: false
            font.bold: true
            onClicked: {
                sidebarActions.handleSidebarButton('list_configurations')
            }
        }

        RoundButton {
            id: dataLogsButton
            x: 30
            y: 320
            icon.source: "qrc:/assets/images/data_logs_icon.png"
            icon.color: "#00000000"
            icon.width: 22
            width: 200
            height: 46
            radius: 12
            text: qsTr("Data Logs")
            font.weight: Font.Medium
            font.pointSize: 13
            font.italic: false
            font.bold: true
            onClicked: {
                sidebarActions.handleSidebarButton(dataLogsButton.text)
            }
        }

        RoundButton {
            id: storageButton
            x: 30
            y: 380
            icon.source: "qrc:/assets/images/storage_icon.png"
            icon.color: "#00000000"
            icon.width: 22
            width: 200
            height: 46
            radius: 12
            text: qsTr("Storage")
            font.weight: Font.Medium
            font.pointSize: 13
            font.italic: false
            font.bold: true
            onClicked: {
                sidebarActions.handleSidebarButton(storageButton.text)
            }
        }

        RoundButton {
            id: settingsButton
            x: 30
            y: 440
            icon.source: "qrc:/assets/images/settings_icon.png"
            icon.color: "#00000000"
            icon.width: 22
            width: 200
            height: 46
            radius: 12
            text: qsTr("Settings")
            font.weight: Font.Medium
            font.pointSize: 13
            font.italic: false
            font.bold: true
            onClicked: {
                sidebarActions.handleSidebarButton(settingsButton.text)
            }
        }

        Label {
            id: dashboardIndicator
            x: 330
            y: 60
            color: "#ffffff"
            text: qsTr("Dashboard")
            font.pointSize: 14
        }

        Label {
            id: configurationIndicator
            x: 480
            y: 60
            color: "#ffffff"
            text: qsTr("Configuration")
            font.pointSize: 14
        }

        Label {
            id: dataLogsIndicator
            x: 660
            y: 60
            width: 156
            height: 27
            color: "#ffffff"
            text: qsTr("Data Logs")
            font.pointSize: 14
        }

        Label {
            id: storageIndicator
            x: 794
            y: 60
            width: 109
            height: 27
            color: "#ffffff"
            text: qsTr("Storage")
            font.pointSize: 14
        }

        Label {
            id: settingsIndicator
            x: 915
            y: 60
            width: 156
            height: 27
            color: "#ffffff"
            text: qsTr("Settings")
            font.pointSize: 14
        }
    }

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
            text: qsTr("Storage")
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
            id: createConfigurationRectangle
            x: 260
            y: 0
            width: 1020
            height: 800
            opacity: 1
            color: "#00000000"
            border.color: "#00000000"

            property var alertDialog

            Connections {
                target: configManager
                function onShowAlertSignal(message, alertType) {
                    showAlert(message, alertType)
                }
            }

            Dialog {
                id: alertDialog
                parent: ApplicationWindow.overlay

                x: (parent.width - width) / 2
                y: (parent.height - height) / 2

                height: 200
                width: 400

                focus: true
                modal: true
                title: ""

                property alias text: messageText.text

                Label {
                    id: messageText

                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter

                    anchors.fill: parent
                }

                standardButtons: Dialog.Ok
            }

            // Function to show the alert dialog
            function showAlert(message, alertType) {
                alertDialog.text = message
                console.log("alertType: " + alertType)
                // Adjust title based on alertType
                switch (alertType) {
                case "success":
                    alertDialog.title = "Success"
                    break
                case "warning":
                    alertDialog.title = "Warning"
                    break
                case "error":
                    alertDialog.title = "Error"
                    break
                default:
                    alertDialog.title = ""
                    break
                }

                alertDialog.open()
            }

            Image {
                id: divider
                x: 170
                y: 94
                width: 108
                height: 2
                source: "../assets/images/divider.png"
                sourceSize.width: 120
                sourceSize.height: 4
            }

            RoundButton {
                x: 790
                y: 56
                width: 190
                height: 35
                radius: 8
                text: "Go Back"
                highlighted: false
                flat: false
                onClicked: {
                    appNavigation.handleNavigationButtonClick(
                                "goto_list_configurations")
                }
            }

            Label {
                id: createANewConfLabel
                x: 50
                y: 168
                color: "#ffffff"
                text: qsTr("Create a new configuration")
                font.bold: true
                font.pointSize: 16
            }

            Text {
                id: port
                x: 50
                y: 210
                color: "#fffbfb"
                text: qsTr("Port")
                font.pixelSize: 15
                font.italic: false
                font.bold: true

                ComboBox {
                    id: portCombo
                    x: 0
                    y: 20
                    width: 150
                    height: 35
                    opacity: 1
                    visible: true
                    rightPadding: 0
                    spacing: 0
                    editable: false
                    flat: false
                    textRole: ""
                    background: Rectangle {
                        color: "#ffffff"
                        x: 0
                        y: 20
                        radius: 6
                        width: 250
                        height: 35
                        border.color: "#00000000"
                        anchors.fill: parent
                    }
                    model: ListModel {
                        ListElement {
                            text: "PORT1 : RS485"
                        }
                        ListElement {
                            text: "PORT2 : RS485"
                        }
                        ListElement {
                            text: "PORT3 : RS422"
                        }
                        ListElement {
                            text: "PORT4 : RS422"
                        }
                    }
                }
            }

            Text {
                id: baudRate
                x: 220
                y: 210
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
                    width: 150
                    height: 35
                    radius: 6
                    border.color: "#000000"
                    border.width: 1
                    TextInput {
                        id: baudRateInput
                        opacity: 0.7
                        visible: true
                        color: "#0b0b0b"
                        text: "10000000"
                        anchors.fill: parent
                        font.pixelSize: 14
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignVCenter
                        font.weight: Font.Black
                        leftPadding: 10
                        font.bold: true
                        MouseArea {
                            anchors.fill: parent
                            onClicked: {
                                virtualKeyboard.visible = false
                                virtualNumberKeyboard.visible = true
                                virtualNumberKeyboard.inputField = baudRateInput
                                periodicityInput1.focus = true // Set focus to the TextInput
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
                id: databit
                x: 390
                y: 210
                width: 60
                color: "#ffffff"
                text: qsTr("Data Bit")
                font.pixelSize: 15
                font.italic: false
                font.bold: true

                ComboBox {
                    id: dataBitCombo
                    x: 0
                    y: 20
                    width: 150
                    height: 35
                    opacity: 1
                    currentIndex: 3
                    background: Rectangle {
                        color: "#ffffff"
                        x: 0
                        y: 20
                        radius: 6
                        width: 250
                        height: 35
                        border.color: "#00000000"
                        anchors.fill: parent
                    }

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
                }
            }

            Text {
                id: parity
                x: 560
                y: 210
                width: 60
                height: 17
                color: "#ffffff"
                text: qsTr("Parity")
                font.pixelSize: 15
                font.italic: false
                font.bold: true
                ComboBox {
                    id: parityCombo
                    x: 0
                    y: 20
                    width: 150
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
                id: stopBit
                x: 730
                y: 210
                width: 60
                height: 17
                color: "#ffffff"
                text: qsTr("Stop Bit")
                font.pixelSize: 15
                font.bold: true
                font.italic: false

                ComboBox {
                    id: stopBitCombo
                    x: 0
                    y: 19
                    width: 150
                    height: 35
                    opacity: 1
                    background: Rectangle {
                        color: "#ffffff"
                        x: 0
                        y: 20
                        radius: 6
                        width: 250
                        height: 35
                        border.color: "#00000000"
                        anchors.fill: parent
                    }
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
                }
            }

            Text {
                id: periodicity
                x: 390
                y: 290
                width: 77
                height: 17
                color: "#ffffff"
                text: qsTr("Periodicity (Ml.  S)")
                font.pixelSize: 15
                font.italic: false
                font.bold: true

                Rectangle {
                    x: 0
                    y: 20
                    width: 150
                    height: 35
                    border.color: "black" // Set the border color
                    border.width: 1 // Set the border width
                    radius: 6

                    TextInput {
                        id: periodicityInput
                        opacity: 0.7
                        visible: true
                        anchors.fill: parent
                        color: "#0b0b0b"
                        text: "20"
                        font.pixelSize: 12
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignVCenter
                        anchors.bottomMargin: 0
                        leftPadding: 10
                        font.bold: true

                        anchors.leftMargin: 0
                        anchors.topMargin: 0
                        anchors.rightMargin: 0
                        clip: false

                        MouseArea {
                            anchors.fill: parent
                            drag.threshold: 8
                            onClicked: {
                                virtualKeyboard.visible = false
                                virtualNumberKeyboard.visible = true
                                virtualNumberKeyboard.inputField = periodicityInput
                                periodicityInput.focus = true // Set focus to the TextInput
                            }
                        }
                    }
                }
            }

            Text {
                id: commandToSent
                x: 50
                y: 290
                color: "#fcfcfc"
                text: qsTr("Command")
                font.pixelSize: 15
                font.italic: false
                font.bold: true

                Rectangle {
                    x: 0
                    y: 20
                    width: 150
                    height: 35
                    border.color: "black" // Set the border color
                    border.width: 1 // Set the border width
                    radius: 6

                    TextInput {
                        id: commandToSentInput
                        opacity: 0.7
                        visible: true
                        anchors.fill: parent
                        color: "#0b0b0b"
                        text: ""
                        font.pixelSize: 12
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignVCenter
                        anchors.bottomMargin: 0
                        anchors.leftMargin: 0
                        anchors.topMargin: 0
                        anchors.rightMargin: 0
                        clip: false
                        leftPadding: 10
                        font.bold: true
                        MouseArea {
                            anchors.fill: parent
                            onClicked: {
                                virtualNumberKeyboard.visible = false
                                virtualKeyboard.visible = true
                                virtualKeyboard.inputField = commandToSentInput
                                commandToSentInput.focus = true // Set focus to the TextInput
                            }
                        }
                    }
                }
            }

            Text {
                id: dataBytes
                x: 220
                y: 290
                color: "#fcfcfc"
                text: qsTr("Data Bytes")
                font.pixelSize: 15
                font.italic: false
                font.bold: true

                Rectangle {
                    x: 0
                    y: 20
                    width: 150
                    height: 35
                    border.color: "black" // Set the border color
                    border.width: 1 // Set the border width
                    radius: 6

                    TextInput {
                        id: dataBytesInput
                        opacity: 0.7
                        visible: true
                        anchors.fill: parent
                        color: "#0b0b0b"
                        text: ""
                        font.pixelSize: 12
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignVCenter
                        anchors.bottomMargin: 0
                        anchors.leftMargin: 0
                        anchors.topMargin: 0
                        anchors.rightMargin: 0
                        clip: false
                        leftPadding: 10
                        font.bold: true
                        MouseArea {
                            anchors.fill: parent
                            onClicked: {
                                virtualNumberKeyboard.visible = false
                                virtualKeyboard.visible = true
                                virtualKeyboard.inputField = dataBytesInput
                                dataBytesInput.focus = true // Set focus to the TextInput
                            }
                        }
                    }
                }
            }

            Text {
                id: configurationName
                x: 560
                y: 290
                color: "#fcfcfc"
                text: qsTr("Configuration Name")
                font.pixelSize: 15
                font.italic: false
                font.bold: true

                Rectangle {
                    x: 0
                    y: 20
                    width: 320
                    height: 35
                    border.color: "black" // Set the border color
                    border.width: 1 // Set the border width
                    radius: 6

                    TextInput {
                        id: configurationNameInput
                        opacity: 0.7
                        visible: true
                        anchors.fill: parent
                        color: "#0b0b0b"
                        text: ""
                        font.pixelSize: 12
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignVCenter
                        anchors.bottomMargin: 0
                        anchors.leftMargin: 0
                        anchors.topMargin: 0
                        anchors.rightMargin: 0
                        clip: false
                        leftPadding: 10
                        font.bold: true
                        MouseArea {
                            anchors.fill: parent
                            anchors.rightMargin: 0
                            onClicked: {
                                virtualNumberKeyboard.visible = false
                                virtualKeyboard.visible = true
                                virtualKeyboard.inputField = configurationNameInput
                                configurationNameInput.focus = true // Set focus to the TextInput
                            }
                        }
                    }
                }
            }

            RoundButton {
                id: saveConfigurationButton
                x: 660
                y: 163
                width: 270
                height: 35
                radius: 8
                text: "Save Configuration"
                highlighted: false
                flat: false
                onClicked: {
                    // Emit the signal with the selected data
                    configManager.insertItem(portCombo.currentText,
                                             baudRateCombo.currentText,
                                             stopBitCombo.currentText,
                                             flowControlCombo.currentText,
                                             dataBitCombo.currentText,
                                             periodicityInput.text,
                                             commandToSendInput.text,
                                             configurationNameInput.text)
                }
            }
        }
    }
}

/*##^##
Designer {
    D{i:0}D{i:1;invisible:true}D{i:29}D{i:49}
}
##^##*/

