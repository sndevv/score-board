import QtQuick 2.0

import "../Types"
/*
Rectangle
{
    radius: styles.sizes.std_radius;
}*/

Item
{
    id: rect_ext

    /**
     * @brief The background color of the rectangle
     */
    property color color: styles.colors.block_background;

    property color border_color: styles.colors.border_color; //rectangle_class.default_border; //styles.colors.blue_main;

    /**
      * @brief Show the rectangle border
      */
    property bool show_border: false;

    /**
     * @brief The width of the border line
     */
    property int border: 1;

    property RCSettings corners: RCSettings{lt: true; rt: true; rb: true; lb: true;}

    onShow_borderChanged: bg.requestPaint();
    onWidthChanged      : bg.requestPaint();
    onHeightChanged     : bg.requestPaint();
    onCornersChanged    : bg.requestPaint();
    onOpacityChanged    : bg.requestPaint();
    onColorChanged      : bg.requestPaint();

    Canvas
    {
        id: bg
        antialiasing: true;

        anchors.fill: parent
        renderTarget: Canvas.Image

        onPaint:
        {
            function paintNew ()
            {
                var ctx = bg.getContext( '2d' );
                ctx.clearRect (x, y, width, height)

                ctx.lineWidth = border;
                ctx.globalAlpha = opacity;

                ctx.beginPath()
                ctx.fillStyle = color;
                ctx.strokeStyle = show_border ? border_color : color;

                if (corners.lt == true)
                {
                    ctx.arc(x + corners.radius + (show_border ? border / 2 : 0),
                            y + corners.radius + (show_border ? border / 2: 0),
                            corners.radius,
                            Math.PI,
                            1.5 * Math.PI);
                }
                else
                {
                    ctx.moveTo(x, y + (show_border ? border / 2 : 0));
                }

                if (corners.rt == true)
                {
                    ctx.lineTo(x + width - corners.radius  - (show_border ? border / 2 : 0),
                               y +  (show_border ? border / 2: 0));

                    ctx.arc(x + width - corners.radius - (show_border ? border / 2 : 0),
                            y + corners.radius + (show_border ? border / 2 : 0),
                            corners.radius,
                            1.5 * Math.PI,
                            0);
                }
                else
                {
                    ctx.lineTo(x + width - (show_border ? border / 2 : 0),
                               y + (show_border ? border / 2 : 0));
                }

                if (corners.rb == true)
                {
                    ctx.lineTo(x + width - (show_border ? border / 2 : 0), y + height - corners.radius - (show_border ? border / 2 : 0));

                    ctx.arc(x + width - corners.radius - (show_border ? border / 2 : 0),
                            y + height - corners.radius - (show_border ? border / 2 : 0),
                            corners.radius,
                            0,
                            0.5 * Math.PI);
                }
                else
                {
                    ctx.lineTo(x + width - (show_border ? border / 2 : 0), y + height - (show_border ? border / 2 : 0));
                }


                if (corners.lb == true)
                {
                    ctx.lineTo(x + corners.radius + (show_border ? border / 2 : 0), y + height - (show_border ? border / 2 : 0));

                    ctx.arc(x + corners.radius + (show_border ? border / 2 : 0),
                            y + height - corners.radius - (show_border ? border / 2 : 0),
                            corners.radius,
                            0.5 * Math.PI,
                            Math.PI);
                }
                else
                {
                    ctx.lineTo(x + (show_border ? border / 2 : 0), y + height - (show_border ? border / 2 : 0));
                }

                if (corners.lt == true)
                {
                    ctx.lineTo(x + (show_border ? border / 2 : 0), y + corners.radius + (show_border ? border / 2 : 0));
                }
                else
                {
                    ctx.lineTo(x + (show_border ? border / 2 : 0), y);
                }

                ctx.fill();
                ctx.stroke();
                ctx.closePath();
                ctx.restore();
            }
            paintNew ();
        }
    }
}
