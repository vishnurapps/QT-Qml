import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Functions and Scope Demo")

    //Functions defined in the root can be called by any component
    function min(a, b){
        return Math.min(a,b)
    }

    Rectangle {
        id: mRectId
        width: min(699, 400)
        height: 100
        anchors.centerIn: parent
        color: "blue"
    }

    MouseArea {
        id: myMouseArea
        anchors.fill: parent
        function sayMessage(){
            console.log("Hello There")
        }
        onClicked: {
            sayMessage()
        }
    }

    Component.onCompleted: {
        console.log("The width of the rectangle is " + mRectId.width)
    }
}
