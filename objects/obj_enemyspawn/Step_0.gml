/// @DnDAction : YoYo Games.Instances.Sprite_Scale
/// @DnDVersion : 1
/// @DnDHash : 69A14616
/// @DnDArgument : "xscale" "0.02"
/// @DnDArgument : "xscale_relative" "1"
/// @DnDArgument : "yscale" "0.02"
/// @DnDArgument : "yscale_relative" "1"
image_xscale += 0.02;
image_yscale += 0.02;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 70C8BA25
/// @DnDArgument : "var" "image_xscale"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "1"
if(image_xscale >= 1)
{
	/// @DnDAction : YoYo Games.Instances.Sprite_Scale
	/// @DnDVersion : 1
	/// @DnDHash : 57EED7FF
	/// @DnDParent : 70C8BA25
	image_xscale = 1;
	image_yscale = 1;

	/// @DnDAction : YoYo Games.Instances.Change_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 40E75FC8
	/// @DnDParent : 70C8BA25
	/// @DnDArgument : "objind" "obj_enemy"
	/// @DnDSaveInfo : "objind" "obj_enemy"
	instance_change(obj_enemy, true);
}