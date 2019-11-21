import QtQuick 2.0

Rectangle
{
    id: control;


    property color label_color: styles.colors.std_btn_text_color;

    property alias label: label.text;

    width: styles.sizes.std_btn_width;
    height: styles.sizes.std_btn_height;

    color: styles.colors.button_background;

    radius: 4;

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
}
