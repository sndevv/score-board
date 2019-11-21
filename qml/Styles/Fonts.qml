import QtQuick 2.0

Item
{

    function getDefaultFont()
    {
        //var font = "Arial Uni SC";
        var font = "Deja Vu";


        return font;
    }


    property string default_font: getDefaultFont();

}
