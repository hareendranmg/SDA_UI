import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.15
import "Pages"

Rectangle {
    id: viewConfigurationsRectangle
    x: 0
    y: 0
    width: 1083
    height: 800
    opacity: 1
    color: "#00060606"
    border.color: "#003237b8"

    Label {
        id: configurationLabel
        x: 200
        y: 60
        width: 156
        height: 27
        color: "#ffffff"
        text: qsTr("Configuration")
        font.pointSize: 14

        Image {
            id: divider
            x: 0
            y: 25
            width: 128
            height: 2
            source: "../assets/images/divider.png"
            sourceSize.width: 120
            sourceSize.height: 4
        }
    }

    RoundButton {
        id: roundButton
        x: 790
        y: 56
        width: 190
        height: 35
        radius: 8
        text: "Create Configuration"
        highlighted: false
        flat: false
    }

    ListView {
        id: listView
        x: 50
        y: 97
        width: 930
        height: 652
        model: ListModel {
            ListElement {
                name: "Grey"
                colorCode: "grey"
            }

            ListElement {
                name: "Red"
                colorCode: "red"
            }

            ListElement {
                name: "Blue"
                colorCode: "blue"
            }

            ListElement {
                name: "Green"
                colorCode: "green"
            }
        }
        delegate: Item {
            x: 5
            width: 80
            height: 40
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
                }
            }
        }
    }
}
