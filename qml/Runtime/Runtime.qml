import QtQuick 2.0

Item
{
    id: root;

    property alias game_config : game_config;

    GameConfig {
        id: game_config;
    }
}
