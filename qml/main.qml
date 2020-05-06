import QtQuick 2.9
import QtQuick.Window 2.2

import "Runtime";
import "Styles"
import "Screens"

/*
import "res/js/globals.js" as Globals;
import "Dialogs/Setup/";
import "Dialogs/Shutdown/";
import "Dialogs/Alarms/";
import "Dialogs/Trends/";
import "Dialogs/QuickSetup";
import "Widgets"
import "Types"
*/

Rectangle
{
    id: mainWin
    width: 1920;
    height: 1080;

    Styles
    {
        id: styles;
    }

    Runtime
    {
        id: runtime;
    }

    color: styles.colors.main_background;


    function log(message)
    {
        if (__debug === false)
            return;

        var d = new Date();
        console.log("[" + Qt.formatDateTime(d, "HH:mm:ss") + "] : " + message);
    }


    /**********************************************************/



    state: "";

    Loader
    {
        id: main_screen_loader;

        anchors.fill: parent;
        objectName: "main_screen_loader";

        focus: false;

        source: "Screens/StandbyScreen.qml";

        onStatusChanged:
        {
            if (status === Loader.Error)
                console.error("Failed to load main screen for", mainWin)
        }

        Connections
        {
            ignoreUnknownSignals: true;

            target: main_screen_loader.item;

            onStartNow:
            {
                /*
                runtime.global_opts.vent_running = true;
                */
                mainWin.state = "OPERATING";
            }
            onCancel:
            {
                mainWin.state = "";
            }
        }
    }

    states: [
        State {
            name: "";

            StateChangeScript
            {
                script:
                {
                }
            }
        },
        State
        {
            name: "OPERATING"
            PropertyChanges
            {
                target: main_screen_loader;
                source: "Screens/MainScreen.qml";
            }

            StateChangeScript
            {
                script:
                {
                }
            }
        },
        State
        {
            name: "GAME"
            PropertyChanges
            {
                target: main_screen_loader;
                source: "Screens/GameScreen.qml";
            }

            StateChangeScript
            {
                script:
                {
                }
            }
        }
    ]


    Keys.onPressed:
    {
        /*
        if (event.key === Qt.Key_L)
        {
        }
        else if (event.key === Qt.Key_F7)
        {
            runtime.therapy_area.show_limits = !runtime.therapy_area.show_limits;
            event.accepted = true;
        }
        else if (event.key === Qt.Key_F8)
        {
            if (runtime.global_opts.vent_running === false)
                return;

            runtime.global_opts.nebulization_running = false;
        }
        else if ( event.key === Qt.Key_Escape )
        {
            Qt.quit();
        }
        else if (event.key === Qt.Key_F9)
        {
            runtime.global_opts.system_check_ok = false;
            runtime.global_opts.breathing_check_ok = false;
        }
        else if (event.key === Qt.Key_F3)
        {
            if (runtime.alarm1.state === 0)
            {
                runtime.alarm1.state = 1;
            }
            else
            {
                runtime.alarm1.state = 0;
            }

            event.accepted = true;
        }
        else if (event.key === Qt.Key_F4)
        {
            runtime.rr_value_hack = !runtime.rr_value_hack;

            event.accepted = true;
        }
        else if (event.key === Qt.Key_F5)
        {
            if (runtime.show_alarm_silence === true)
            {
                runtime.show_alarm_silence = false;
            }
            else
            {
                if (runtime.alarm0.state === 1 || runtime.alarm1.state === 1 || runtime.alarm2.state === 1)
                {
                    runtime.show_alarm_silence = true;
                }
            }
            event.accepted = true;
        }
        */
    }
}
