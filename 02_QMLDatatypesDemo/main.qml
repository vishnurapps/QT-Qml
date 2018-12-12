import QtQuick 2.9
import QtQuick.Window 2.2

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("QML Datatype demo")
    property string mString: "http://www.google.com"
    property int mInt: 45
    property bool isFemale: true
    property double mDouble: 77.2
    property url mUrl: "http://www.google.com"

    //var can be used to store any variable type. It slows down performance.
    //Its better to use int aNumber instead of aNumber

    property var aNumber: 100
    property var aBool: false
    property var aString: "Hello world!"
    property var anotherString: String("#FF008800")
    property var aColor: Qt.rgba(0.2, 0.3, 0.4, 0.5)
    property var aRect: Qt.rect(10, 10, 10, 10)
    property var aPoint: Qt.point(10, 10)
    property var aSize: Qt.size(10, 10)
    property var aVector3d: Qt.vector3d(100, 100, 100)
    property var anArray: [1, 2, 3, "four", "five", (function() { return "six"; })]
    property var anObject: { "foo": 10, "bar": 20 }
    property var aFunction: (function() { return "one"; })
    property var aFont: Qt.font({family: "Consolas", pointSize: 30, bold: true})
    property var mDate: "2018-12-12"

    Rectangle {
        width: 200
        height: 100 + mInt
        anchors.centerIn: parent
        color: aColor

        Text {
            id: mTextId
            anchors.centerIn: parent
            text: mString
            //font.bold: isFemale?true:false
            font : aFont
        }
    }

    Component.onCompleted: {
        //console.log("The value of mString is :" +mString )
        print("The value of mString is : " + mString)
        print("The value of mInt is : " + mInt)
        if (isFemale){
            console.log("You may wear a dress")
        }
        else
        {
            console.log("You may wear a suit")
        }
        //=== checks for value and type == checks for value only
        //As mUrl and mString has same value === give the output that they are same
        //but === give the output that they are different as the types mismatch
        if(mUrl == mString){
            console.log("They are same")
        }
        else
        {
            console.log("They are not same")
        }

        console.log("---------Playing with var--------------")
        console.log("The value of aNumber is "+aNumber)
        console.log("The value of aBool is "+ aBool)
        console.log("The value of another string is "+ anotherString)

        console.log("The component of aRect are x : " +aRect.x + " y : " +aRect.y + " width : " +aRect.width + " height : " +aRect.height)

        console.log("The length of array is : "+anArray.length)

        /*
        anArray.forEach(function(value, index){
            if (index === 5){
                console.log(value)
            }else
            {
                console.log(value)
            }


        })
        */
        for(var i = 0; i < anArray.length; i++)
        {
            if(i === 5)
            {
                console.log(anArray[i]())
            }
            else{
                console.log(anArray[i])
            }
        }
        console.log("Date is : " +mDate)
        console.log("The function is :" +aFunction)
        console.log("The function value is :" +aFunction())
    }
}
