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
            visible: false

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

            Rectangle {
                x: 417
                y: 163
                width: 339
                height: 35
                border.color: "black" // Set the border color
                border.width: 1 // Set the border width
                radius: 6

                TextArea {
                    id: configurationNameInput
                    opacity: 0.7
                    visible: true
                    anchors.fill: parent
                    color: "#0b0b0b"
                    text: ""
                    font.pixelSize: 12
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    placeholderText: "Configuration name"
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

            RoundButton {
                id: backButton
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
                text: qsTr("Create configuration")
                font.bold: true
                font.pointSize: 16
            }

            Text {
                id: port
                x: 50
                y: 229
                color: "#fffbfb"
                text: qsTr("Port")
                font.pixelSize: 15
                font.italic: false
                font.bold: true

                ComboBox {
                    id: portCombo
                    x: 0
                    y: 20
                    width: 155
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
                            text: "PORT1 - RS485"
                        }
                        ListElement {
                            text: "PORT2 - RS485"
                        }
                        ListElement {
                            text: "PORT3 - RS422"
                        }
                        ListElement {
                            text: "PORT4 - RS422"
                        }
                    }
                }
            }

            Text {
                id: baudRate
                x: 233
                y: 229
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
                id: parity
                x: 417
                y: 229
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
                id: databit
                x: 605
                y: 229
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
                id: stopBit
                x: 790
                y: 229
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
                id: flowControl
                x: 50
                y: 290
                color: "#fffbfb"
                text: qsTr("Flow Control")
                font.pixelSize: 15
                font.italic: false
                font.bold: true
                ComboBox {
                    id: flowControlCombo
                    x: 0
                    y: 20
                    width: 155
                    height: 35
                    opacity: 1
                    visible: true
                    currentIndex: 0
                    textRole: ""
                    spacing: 0
                    rightPadding: 0
                    model: ListModel {
                        ListElement {
                            text: "No Flow Control"
                        }
                        ListElement {
                            text: "H/W Flow Control"
                        }
                        ListElement {
                            text: "S/W Flow Control"
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
                id: commandToSent
                x: 233
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
                id: commandType
                x: 417
                y: 290
                width: 60
                color: "#ffffff"
                text: qsTr("Type")
                font.pixelSize: 15
                font.italic: false
                font.bold: true
                ComboBox {
                    id: commandTypeCombo
                    x: 0
                    y: 20
                    width: 150
                    height: 35
                    opacity: 1
                    model: ListModel {
                        ListElement {
                            text: "Hexa Decimal"
                        }
                        ListElement {
                            text: "ASCII"
                        }
                        ListElement {
                            text: "Binary"
                        }
                    }
                    currentIndex: 0
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
                id: dataBytes
                x: 605
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
                        inputMask: ""
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
                                virtualKeyboard.visible = false
                                virtualNumberKeyboard.visible = true
                                virtualNumberKeyboard.inputField = dataBytesInput
                                dataBytesInput.focus = true // Set focus to the TextInput
                            }
                        }
                    }
                }
            }

            Text {
                id: periodicity
                x: 790
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

            RoundButton {
                id: saveConfigurationButton
                x: 790
                y: 163
                width: 150
                height: 35
                radius: 8
                text: "Save"
                highlighted: false
                flat: false
                onClicked: {
                    // Emit the signal with the selected data
                    var insertResponse = configManager.insertItem(
                                portCombo.currentIndex, baudRateInput.text,
                                dataBitCombo.currentIndex,
                                parityCombo.currentIndex,
                                stopBitCombo.currentIndex,
                                commandToSentInput.text, dataBytesInput.text,
                                periodicityInput.text,
                                configurationNameInput.text)

                    if (insertResponse) {
                        portCombo.currentIndex = 0
                        baudRateInput.text = ""
                        dataBitCombo.currentIndex = 3
                        parityCombo.currentIndex = 0
                        stopBitCombo.currentIndex = 0
                        commandToSentInput.text = ""
                        dataBytesInput.text = ""
                        periodicityInput.text = ""
                        configurationNameInput.text = ""

                        showAlert("Configuration saved successfully", "success")
                        alertDialog.accepted.connect(function () {
                            appNavigation.handleNavigationButtonClick(
                                        "goto_dashboard")
                        })
                    }
                }
            }
        }

        Rectangle {
            id: dashboardRectangle
            x: 260
            y: 0
            width: 1020
            height: 800
            opacity: 1
            color: "#00000000"
            border.color: "#00000000"
            Connections {
                target: configManager
            }

            Image {
                id: dashboardDivider
                x: 46
                y: 94
                width: 90
                height: 2
                source: "../assets/images/divider.png"
                sourceSize.width: 120
                sourceSize.height: 4
            }

            Label {
                id: configurationSelectLabel
                x: 50
                y: 180
                width: 100
                color: "#ffffff"
                text: qsTr("Configuration")
                font.pointSize: 12
            }

            Rectangle {
                id: configurationComboRectangle
                x: 50
                y: 210
                width: 671
                height: 36
                color: "#e4e7fb"
                radius: 8
                clip: false

                ComboBox {
                    id: configurationCombo
                    anchors.fill: parent
                    flat: true
                    currentIndex: -1
                    displayText: currentIndex === -1 ? "Please select which configuration file to be run" : currentText
                    model: dashHandler.configurations()
                    onCurrentIndexChanged: {
                        dashHandler.configBoxHandle(model[currentIndex])
                    }
                }
            }

            RoundButton {
                id: connectButton
                x: 750
                y: 210
                width: 200
                height: 36
                radius: 8
                text: "<font color='#fefefe'> Connect </font>"
                background: Rectangle {
                    radius: 8
                    color: "#3f127e"
                }
                onClicked: {
                    dashHandler.connectPort()
                    // dashHandler.serialReceive()
                }
            }

            Rectangle {
                width: 900
                height: 420
                x: 50
                y: 300
                color: "#0a0d2c"
                radius: 12

                Rectangle {
                    id: startedAtRectangle
                    x: 30
                    y: 30
                    width: 405
                    height: 165
                    color: "#e4e7fb"
                    radius: 12

                    Label {
                        id: startedAtLabel
                        x: 30
                        y: 30
                        text: qsTr("Started at")
                        font.pointSize: 14
                    }

                    Label {
                        id: startedAtTime
                        x: 40
                        y: 80
                        color: "#0a0d2c"
                        text: qsTr("Not Yet  Started")
                        font.pointSize: 16
                    }
                }

                Rectangle {
                    id: errorsRectangle
                    x: 30
                    y: 225
                    width: 405
                    height: 165
                    color: "#e4e7fb"
                    radius: 12

                    Label {
                        id: errorsLabel
                        x: 30
                        y: 30
                        text: qsTr("Errors")
                        font.pointSize: 14
                    }

                    Label {
                        id: errorCount
                        x: 40
                        y: 80
                        color: "#0a0d2c"
                        text: qsTr("0")
                        font.pointSize: 16
                    }
                }

                Rectangle {
                    id: loggingForRectangle
                    x: 465
                    y: 30
                    width: 405
                    height: 165
                    color: "#e4e7fb"
                    radius: 12

                    Label {
                        id: loggingForLabel
                        x: 30
                        y: 30
                        text: qsTr("Logging for")
                        font.pointSize: 14
                    }

                    Label {
                        id: hourLabel
                        x: 41
                        y: 70
                        color: "#0a0d2c"
                        text: qsTr("Hours")
                        font.pointSize: 12
                    }

                    Label {
                        id: minuteLabel
                        x: 96
                        y: 70
                        color: "#0a0d2c"
                        text: qsTr("Minutes")
                        font.pointSize: 12
                    }

                    Label {
                        id: secondsLabel
                        x: 164
                        y: 70
                        color: "#0a0d2c"
                        text: qsTr("Seconds")
                        font.pointSize: 12
                    }

                    Label {
                        id: loggingTime
                        x: 42
                        y: 89
                        width: 242
                        height: 41
                        text: qsTr("00 : 00 : 00")
                        font.pointSize: 26
                    }
                }

                Rectangle {
                    id: filenameRectangle
                    x: 465
                    y: 225
                    width: 405
                    height: 165
                    color: "#e4e7fb"
                    radius: 12

                    Label {
                        id: filenameLabel
                        x: 30
                        y: 30
                        text: qsTr("File Name")
                        font.pointSize: 14
                    }

                    Label {
                        id: fileName
                        x: 40
                        y: 80
                        color: "#0a0d2c"
                        text: qsTr("Not Yet Started")
                        font.pointSize: 16
                    }
                }
            }
        }
    }
}

/*##^##
Designer {
    D{i:0}D{i:7;invisible:true}D{i:80}D{i:91}D{i:92}D{i:98}D{i:103}D{i:104}
}
##^##*/

