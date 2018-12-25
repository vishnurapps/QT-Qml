import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("JavaScript Demo")

    Rectangle {
        id: containerRectId
        width: height * 2   //JS in property binding
        height: 100
        color: x > 300 ? "green" : "red" //JS property binding
        //anchors.centerIn: parent

        //Signal handler in JS
        onXChanged: {
            console.log("Current value of x is : " + x )
        }

        //Function in JS
        function getDoubleHeight(){
            return height * 2;
        }
    }

    MouseArea {
        anchors.fill: parent
        drag.target: containerRectId
        drag.axis: Drag.XAxis
        drag.minimumX: 0
        drag.maximumX: parent.width - containerRectId.width
    }
}
