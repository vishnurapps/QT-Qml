import QtQuick 2.12
import QtQuick.Window 2.12
import "Util1.js" as Util1      //This is to use the functions of the Util1.js file here

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Javascript Import Demo")

    Rectangle {
        width: 200
        height: width
        color: "yellowgreen"
        anchors.centerIn: parent

        Text {
            id: myTextId
            anchors.centerIn: parent
            text: qsTr("Click Me...")
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
                console.log("Hello There...")
                Util1.greeting()
                console.log("Sum of two numbers is " + Util1.addNumbers(20, 30))
                console.log("The difference between 7 and 2 is " + Util1.substract(7,2))
            }
        }

    }
}
