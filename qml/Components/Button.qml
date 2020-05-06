import QtQuick 2.0

XRect
{
    id: root;


    property color label_color: styles.colors.std_btn_text_color;

    property alias label: label.text;

    width: styles.sizes.std_btn_width;
    height: styles.sizes.std_btn_height;

    color: styles.colors.button_background;

    show_border: focus == true ? true : false;

    Text
    {
        id: label
        text: "This is a button text"

        anchors.fill: parent;

        verticalAlignment: Text.AlignVCenter;
        horizontalAlignment: Text.AlignHCenter;

        color: label_color;

        font.family: styles.fonts.default_font;
        font.pixelSize: styles.sizes.std_btn_font_size;
    }

    MouseArea
    {
        id: ma;

        anchors.fill: parent;

        acceptedButtons: Qt.LeftButton;

        onPressed:
        {
            root.forceActiveFocus()
            console.log("The button '" + label.text + "' has been pressed");
        }

        onReleased:
        {
            console.log("The button '" + label.text + "' has been released");
        }

        onClicked:
        {
            console.log("The button '" + label.text + "' has been clicked");
        }
    }
}
