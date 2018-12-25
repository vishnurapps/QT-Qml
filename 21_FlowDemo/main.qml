import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Flow Demo")

    //components will fit based on the width or length of the parent
    Flow {
        id: containerFlowId
        width: parent.width
        height: parent.height
        //direction to fill the components. Default is LeftToRight
        flow: Flow.TopToBottom
        //direction of layout. default is LeftToRight
        layoutDirection: Qt.RightToLeft

        Rectangle {
            id: topLeftRectId
            width: 70
            height: 70
            color: "green"
            Text {
                anchors.centerIn: parent
                color: "black"
                font.pointSize: 30
                text: "1"
            }
        }

        Rectangle {
            id: topCenterRectId
            width: 100
            height: 100
            color: "orange"
            Text {
                anchors.centerIn: parent
                color: "black"
                font.pointSize: 30
                text: "2"
            }
        }
        Rectangle {
            id: topRightRectId
            width: 100
            height: 100
            color: "purple"
            Text {
                anchors.centerIn: parent
                color: "black"
                font.pointSize: 30
                text: "3"
            }
        }
        Rectangle {
            id: centerLeftRectId
            width: 100
            height: 100
            color: "magenta"
            Text {
                anchors.centerIn: parent
                color: "black"
                font.pointSize: 30
                text: "4"
            }
        }

        Rectangle {
            id: centerCenterRectId
            width: 100
            height: 100
            color: "red"
            Text {
                anchors.centerIn: parent
                color: "black"
                font.pointSize: 30
                text: "5"
            }
        }
        Rectangle {
            id: centerRightRectId
            width: 100
            height: 100
            color: "gold"
            Text {
                anchors.centerIn: parent
                color: "black"
                font.pointSize: 30
                text: "6"
            }
        }
        Rectangle {
            id: bottomLeftRectId
            width: 100
            height: 100
            color: "yellowgreen"
            Text {
                anchors.centerIn: parent
                color: "black"
                font.pointSize: 30
                text: "7"
            }
        }

        Rectangle {
            id: bottomCenterRectId
            width: 100
            height: 100
            color: "indigo"
            Text {
                anchors.centerIn: parent
                color: "black"
                font.pointSize: 30
                text: "8"
            }
        }
        Rectangle {
            id: bottomRightRectId
            width: 100
            height: 100
            color: "wheat"
            Text {
                anchors.centerIn: parent
                color: "black"
                font.pointSize: 30
                text: "9"
            }
        }
    }
}
