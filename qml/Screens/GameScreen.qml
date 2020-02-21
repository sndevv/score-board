import QtQuick 2.0

import "../Components"

Rectangle
{
    color: styles.colors.main_background;

    RegionBlock
    {
        id: header;

        anchors.top: parent.top;
        anchors.left: parent.left;
        anchors.right: parent.right;

        anchors.topMargin: styles.sizes.std_margin;
        anchors.leftMargin: styles.sizes.std_margin;
        anchors.rightMargin: styles.sizes.std_margin;

        Text
        {
            text: "Running game";

            font.family: styles.fonts.default_font;
            font.pixelSize: styles.sizes.std_hdr_font_size;

            color: styles.colors.std_text_color;

            anchors.centerIn: parent;
        }
    }
}
