import QtQuick 2.9
import QtQuick.Window 2.2

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Rectangle
    {
        x: 50;
        y: 50;
        width: 30;
        height: 30;

        color: "red"
    }
}
