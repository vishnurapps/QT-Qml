import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Mouse Area Demo")

    Rectangle {
        id: containerId
        width: parent.width
        height: 200
        color: "beige"

        Rectangle {
            id: movingRectangle
            width: 50
            height: 50
            color: "blue"
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
                console.log(mouse.x)
                movingRectangle.x = mouse.x
            }
            onWheel: {
                console.log("x :" + wheel.x + "y :" + wheel.y + " angleData : " + wheel.angleDelta)
            }
            hoverEnabled: true
            onHoveredChanged: {
                if(containsMouse === true){
                    containerId.color = "red"
                }else {
                    containerId.color = "green"
                }
            }
        }
    }
    Rectangle {
        id: dragcontainerId
        width: parent.width
        height: 200
        color: "beige"
        y: 250

        Rectangle {
            id: dragableRectangle
            width: 50
            height: 50
            color: "blue"

            onXChanged:
            {
                console.log("X coordinate is : " + x)
            }
        }

        MouseArea {
            anchors.fill: parent
            drag.target: dragableRectangle
            drag.axis: Drag.XAxis
            drag.minimumX: 0
            drag.minimumY: dragcontainerId.width - dragableRectangle.width

        }
    }

}
