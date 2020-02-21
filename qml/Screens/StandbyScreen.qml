import QtQuick 2.0

import QtQuick.Layouts 1.3

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
            text: "Game type";

            font.family: styles.fonts.default_font;
            font.pixelSize: styles.sizes.std_hdr_font_size;

            color: styles.colors.std_text_color;

            anchors.centerIn: parent;
        }
    }

    RegionBlock
    {
        id: options;

        anchors.top: header.bottom
        anchors.left: parent.left;
        anchors.right: parent.right;
        anchors.bottom: parent.bottom;

        anchors.topMargin: styles.sizes.std_margin * 2;
        anchors.bottomMargin: styles.sizes.std_margin* 2;
        anchors.leftMargin: styles.sizes.std_margin* 2;
        anchors.rightMargin: styles.sizes.std_margin* 2;

        RowLayout
        {
            spacing: 6;

            anchors.top: parent.top;
            anchors.left: parent.left;

            anchors.topMargin: styles.sizes.std_margin * 2;
            anchors.leftMargin: styles.sizes.std_margin* 2;

            Button
            {
                    id: btn1;

            }
            Button
            {
                    id: btn2;

            }
            Button
            {
                    id: btn3;

            }
            Button
            {
                    id: btn4;

            }
        }
    }
}
