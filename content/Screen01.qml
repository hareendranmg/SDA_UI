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
    }
}

/*##^##
Designer {
    D{i:0}D{i:1;invisible:true}
}
##^##*/

