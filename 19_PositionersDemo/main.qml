import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Positioner demo")

    Rectangle {
        id: containerRectId
        width: 300
        height: width
        border.color: "black"
        //anchors.centerIn: parent is equvalent to the below two lines
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter

        Grid {
            columns: 3
            //give spacing in both row and column
            //spacing: 10
            //If you want to give seperately, use this
            //rowSpacing: 10
            //columnSpacing: 10

            LayoutMirroring.enabled: true
            LayoutMirroring.childrenInherit: true

            Rectangle {
                id: topLeftRect
                width: 100
                height: width
                color: "purple"
                Image {
                    width: 50
                    height: 50
                    anchors.centerIn: parent
                    source: "/images/image.jpeg"
                }
            }
            Rectangle {
                id: topCenterRect
                width: 100
                height: width
                color: "lime"
            }
            Rectangle {
                id: topRightRect
                width: 100
                height: width
                color: "firebrick"
            }
            Rectangle {
                id: centerLeftRect
                width: 100
                height: width
                color: "lavender"
            }
            Rectangle {
                id: centerRect
                width: 100
                height: width
                color: "olive"
            }
            Rectangle {
                id: centerRightRect
                width: 100
                height: width
                color: "wheat"
            }
            Rectangle {
                id: bottomLeftRect
                width: 100
                height: width
                color: "hotpink"
            }
            Rectangle {
                id: bottomCenterRect
                width: 100
                height: width
                color: "cyan"
            }
            Rectangle {
                id: bottomRightRect
                width: 100
                height: width
                color: "goldenrod"
            }
        }

    }
}
