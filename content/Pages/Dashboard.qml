import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.15

Rectangle {
    id: dashboardRectangle
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

   
}
