
script ReloadAnimation 
	AllowAssetLoading \{On}
	UpdateAnimCache \{CLEAR}
	PushAssetContext
	ReloadAnim FileName = <FileName> anim = <AnimName>
	PopAssetContext
	AllowAssetLoading \{OFF}
endscript
