import QtQuick 2.0

QtObject {
    id: game_config;

    // Defines the game type:
    // 0 - Training game
    // 1 - Shoot Out game
    // 2 - etc.
    // 3 - training.
    property int game_type: 0;

    property int max_frames: 5;

    property string l_player: "Left Player";
    property int l_player_id: 123;

    property string r_player: "Right Player";
    property int r_player_id: 123;
}
