

import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: "Infinite Downward Road"

    Rectangle {
        width: parent.width
        height: parent.height

        Image {
            source: "c:/Users/home_/Documents/qml_project/roadimage.jpg"
            anchors.fill: parent
        }

        Rectangle {
            id: road
            width: parent.width

            Rectangle {
                id: leftside
                height: parent.height
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
                height: parent.height
                width: parent.width
                x: leftside.x + leftside.width

                Image {
                    fillMode: Image.Tile
                    source: "qrc:/roadimage.jpg"
                    anchors.fill: middleside
                }
            }

            Rectangle {
                id: rightside
                height: parent.height
                width: 50
                color: "black"
                x: leftside.x + middleside.width + 100

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
    }
}
