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
            id: listConfigurationRectangle
            x: 260
            y: 0
            width: 1020
            height: 800
            color: "#00000000"
            border.color: "#00000000"
            RoundButton {
                id: createConfigurationButton
                x: 790
                y: 60
                width: 190
                height: 35
                radius: 8
                text: "Create Configuration"
                highlighted: false
                flat: false
            }

            Label {
                id: label
                x: 52
                y: 180
                color: "#ffffff"
                text: qsTr("Configuration")
                font.pointSize: 12
            }

            RoundButton {
                id: button
                x: 770
                y: 210
                width: 176
                height: 36
                opacity: 1
                radius: 8
                text: qsTr("Connect")
                icon.cache: false
                onClicked: {
                    dashHandler.connectPort()
                    // dashHandler.serialReceive()
                }
            }

            Label {
                id: label1
                x: 52
                y: 280
                color: "#ffffff"
                text: qsTr("Data Logs")
                font.pointSize: 12
            }

            Image {
                id: divider
                x: 46
                y: 94
                width: 90
                height: 2
                source: "../assets/images/divider.png"
                sourceSize.width: 120
                sourceSize.height: 4
            }

            Image {
                id: divider1
                x: 170
                y: 94
                width: 108
                height: 2
                source: "../assets/images/divider.png"
                sourceSize.width: 120
                sourceSize.height: 4
            }
        }

        Rectangle {
            id: listConfigurationRectangle1
            x: 254
            y: 2
            width: 1020
            height: 800
            color: "#00000000"
            border.color: "#00000000"

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
                y: 207
                color: "#fffbfb"
                text: qsTr("Port")
                font.pixelSize: 15
                font.italic: false
                font.bold: true

                ComboBox {
                    id: portCombo
                    x: 0
                    y: 20
                    width: 270
                    height: 35
                    opacity: 1
                    visible: true
                    leftPadding: 5
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
                        ListElement {
                            text: "PORT5 : /dev/ttyUSB0"
                        }
                    }
                }
            }

            Text {
                id: baudRate
                x: 367
                y: 207
                width: 73
                height: 16
                color: "#ffffff"
                text: qsTr("Baud Rate")
                font.pixelSize: 15
                font.italic: false
                font.bold: true

                ComboBox {
                    id: baudRateCombo
                    x: 0
                    y: 20
                    width: 270
                    height: 35
                    opacity: 0.9
                    leftPadding: 5
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
                    //110, 300, 600, 1200, 2400, 4800, 9600, 14400, 19200, 38400, 57600, 115200, 128000 and 256000
                    model: ListModel {
                        ListElement {
                            text: "2400"
                        }
                        ListElement {
                            text: "4800"
                        }
                        ListElement {
                            text: "9600"
                        }
                        ListElement {
                            text: "19200"
                        }
                        ListElement {
                            text: "38400"
                        }
                        ListElement {
                            text: "57600"
                        }
                        ListElement {
                            text: "115200"
                        }
                        ListElement {
                            text: "230400"
                        }
                        ListElement {
                            text: "460800"
                        }
                        ListElement {
                            text: "921600"
                        }
                        ListElement {
                            text: "1000000"
                        } // 1 Mbps
                        ListElement {
                            text: "2000000"
                        } // 2 Mbps
                        ListElement {
                            text: "4000000"
                        } // 4 Mbps
                    }
                }
            }

            Text {
                id: stopBit
                x: 680
                y: 207
                width: 58
                height: 17
                color: "#ffffff"
                text: qsTr("Stop Bit")
                font.pixelSize: 15
                font.bold: true
                font.italic: false

                ComboBox {
                    id: stopBitCombo
                    x: 0
                    y: 20
                    width: 270
                    height: 35
                    opacity: 0.9
                    leftPadding: 5
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
                y: 300
                color: "#fcfcfc"
                text: qsTr("Flow Control")
                font.pixelSize: 15
                font.italic: false
                font.bold: true

                ComboBox {
                    id: flowControlCombo
                    x: 0
                    y: 20
                    width: 270
                    height: 35
                    opacity: 0.9
                    currentIndex: 0
                    leftPadding: 5
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
                            text: "No Flow Control"
                        }
                        ListElement {
                            text: "Hardware Control"
                        }
                        ListElement {
                            text: "Software Control"
                        }
                    }
                }
            }

            Text {
                id: databit
                x: 367
                y: 300
                color: "#ffffff"
                text: qsTr("Data Bit")
                font.pixelSize: 15
                font.italic: false
                font.bold: true

                ComboBox {
                    id: dataBitCombo
                    x: 0
                    y: 20
                    width: 270
                    height: 35
                    opacity: 0.9
                    currentIndex: 3
                    leftPadding: 5

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
                id: periodicity
                x: 680
                y: 300
                width: 77
                height: 17
                color: "#ffffff"
                text: qsTr("Periodicity (In Milli Second)")
                font.pixelSize: 15
                font.italic: false
                font.bold: true

                Rectangle {
                    x: 0
                    y: 20
                    width: 270
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
                        leftPadding: 5
                        anchors.bottomMargin: 0
                        anchors.leftMargin: 0
                        anchors.topMargin: 0
                        anchors.rightMargin: 0
                        clip: false

                        MouseArea {
                            anchors.fill: parent
                            drag.threshold: 8
                            onClicked: {
                                virtualKeyboard.visible = !virtualKeyboard.visible
                                virtualKeyboard.inputField = periodicityInput
                                periodicityInput.focus = true // Set focus to the TextInput
                            }
                        }
                    }
                }
            }

            Text {
                id: configurationName
                x: 367
                y: 392
                color: "#fcfcfc"
                text: qsTr("Configuration Name")
                font.pixelSize: 15
                font.italic: false
                font.bold: true

                Rectangle {
                    x: 0
                    y: 20
                    width: 270
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
                        leftPadding: 5
                        anchors.bottomMargin: 0
                        anchors.leftMargin: 0
                        anchors.topMargin: 0
                        anchors.rightMargin: 0
                        clip: false

                        MouseArea {
                            anchors.fill: parent
                            onClicked: {
                                virtualKeyboard.visible = !virtualKeyboard.visible
                                virtualKeyboard.inputField = configurationNameInput
                                configurationNameInput.focus = true // Set focus to the TextInput
                            }
                        }
                    }
                }
            }

            RoundButton {
                id: saveConfigurationButton
                x: 680
                y: 411
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
                                             configurationNameInput.text)
                }
            }

            Text {
                id: commandToSend
                x: 50
                y: 392
                color: "#fcfcfc"
                text: qsTr("Command To Send")
                font.pixelSize: 15
                font.italic: false
                font.bold: true
                Rectangle {
                    x: 0
                    y: 20
                    width: 268
                    height: 35
                    radius: 6
                    border.color: "#000000"
                    border.width: 1
                    TextInput {
                        id: commandToSendInput
                        opacity: 0.7
                        visible: true
                        color: "#0b0b0b"
                        text: ""
                        anchors.fill: parent
                        font.pixelSize: 12
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignVCenter
                        leftPadding: 5
                        MouseArea {
                            anchors.fill: parent
                            onClicked: {
                                virtualKeyboard.visible = !virtualKeyboard.visible
                                virtualKeyboard.inputField = commandToSendInput
                                commandToSendInput.focus = true // Set focus to the TextInput
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

            Rectangle {
                id: virtualKeyboard
                x: 32
                y: 819
                visible: true
                height: 220
                width: 900
                radius: 8

                RoundButton {
                    x: 8
                    y: 6
                    width: 74
                    height: 39
                    radius: 8
                    text: "Q"
                }

                RoundButton {
                    x: 89
                    y: 6
                    width: 74
                    height: 40
                    radius: 8
                    text: "W"
                }

                RoundButton {
                    x: 169
                    y: 7
                    width: 74
                    height: 38
                    radius: 8
                    text: "E"
                }

                RoundButton {


                    x: 776
                    y: 52
                    width: 117
                    height: 40
                    radius: 8
                    text: qsTr("ENTER")
                }

                RoundButton {

                    x: 696
                    y: 52
                    width: 74
                    height: 40
                    radius: 8
                    text: "L"
                }

                RoundButton {

                    x: 616
                    y: 52
                    width: 74
                    height: 40
                    radius: 8
                    text: "K"
                }

                RoundButton {

                    x: 249
                    y: 6
                    width: 74
                    height: 40
                    radius: 8
                    text: "R"
                }

                RoundButton {
                    id: roundButton3
                    x: 331
                    y: 6
                    width: 74
                    height: 40
                    radius: 8
                    text: "T"
                }

                RoundButton {

                    x: 414
                    y: 7
                    width: 74
                    height: 40
                    radius: 8
                    text: "Y"
                }

                RoundButton {

                    x: 496
                    y: 7
                    width: 74
                    height: 40
                    radius: 8
                    text: "U"
                }

                RoundButton {

                    x: 578
                    y: 7
                    width: 74
                    height: 40
                    radius: 8
                    text: "I"
                }

                RoundButton {

                    x: 659
                    y: 7
                    width: 74
                    height: 40
                    radius: 8
                    text: "O"
                }

                RoundButton {

                    x: 740
                    y: 7
                    width: 74
                    height: 40
                    radius: 8
                    text: "P"
                }

                RoundButton {
                    x: 819
                    y: 7
                    width: 74
                    height: 40
                    radius: 8
                    text: "DEL"
                }

                RoundButton {
                    x: 534
                    y: 52
                    width: 74
                    height: 40
                    radius: 8
                    text: "J"
                }

                RoundButton {
                    x: 451
                    y: 52
                    width: 74
                    height: 40
                    radius: 8
                    text: "H"
                }

                RoundButton {
                    x: 367
                    y: 52
                    width: 74
                    height: 40
                    radius: 8
                    text: "G"
                }

                RoundButton {
                    x: 282
                    y: 51
                    width: 74
                    height: 40
                    radius: 8
                    text: "F"
                }

                RoundButton {
                    x: 200
                    y: 51
                    width: 74
                    height: 40
                    radius: 8
                    text: "D"
                }

                RoundButton {
                    x: 119
                    y: 51
                    width: 74
                    height: 40
                    radius: 8
                    text: "S"
                }

                RoundButton {
                    x: 36
                    y: 50
                    width: 74
                    height: 40
                    radius: 8
                    text: "A"
                }

                RoundButton {
                    x: 824
                    y: 97
                    width: 69
                    height: 40
                    radius: 8
                    text: "SHIFT"
                }

                RoundButton {
                    x: 751
                    y: 97
                    width: 69
                    height: 40
                    radius: 8
                    text: "."
                }

                RoundButton {
                    x: 678
                    y: 97
                    width: 69
                    height: 40
                    radius: 8
                    text: "@"
                }

                RoundButton {
                    x: 605
                    y: 97
                    width: 69
                    height: 40
                    radius: 8
                    text: "+"
                }

                RoundButton {
                    x: 532
                    y: 97
                    width: 69
                    height: 40
                    radius: 8
                    text: "M"
                }

                RoundButton {
                    x: 459
                    y: 97
                    width: 69
                    height: 40
                    radius: 8
                    text: "N"
                }

                RoundButton {
                    x: 384
                    y: 97
                    width: 69
                    height: 40
                    radius: 8
                    text: "B"
                }

                RoundButton {
                    x: 309
                    y: 97
                    width: 69
                    height: 40
                    radius: 8
                    text: "V"
                }

                RoundButton {
                    x: 233
                    y: 97
                    width: 69
                    height: 40
                    radius: 8
                    text: "C"
                }

                RoundButton {
                    x: 158
                    y: 97
                    width: 69
                    height: 40
                    radius: 8
                    text: "X"
                }

                RoundButton {
                    x: 83
                    y: 97
                    width: 69
                    height: 40
                    radius: 8
                    text: "Z"
                }

                RoundButton {
                    x: 8
                    y: 97
                    width: 69
                    height: 40
                    radius: 8
                    text: "SHIFT"
                }

                RoundButton {
                    x: 819
                    y: 143
                    width: 74
                    height: 40
                    radius: 8
                    text: "+"
                }

                RoundButton {
                    x: 739
                    y: 143
                    width: 74
                    height: 40
                    radius: 8
                    text: "-"
                }

                RoundButton {
                    x: 658
                    y: 143
                    width: 74
                    height: 40
                    radius: 8
                    text: "_"
                }

                RoundButton {
                    x: 8
                    y: 142
                    width: 74
                    height: 40
                    radius: 8
                    text: "123"
                }

                RoundButton {
                    x: 91
                    y: 142
                    width: 70
                    height: 40
                    radius: 8
                    text: "+"
                }

                RoundButton {
                    x: 171
                    y: 142
                    width: 70
                    height: 40
                    radius: 8
                    text: "ALT"
                }

                RoundButton {
                    x: 249
                    y: 143
                    width: 403
                    height: 39
                    radius: 8
                    text: "SPACE"
                }

                //                RoundButton {
                //                    x: 270
                //                    y: 160
                //                    width: 120
                //                    height: 40
                //                    radius: 8
                //                    text: "\u2713"
                //                }
            }

            Rectangle {
                id: virtualKeyboard1
                x: 32
                y: 505
                visible: true
                height: 244
                width: 900
                radius: 8

                RoundButton {
                    x: 44
                    y: 51
                    width: 74
                    height: 39
                    radius: 8
                    text: "Q"
                }

                RoundButton {
                    x: 125
                    y: 51
                    width: 74
                    height: 40
                    radius: 8
                    text: "W"
                }

                RoundButton {
                    x: 205
                    y: 52
                    width: 74
                    height: 38
                    radius: 8
                    text: "E"
                }

                RoundButton {
                    x: 776
                    y: 97
                    width: 117
                    height: 40
                    radius: 8
                    text: qsTr("ENTER")
                }

                RoundButton {
                    x: 696
                    y: 97
                    width: 74
                    height: 40
                    radius: 8
                    text: "L"
                }

                RoundButton {
                    x: 616
                    y: 97
                    width: 74
                    height: 40
                    radius: 8
                    text: "K"
                }

                RoundButton {
                    x: 285
                    y: 51
                    width: 74
                    height: 40
                    radius: 8
                    text: "R"
                }

                RoundButton {
                    x: 367
                    y: 51
                    width: 74
                    height: 40
                    radius: 8
                    text: "T"
                }

                RoundButton {
                    x: 450
                    y: 51
                    width: 74
                    height: 40
                    radius: 8
                    text: "Y"
                }

                RoundButton {
                    x: 532
                    y: 50
                    width: 74
                    height: 40
                    radius: 8
                    text: "U"
                }

                RoundButton {
                    x: 614
                    y: 50
                    width: 74
                    height: 40
                    radius: 8
                    text: "I"
                }

                RoundButton {
                    x: 695
                    y: 50
                    width: 74
                    height: 40
                    radius: 8
                    text: "O"
                }

                RoundButton {
                    x: 776
                    y: 50
                    width: 74
                    height: 40
                    radius: 8
                    text: "P"
                }

                RoundButton {
                    x: 819
                    y: 4
                    width: 74
                    height: 40
                    radius: 8
                    text: "DEL"
                }

                RoundButton {
                    x: 534
                    y: 97
                    width: 74
                    height: 40
                    radius: 8
                    text: "J"
                }

                RoundButton {
                    x: 451
                    y: 97
                    width: 74
                    height: 40
                    radius: 8
                    text: "H"
                }

                RoundButton {
                    x: 367
                    y: 97
                    width: 74
                    height: 40
                    radius: 8
                    text: "G"
                }

                RoundButton {
                    x: 282
                    y: 96
                    width: 74
                    height: 40
                    radius: 8
                    text: "F"
                }

                RoundButton {
                    x: 200
                    y: 96
                    width: 74
                    height: 40
                    radius: 8
                    text: "D"
                }

                RoundButton {
                    x: 119
                    y: 96
                    width: 74
                    height: 40
                    radius: 8
                    text: "S"
                }

                RoundButton {
                    x: 36
                    y: 95
                    width: 74
                    height: 40
                    radius: 8
                    text: "A"
                }

                RoundButton {
                    x: 824
                    y: 145
                    width: 69
                    height: 40
                    radius: 8
                    text: "SHIFT"
                }

                RoundButton {
                    x: 751
                    y: 145
                    width: 69
                    height: 40
                    radius: 8
                    text: "."
                }

                RoundButton {
                    x: 678
                    y: 145
                    width: 69
                    height: 40
                    radius: 8
                    text: "@"
                }

                RoundButton {
                    x: 605
                    y: 145
                    width: 69
                    height: 40
                    radius: 8
                    text: "+"
                }

                RoundButton {
                    x: 532
                    y: 145
                    width: 69
                    height: 40
                    radius: 8
                    text: "M"
                }

                RoundButton {
                    x: 459
                    y: 145
                    width: 69
                    height: 40
                    radius: 8
                    text: "N"
                }

                RoundButton {
                    x: 384
                    y: 145
                    width: 69
                    height: 40
                    radius: 8
                    text: "B"
                }

                RoundButton {
                    x: 309
                    y: 145
                    width: 69
                    height: 40
                    radius: 8
                    text: "V"
                }

                RoundButton {
                    id: roundButton25
                    x: 233
                    y: 145
                    width: 69
                    height: 40
                    radius: 8
                    text: "C"
                }

                RoundButton {
                    x: 158
                    y: 145
                    width: 69
                    height: 40
                    radius: 8
                    text: "X"
                }

                RoundButton {
                    x: 83
                    y: 145
                    width: 69
                    height: 40
                    radius: 8
                    text: "Z"
                }

                RoundButton {
                    x: 8
                    y: 145
                    width: 69
                    height: 40
                    radius: 8
                    text: "SHIFT"
                }

                RoundButton {
                    x: 819
                    y: 191
                    width: 74
                    height: 40
                    radius: 8
                    text: "+"
                }

                RoundButton {
                    x: 739
                    y: 191
                    width: 74
                    height: 40
                    radius: 8
                    text: "-"
                }

                RoundButton {
                    x: 658
                    y: 191
                    width: 74
                    height: 40
                    radius: 8
                    text: "_"
                }

                RoundButton {
                    x: 8
                    y: 190
                    width: 74
                    height: 40
                    radius: 8
                    text: "#@!"
                }

                RoundButton {
                    x: 91
                    y: 190
                    width: 70
                    height: 40
                    radius: 8
                    text: "+"
                }

                RoundButton {
                    x: 171
                    y: 190
                    width: 70
                    height: 40
                    radius: 8
                    text: "ALT"
                }

                RoundButton {
                    x: 249
                    y: 191
                    width: 403
                    height: 39
                    radius: 8
                    text: "SPACE"
                }

                RoundButton {
                    id: roundButton
                    x: 6
                    y: 4
                    width: 74
                    height: 40
                    radius: 8
                    text: "0"
                }

                RoundButton {
                    id: roundButton1
                    x: 89
                    y: 4
                    width: 74
                    height: 40
                    radius: 8
                    text: "1"
                }

                RoundButton {
                    id: roundButton2
                    x: 168
                    y: 5
                    width: 74
                    height: 40
                    radius: 8
                    text: "2"
                }

                RoundButton {
                    id: roundButton4
                    x: 248
                    y: 6
                    width: 74
                    height: 40
                    radius: 8
                    text: "3"
                }

                RoundButton {
                    id: roundButton5
                    x: 331
                    y: 4
                    width: 74
                    height: 40
                    radius: 8
                    text: "4"
                }

                RoundButton {
                    id: roundButton6
                    x: 414
                    y: 5
                    width: 74
                    height: 40
                    radius: 8
                    text: "5"
                }

                RoundButton {
                    id: roundButton7
                    x: 496
                    y: 4
                    width: 74
                    height: 40
                    radius: 8
                    text: "6"
                }

                RoundButton {
                    id: roundButton8
                    x: 578
                    y: 5
                    width: 74
                    height: 40
                    radius: 8
                    text: "7"
                }

                RoundButton {
                    id: roundButton9
                    x: 658
                    y: 4
                    width: 74
                    height: 40
                    radius: 8
                    text: "8"
                }

                RoundButton {
                    id: roundButton10
                    x: 739
                    y: 2
                    width: 73
                    height: 40
                    radius: 8
                    text: "9"
                }

                //                RoundButton {
                //                    x: 270
                //                    y: 160
                //                    width: 120
                //                    height: 40
                //                    radius: 8
                //                    text: "\u2713"
                //                }
            }
        }
    }
}

/*##^##
Designer {
    D{i:0}D{i:1;invisible:true}
}
##^##*/

