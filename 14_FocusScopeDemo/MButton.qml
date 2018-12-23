import QtQuick 2.12

FocusScope {
    width: containerID.width
    height: containerID.height
    property alias color: containerID.color
    Rectangle {
        id: containerID
        width: 300
        height: 50
        color: "beige"
        focus: true

        Text {
            id: rectTextId
            anchors.centerIn: parent
            text: "Default"
        }

        Keys.onPressed: {
            if (event.key === Qt.Key_1) {
                rectTextId.text = "Pressed key 1"
            }else if (event.key === Qt.Key_2) {
                rectTextId.text = "Pressed key 2"
            }else {
                rectTextId.text = "Pressed key " + event.key
            }
        }

    }
}
