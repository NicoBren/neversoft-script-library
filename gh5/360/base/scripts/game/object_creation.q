proximobj_composite_structure = [
	{
		component = Sound
	}
]
particle_composite_structure = [
	{
		component = Suspend
	}
	{
		component = Particle
	}
]
moving_particle_composite_structure = [
	{
		component = Suspend
	}
	{
		component = motion
	}
	{
		component = Particle
	}
]
flexparticle_composite_structure = [
	{
		component = Suspend
	}
	{
		component = FlexibleParticle
	}
]
moving_flexparticle_composite_structure = [
	{
		component = Suspend
	}
	{
		component = motion
	}
	{
		component = FlexibleParticle
	}
]
viewercam_composite_structure = [
	{
		component = Camera
		far_clip = $camera_default_far_clip
	}
	{
		component = proximtrigger
		cube_length = 0.4
		trigger_checksum = Camera
		inactive
	}
]
levellight_composite_structure = [
	{
		component = PositionMorph
	}
	{
		component = dynamiclight
	}
]
igc_camera_structure = [
	{
		component = CinematicCamera
		UpdateWhenCameraInactive = FALSE
	}
	{
		component = Camera
	}
]
gridobj_composite_structure = [
	{
		component = Suspend
	}
]
GeometryObject_structure = [
	{
		component = GeometryObject
	}
]
master_node_composite_structure = [
	{
		component = EventCache
	}
	{
		component = StateMachineManager
	}
]
gameobj_composite_structure = [
	{
		component = LockObj
		OFF
	}
	{
		component = motion
	}
]
constraint_composite_structure = [
	{
		component = constraint
	}
]
bouncy_composite_structure = [
	{
		component = Suspend
	}
	{
		component = rigidbody
	}
	{
		component = Sound
	}
]

script ProcessorGroup_RegisterDefault 
	RegisterProcessorGroupDesc \{Name = ProcessorGroup_CompositeSystem
		processors = [
			{
				Name = processor_defaultstaged
				task = {
					Name = ptask_defaultstaged
				}
			}
			{
				Name = Processor_Default
				task = {
					Name = PTask_Default
				}
			}
		]}
	ProcessorMgr_Init \{group = ProcessorGroup_CompositeSystem}
endscript

script PassGroup_RegisterDefault 
	RegisterPassGroupDesc \{Name = PassGroup_CompositeSystem
		passes = [
			{
				Name = Pass_Anim
				processors = [
					processor_defaultstaged
				]
			}
			{
				Name = Pass_Default
				processors = [
					Processor_Default
				]
			}
			{
				Name = Pass_Move
				processors = [
					Processor_Default
				]
			}
		]}
	PassMgr_Init \{group = PassGroup_CompositeSystem}
endscript

script CompositeObjects_RegisterDefault 
	AdObject_components = [{Name = Model}
		{Name = motion}
	]
	Massive_components = [{Name = dynamicad}]
	AdObject_components = (<AdObject_components> + <Massive_components>)
	RegisterCompositeObjectDesc {
		Name = CompositeGameObject_AdObject
		callback = nullscript
		passes =
		[
			{pass = Pass_Default
				components = <AdObject_components>
			}
		]
	}
	RegisterCompositeObjectDesc \{Name = compositegameobject_levellight
		callback = nullscript
		passes = [
			{
				pass = Pass_Default
				components = [
					{
						Name = PositionMorph
					}
					{
						Name = dynamiclight
					}
				]
			}
		]}
	RegisterCompositeObjectDesc \{Name = compositeobject_bandmember
		callback = nullscript
		passes = [
			{
				pass = Pass_Anim
				components = [
					{
						Name = AnimTree
					}
				]
			}
			{
				pass = Pass_Default
				components = [
					{
						Name = Skeleton
					}
					{
						Name = ragdoll
					}
					{
						Name = SetDisplayMatrix
					}
					{
						Name = accoutrement
					}
					{
						Name = Model
					}
					{
						Name = motion
					}
					{
						Name = modelbuilder
					}
					{
						Name = AnimPreview
					}
					{
						Name = AnimInfo
					}
				]
			}
		]}
	RegisterCompositeObjectDesc \{Name = animpassgameobject
		callback = nullscript
		passes = [
			{
				pass = Pass_Anim
				components = [
					{
						Name = AnimTree
					}
				]
			}
			{
				pass = Pass_Default
				components = [
					{
						Name = SetDisplayMatrix
					}
					{
						Name = motion
					}
					{
						Name = Skeleton
					}
					{
						Name = Model
					}
				]
			}
		]}
	RegisterCompositeObjectDesc \{Name = bandlogogameobject
		callback = nullscript
		passes = [
			{
				pass = Pass_Anim
				components = [
					{
						Name = AnimTree
					}
				]
			}
			{
				pass = Pass_Default
				components = [
					{
						Name = SetDisplayMatrix
					}
					{
						Name = Skeleton
					}
					{
						Name = Model
					}
					{
						Name = modelbuilder
					}
				]
			}
		]}
endscript
