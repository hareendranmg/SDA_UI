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
            target: commandResponse
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

                //  verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHRight

                anchors.fill: parent
            }

            Row {
                spacing: 10
                x: (parent.width - width) / 2 + 120
                y: (parent.height - height) / 2 + 20
                RoundButton {
                    width: 100
                    height: 35
                    radius: 8
                    text: "<font color='#fefefe'> Okay </font>"
                    onClicked: {
                        alertDialog.close()
                    }
                    font.pointSize: 12
                    background: Rectangle {
                        color: "#6C757D"
                        radius: 8
                    }
                }
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

        function getParityIndex(portName) {
            switch (portName) {
            case "0":
                return 0
            case "1":
                return 1
            case "2":
                return 2
            case "3":
                return 3
            case "4":
                return 4
            }

            alertDialog.open()
        }
        function getDataBitIndex(portName) {
            switch (portName) {
            case "0":
                return 0
            case "1":
                return 1
            case "2":
                return 2
            case "3":
                return 3
            }

            alertDialog.open()
        }
        function getStopBitIndex(portName) {
            switch (portName) {
            case "0":
                return 0
            case "1":
                return 1
            case "2":
                return 2
            }

            alertDialog.open()
        }
        function getFlowControlIndex(portName) {
            switch (portName) {
            case "0":
                return 0
            case "1":
                return 1
            case "2":
                return 2
            }

            alertDialog.open()
        }
        function getCommandTypeIndex(portName) {
            switch (portName) {
            case "0":
                return 0
            case "1":
                return 1
            case "2":
                return 2
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
            text: "<font color='#fff' size='5'>←</font> <font color='#fff'> Go Back </font>"
            highlighted: false
            flat: false
            background: Rectangle {
                radius: 8
                color: "#376CFB"
            }
            onClicked: {
                appNavigation.handleNavigationButtonClick(
                            'goto_list_commandResponse')
            }
        }

        Label {
            id: createANewConfLabel
            x: 50
            y: 168
            color: "#ffffff"
            text: qsTr("View configuration")
            font.bold: true
            font.pointSize: 16
        }

        Rectangle {
            x: 417
            y: 163
            width: 339
            height: 35
            border.color: "black" // Set the border color
            border.width: 1 // Set the border width
            radius: 6
            clip: true
            /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            TextInput {
                property string placeholderText: "Configuration name"
                id: configurationNameInput
                opacity: 0.7
                visible: true
                anchors.fill: parent
                color: "#0b0b0b"
                Text {
                    text: configurationNameInput.placeholderText
                    color: "#4c5359"
                    visible: !configurationNameInput.text
                    font.pixelSize: 14
                    // set padding to the left and top of the placeholder text
                    leftPadding: 10
                    topPadding: 8
                }
                text: commandResponse.configVals[10]
                font.pixelSize: 12
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                // placeholderText: "Configuration name"
                anchors.bottomMargin: 0
                anchors.leftMargin: 0
                anchors.topMargin: 0
                anchors.rightMargin: 0
                clip: true
                leftPadding: 10
                font.bold: true
                MouseArea {
                    clip: true
                    anchors.fill: parent
                    anchors.rightMargin: 0
                    onClicked: {
                        virtualNumberKeyboard.visible = false
                        virtualKeyboard.visible = true
                        virtualKeyboard.inputField = configurationNameInput
                        configurationNameInput.cursorPosition = configurationNameInput.text.length
                        configurationNameInput.focus = true // Set focus to the TextInput
                    }
                }
            }
        }

        RoundButton {
            id: saveConfigurationButton
            x: 785
            y: 163
            width: 150
            height: 35
            radius: 8
            text: "<font color='#fefefe'> Update </font>"
            background: Rectangle {
                radius: 8
                color: "#138636"
            }
            highlighted: false
            flat: false
            onClicked: {
                // Emit the signal with the selected data
                var updateResponse = commandResponse.updateItem(
                            portCombo.currentIndex, baudRateInput.text,
                            parityCombo.currentIndex,
                            dataBitCombo.currentIndex,
                            stopBitCombo.currentIndex, commandToSentInput.text,
                            commandTypeCombo.currentIndex,
                            replyDelayInput.text, dataBytesInput.text,
                            periodicityInput.text, configurationNameInput.text)

                if (updateResponse) {
                    showAlert("Configuration Updated successfully", "success")
                    alertDialog.accepted.connect(function () {
                        appNavigation.handleNavigationButtonClick(
                                    "goto_dashboard")
                    })
                }
            }
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
                width: 130
                height: 35
                opacity: 1
                visible: true
                rightPadding: 0
                spacing: 0
                editable: false
                flat: false
                currentIndex: commandResponse.configVals[0]
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
            id: connected
            x: 195
            y: 230
            width: 58
            height: 17
            color: "#fffbfb"
            text: qsTr("Enabled")
            font.pixelSize: 15
            font.italic: false
            font.bold: true

            ComboBox {
                id: connectionStatus
                x: 0
                y: 20
                width: 110
                height: 35
                opacity: 1
                visible: true
                rightPadding: 0
                spacing: 0
                editable: false
                flat: false
                currentIndex: commandResponse.configVals[0]
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
                        text: "Yes"
                    }
                    ListElement {
                        text: "No"
                    }
                }
            }
        }

        Text {
            id: baudRate
            x: 320
            y: 230
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
                width: 110
                height: 35
                radius: 6
                border.color: "#000000"
                border.width: 1
                TextInput {
                    id: baudRateInput
                    opacity: 0.7
                    visible: true
                    color: "#0b0b0b"
                    text: "2000000"

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
                            baudRateInput.focus = true // Set focus to the TextInput
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
            x: 445
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
                width: 110
                height: 35
                opacity: 1
                currentIndex: getParityIndex(commandResponse.configVals[2])
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
            x: 575
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
                width: 110
                height: 35
                opacity: 1
                currentIndex: getDataBitIndex(commandResponse.configVals[3])
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
            x: 705
            y: 230
            width: 65
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
                width: 110
                height: 35
                opacity: 1
                currentIndex: getStopBitIndex(commandResponse.configVals[4])

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
            id: commandNo
            x: 830
            y: 230
            width: 77
            height: 17
            color: "#ffffff"
            text: qsTr("No. Commands")
            font.pixelSize: 15
            font.italic: false
            font.bold: true
            Rectangle {
                x: 0
                y: 20
                width: 110
                height: 35
                radius: 6
                border.color: "#000000"
                border.width: 1
                TextInput {
                    id: commandno
                    opacity: 0.7
                    visible: true
                    color: "#0b0b0b"
                    text: "5"
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
                            virtualNumberKeyboard.inputField = commandno
                            commandno.focus = true // Set focus to the TextInput
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

        Rectangle {
            width: 890
            height: 440
            x: 50
            y: 300
            color: "#0a0d2c"
            radius: 12
            Component {
                id: elementDelegate

                Row {
                    id: row
                    y: 18
                    width: 898
                    spacing: 10
                    Rectangle {
                        height: 65
                        width: 835
                        opacity: 0.7
                        color: 'Grey'
                        radius: 12
                        Text {
                            leftPadding: 20
                            x: 0
                            y: 22
                            id: commandNo
                            width: 140
                            height: 17
                            color: "#FFFFFF"
                            text: qsTr("Command #" + (index + 1).toString())

                            font.pixelSize: 15
                            font.italic: false
                            font.bold: false
                        }
                        Rectangle {
                            x: 0

                            Text {
                                id: baudRate
                                x: 130
                                y: 0
                                width: 77
                                height: 17
                                color: "#ffffff"
                                text: qsTr("Command")
                                font.pixelSize: 15
                                font.italic: false
                                font.bold: true
                                Rectangle {
                                    x: 0
                                    y: 20
                                    width: 120
                                    height: 35
                                    radius: 6
                                    border.color: "#000000"
                                    border.width: 1
                                    TextInput {
                                        id: baudRateInput
                                        opacity: 0.7
                                        visible: true
                                        color: "#0b0b0b"
                                        text: ""
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
                                                baudRateInput.focus
                                                        = true // Set focus to the TextInput
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
                        }
                        Rectangle {
                            x: 133

                            Text {
                                id: baudRate1
                                x: 146
                                y: 0
                                width: 90
                                height: 17
                                color: "#ffffff"
                                text: qsTr("Respose Bytes")
                                font.pixelSize: 15
                                font.italic: false
                                font.bold: true
                                Rectangle {
                                    x: 2
                                    y: 20
                                    width: 120
                                    height: 35
                                    radius: 6
                                    border.color: "#000000"
                                    border.width: 1
                                    TextInput {
                                        id: baudRateInput1
                                        x: 84
                                        opacity: 0.7
                                        visible: true
                                        color: "#0b0b0b"
                                        text: ""
                                        anchors.fill: parent
                                        font.pixelSize: 14
                                        horizontalAlignment: Text.AlignLeft
                                        verticalAlignment: Text.AlignVCenter
                                        leftPadding: 10
                                        font.weight: Font.Black
                                        font.bold: true
                                        MouseArea {
                                            x: 84
                                            anchors.fill: parent
                                            anchors.rightMargin: 0
                                            anchors.bottomMargin: 1
                                            anchors.leftMargin: 0
                                            anchors.topMargin: -1
                                            onClicked: {
                                                virtualKeyboard.visible = false
                                                virtualNumberKeyboard.visible = true
                                                virtualNumberKeyboard.inputField = baudRateInput1
                                                baudRateInput1.focus
                                                        = true // Set focus to the TextInput
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
                        }

                        Rectangle {
                            x: 288
                            Text {
                                id: baudRate2
                                x: 146
                                y: 0
                                width: 90
                                height: 17
                                color: "#ffffff"
                                text: qsTr("Delay")
                                font.pixelSize: 15
                                font.italic: false
                                font.bold: true
                                Rectangle {
                                    x: 2
                                    y: 20
                                    width: 120
                                    height: 35
                                    radius: 6
                                    border.color: "#000000"
                                    border.width: 1
                                    TextInput {
                                        id: baudRateInput2
                                        x: 84
                                        opacity: 0.7
                                        visible: true
                                        color: "#0b0b0b"
                                        text: ""
                                        anchors.fill: parent
                                        font.pixelSize: 14
                                        horizontalAlignment: Text.AlignLeft
                                        verticalAlignment: Text.AlignVCenter
                                        leftPadding: 10
                                        font.weight: Font.Black
                                        font.bold: true
                                        MouseArea {
                                            x: 84
                                            anchors.fill: parent
                                            onClicked: {
                                                virtualKeyboard.visible = false
                                                virtualNumberKeyboard.visible = true
                                                virtualNumberKeyboard.inputField = baudRateInput2
                                                baudRateInput2.focus
                                                        = true // Set focus to the TextInput
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
                        }
                    }
                }
            }
            Component {
                id: rowDelegate

                Column {
                    spacing: 25
                    Repeater {
                        model: commandno.text
                        delegate: elementDelegate
                    }
                }
            }

            ScrollView {
                width: parent.width
                height: parent.height
                anchors.fill: parent
                horizontalPadding: 25
                verticalPadding: 25
                ScrollBar.vertical: ScrollBar {}
                ScrollBar.horizontal: ScrollBar {}
                ListView {
                    x: 330
                    y: 320
                    width: 870
                    height: 420
                    clip: true
                    model: 1
                    delegate: rowDelegate
                }
            }
        }
    }
}
