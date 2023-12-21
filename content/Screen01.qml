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
            text: qsTr("IP Address")
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
            text: qsTr("Subnet Mask")
            font.pixelSize: 15
            font.italic: false
            font.bold: true
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
            id: roundButton1
            x: 682
            y: 343
            width: 275
            height: 35
            radius: 12
            text: "Save"
        }

        Text {
            id: text2
            x: 367
            y: 323
            color: "#ffffff"
            text: qsTr("Alternate DNS ")
            font.pixelSize: 15
        }
    }
}


