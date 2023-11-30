import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.15

Rectangle {

    id: virtualKeyboard
    visible: true
    height: 200
    width: 300
    anchors.bottom: parent.bottom

    Row {
                        spacing: 10 // You can adjust the spacing between Text elements as needed

                        Text {
                            text: "id"
                            // anchors.centerIn: parent
                        }

                        Text {
                            text: "dataReceived"
                            // anchors.centerIn: parent
                        }

                        Text {
                            text: "timeElapsed"
                            // anchors.centerIn: parent
                        }

                        Text {
                            text: "errorWords1"
                            // anchors.centerIn: parent
                        }

                        Text {
                            text: "errorWords2"
                            // anchors.centerIn: parent
                        }

                        Text {
                            text: "timestamp"
                            // anchors.centerIn: parent
                        }
                    }


}
