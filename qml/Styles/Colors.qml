import QtQuick 2.0

Item
{
    id: colors;

    readonly property color main_background: Qt.rgba(0x021/255, 0x021/255, 0x021/255, 1);

    readonly property color block_background : Qt.rgba(50/255, 50/255, 50/255, 1);

    readonly property color button_background: Qt.rgba(0x04d / 255, 0x04d / 255, 0x04d / 255, 1);

    readonly property color std_text_color_dark: Qt.rgba(0x05f / 255, 0x05f / 255, 0x05f / 255, 1);

    readonly property color std_text_color: Qt.rgba(0x07f / 255, 0x07f / 255, 0x07f / 255, 1);
    readonly property color std_btn_text_color: Qt.rgba(0x08f / 255, 0x08f / 255, 0x08f / 255, 1);
}
