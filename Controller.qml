import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5

Rectangle {
    id: controller
    width: 150
    height: 100
    color: "green"

    Keys.onPressed: {
        switch (event.key) {
        case Qt.Key_Up:
            car.y -= 10; // Move the car up
            break;
        case Qt.Key_Down:
            car.y += 10; // Move the car down
            break;
        case Qt.Key_Left:
            car.x -= 10; // Move the car left
            break;
        case Qt.Key_Right:
            car.x += 10; // Move the car right
            break;
        }
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

    Button {
        id: down
        text: "DOWN"
        width: 50
        height: 50
        anchors.bottom: controller.bottom
        x: controller.width - controller.width/2 - width/2

        onClicked:  {
            car.y += 10; // Move the car up
        }

    }

    Button {
        id: left
        text: "LEFT"
        width: 50
        height: 50
        anchors.left: controller.left

        onClicked:  {
            car.x -= 10; // Move the car left
        }

    }

    Button {
        id: right
        text: "RIGHT"
        width: 50
        height: 50
        anchors.right: controller.right
        onClicked:  {
            car.x += 10; // Move the car right
        }
    }

}
