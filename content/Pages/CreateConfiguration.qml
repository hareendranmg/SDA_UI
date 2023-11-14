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
    color: "#00060606"
    border.color: "#003237b8"

    Image {
        id: image
        x: 200
        y: 86
        width: 128
        height: 2
        source: "../assets/images/divider.png"
        sourceSize.width: 120
        sourceSize.height: 4
    }

    ComboBox {
        id: comboBox
        x: 49
        y: 161
        width: 250
        height: 35
        opacity: 0.658
        visible: true
    }

    ComboBox {
        id: comboBox1
        x: 344
        y: 159
        width: 250
        height: 35
        opacity: 0.658
    }

    ComboBox {
        id: comboBox2
        x: 643
        y: 159
        width: 250
        height: 35
        opacity: 0.666
    }

    Text {
        id: text3
        x: 52
        y: 141
        color: "#fffbfb"
        text: qsTr("Port")
        font.pixelSize: 15
        font.italic: false
        font.bold: true
    }

    Text {
        id: text4
        x: 346
        y: 141
        width: 73
        height: 16
        color: "#ffffff"
        text: qsTr("Baud Rate")
        font.pixelSize: 15
        font.italic: false
        font.bold: true
    }

    Text {
        id: text5
        x: 646
        y: 141
        width: 58
        height: 17
        color: "#ffffff"
        text: qsTr("Stop Bit")
        font.pixelSize: 15
        font.bold: true
        font.italic: false
    }

    ComboBox {
        id: comboBox3
        x: 49
        y: 250
        width: 250
        height: 35
        opacity: 0.658
    }

    ComboBox {
        id: comboBox4
        x: 344
        y: 250
        width: 250
        height: 35
        opacity: 0.658
    }

    Text {
        id: text6
        x: 51
        y: 232
        color: "#fcfcfc"
        text: qsTr("Flow Control")
        font.pixelSize: 15
        font.italic: false
        font.bold: true
    }

    Text {
        id: text7
        x: 401
        y: 344
        text: qsTr("")
        font.pixelSize: 12
    }

    Text {
        id: text2
        x: 348
        y: 232
        width: 77
        height: 17
        color: "#ffffff"
        text: qsTr("Periodicity")
        font.pixelSize: 15
        font.italic: false
        font.bold: true
    }

    ComboBox {
        id: comboBox5
        x: 643
        y: 250
        width: 250
        height: 35
        opacity: 0.658
    }

    Text {
        id: text8
        x: 649
        y: 231
        color: "#ffffff"
        text: qsTr("Data Bit")
        font.pixelSize: 15
        font.italic: false
        font.bold: true
    }
}
