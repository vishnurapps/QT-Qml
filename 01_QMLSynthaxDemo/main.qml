import QtQuick 2.9
import QtQuick.Window 2.2

Window {
    id : rootId
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    property string textToShow: "hello"

    Row {
        id : row1
        anchors.centerIn: parent
        spacing: 20

        Rectangle {
            id : redRectangleId
            width: 150; height: 150
            color: "red"
            radius: 20
            MouseArea {
                anchors.fill : parent
                onClicked: {
                    console.log("Clicked in red rectangle")
                    textToShow = "red"
                }
            }
        }
        Rectangle {
            id : greenRectangleId
            width: 150; height: 150
            color: "green"
            radius: 20
            MouseArea {
                anchors.fill : parent
                onClicked: {
                    console.log("Clicked in green rectangle")
                    textToShow = "green"
                }
            }
        }
        Rectangle {
            id : blueRectangleId
            width: 150; height: 150
            color: "blue"
            radius: 20
            MouseArea {
                anchors.fill : parent
                onClicked: {
                    console.log("Clicked in blue rectangle")
                    textToShow = "blue"
                }
            }
        }
        Rectangle {
            id : textRectangleId
            width: 150; height: 150
            color: "dodgerblue"
            radius: 100
            Text {
                id: textId
                anchors.centerIn: parent
                text: textToShow
            }
            MouseArea {
                anchors.fill : parent
                onClicked: {
                    console.log("Clicked in blue rectangle")
                    textId.text = "loop"
                }
            }
        }
    }
}
