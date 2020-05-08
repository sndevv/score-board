import QtQuick 2.0

XRect
{
    id: root;


    property color label_color: styles.colors.std_btn_text_color;

    property alias label: label.text;

    // The signal is sent, when the button has been mouse clicked, or enter/return has been pressed
    // on a focused button.
    signal confirm();

    width: styles.sizes.std_btn_width;
    height: styles.sizes.std_btn_height;

    color: styles.colors.button_background;

    show_border: activeFocus == true ? true : false;

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

    Keys.onPressed:
    {
        if (event.key === Qt.Key_Enter || event.key === Qt.Key_Return)
        {
            root.confirm();
            event.accepted = true;
        }
    }

    MouseArea
    {
        id: ma;

        anchors.fill: parent;

        acceptedButtons: Qt.LeftButton;

        onPressed:
        {
            root.forceActiveFocus()
        }

        onClicked:
        {
            root.confirm();
        }
    }
}
