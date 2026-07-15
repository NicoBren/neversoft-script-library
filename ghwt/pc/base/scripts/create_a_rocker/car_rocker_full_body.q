CAS_Full_Body = [
	{
		desc_id = BoneMan_Female
		frontend_desc = qs("\LBoneMan_Female")
		mesh = 'models/CAR/Female/Boneman_Female.skin'
		skeleton = GH_Rocker_Female
		skeleton_path = 'skeletons/GH_Rocker_Female.ske'
		ragdoll = ragdoll_Rocker_male
		ragdoll_path = 'Ragdolls/CAR/Male/GH_Rocker_Male_Ragdoll.rag'
		accessory_bones = Rocker_accessory_bones
		ragdoll_collision_group = RagdollCollisionGroups_Rocker_Female
		ik_params_guitar = Hero_Ik_params
		ik_params_drum = drummer_IK_params
		ik_params_vocals = singer_IK_Params
		ik_params_frontend = CAR_IK_Params
		pointing_anim_set = Haley_pointing_anims
		is_female = 1
		anim_struct = car_female_anim_struct
		body_specific_parts = {
			CAS_Intro_Anim = CAS_Female_Intro_Anim
			CAS_Win_Anim = CAS_Female_Win_Anim
			CAS_Lose_Anim = CAS_Female_Lose_Anim
		}
	}
	{
		desc_id = ZakkWylde
		frontend_desc = qs("\LZakkWylde")
		mesh = 'models/talent/ZakkWylde.skin'
		skeleton = GH_Rocker_Male_Zakk
		skeleton_path = 'skeletons/GH_Rocker_Male_Zakk.ske'
		ragdoll = Rag_GH_Rocker_Male_ZakkWylde
		ragdoll_path = 'Ragdolls/Talent/Rag_GH_Rocker_Male_ZakkWylde.rag'
		accessory_bones = Rocker_accessory_bones
		ragdoll_collision_group = RagdollCollisionGroups_Rocker_Female
		ik_params_guitar = Hero_Ik_params
		ik_params_drum = drummer_IK_params
		ik_params_vocals = singer_IK_Params
		ik_params_frontend = CAR_IK_Params
		pointing_anim_set = zakk_pointing_anims
		is_female = 0
		anim_struct = car_male_anim_struct
		body_specific_parts = {
			CAS_Intro_Anim = CAS_Male_Intro_Anim
			CAS_Win_Anim = CAS_Male_Win_Anim
			CAS_Lose_Anim = CAS_Male_Lose_Anim
		}
	}
	{
		desc_id = TedNugent
		frontend_desc = qs("\LTed Nugent")
		mesh = 'models/Talent/TedNugent.skin'
		skeleton = GH_Rocker_Male_Ted
		skeleton_path = 'skeletons/GH_Rocker_Male_Ted.ske'
		ragdoll = Rag_GH_Rocker_Male_TedNugent
		ragdoll_path = 'Ragdolls/Talent/Rag_GH_Rocker_Male_TedNugent.rag'
		accessory_bones = Rocker_accessory_bones
		ragdoll_collision_group = RagdollCollisionGroups_Rocker_Female
		ik_params_guitar = Hero_Ik_params
		ik_params_drum = drummer_IK_params
		ik_params_vocals = singer_IK_Params
		ik_params_frontend = CAR_IK_Params
		pointing_anim_set = ted_pointing_anims
		is_female = 0
		anim_struct = car_male_anim_struct
		body_specific_parts = {
			CAS_Intro_Anim = CAS_Male_Intro_Anim
			CAS_Win_Anim = CAS_Male_Win_Anim
			CAS_Lose_Anim = CAS_Male_Lose_Anim
		}
	}
	{
		desc_id = Ozzy
		frontend_desc = qs("\LOzzy")
		mesh = 'models/Talent/Ozzy.skin'
		skeleton = gh_rocker_male_ozzy
		skeleton_path = 'skeletons/gh_rocker_male_ozzy.ske'
		ragdoll = Rag_GH_Rocker_Male_Ozzy
		ragdoll_path = 'Ragdolls/Talent/Rag_GH_Rocker_Male_Ozzy.rag'
		accessory_bones = Rocker_accessory_bones
		ragdoll_collision_group = RagdollCollisionGroups_Rocker_Female
		ik_params_guitar = Hero_Ik_params
		ik_params_drum = drummer_IK_params
		ik_params_vocals = singer_IK_Params
		ik_params_frontend = CAR_IK_Params
		pointing_anim_set = ozzy_pointing_anims
		is_female = 0
		anim_struct = car_male_anim_struct
		body_specific_parts = {
			CAS_Intro_Anim = CAS_Male_Intro_Anim
			CAS_Win_Anim = CAS_Male_Win_Anim
			CAS_Lose_Anim = CAS_Male_Lose_Anim
		}
	}
	{
		desc_id = Billy
		frontend_desc = qs("\LBILLY")
		mesh = 'models/Talent/BILLY.skin'
		mesh1 = 'models/Talent/BILLYLOD.skin'
		mesh_lod = 1
		skeleton = GH_Rocker_Male_Billy
		skeleton_path = 'skeletons/GH_Rocker_Male_Billy.ske'
		ragdoll = Rag_GH_Rocker_Male_Billy
		ragdoll_path = 'Ragdolls/Talent/Rag_GH_Rocker_Male_Billy.rag'
		accessory_bones = Rocker_accessory_bones
		ragdoll_collision_group = RagdollCollisionGroups_Rocker_Female
		ik_params_guitar = Hero_Ik_params
		ik_params_drum = drummer_IK_params
		ik_params_vocals = singer_IK_Params
		ik_params_frontend = CAR_IK_Params
		is_female = 0
		anim_struct = car_male_anim_struct
		body_specific_parts = {
			CAS_Intro_Anim = CAS_Male_Intro_Anim
			CAS_Win_Anim = CAS_Male_Win_Anim
			CAS_Lose_Anim = CAS_Male_Lose_Anim
		}
	}
	{
		desc_id = travis
		frontend_desc = qs("\LTravis")
		mesh = 'models/Talent/TravisBarker.skin'
		skeleton = GH_Rocker_Male_Travis
		skeleton_path = 'skeletons/GH_Rocker_Male_Travis.ske'
		ragdoll = Rag_GH_Rocker_Male_TravisBarker
		ragdoll_path = 'Ragdolls/Talent/Rag_GH_Rocker_Male_TravisBarker.rag'
		accessory_bones = Rocker_accessory_bones
		ragdoll_collision_group = RagdollCollisionGroups_Rocker_Female
		ik_params_guitar = Hero_Ik_params
		ik_params_drum = drummer_IK_params
		ik_params_vocals = singer_IK_Params
		ik_params_frontend = CAR_IK_Params
		pointing_anim_set = travis_pointing_anims
		is_female = 0
		anim_struct = car_male_anim_struct
		body_specific_parts = {
			CAS_Intro_Anim = CAS_Male_Intro_Anim
			CAS_Win_Anim = CAS_Male_Win_Anim
			CAS_Lose_Anim = CAS_Male_Lose_Anim
		}
	}
	{
		desc_id = Sting
		frontend_desc = qs("\LSting")
		mesh = 'models/Talent/Sting.skin'
		skeleton = GH_Rocker_Male_Sting
		skeleton_path = 'skeletons/GH_Rocker_Male_Sting.ske'
		ragdoll = Rag_GH_Rocker_Male_Sting
		ragdoll_path = 'Ragdolls/Talent/Rag_GH_Rocker_Male_Sting.rag'
		accessory_bones = Rocker_accessory_bones
		ragdoll_collision_group = RagdollCollisionGroups_Rocker_Female
		ik_params_guitar = Hero_Ik_params
		ik_params_drum = drummer_IK_params
		ik_params_vocals = singer_IK_Params
		ik_params_frontend = CAR_IK_Params
		pointing_anim_set = Sting_pointing_anims
		is_female = 0
		anim_struct = car_male_anim_struct
		body_specific_parts = {
			CAS_Intro_Anim = CAS_Male_Intro_Anim
			CAS_Win_Anim = CAS_Male_Win_Anim
			CAS_Lose_Anim = CAS_Male_Lose_Anim
		}
	}
	{
		desc_id = skeleton
		frontend_desc = qs("\LSkeleton")
		mesh = 'models/Talent/Skeleton.skin'
		skeleton = GH_Rocker_Male
		skeleton_path = 'skeletons/GH_Rocker_Male.ske'
		ragdoll = ragdoll_Rocker_male
		ragdoll_path = 'Ragdolls/CAR/Male/GH_Rocker_Male_Ragdoll.rag'
		accessory_bones = Rocker_accessory_bones
		ragdoll_collision_group = RagdollCollisionGroups_Rocker_Female
		ik_params_guitar = Hero_Ik_params
		ik_params_drum = drummer_IK_params
		ik_params_vocals = singer_IK_Params
		ik_params_frontend = CAR_IK_Params
		is_female = 0
		anim_struct = car_male_anim_struct
		body_specific_parts = {
			CAS_Intro_Anim = CAS_Male_Intro_Anim
			CAS_Win_Anim = CAS_Male_Win_Anim
			CAS_Lose_Anim = CAS_Male_Lose_Anim
		}
	}
	{
		desc_id = Hayley
		frontend_desc = qs("\LHayley")
		mesh = 'models/Talent/HayleyWilliams.skin'
		skeleton = GH_Rocker_Female_Hayley
		skeleton_path = 'skeletons/GH_Rocker_Female_Hayley.ske'
		ragdoll = Rag_F_Pop_Hair_Hayley
		ragdoll_path = 'Ragdolls/CAR/Female/Pop/rag_f_pop_hair_hayley.rag'
		accessory_bones = Rocker_accessory_bones
		ragdoll_collision_group = RagdollCollisionGroups_Rocker_Female
		ik_params_guitar = Hero_Ik_params
		ik_params_drum = drummer_IK_params
		ik_params_vocals = singer_IK_Params
		ik_params_frontend = CAR_IK_Params
		pointing_anim_set = Haley_pointing_anims
		is_female = 1
		anim_struct = car_female_anim_struct
		body_specific_parts = {
			CAS_Intro_Anim = CAS_Female_Intro_Anim
			CAS_Win_Anim = CAS_Female_Win_Anim
			CAS_Lose_Anim = CAS_Female_Lose_Anim
		}
	}
	{
		desc_id = Jimi
		frontend_desc = qs("\LJimi")
		mesh = 'models/Talent/Jimi.skin'
		skeleton = GH_Rocker_Male_Jimi
		skeleton_path = 'skeletons/GH_Rocker_Male_Jimi.ske'
		ragdoll = Rag_GH_Rocker_Male_Jimi
		ragdoll_path = 'Ragdolls/Talent/Rag_GH_Rocker_Male_Jimi.rag'
		accessory_bones = Rocker_accessory_bones
		ragdoll_collision_group = RagdollCollisionGroups_Rocker_Female
		ik_params_guitar = Hero_Ik_params
		ik_params_drum = drummer_IK_params
		ik_params_vocals = singer_IK_Params
		ik_params_frontend = CAR_IK_Params
		is_female = 0
		anim_struct = car_male_anim_struct
		body_specific_parts = {
			CAS_Intro_Anim = CAS_Male_Intro_Anim
			CAS_Win_Anim = CAS_Male_Win_Anim
			CAS_Lose_Anim = CAS_Male_Lose_Anim
		}
	}
	{
		desc_id = Debug_Face_Reskin
		frontend_desc = qs("\LDebug_Face_Reskin")
		mesh = 'models/CAR/Male/Debug_Face_Reskin.skin'
		skeleton = GH_Rocker_Male
		skeleton_path = 'skeletons/GH_Rocker_Male.ske'
		ragdoll = ragdoll_Rocker_male
		ragdoll_path = 'Ragdolls/CAR/Male/GH_Rocker_Male_Ragdoll.rag'
		accessory_bones = Rocker_accessory_bones
		ragdoll_collision_group = RagdollCollisionGroups_Rocker_Female
		ik_params_guitar = Hero_Ik_params
		ik_params_drum = drummer_IK_params
		ik_params_vocals = singer_IK_Params
		ik_params_frontend = CAR_IK_Params
		deform_mesh = 'models/CAR/Male/Debug_Face_Reskin_Def.skin'
		deform_bones = CAR_Bones_Male_Face
		deform_skel = GH_Male_Deform
		deform_child_parts = [
			CAS_Male_Hat
			CAS_Male_Hair
			CAS_Male_Hat_Hair
			CAS_Male_Facial_Hair
			CAS_Male_Acc_Face
			CAS_Male_Acc_Ears
		]
		is_female = 0
		anim_struct = car_male_anim_struct
		body_specific_parts = {
			CAS_Intro_Anim = CAS_Male_Intro_Anim
			CAS_Win_Anim = CAS_Male_Win_Anim
			CAS_Lose_Anim = CAS_Male_Lose_Anim
		}
	}
	{
		desc_id = Rockbot
		frontend_desc = qs("\LRockubot")
		mesh = 'models/Talent/Rockbot.skin'
		skeleton = GH_Rocker_Male_Rockbot
		skeleton_path = 'skeletons/GH_Rocker_Male_Rockbot.ske'
		ragdoll = Rag_GH_Rocker_Male_Rockbot
		ragdoll_path = 'Ragdolls/Talent/Rag_GH_Rocker_Male_Rockbot.rag'
		accessory_bones = Rocker_accessory_bones
		ragdoll_collision_group = RagdollCollisionGroups_Rocker_Female
		ik_params_guitar = Hero_Ik_params
		ik_params_drum = drummer_IK_params
		ik_params_vocals = singer_IK_Params
		ik_params_frontend = CAR_IK_Params
		is_female = 0
		anim_struct = car_male_anim_struct
		body_specific_parts = {
			CAS_Intro_Anim = CAS_Male_Intro_Anim
			CAS_Win_Anim = CAS_Male_Win_Anim
			CAS_Lose_Anim = CAS_Male_Lose_Anim
		}
	}
]
