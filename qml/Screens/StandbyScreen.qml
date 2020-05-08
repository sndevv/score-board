import QtQuick 2.0

import QtQuick.Layouts 1.3

import "../Components"


Rectangle
{
    id: root;

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

        ColumnLayout
        {
            id: rl;

            spacing: 6;

            anchors.top: parent.top;
            anchors.left: parent.left;

            anchors.topMargin: styles.sizes.std_margin * 2;
            anchors.leftMargin: styles.sizes.std_margin* 2;

            Repeater
            {
                id: repeater_id;
                model: 4;
                Button
                {
                    id: btn1;

                    label: "Button " + index;

                    focus: true

                    onConfirm:
                    {
                        console.log("Selected button '" + label + "' has been confirmed");
                    }

                    KeyNavigation.up: index > 0 ? repeater_id.itemAt(index - 1) : null;
                }
            }
        }
    }

    Component.onCompleted:
    {
        console.log("Standby screen completed");
    }

    Keys.onPressed:
    {
    }
}
