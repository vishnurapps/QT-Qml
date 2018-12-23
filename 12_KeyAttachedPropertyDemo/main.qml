import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Key Attached Property")

    Rectangle {
        id: containerRect
        anchors.centerIn: parent
        width: 300
        height: 50
        color: "dodgerblue"
        focus: true

        //This is the specific way of handling the signal
        Keys.onDigit1Pressed: {
            console.log("Specific handler invoked pressed key 1")
            //This accepted field is get as true by default. So if we want
            //the generic handler also to handle the event, we have to set
            //the accepted as false.
            event.accepted = false
        }


        //Handling key events in generic way
        Keys.onPressed: {
            if(event.key === Qt.Key_1){
                console.log("Generic handler invoked pressed key 1")
            }
            //This is how we check if control key is pressed. Similar opertaion is available for other keys
            if((event.key === Qt.Key_5) && (event.modifiers & Qt.ControlModifier)){
                console.log("Pressed Control + 5")
            }
        }

    }
}
