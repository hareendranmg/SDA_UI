import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.15

Rectangle {
    id: createConfigurationRectangle
    x: 0
    y: 0
    width: 1000
    height: 800
    opacity: 1
    color: "#060606"
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

    Text {
        id: port
        x: 52
        y: 141
        color: "#fffbfb"
        text: qsTr("Port")
        font.pixelSize: 15
        font.italic: false
        font.bold: true

        ComboBox {
            id: portCombo
            x: 0
            y: 20
            width: 250
            height: 35
            opacity: 0.7
            visible: true
        }
    }

    Text {
        id: baudRate
        x: 346
        y: 141
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
            width: 250
            height: 35
            opacity: 0.7
        }
    }

    Text {
        id: stopBit
        x: 646
        y: 141
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
            width: 250
            height: 35
            opacity: 0.7
        }
    }

    Text {
        id: flowControl
        x: 51
        y: 232
        color: "#fcfcfc"
        text: qsTr("Flow Control")
        font.pixelSize: 15
        font.italic: false
        font.bold: true

        ComboBox {
            id: flowControlCombo
            x: 0
            y: 20
            width: 250
            height: 35
            opacity: 0.7
        }
    }

    Text {
        id: databit
        x: 350
        y: 231
        color: "#ffffff"
        text: qsTr("Data Bit")
        font.pixelSize: 15
        font.italic: false
        font.bold: true

        ComboBox {
            id: dataBitCombo
            x: 0
            y: 20
            width: 250
            height: 35
            opacity: 0.7
        }
    }

    Text {
        id: periodicity
        x: 646
        y: 232
        width: 77
        height: 17
        color: "#ffffff"
        text: qsTr("Periodicity")
        font.pixelSize: 15
        font.italic: false
        font.bold: true

        ComboBox {
            id: periodicityCombo
            x: 0
            y: 20
            width: 250
            height: 35
            opacity: 0.7
        }
    }

    Text {
        id: configurationNameLabel
        x: 52
        y: 325
        color: "#fcfcfc"
        text: qsTr("Configuration Name")
        font.pixelSize: 15
        font.italic: false
        font.bold: true

        Rectangle {
            x: 0
            y: 20
            width: 547
            height: 35
            border.color: "black" // Set the border color
            border.width: 1 // Set the border width

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
                leftPadding: 12
                anchors.bottomMargin: 0
                anchors.leftMargin: 0
                anchors.topMargin: 0
                anchors.rightMargin: 0
                clip: false
            }
        }
    }

    RoundButton {
        id: roundButton
        x: 646
        y: 345
        width: 250
        height: 35
        radius: 8
        text: "Save Configuration"
        highlighted: false
        flat: false
    }
}
