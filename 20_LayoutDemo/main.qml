import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Layouts 1.3

Window {
    visible: true
    width: mGridLayout.implicitWidth
    height: mGridLayout.implicitHeight
    title: qsTr("Layout Demo")

    GridLayout {
        id: mGridLayout
        anchors.fill: parent
        columns: 3

        Rectangle {
            id: topLeftRectId
            width: 70
            height: width
            color: "green"
//            Layout.fillWidth: true
//            Layout.fillHeight: true
            //Changing the alignment of components
            Layout.alignment: Qt.AlignRight
        }

        Rectangle {
            id: topCenterRectId
            width: 100
            height: width
            color: "blue"
            Layout.fillWidth: true
            Layout.fillHeight: true
            Layout.columnSpan: 2
        }

//        Rectangle {
//            id: topRightRectId
//            width: 100
//            height: width
//            color: "pink"
//            Layout.fillWidth: true
//            Layout.fillHeight: true
//        }

        Rectangle {
            id: centerLeftRectId
            width: 100
            height: width
            color: "gold"
            Layout.fillWidth: true
            Layout.fillHeight: true
//            Layout.maximumHeight: 150
//            Layout.maximumWidth: 200
            Layout.rowSpan: 2
        }

//        Rectangle {
//            id: centerCenterRectId
//            width: 100
//            height: width
//            color: "green"
//            Layout.fillWidth: true
//            Layout.fillHeight: true
//        }

        Rectangle {
            id: centerRightRectId
            width: 100
            height: width
            color: "beige"
            Layout.fillWidth: true
            Layout.fillHeight: true
        }

        Rectangle {
            id: bottomLeftRectId
            width: 100
            height: width
            color: "royalblue"
            Layout.fillWidth: true
            Layout.fillHeight: true
        }

        Rectangle {
            id: bottomCenterRectId
            width: 100
            height: width
            color: "purple"
            Layout.fillWidth: true
            Layout.fillHeight: true
        }

        Rectangle {
            id: bottomRightRectId
            width: 100
            height: width
            color: "gray"
            Layout.fillWidth: true
            Layout.fillHeight: true
        }
    }
}
