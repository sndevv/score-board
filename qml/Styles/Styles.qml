import QtQuick 2.0

Item
{
    id: styles;

    property alias colors: colors;
    property alias sizes: sizes;
    property alias fonts: fonts;

    Colors
    {
        id: colors;
    }

    Sizes
    {
        id: sizes;
    }

    Fonts
    {
        id: fonts;
    }
}
