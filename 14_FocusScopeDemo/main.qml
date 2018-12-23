import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Focus Scope Demo")

//    Adding focus as true wont give proper focus to the items.
//    In order to give fous, we have to use the wrap our item inside
//    a FocusScope Component. We can use focus: true after making the FocusScope item

    Column {
        MButton{

        }

        MButton{
            color: "green"
            focus: true
        }
    }


    //    Rectangle {
    //        id: containerID
    //        width: 300
    //        height: 50
    //        color: "beige"
    //        focus: true

    //        Text {
    //            id: rectTextId
    //            anchors.centerIn: parent
    //            text: "Default"
    //        }

    //        Keys.onPressed: {
    //            if (event.key === Qt.Key_1) {
    //                rectTextId.text = "Pressed key 1"
    //            }else if (event.key === Qt.Key_2) {
    //                rectTextId.text = "Pressed key 2"
    //            }else {
    //                rectTextId.text = "Pressed key " + event.key
    //            }
    //        }
    //    }
}
