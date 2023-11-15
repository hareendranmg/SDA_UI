

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
            opacity: 1
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

            //            Loader {
            //                id: loaderComponent
            //                x: 280
            //                y: 0
            //                width: 1000
            //                height: 800
            //                source: "Pages/Dashboard.qml"
            //            }

            Rectangle {
                id: dashboardRectangle
                x: 280
                y: 0
                width: 1000
                opacity: 0.67
                color: "#00060606"
                border.color: "#003237b8"


                Image {
                    id: image
                    x: 43
                    y: 86
                    width: 105
                    height: 2
                    source: "../assets/images/divider.png"
                    sourceSize.width: 120
                    sourceSize.height: 4
                }

                Text {
                    id: text1
                    x: 35
                    y: 167
                    width: 138
                    height: 38
                    color: "#ffffff"
                    text: qsTr("Selected Configuration File")
                    font.pixelSize: 18
                    font.bold: true
                }

                ListView {
                    id: listView
                    x: 35
                    y: 428
                    width: 819
                    height: 254
                    opacity: 1
                    layer.wrapMode: ShaderEffectSource.Repeat
                    layer.textureMirroring: ShaderEffectSource.MirrorHorizontally
                    highlightRangeMode: ListView.NoHighlightRange
                    layoutDirection: Qt.RightToLeft
                    snapMode: ListView.SnapOneItem
                  //  orientation: ListView.
                    boundsMovement: Flickable.FollowBoundsBehavior
                    boundsBehavior: Flickable.StopAtBounds
                    flickableDirection: Flickable.AutoFlickIfNeeded
                    model: ListModel {
                        ListElement {
                            name: "Helllo World!!"
                            colorCode: "white"
                        }
                    }
                    delegate: Item {
                        x: 5
                        width: 880
                        height: 20
                        Row {
                            id: row1
                            spacing: 10
                            Rectangle {
                                width: 40
                                height: 40
                                color: colorCode
                            }

                            Text {
                                text: name
                                anchors.verticalCenter: parent.verticalCenter
                                font.bold: true
                                color: "#ffffff"
                            }
                        }
                    }
                }
            }

            Text {
                id: text2
                x: 319
                y: 226
                color: "#fff8f8"
                text: qsTr("Ports")
                font.pixelSize: 14
                styleColor: "#ffffff"
            }

            Text {
                id: text3
                x: 491
                y: 226
                color: "#f9f2f2"
                text: qsTr("Baud Rate")
                font.pixelSize: 14
            }

            Text {
                id: text4
                x: 856
                y: 222
                text: qsTr("Data Bits")
                font.pixelSize: 12
            }

            Text {
                id: text5
                x: 765
                y: 226
                color: "#ffffff"
                text: qsTr("Data Bits")
                font.pixelSize: 13
            }

            ComboBox {
                id: comboBox3
                x: 591
                y: 161
                width: 401
                height: 31
            }

            TextField {
                id: textField
                x: 319
                y: 245
                width: 115
                height: 25
                //placeholderText: qsTr("Text Field")
                enabled:false
            }

            TextField {
                id: textField1
                x: 491
                y: 245
                width: 115
                height: 25
                //placeholderText: qsTr("Text Field")
                enabled:false
            }

            TextField {
                id: textField2
                x: 766
                y: 245
                width: 50
                height: 25
                //placeholderText: qsTr("Text Field")
                enabled:false
            }

            TextField {
                id: textField3
                x: 670
                y: 245
                width: 50
                height: 25
                //placeholderText: qsTr("Text Field")
                enabled:false
            }

            Text {
                id: text6
                x: 670
                y: 225
                width: 41
                height: 21
                color: "#fdfdfd"
                text: qsTr("Parity")
                font.pixelSize: 15
            }

            Text {
                id: text7
                x: 566
                y: 321
                text: qsTr("Text")
                font.pixelSize: 12
            }

            Button {
                id: button
                x: 1037
                y: 162
                width: 141
                height: 29
                text: qsTr("Connect")
                icon.cache: false
            }

            Image {
                id: image2
                x: 1030
                y: 165
                width: 41
                height: 26
                source: "../../../Downloads/png-transparent-computer-icons-computer-network-icon-design-connect-miscellaneous-computer-silhouette-thumbnail.png"
                fillMode: Image.PreserveAspectFit
            }

            TextField {
                id: textField4
                x: 858
                y: 245
                width: 50
                height: 25
                //placeholderText: qsTr("Text Field")
                enabled:false
            }

            Text {
                id: text8
                x: 858
                y: 226
                color: "#ffffff"
                text: qsTr("Periodicity")
                font.pixelSize: 14
            }

            TextField {
                id: textField5
                x: 964
                y: 245
                width: 115
                // placeholderText: qsTr("Text Field")
                enabled:false
            }

            Text {
                id: text9
                x: 963
                y: 228
                width: 24
                height: 24
                color: "#ffffff"
                text: qsTr("Flow Control")
                font.pixelSize: 12
            }
        }
    }
}
