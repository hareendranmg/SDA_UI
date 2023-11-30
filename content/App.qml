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

    GridLayout {
        id: keyboardGrid
        columns: 3

            Button {
                width: 80
                height: 80
                text: "1"
                onClicked: {

                }
            
        }
    }
}
