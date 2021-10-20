/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 255B6160
/// @DnDArgument : "expr" "60"
/// @DnDArgument : "var" "spawnrate"
spawnrate = 60;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 0D23C9F7
/// @DnDArgument : "steps" "spawnrate"
alarm_set(0, spawnrate);