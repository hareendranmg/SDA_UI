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
            font.pointSize: 12
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

        RoundButton {
            id: roundButton
            x: 30
            y: 535
            width: 200
            height: 46
            radius: 12
            text: qsTr("Network Settings")
            display: AbstractButton.TextUnderIcon
            font.pointSize: 13
            font.italic: false
            font.bold: true
            font.weight: Font.Medium
        }
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
            id: dataDumpLabel
            x: 50
            y: 168
            color: "#ffffff"
            text: qsTr("Network Settings")
            font.bold: true
            font.pointSize: 16
        }

        Text {
            id: port
            x: 50
            y: 230
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
                enabled: false
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
            y: 230
            width: 77
            height: 17
            color: "#ffffff"
            text: qsTr("Baud rate")
            font.pixelSize: 15
            font.italic: false
            font.bold: true
        }

        Text {
            id: parity
            x: 366
            y: 230
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
            y: 230
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
            x: 684
            y: 230
            width: 60
            height: 17
            color: "#ffffff"
            text: qsTr("Default Gateway")
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
                    text: dashHandler.startedAt
                    font.pointSize: 12
                }
            }

            Rectangle {
                id: runningForRectangle
                x: 460
                y: 30
                width: 405
                height: 165
                color: "#e4e7fb"
                radius: 12
                Label {
                    id: runningForLabel
                    x: 30
                    y: 30
                    text: qsTr("File size")
                    font.pointSize: 14
                }

                Label {
                    id: runningFor
                    x: 40
                    y: 80
                    color: "#0a0d2c"
                    text: dashHandler.fileName
                    font.pointSize: 12
                }
            }

            Rectangle {
                id: filesCreatedRectangle
                x: 30
                y: 220
                width: 405
                height: 165
                color: "#e4e7fb"
                radius: 12
                Label {
                    id: filesCreatedLabel
                    x: 30
                    y: 30
                    text: qsTr("Started at")
                    font.pointSize: 14
                }

                Label {
                    id: filesCreated
                    x: 40
                    y: 80
                    color: "#0a0d2c"
                    text: dashHandler.startedAt
                    font.pointSize: 12
                }
            }

            Rectangle {
                id: dataSizeRectangle
                x: 460
                y: 220
                width: 405
                height: 165
                color: "#e4e7fb"
                radius: 12

                Label {
                    id: fileSizeLabel
                    x: 30
                    y: 30
                    text: qsTr("File size")
                    font.pointSize: 14
                }

                Label {
                    id: fileSize
                    x: 40
                    y: 80
                    color: "#0a0d2c"
                    text: dashHandler.fileName
                    font.pointSize: 12
                }
            }
        }
    }

    Rectangle {
        id: dataLogsRectangle
        x: 260
        y: 0
        width: 1020
        height: 800
        opacity: 0.67
        color: "#00060606"
        border.color: "#003237b8"

        property var alertDialog

        Connections {
            target: logsHandler
            function onShowAlertSignal(message, alertType) {
                showAlert(message, alertType)
            }

            function onShowProgressIndicator() {
                progressIndicator.visible = true
            }

            function onHideProgressIndicator() {
                progressIndicator.visible = false
            }
        }

        // Function to show the alert dialog
        function showAlert(message, alertType) {
            alertDialog.text = message
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
            id: dataLogsdivider
            x: 296
            y: 96
            width: 90
            height: 2
            source: "../assets/images/divider.png"
            sourceSize.width: 120
            sourceSize.height: 4
        }

        Text {
            id: text1
            x: 50
            y: 324
            color: "#f8f8f8"
            text: qsTr("DNS")
            font.pixelSize: 15
            font.bold: true
        }

        TextField {
            id: textField
            x: 50
            y: 251
            width: 277
            height: 35
            placeholderText: qsTr("Text Field")
        }

        TextField {
            id: textField1
            x: 366
            y: 251
            width: 277
            height: 35
            placeholderText: qsTr("Text Field")
        }

        TextField {
            id: textField2
            x: 682
            y: 251
            width: 277
            height: 35
            placeholderText: qsTr("Text Field")
        }

        TextField {
            id: textField3
            x: 50
            y: 342
            width: 277
            height: 35
            placeholderText: qsTr("Text Field")
        }

        TextField {
            id: textField4
            x: 366
            y: 342
            width: 277
            height: 35
            placeholderText: qsTr("Text Field")
        }

        RoundButton {
            id: transferButton
            x: 770
            y: 310
            width: 176
            height: 36
            opacity: 1
            radius: 8
            text: "<font color='#fefefe'> Transfer </font>"
            background: Rectangle {
                radius: 8
                color: "#138636"
            }
            onClicked: {
                logsHandler.transferDataLogFilesToExternalDevice()
            }
            icon.cache: false
        }

        Rectangle {
            id: dataDumpRectangle
            x: 50
            y: 410
            width: 700
            height: 36
            color: "#d3d3d3"
            radius: 8
            ComboBox {
                id: dataDumpFileName
                anchors.fill: parent
                currentIndex: -1
                flat: true
                displayText: currentIndex === -1 ? "Please select the data dump file" : currentText
                model: logsHandler.dataDumpFileNames()
                onCurrentIndexChanged: {
                    logsHandler.onDataDumpFileNameComboChanged(
                                model[currentIndex])
                }
            }
            clip: false
        }

        RoundButton {
            id: dataDumpTransferButton
            x: 770
            y: 410
            width: 176
            height: 36
            opacity: 1
            radius: 8
            text: "<font color='#fefefe'> Transfer </font>"
            background: Rectangle {
                radius: 8
                color: "#138636"
            }
            onClicked: {
                logsHandler.transferDataDumpFileToExternalDevice()
            }
            icon.cache: false
        }
    }

    Rectangle {
        id: networkSettingsRectangle
        x: 260
        y: 0
        width: 1020
        height: 800
        opacity: 1
        color: "#00000000"
        border.color: "#00000000"

        property var alertDialog

        Connections {
            target: dataDump
            function onShowAlertSignal(message, alertType) {
                showAlert(message, alertType)
            }
            function onFileSizeChanged(size) {
                fileSize.text = size
            }
        }

        Dialog {
            id: networkSettingsDialog
            parent: ApplicationWindow.overlay
            x: (parent.width - width) / 2
            y: (parent.height - height) / 2
            height: 200
            width: 400
            focus: true
            modal: true
            title: ""

            property alias text: nmessageText.text

            Label {
                id: nmessageText

                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter

                anchors.fill: parent
            }

            standardButtons: Dialog.Ok
        }

        // Function to show the alert dialog
        function showAlert(message, alertType) {
            alertDialog.text = message
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
            id: dataDumpdivider
            x: 524
            y: 96
            width: 90
            height: 2
            source: "../assets/images/divider.png"
            sourceSize.width: 120
            sourceSize.height: 4
        }

        Label {
            id: networkSettingsLabel
            x: 50
            y: 168
            color: "#ffffff"
            text: qsTr("Network Settings")
            font.pointSize: 16
            font.bold: true
        }

        RoundButton {
            id: networkSettingsButton
            x: 679
            y: 330
            width: 260
            height: 35
            radius: 8
            text: "<font color='#fefefe'> Save </font>"
            background: Rectangle {
                radius: 8
                color: "#138636"
            }
            onClicked: {
                virtualKeyboard.visible = false
                virtualNumberKeyboard.visible = false
                fileNameInput.focus = false
                baudRateInput.focus = false

                if (dataDump.isStarted) {
                    dataDump.stopDataDump()
                } else {
                    dataDump.startDataDump(portCombo.currentIndex,
                                           baudRateInput.text,
                                           parityCombo.currentIndex,
                                           dataBitCombo.currentIndex,
                                           stopBitCombo.currentIndex,
                                           fileNameInput.text)
                }
            }
            highlighted: false
            flat: false
        }

        Text {
            id: ipAddress
            x: 50
            y: 230
            width: 150
            color: "#fcfcfc"
            text: qsTr("IP Address")
            font.pixelSize: 15
            font.italic: false
            font.bold: true

            Rectangle {
                x: 0
                y: 20
                width: 260
                height: 35
                border.color: "black" // Set the border color
                border.width: 1 // Set the border width
                radius: 6

                TextInput {
                    id: ipAddressInput
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
                            virtualKeyboard.inputField = ipAddressInput
                            ipAddressInput.focus = true // Set focus to the TextInput
                        }
                    }
                }
            }
        }

        Text {
            id: netmask
            x: 367
            y: 230
            width: 150
            color: "#fcfcfc"
            text: qsTr("Netmask")
            font.pixelSize: 15
            font.italic: false
            font.bold: true
            Rectangle {
                x: 0
                y: 20
                width: 260
                height: 35
                radius: 6
                border.color: "#000000"
                border.width: 1
                TextInput {
                    id: netmaskInput
                    opacity: 0.7
                    visible: true
                    color: "#0b0b0b"
                    text: ""
                    anchors.fill: parent
                    font.pixelSize: 12
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    leftPadding: 10
                    font.bold: true
                    MouseArea {
                        anchors.fill: parent
                        onClicked: {
                            virtualNumberKeyboard.visible = false
                            virtualKeyboard.visible = true
                            virtualKeyboard.inputField = netmaskInput
                            netmaskInput.focus = true // Set focus to the TextInput
                        }
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
            id: gateway
            x: 679
            y: 230
            width: 150
            color: "#fcfcfc"
            text: qsTr("Gateway")
            font.pixelSize: 15
            font.italic: false
            font.bold: true
            Rectangle {
                x: 0
                y: 20
                width: 260
                height: 35
                radius: 6
                border.color: "#000000"
                border.width: 1
                TextInput {
                    id: gatewayInput
                    opacity: 0.7
                    visible: true
                    color: "#0b0b0b"
                    text: ""
                    anchors.fill: parent
                    font.pixelSize: 12
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    leftPadding: 10
                    font.bold: true
                    MouseArea {
                        anchors.fill: parent
                        onClicked: {
                            virtualNumberKeyboard.visible = false
                            virtualKeyboard.visible = true
                            virtualKeyboard.inputField = gatewayInput
                            gatewayInput.focus = true // Set focus to the TextInput
                        }
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
            id: dns
            x: 50
            y: 310
            width: 150
            color: "#fcfcfc"
            text: qsTr("DNS")
            font.pixelSize: 15
            font.italic: false
            font.bold: true
            Rectangle {
                x: 0
                y: 20
                width: 260
                height: 35
                radius: 6
                border.color: "#000000"
                border.width: 1
                TextInput {
                    id: dnsInput
                    opacity: 0.7
                    visible: true
                    color: "#0b0b0b"
                    text: ""
                    anchors.fill: parent
                    font.pixelSize: 12
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    leftPadding: 10
                    font.bold: true
                    MouseArea {
                        anchors.fill: parent
                        onClicked: {
                            virtualNumberKeyboard.visible = false
                            virtualKeyboard.visible = true
                            virtualKeyboard.inputField = dnsInput
                            dnsInput.focus = true // Set focus to the TextInput
                        }
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
            id: alternateDns
            x: 367
            y: 310
            width: 150
            color: "#fcfcfc"
            text: qsTr("Alternate DNS")
            font.pixelSize: 15
            font.italic: false
            font.bold: true
            Rectangle {
                x: 0
                y: 20
                width: 260
                height: 35
                radius: 6
                border.color: "#000000"
                border.width: 1
                TextInput {
                    id: alternateDnsInput
                    opacity: 0.7
                    visible: true
                    color: "#0b0b0b"
                    text: ""
                    anchors.fill: parent
                    font.pixelSize: 12
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    leftPadding: 10
                    font.bold: true
                    MouseArea {
                        anchors.fill: parent
                        onClicked: {
                            virtualNumberKeyboard.visible = false
                            virtualKeyboard.visible = true
                            virtualKeyboard.inputField = alternateDnsInput
                            alternateDnsInput.focus = true // Set focus to the TextInput
                        }
                    }
                    clip: false
                    anchors.topMargin: 0
                    anchors.rightMargin: 0
                    anchors.leftMargin: 0
                    anchors.bottomMargin: 0
                }
            }
        }
    }

    Rectangle {
        property TextInput inputField: null
        id: virtualNumberKeyboard
        RoundButton {
            x: 10
            y: 10
            width: 120
            height: 40
            radius: 8
            text: "1"
            onClicked: {
                if (virtualNumberKeyboard.inputField != null) {
                    virtualNumberKeyboard.inputField.text += "1"
                }
            }
        }

        RoundButton {
            x: 10
            y: 60
            width: 120
            height: 40
            radius: 8
            text: "4"
            onClicked: {
                if (virtualNumberKeyboard.inputField != null) {
                    virtualNumberKeyboard.inputField.text += "4"
                }
            }
        }

        RoundButton {
            x: 10
            y: 110
            width: 120
            height: 40
            radius: 8
            text: "7"
            onClicked: {
                if (virtualNumberKeyboard.inputField != null) {
                    virtualNumberKeyboard.inputField.text += "7"
                }
            }
        }

        RoundButton {
            x: 10
            y: 160
            width: 120
            height: 40
            radius: 8
            text: "⌫ "
            onClicked: {
                if (virtualNumberKeyboard.inputField != null) {
                    virtualNumberKeyboard.inputField.text
                            = virtualNumberKeyboard.inputField.text.slice(0, -1)
                }
            }
        }

        RoundButton {
            x: 140
            y: 10
            width: 120
            height: 40
            radius: 8
            text: "2"
            onClicked: {
                if (virtualNumberKeyboard.inputField != null) {
                    virtualNumberKeyboard.inputField.text += "2"
                }
            }
        }

        RoundButton {
            x: 140
            y: 60
            width: 120
            height: 40
            radius: 8
            text: "5"
            onClicked: {
                if (virtualNumberKeyboard.inputField != null) {
                    virtualNumberKeyboard.inputField.text += "5"
                }
            }
        }

        RoundButton {
            x: 140
            y: 110
            width: 120
            height: 40
            radius: 8
            text: "8"
            onClicked: {
                if (virtualNumberKeyboard.inputField != null) {
                    virtualNumberKeyboard.inputField.text += "8"
                }
            }
        }

        RoundButton {
            x: 140
            y: 160
            width: 120
            height: 40
            radius: 8
            text: "0"
            onClicked: {
                if (virtualNumberKeyboard.inputField != null) {
                    virtualNumberKeyboard.inputField.text += "0"
                }
            }
        }

        RoundButton {
            x: 270
            y: 10
            width: 120
            height: 40
            radius: 8
            text: "3"
            onClicked: {
                if (virtualNumberKeyboard.inputField != null) {
                    virtualNumberKeyboard.inputField.text += "3"
                }
            }
        }

        RoundButton {
            x: 270
            y: 60
            width: 120
            height: 40
            radius: 8
            text: "6"
            onClicked: {
                if (virtualNumberKeyboard.inputField != null) {
                    virtualNumberKeyboard.inputField.text += "6"
                }
            }
        }

        RoundButton {
            x: 270
            y: 110
            width: 120
            height: 40
            radius: 8
            text: "9"
            onClicked: {
                if (virtualNumberKeyboard.inputField != null) {
                    virtualNumberKeyboard.inputField.text += "9"
                }
            }
        }
        RoundButton {
            x: 270
            y: 160
            width: 120
            height: 40
            radius: 8
            text: "."
            onClicked: {
                virtualNumberKeyboard.visible = false
            }
        }

        RoundButton {
            x: 10
            y: 210
            width: 120
            height: 40
            radius: 8
            text: "<"
            onClicked: {
                if (virtualNumberKeyboard.inputField != null) {
                    virtualNumberKeyboard.inputField.text
                            = virtualNumberKeyboard.inputField.text.slice(0, -1)
                }
            }
        }

        RoundButton {
            x: 140
            y: 210
            width: 120
            height: 40
            radius: 8
            text: ">"
            onClicked: {
                if (virtualNumberKeyboard.inputField != null) {
                    virtualNumberKeyboard.inputField.text += "0"
                }
            }
        }

        RoundButton {
            x: 270
            y: 210
            width: 120
            height: 40
            radius: 8
            text: "\u2714"
            onClicked: {
                virtualNumberKeyboard.visible = false
            }
        }
    }

    Rectangle {
        id: dataDumpLogsRectangle
        x: 260
        y: 0
        width: 1020
        height: 800
        opacity: 1
        color: "#00000000"
        border.color: "#00000000"

        property var alertDialog

        Connections {
            target: dataDump
            function onShowAlertSignal(message, alertType) {
                showAlert(message, alertType)
            }
            function onFileSizeChanged(size) {
                fileSize.text = size
            }
        }

        Dialog {
            id: dataDumpLogsAlertDialog
            parent: ApplicationWindow.overlay
            x: (parent.width - width) / 2
            y: (parent.height - height) / 2
            height: 200
            width: 400
            focus: true
            modal: true
            title: ""

            property alias text: dataDumpLogsMessageText.text

            Label {
                id: dataDumpLogsMessageText

                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter

                anchors.fill: parent
            }

            standardButtons: Dialog.Ok
        }

        // Function to show the alert dialog
        function showAlert(message, alertType) {
            dataDumpLogsAlertDialog.text = message
            // Adjust title based on alertType
            switch (alertType) {
            case "success":
                dataDumpLogsAlertDialog.title = "Success"
                break
            case "warning":
                dataDumpLogsAlertDialog.title = "Warning"
                break
            case "error":
                dataDumpLogsAlertDialog.title = "Error"
                break
            default:
                dataDumpLogsAlertDialog.title = ""
                break
            }

            dataDumpLogsAlertDialog.open()
        }

        Image {
            id: dataDumpLogsdivider
            x: 414
            y: 96
            width: 90
            height: 2
            source: "../assets/images/divider.png"
            sourceSize.width: 120
            sourceSize.height: 4
        }

        Label {
            id: dataDumpLogsLabel
            x: 50
            y: 168
            color: "#ffffff"
            text: qsTr("Data Dump Logs")
            font.pointSize: 16
            font.bold: true
        }
        Rectangle {
            width: 890
            height: 510
            x: 50
            y: 220
            radius: 12
            clip: true

            Rectangle {
                width: parent.width * 0.60
                height: parent.height
                x: 20
                y: 20
                clip: true
                radius: 12

                GridView {
                    x: 8
                    y: 8
                    id: folderView
                    width: parent.width
                    height: parent.height - 36
                    cellWidth: 120
                    cellHeight: 120
                    model: folderModel
                    clip: true

                    delegate: Item {
                        width: 100
                        height: 100

                        Rectangle {
                            width: 100
                            height: 100
                            color: "lightblue"
                            radius: 10 // Adjust the radius as needed

                            Flickable {
                                width: parent.width
                                height: parent.height

                                MouseArea {
                                    propagateComposedEvents: true // Allow the click event to propagate
                                    anchors.fill: parent

                                    // on double click
                                    onDoubleClicked: {
                                        if (folderModel.isFolder(index)) {
                                            folderModel.folder = folderModel.folder
                                                    + "/" + fileOrFolderName
                                        } else {

                                            // Add your code here to open the file
                                            // dataDump.openFile(folderModel.folder + "/" + folderModel.fileName(index))
                                        }
                                    }

                                    Rectangle {
                                        width: parent.width
                                        height: parent.height
                                        color: "transparent"

                                        Image {
                                            source: folderModel.isFolder(
                                                        index) ? "../assets/images/open-folder.png" : ""
                                            width: 40
                                            height: 40
                                            x: 30
                                            y: 10
                                        }

                                        Text {
                                            id: fileNameText
                                            text: fileOrFolderName.length
                                                  > 17 ? fileOrFolderName.substring(
                                                             0,
                                                             14) + "..." : fileOrFolderName
                                            width: parent.width * 0.8
                                            wrapMode: Text.Wrap
                                            horizontalAlignment: Text.AlignHCenter
                                            color: "black"
                                            elide: Text.ElideRight
                                            x: 10
                                            y: 60
                                        }
                                    }
                                }

                                flickableDirection: Flickable.HorizontalFlick
                                ScrollBar.horizontal: ScrollBar {}
                            }
                        }
                    }
                }
            }

            Rectangle {
                x: parent.width * 0.60
                y: 0
                width: parent.width * 0.40
                height: parent.height
                color: "#feecd8"
                clip: true
                radius: 12

                // show the file/ folder name
                Label {
                    id: name
                    x: 16
                    y: 40
                    text: qsTr("Name")
                    font.pointSize: 12
                }

                Text {
                    id: fileOrFolderName
                    width: parent.width * 0.8
                    wrapMode: Text.Wrap
                    font.pointSize: 14
                    font.bold: false
                    horizontalAlignment: Text.AlignLeft
                    color: "black"
                    text: "Datadump"
                    elide: Text.ElideRight
                    x: 16
                    y: 65
                }

                Label {
                    id: copyToExternalDevice
                    x: 16
                    y: 125
                    text: qsTr("Copy to external device")
                    font.pointSize: 12
                }

                RoundButton {
                    id: refreshDevices
                    x: 308
                    y: 112
                    width: 28
                    height: 26
                    opacity: 1
                    radius: 8
                    text: "<font color='#fefefe' transform: rotate(90deg)>↻</font>"
                    icon.cache: false
                    font.pointSize: 12
                    background: Rectangle {
                        color: "#138636"
                        radius: 8
                    }
                }

                Rectangle {
                    id: deviceRecatangle
                    x: 16
                    y: 155
                    width: 320
                    height: 36
                    color: "lightgray"
                    radius: 8
                    clip: false

                    ComboBox {
                        id: listExternalDevice1
                        anchors.fill: parent
                        font.pointSize: 12
                        //placeholderText: "Please select the device"
                        onCurrentIndexChanged: {
                            logsHandler.onExternalDeviceChanged(
                                        model[currentIndex])
                        }
                        model: logsHandler.externalDevices()
                        flat: true
                        currentIndex: -1
                        displayText: currentIndex === -1 ? "Please select the device" : currentText
                    }
                }

                RoundButton {
                    x: 16
                    y: 200
                    width: 320
                    height: 36
                    opacity: 1
                    radius: 8
                    text: "<font color='#fefefe'> Copy </font>"
                    font.pointSize: 12
                    background: Rectangle {
                        radius: 8
                        color: "#138636"
                    }
                    onClicked: {
                        logsHandler.transferDataLogFilesToExternalDevice()
                    }
                    icon.cache: false
                }

                Label {
                    id: copyToExternalDevice1
                    x: 16
                    y: 278
                    text: qsTr("Actions")
                    font.pointSize: 12
                }

                RoundButton {
                    x: 16
                    y: 302
                    width: 320
                    height: 36
                    opacity: 1
                    radius: 8
                    text: "<font color='#fefefe'> Delete </font>"
                    onClicked: {
                        logsHandler.transferDataLogFilesToExternalDevice()
                    }
                    icon.cache: false
                    font.pointSize: 12
                    background: Rectangle {
                        color: "#c91432"
                        radius: 8
                    }
                }
            }
        }
    }

    Rectangle {
        property var inputField: null
        property bool isShiftPressed: false
        id: virtualKeyboard

        function shiftedText(originalText) {
            return isShiftPressed ? originalText.toUpperCase(
                                        ) : originalText.toLowerCase()
        }

        width: 260
        height: 900
        radius: 8
        visible: true

        RoundButton {
            id: roundButton
            x: 6
            y: 10
            width: 74
            height: 40
            radius: 8
            text: shiftedText("1")
            onClicked: addTextToInputField(text)
        }

        RoundButton {
            id: roundButton1
            x: 89
            y: 10
            width: 73
            height: 40
            radius: 8
            text: shiftedText("2")
            onClicked: addTextToInputField(text)
        }

        RoundButton {
            id: roundButton2
            x: 168
            y: 11
            width: 74
            height: 40
            radius: 8
            text: shiftedText("3")
            onClicked: addTextToInputField(text)
        }

        RoundButton {
            id: roundButton4
            x: 248
            y: 12
            width: 74
            height: 40
            radius: 8
            text: shiftedText("4")
            onClicked: addTextToInputField(text)
        }

        RoundButton {
            id: roundButton5
            x: 331
            y: 10
            width: 74
            height: 40
            radius: 8
            text: shiftedText("5")
            onClicked: addTextToInputField(text)
        }

        RoundButton {
            id: roundButton6
            x: 414
            y: 11
            width: 74
            height: 40
            radius: 8
            text: shiftedText("6")
            onClicked: addTextToInputField(text)
        }

        RoundButton {
            id: roundButton7
            x: 496
            y: 10
            width: 74
            height: 40
            radius: 8
            text: shiftedText("7")
            onClicked: addTextToInputField(text)
        }

        RoundButton {
            id: roundButton8
            x: 578
            y: 11
            width: 74
            height: 40
            radius: 8
            text: shiftedText("8")
            onClicked: addTextToInputField(text)
        }

        RoundButton {
            id: roundButton9
            x: 658
            y: 10
            width: 74
            height: 40
            radius: 8
            text: shiftedText("9")
            onClicked: addTextToInputField(text)
        }

        RoundButton {
            id: roundButton10
            x: 739
            y: 8
            width: 73
            height: 40
            radius: 8
            text: shiftedText("0")
            onClicked: addTextToInputField(text)
        }

        RoundButton {
            x: 44
            y: 60
            width: 74
            height: 39
            radius: 8
            text: shiftedText("Q")
            onClicked: addTextToInputField(text)
        }

        RoundButton {
            x: 125
            y: 60
            width: 74
            height: 40
            radius: 8
            text: shiftedText("W")
            onClicked: addTextToInputField(text)
        }

        RoundButton {
            x: 205
            y: 62
            width: 74
            height: 38
            radius: 8
            text: shiftedText("E")
            onClicked: addTextToInputField(text)
        }

        RoundButton {
            x: 743
            y: 110
            width: 74
            height: 40
            radius: 8
            text: shiftedText("L")
            onClicked: addTextToInputField(text)
        }

        RoundButton {
            x: 663
            y: 110
            width: 74
            height: 40
            radius: 8
            text: shiftedText("K")
            onClicked: addTextToInputField(text)
        }

        RoundButton {
            x: 285
            y: 61
            width: 74
            height: 40
            radius: 8
            text: shiftedText("R")
            onClicked: addTextToInputField(text)
        }

        RoundButton {
            x: 367
            y: 61
            width: 74
            height: 40
            radius: 8
            text: shiftedText("T")
            onClicked: addTextToInputField(text)
        }

        RoundButton {
            x: 450
            y: 61
            width: 74
            height: 40
            radius: 8
            text: shiftedText("Y")
            onClicked: addTextToInputField(text)
        }

        RoundButton {
            x: 532
            y: 60
            width: 74
            height: 40
            radius: 8
            text: shiftedText("U")
            onClicked: addTextToInputField(text)
        }

        RoundButton {
            x: 614
            y: 60
            width: 74
            height: 40
            radius: 8
            text: shiftedText("I")
            onClicked: addTextToInputField(text)
        }

        RoundButton {
            x: 695
            y: 60
            width: 74
            height: 40
            radius: 8
            text: shiftedText("O")
            onClicked: addTextToInputField(text)
        }

        RoundButton {
            x: 776
            y: 60
            width: 74
            height: 40
            radius: 8
            text: shiftedText("P")
            onClicked: addTextToInputField(text)
        }

        RoundButton {
            x: 819
            y: 10
            width: 74
            height: 40
            radius: 8
            text: "⌫ "
            onClicked: {
                if (virtualKeyboard.inputField != null) {
                    virtualKeyboard.inputField.text = virtualKeyboard.inputField.text.slice(
                                0, -1)
                }
            }
        }

        RoundButton {
            x: 581
            y: 110
            width: 74
            height: 40
            radius: 8
            text: shiftedText("J")
            onClicked: addTextToInputField(text)
        }

        RoundButton {
            x: 498
            y: 110
            width: 74
            height: 40
            radius: 8
            text: shiftedText("H")
            onClicked: addTextToInputField(text)
        }

        RoundButton {
            x: 414
            y: 110
            width: 74
            height: 40
            radius: 8
            text: shiftedText("G")
            onClicked: addTextToInputField(text)
        }

        RoundButton {
            x: 330
            y: 110
            width: 74
            height: 40
            radius: 8
            text: shiftedText("F")
            onClicked: addTextToInputField(text)
        }

        RoundButton {
            x: 247
            y: 110
            width: 74
            height: 40
            radius: 8
            text: shiftedText("D")
            onClicked: addTextToInputField(text)
        }

        RoundButton {
            x: 166
            y: 110
            width: 74
            height: 40
            radius: 8
            text: shiftedText("S")
            onClicked: addTextToInputField(text)
        }

        RoundButton {
            x: 86
            y: 110
            width: 74
            height: 40
            radius: 8
            text: shiftedText("A")
            onClicked: addTextToInputField(text)
        }

        RoundButton {
            x: 671
            y: 160
            width: 69
            height: 40
            radius: 8
            text: shiftedText("M")
            onClicked: addTextToInputField(text)
        }

        RoundButton {
            x: 598
            y: 160
            width: 69
            height: 40
            radius: 8
            text: shiftedText("N")
            onClicked: addTextToInputField(text)
        }

        RoundButton {
            x: 523
            y: 160
            width: 69
            height: 40
            radius: 8
            text: shiftedText("B")
            onClicked: addTextToInputField(text)
        }

        RoundButton {
            x: 448
            y: 160
            width: 69
            height: 40
            radius: 8
            text: shiftedText("V")
            onClicked: addTextToInputField(text)
        }

        RoundButton {
            id: roundButton25
            x: 372
            y: 160
            width: 69
            height: 40
            radius: 8
            text: shiftedText("C")
            onClicked: addTextToInputField(text)
        }

        RoundButton {
            x: 297
            y: 160
            width: 69
            height: 40
            radius: 8
            text: shiftedText("X")
            onClicked: addTextToInputField(text)
        }

        RoundButton {
            x: 222
            y: 160
            width: 69
            height: 40
            radius: 8
            text: shiftedText("Z")
            onClicked: addTextToInputField(text)
        }

        RoundButton {
            x: 147
            y: 160
            width: 69
            height: 40
            radius: 8
            text: isShiftPressed ? "<font color='#fff'> SHIFT </font>" : "shift"
            background: Rectangle {
                radius: 8
                color: isShiftPressed ? "#376CFB" : "lightgrey"
            }
            highlighted: false
            flat: false
            onClicked: {
                isShiftPressed = !isShiftPressed
            }
        }

        RoundButton {
            x: 673
            y: 210
            width: 67
            height: 40
            radius: 8
            text: "<font color='#fefefe'>✓</font>"
            background: Rectangle {
                radius: 8
                color: "#138636"
            }
            highlighted: false
            flat: false
            onClicked: {
                virtualKeyboard.visible = false
            }
        }

        RoundButton {
            x: 147
            y: 210
            width: 74
            height: 40
            radius: 8
            text: "#@!"
        }

        RoundButton {
            x: 227
            y: 210
            width: 440
            height: 39
            radius: 8
            text: "Space"
            onClicked: addTextToInputField(" ")
        }

        RoundButton {
            x: 72
            y: 160
            width: 69
            height: 40
            radius: 8
            text: shiftedText("A")
        }

        RoundButton {
            x: 746
            y: 160
            width: 69
            height: 40
            radius: 8
            text: shiftedText("M")
        }

        function addTextToInputField(value) {
            if (virtualKeyboard.inputField != null) {
                var inputField = virtualKeyboard.inputField
                var cuurentCursorPosition = inputField.cursorPosition

                inputField.text = inputField.text.slice(
                            0,
                            cuurentCursorPosition) + value + inputField.text.slice(
                            cuurentCursorPosition)
                inputField.cursorPosition = cuurentCursorPosition + 1
                inputField.forceActiveFocus()
                // virtualKeyboard.inputField.text += value;
            }
        }

        function backspace() {
            if (virtualKeyboard.inputField != null) {
                inputField.forceActiveFocus()
                var inputField = virtualKeyboard.inputField
                var currentCursorPosition = inputField.cursorPosition
                inputField.forceActiveFocus()

                if (currentCursorPosition > 0) {
                    // Remove the character to the left of the cursor
                    inputField.text = inputField.text.slice(
                                0,
                                currentCursorPosition - 1) + inputField.text.slice(
                                currentCursorPosition)
                    inputField.forceActiveFocus()
                    inputField.cursorPosition = currentCursorPosition
                            - 1 // Move cursor one position to the left
                    inputField.forceActiveFocus()
                }
                // virtualKeyboard.inputField.text = virtualKeyboard.inputField.text.slice(0, -1);
            }
        }
    }
}

/*##^##
Designer {
    D{i:0}D{i:61;invisible:true}D{i:76;invisible:true}D{i:104;invisible:true}D{i:120;invisible:true}
D{i:150;invisible:true}
}
##^##*/

