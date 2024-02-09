import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5
import QtQuick 2.9
import QtQuick

Window {
    id: win
    width: 640
    height: 480
    visible: true
    title: qsTr("Tetris Racing")
    property real roadLen: 1500
    property real roadDistance: 10000

    Rectangle{
        id: gamearea
        width: win.width
        height: win.height

        Rectangle {
            id: road
            Rectangle {
                id: leftside
                height: 10000
                width: 50
                color: "green"
                x: 250
                Image {
                    fillMode: Image.Tile
                    source: "qrc:/redwhite.jpg"
                    anchors.fill: leftside
                }
            }

            Rectangle {
                id: middleside
                height: 10000
                width: roadLen
                //color: "black"
                x: leftside.x + leftside.width
                Image {
                    fillMode: Image.Tile
                    source: "qrc:/roadimage.jpg"
                    anchors.fill: middleside
                }

                Button {
                    id: up
                    text: "UP"
                    width: 50
                    height: 50
                    anchors.top: controller.top
                    x: controller.width - controller.width/2 - width/2
                    onClicked:  {
                        car.y -= 10; // Move the car up
                    }
                }

                Behavior on y {
                            NumberAnimation { easing.type: Easing.Linear; duration: 5000; from: 0; to: 1000; loops: Animation.Infinite }
                }
            }

            Rectangle {
                id: rightside
                height: 10000
                width: 50
                color: "black"
                x: leftside.x + middleside.width
                Image {
                    fillMode: Image.Tile
                    source: "qrc:/redwhite.jpg"
                    anchors.fill: rightside
                }
            }


            Timer {
                interval: 16  // Adjust the interval based on your desired scrolling speed
                repeat: true
                running: true
                onTriggered: {
                    road.y += 2  // Adjust the value based on your desired scrolling speed
                    if (road.y > parent.height) {
                        road.y = -middleside.height
                    }
                }
            }


        }

        Item {
            id: car
            width: 150
            height: 300
            x:  gamearea.x + gamearea.width/2
            y:  gamearea.height/2

            Image {
                source: "qrc:/F1_car.png"
                anchors.fill: car
            }
        }

        Controller {
            id: controller
        }
    }

    //game area

}



