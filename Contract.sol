// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract TrickyStickTeleGameopBNB {
    // Mapping to track stick points for each player
    mapping(address => uint256) private playerStickPoints;

    // Events
    event StickPointsUpdated(address indexed player, uint256 totalStickPoints);
    event StickPointsReset(address indexed player);

    // Function to increment a player's stick points by 1
    function incrementStickPoints(address player) external {
        require(player != address(0), "Invalid player address");

        playerStickPoints[player] += 1;

        emit StickPointsUpdated(player, playerStickPoints[player]);
    }

    // Function to reset a player's stick points to zero
    function resetStickPoints(address player) external {
        require(player != address(0), "Invalid player address");

        playerStickPoints[player] = 0;

        emit StickPointsReset(player);
    }

    // Function to view a player's current stick points
    function getPlayerStickPoints(
        address player
    ) external view returns (uint256) {
        return playerStickPoints[player];
    }
}
