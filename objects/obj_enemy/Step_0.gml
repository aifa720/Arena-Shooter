/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 5A58CD99
/// @DnDArgument : "obj" "obj_player"
/// @DnDSaveInfo : "obj" "obj_player"
var l5A58CD99_0 = false;
l5A58CD99_0 = instance_exists(obj_player);
if(l5A58CD99_0)
{
	/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
	/// @DnDVersion : 1
	/// @DnDHash : 28241246
	/// @DnDParent : 5A58CD99
	/// @DnDArgument : "x" "obj_player.x"
	/// @DnDArgument : "y" "obj_player.y"
	direction = point_direction(x, y, obj_player.x, obj_player.y);

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 2A4C603B
	/// @DnDParent : 5A58CD99
	/// @DnDArgument : "speed" "spd"
	speed = spd;
}

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 51074CAB
/// @DnDArgument : "angle" "direction"
image_angle = direction;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3DABEAB8
/// @DnDArgument : "var" "hp"
/// @DnDArgument : "op" "3"
if(hp <= 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 35962EA8
	/// @DnDApplyTo : {obj_score}
	/// @DnDParent : 3DABEAB8
	/// @DnDArgument : "expr" "5"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "thescore"
	with(obj_score) {
	thescore += 5;
	
	}

	/// @DnDAction : YoYo Games.Audio.Audio_Set_Pitch
	/// @DnDVersion : 1
	/// @DnDHash : 0B73DAEF
	/// @DnDParent : 3DABEAB8
	/// @DnDArgument : "sound" "snd_death"
	/// @DnDArgument : "pitch" "random_range(0.8,1.2)"
	/// @DnDSaveInfo : "sound" "snd_death"
	audio_sound_pitch(snd_death, random_range(0.8,1.2));

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 0ADD1462
	/// @DnDParent : 3DABEAB8
	/// @DnDArgument : "soundid" "snd_death"
	/// @DnDSaveInfo : "soundid" "snd_death"
	audio_play_sound(snd_death, 0, 0);

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 7C789E1E
	/// @DnDParent : 3DABEAB8
	instance_destroy();
}