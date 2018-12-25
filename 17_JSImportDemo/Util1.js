.import "Util2.js" as Util2     //This is importing so that this JS file can call functions in the imported JS file
Qt.include("Util3.js")          //This is used to include another JS file. This is like appending. The included file becomes a part of current file

//If we are including the JS file, we can access the functions of the included JS file in
//which ever qml file that imported the current file.
//What I ment was now the substract() can be directly used by main.qml
function greeting() {
    console.log("Greeting from Util1 JS file")
}

function addNumbers(a, b) {
    return Util2.add(a, b)
}
