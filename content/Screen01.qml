

/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.15
import "Pages"

Window {
    x: 280
    width: 1280
    height: 800
    visible: true

    Rectangle {
        id: rectangle
        x: 0
        y: 0
        width: 1280
        height: 800
        visible: true

        Image {
            id: backgroundImage
            anchors.fill: parent
            source: "background_image.png"
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
                icon.source: "assets/images/dashboard_icon.png"
                icon.color: "#00000000"
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
            }

            RoundButton {
                id: configurationButton
                x: 30
                y: 260
                icon.source: "assets/images/configuration_icon.png"
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
            }

            RoundButton {
                id: dataLogsButton
                x: 30
                y: 320
                icon.source: "assets/images/data_logs_icon.png"
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
            }

            RoundButton {
                id: storageButton
                x: 30
                y: 380
                icon.source: "assets/images/storage_icon.png"
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
            }

            RoundButton {
                id: settingsButton
                x: 30
                y: 440
                icon.source: "assets/images/settings_icon.png"
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
            }

            Label {
                id: dashboard
                x: 330
                y: 60
                color: "#ffffff"
                text: qsTr("Dashboard")
                font.pointSize: 14
            }

            Label {
                id: dashboard1
                x: 480
                y: 60
                width: 156
                height: 27
                color: "#ffffff"
                text: qsTr("Configuration")
                font.pointSize: 14
            }

            Label {
                id: dashboard2
                x: 660
                y: 60
                width: 156
                height: 27
                color: "#ffffff"
                text: qsTr("Data Logs")
                font.pointSize: 14
            }

            Label {
                id: dashboard3
                x: 794
                y: 60
                width: 109
                height: 27
                color: "#ffffff"
                text: qsTr("Storage")
                font.pointSize: 14
            }

            Label {
                id: dashboard4
                x: 915
                y: 60
                width: 156
                height: 27
                color: "#ffffff"
                text: qsTr("Settings")
                font.pointSize: 14
            }

            Loader {
                id: loaderComponent
                x: 280
                y: 0
                width: 1000
                height: 800
                source: "Pages/CreateConfiguration.qml"
            }
        }
    }
}
