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
            text: "Running game";

            font.family: styles.fonts.default_font;
            font.pixelSize: styles.sizes.std_hdr_font_size;

            color: styles.colors.std_text_color;

            anchors.centerIn: parent;
        }
    }

    ColumnLayout
    {
        anchors.top: header.bottom;
        anchors.left: parent.left;
        anchors.right: parent.right;
        anchors.bottom: parent.bottom;

        anchors.margins: styles.sizes.std_margin;

       // spacing: styles.sizes.std_margin;

        Item
        {
            Layout.fillWidth: true;
            Layout.fillHeight: true;

            RowLayout
            {
                spacing: styles.sizes.std_margin;

                anchors.fill: parent;

                RegionBlock
                {
                    id: left_score;

                    Layout.fillWidth: true;
                    Layout.fillHeight: true;
                }

                RegionBlock
                {
                    id: right_score;

                    Layout.fillWidth: true;
                    Layout.fillHeight: true;
                }
            }
        }

        Item
        {
            Layout.fillWidth: true;
            Layout.fillHeight: true;

            Layout.maximumHeight: styles.sizes.std_margin;
        }

        RegionBlock
        {
            Layout.fillWidth: true;
            Layout.fillHeight: true;

            Layout.maximumHeight: styles.sizes.std_hdr_size;
        }
    }

    /*
    ColumnLayout
    {
        anchors.top: header.bottom;
        anchors.left: parent.left;
        anchors.right: parent.right;
        anchors.bottom: parent.bottom;

        RowLayout
        {
            width: parent.width;

            RegionBlock
            {
                id: left_score;

                Text
                {
                        text: "0";

                        font.family: styles.fonts.default_font;
                        font.pixelSize: styles.sizes.std_hdr_font_size;

                        color: styles.colors.std_text_color;

                        anchors.centerIn: parent;
                }
            }

            Item
            {
                id: midde_secion;
            }

            RegionBlock
            {
                id: right_score;

                Text
                {
                        text: "0";

                        font.family: styles.fonts.default_font;
                        font.pixelSize: styles.sizes.std_hdr_font_size;

                        color: styles.colors.std_text_color;

                        anchors.centerIn: parent;
                }
            }
        }

        Item
        {
        }
    }
    */
}
