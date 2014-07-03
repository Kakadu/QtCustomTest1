import QtQuick 1.1
//import "trik"
import trik 1.0
import CustomComponents 1.0

Rectangle {
    width: 360
    height: 360

    Canvas {
      id: canvas1
      anchors.fill: parent

      Component.onCompleted:  {
        console.log(canvas1)
        console.log(canvas1.init);
      }
    }

    Line {
        id: diagonalLine

        Behavior on x1 { NumberAnimation { duration: 1000 } }
        Behavior on y1 { NumberAnimation { duration: 1000 } }
        Behavior on x2 { NumberAnimation { duration: 1000 } }
        Behavior on y2 { NumberAnimation { duration: 1000 } }

        x1: parent.x + 20; y1: parent.height / 2
        x2: parent.width - 20; y2: parent.height / 2
        color: "tomato"; penWidth: 3; smooth: true
    }

    Text {
        text: qsTr("Hello World QtQuick 1.1")
        anchors.centerIn: parent
    }
}
