import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("TextEdit Demo")

    Flickable {
        id: mFlicableId
        width: textEditId.width
        contentHeight: textEditId.implicitHeight
        height: 300
        anchors.centerIn: parent
        clip: true
        TextEdit {
            id: textEditId
            width: 240
            text: "<b>Hello</b> <i>World</i> This is a student learning
                    how to make wonderfull gui in qt using qml. <strong>I want to </strong>create a
                    really long sentence for this demo.\r That is why I am typing like this
                    I need to make two\n more lines. This <font color = 'red'> can be line one </font>and the one
                    comeing after this can be second line. Finally I have created enough
                    lines to show the demo."
            textFormat: TextEdit.RichText
            wrapMode: TextEdit.Wrap

            font.family: "Helvetica"
            font.pointSize: 20
            color: "blue"
            focus: true
            onEditingFinished: {
                console.log("The content is " + text)
            }

        }

    }
    Rectangle {
        id: mRectId
        width: 200
        height: 100
        color: "red"
        anchors.top: mFlicableId.top
        MouseArea {
            anchors.fill : parent
            onClicked: {
                mRectId.focus = true
            }
        }
    }

}
