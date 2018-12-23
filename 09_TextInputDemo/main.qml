import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Text Input Demo")
    Row {
        x: 10
        y: 10
        spacing: 10
        Rectangle {
            id: firstNameRectId
            width: firstNameLabelId.implicitWidth + 20
            height: firstNameLabelId.implicitHeight +20
            color: "beige"
            Text {
                id: firstNameLabelId
                anchors.centerIn: parent
                text: "FirstName :"
            }
        }
        Rectangle {
            id: firstNameTextRecId
            color: "beige"
            width: firstNameTextId.implicitWidth + 20
            height: firstNameTextId.implicitHeight + 20
            TextInput {
                id: firstNameTextId
                anchors.centerIn: parent
                focus: true
                text: "Type your first name"
                onEditingFinished: {
                    console.log("First name changed to " + text)
                }
            }
        }
    }
    Row {
        x: 10
        y: 60
        spacing: 10
        Rectangle {
            id: lastNameRectId
            width: lastNameLabelId.implicitWidth + 20
            height: lastNameLabelId.implicitHeight +20
            color: "beige"
            Text {
                id: lastNameLabelId
                anchors.centerIn: parent
                text: "LastName :"
            }
        }
        Rectangle {
            id: lastNameTextRecId
            color: "beige"
            width: lastNameTextId.implicitWidth + 20
            height: lastNameTextId.implicitHeight + 20
            TextInput {
                id: lastNameTextId
                anchors.centerIn: parent
                focus: true
                text: "Type your last name"
                onEditingFinished: {
                    console.log("Last name changed to " + text)
                }
            }
        }
    }
}
