import QtQuick 2.0

/**
 * @brief The object implements the configuration of the RectangleEx corner roundings.
 */
QtObject
{
    /**
     * @brief Left Top corner
     */
    property bool lt: true;
    /**
     * @brief Right Top corner
     */
    property bool rt: true;
    /**
     * @brief Right Bottom corner
     */
    property bool rb: true;
    /**
     * @brief Left Bottom corner
     */
    property bool lb: true;

    /**
     * @brief The corner radius;
     */
    property int radius: styles.sizes.std_radius;
}
