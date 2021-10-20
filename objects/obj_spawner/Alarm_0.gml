/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 472C62AF
/// @DnDArgument : "xpos" "random(room_width)"
/// @DnDArgument : "ypos" "random(room_height)"
/// @DnDArgument : "objectid" "obj_enemyspawn"
/// @DnDArgument : "layer" ""Layer_Enemy""
/// @DnDSaveInfo : "objectid" "obj_enemyspawn"
instance_create_layer(random(room_width), random(room_height), "Layer_Enemy", obj_enemyspawn);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 349D4D45
/// @DnDArgument : "steps" "spawnrate"
alarm_set(0, spawnrate);