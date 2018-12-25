import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Rectangle {
        id: containerRectId
        width: 300
        height: width
        border.color: "black"
        anchors.centerIn: parent

        Rectangle {
            id: topLeftRect
            width: 100
            height: width
            color: "purple"
        }
        Rectangle {
            id: topCenterRect
            width: 100
            height: width
            color: "lime"
            anchors.left: topLeftRect.right
            //anchors.leftMargin: 20
        }
        Rectangle {
            id: topRightRect
            width: 100
            height: width
            color: "firebrick"
            anchors.left: topCenterRect.right
        }
        Rectangle {
            id: centerLeftRect
            width: 100
            height: width
            color: "lavender"
            anchors.top: topLeftRect.bottom
        }
        Rectangle {
            id: centerRect
            width: 100
            height: width
            color: "olive"
            anchors.top: topLeftRect.bottom
            anchors.left: topLeftRect.right

            //in order for the margin to work, we have to set the anchor property on that anchor line.
            //anchors.topMargin: 10 //top margin worked only beacuse we have a top anchor
            //anchors.rightMargin: 20 // right margin didnt worked as we dont have a right anchor
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter

            anchors.horizontalCenterOffset: 20

        }
        Rectangle {
            id: centerRightRect
            width: 100
            height: width
            color: "wheat"
            anchors.top: topRightRect.bottom
            anchors.left: centerRect.right
        }
        Rectangle {
            id: bottomLeftRect
            width: 100
            height: width
            color: "hotpink"
            anchors.top: centerLeftRect.bottom
        }
        Rectangle {
            id: bottomCenterRect
            width: 100
            height: width
            color: "cyan"
            anchors.top: centerLeftRect.bottom
            anchors.left: bottomLeftRect.right
        }
        Rectangle {
            id: bottomRightRect
            width: 100
            height: width
            color: "goldenrod"
            anchors.top: centerLeftRect.bottom
            anchors.left: bottomCenterRect.right
        }
    }
    Rectangle {
        id: sibilingRect
        width: 200
        height: 200
        color: "black"
        //this works as the container rectangle is a sibling of this rectangle
        anchors.right: containerRectId.left
        //this wont work as the centerRect is not a sibling of this rectangle
        //anchors.right: centerRect.left
    }
}
