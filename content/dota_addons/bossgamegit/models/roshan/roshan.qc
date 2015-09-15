// Created by Crowbar 0.24.0.0

$modelname "creeps/roshan/roshan.mdl"

$bodygroup "default"
{
	studio "roshan_reference.smd"
}

$lod 1
{
	replacemodel "roshan_reference.smd" "roshan_model_lod1.smd"
}

$cdmaterials ""

$attachment "attach_attack2" "wrist_L" 0 0 0 rotate 0 0 0
$attachment "attach_attack1" "wrist_R" 0 0 0 rotate 0 0 0
$attachment "attach_hitloc" "Spine_2" 0 0 0 rotate 0 0 0

$surfaceprop "default"

$contents "solid"

// $hboxset "default"
// $hbox 0 "wrist_L" -6.426128 -17.70697 -41.240303 74.675056 45.417442 27.160337
// $hbox 0 "elbow_L" -18.462805 -43.949417 -7.873952 73.971611 17.828669 43.712368
// $hbox 0 "bicep_L" -18.303968 -31.329302 -24.56666 72.704216 23.256403 26.211985
// $hbox 0 "Head_1" -10.598272 -46.634651 -42.743725 63.479469 46.634651 22.793125
// $hbox 0 "Wing0_2_L" -34.048695 -21.231861 -22.826977 155.168533 38.57106 34.446331
// $hbox 0 "Wing0_1_L" -38.578632 -16.241798 15.240955 66.935249 47.026245 53.35244
// $hbox 0 "Wing0_0_L" -13.7048 -15.045415 -10.494563 61.358257 18.099966 16.907343
// $hbox 0 "wrist_R" -74.675056 -45.417439 -27.160334 4.59135 17.70697 41.240299
// $hbox 0 "elbow_R" -77.090286 -20.108126 -35.547848 18.462805 43.949417 12.379481
// $hbox 0 "bicep_R" -73.256386 -19.338467 -27.659405 18.303968 24.615614 26.63814
// $hbox 0 "Wing1_2_R" -159.124649 -34.175751 -47.946083 34.405323 24.926456 14.601274
// $hbox 0 "Wing1_1_R" -66.935249 -8.987332 -55.737137 14.014477 16.473684 -16.693665
// $hbox 0 "Wing1_0_R" -61.358257 -18.099966 -16.907343 13.7048 15.045415 10.494563
// $hbox 0 "Spine_2" -13.11989 -52.013161 -57.788475 62.376945 52.013161 51.687553
// $hbox 0 "Spine_1" -26.275478 -54.554207 -59.754433 66.625977 56.225147 62.912083
// $hbox 0 "Spine_0" -10.985093 -45.714195 -50.260929 54.461044 45.714195 64.036827
// $hbox 0 "ankle_L" -13.776585 -23.896254 -18.026945 75.528946 14.124425 21.165104
// $hbox 0 "knee_L" -11.456504 -14.075042 -10.453835 66.259911 18.356628 25.848101
// $hbox 0 "thigh_L" -4.720778 -26.701151 -25.512648 94.45369 19.817305 27.521757
// $hbox 0 "ankle_R" -75.528946 -15.488759 -21.165104 13.776585 22.531921 18.026945
// $hbox 0 "knee_R" -66.259911 -18.356628 -25.848101 11.456504 14.075042 10.453835
// $hbox 0 "thigh_R" -94.45369 -29.503872 -25.639967 4.720778 19.50563 23.630857
// $hbox 0 "tail0_3" 2.133259 -8.39517 -7.643862 30.150232 8.39517 18.543097
// $hbox 0 "tail0_2" 3.166167 -12.183161 -17.886847 63.173973 12.183161 16.177401
// $hbox 0 "tail0_1" -2.448216 -17.431274 -20.2255 45.841816 17.431274 25.97736
// $hbox 0 "tail0_0" -2.471666 -32.677612 -31.396275 59.432652 32.677612 39.582176
// $hbox 0 "Root_0" -41.700005 -47.048298 -45.9366 48.435093 47.048298 16.068556
// $hboxset "hands"
// $hbox 0 "wrist_L" -6.426128 -17.70697 -41.240303 74.675056 45.417442 27.160337
// $hbox 0 "wrist_R" -74.675056 -45.417439 -27.160334 4.59135 17.70697 41.240299
// $hboxset "head"
// $hbox 0 "Head_1" -10.598272 -46.634651 -42.743725 63.479469 46.634651 22.793125
// $hboxset "feet"
// $hbox 0 "ankle_L" -13.776585 -23.896254 -18.026945 75.528946 14.124425 21.165104
// $hbox 0 "ankle_R" -75.528946 -15.488759 -21.165104 13.776585 22.531921 18.026945
// $hboxset "select_high"
// $hbox 0 "char_origin" -49.659088 1.724879 -74.10376 49.659088 219.468613 48.627811
// $hboxset "select_low"
// $hbox 0 "char_origin" -81.77626 -0.820739 -82.277016 81.77626 258.325928 78.232231
// $skipboneinbbox

// NOTE: The following commented-out $definebone lines might be needed, as is often the case for view models. When needed, simply remove the two slashes '//' from the start of each line.
// $definebone "Root_0" "" 0 172.913239 -72.956573 0 -1.570796 -1.570796 0 0 0 0 0 0
// $definebone "Spine_0" "Root_0" 8.890678 0 22.862564 0 -1.092407 0 0 0 0 0 0 0
// $definebone "tail0_0" "Root_0" -4.202057 0 -29.531128 3.141593 1.065814 3.141593 0 0 0 0 0 0
// $definebone "thigh_L" "Root_0" 5.618416 30.301708 -12.683762 0.225774 0.645742 0.72493 0 0 0 0 0 0
// $definebone "thigh_R" "Root_0" 5.618416 -30.301708 -12.683762 -2.915818 -0.645742 2.416663 0 0 0 0 0 0
// $definebone "char_origin" "Root_0" 72.956573 0 -172.913239 1.570796 0 1.570796 0 0 0 0 0 0
// $definebone "Spine_1" "Spine_0" 35.935623 0.000001 -0.000015 0 0.808281 0 0 0 0 0 0 0
// $definebone "Spine_2" "Spine_1" 72.893402 0.000001 0 0 0.463974 0 0 0 0 0 0 0
// $definebone "flag1" "Spine_1" -2.490599 67.792671 43.302444 1.836387 1.035546 2.279148 0 0 0 0 0 0
// $definebone "Head_0" "Spine_2" 50.196854 0 0.000015 0 0.116956 0 0 0 0 0 0 0
// $definebone "Wing1_0_R" "Spine_2" -4.03981 -47.113552 28.049591 0.934554 -0.117246 0.313169 0 0 0 0 0 0
// $definebone "clavicle_R" "Spine_2" 20.923483 -10.342922 -32.83757 -1.570796 0.027116 1.556242 0 0 0 0 0 0
// $definebone "Wing0_0_L" "Spine_2" -4.03977 47.113541 28.04953 -2.207039 0.117246 2.828424 0 0 0 0 0 0
// $definebone "clavicle_L" "Spine_2" 20.92351 10.342929 -32.837601 1.570797 -0.027116 1.585351 0 0 0 0 0 0
// $definebone "Head_1" "Head_0" 37.384499 0 -0.000015 -0.000021 -0.29823 0 0 0 0 0 0 0
// $definebone "jaw" "Head_1" 3.446503 0.000138 -6.643845 1.570822 0.602461 0.000014 0 0 0 0 0 0
// $definebone "Wing1_1_R" "Wing1_0_R" -50.034119 0 -0.000015 3.141593 0.767571 3.141593 0 0 0 0 0 0
// $definebone "Wing1_2_R" "Wing1_1_R" -69.772133 -0.000031 0 -2.743293 -1.110169 2.702436 0 0 0 0 0 0
// $definebone "bicep_R" "clavicle_R" -52.959404 0.000015 -0.000008 -2.974811 -0.186134 -1.307335 0 0 0 0 0 0
// $definebone "elbow_R" "bicep_R" -68.61087 0.000008 0 0 0.653717 0 0 0 0 0 0 0
// $definebone "wrist_R" "elbow_R" -74.555603 0 -0.000015 0.372259 -0.055025 0.112561 0 0 0 0 0 0
// $definebone "thumb_0_R" "wrist_R" -4.607096 -8.291992 12.763855 -2.450214 0.947595 0.892999 0 0 0 0 0 0
// $definebone "mid_0_R" "wrist_R" -41.447083 3.311691 -2.949512 1.470717 0.015463 0.622295 0 0 0 0 0 0
// $definebone "index_0_R" "wrist_R" -40.085896 3.775131 12.513187 1.656148 0.058939 0.43546 0 0 0 0 0 0
// $definebone "ring_0_R" "wrist_R" -36.38784 -1.201645 -17.722191 1.369986 -0.016143 0.835185 0 0 0 0 0 0
// $definebone "thumb_1_R" "thumb_0_R" -21.611961 0.000015 -0.000019 0.021185 0.843801 0.02835 0 0 0 0 0 0
// $definebone "mid_1_R" "mid_0_R" -23.920944 -0.000004 0.000015 -0.073283 0.924063 -0.091734 0 0 0 0 0 0
// $definebone "index_1_R" "index_0_R" -26.068419 0 0 -0.066697 0.723239 -0.100589 0 0 0 0 0 0
// $definebone "ring_1_R" "ring_0_R" -16.637184 0.000019 0 -0.104714 0.977657 -0.126077 0 0 0 0 0 0
// $definebone "Wing0_1_L" "Wing0_0_L" 50.034134 0.000031 -0.000031 -3.141592 0.767571 -3.141592 0 0 0 0 0 0
// $definebone "Wing0_2_L" "Wing0_1_L" 69.772102 0.000031 0 -2.926566 -1.109573 2.902375 0 0 0 0 0 0
// $definebone "bicep_L" "clavicle_L" 52.959442 -0.000031 -0.000011 -2.974811 -0.186135 -1.307335 0 0 0 0 0 0
// $definebone "elbow_L" "bicep_L" 68.610916 0.000015 -0.00001 0 0.653717 0 0 0 0 0 0 0
// $definebone "wrist_L" "elbow_L" 74.555573 -0.000008 -0.000031 0.372259 -0.055025 0.112561 0 0 0 0 0 0
// $definebone "thumb_0_L" "wrist_L" 4.607073 8.291962 -12.763855 -2.450213 0.947595 0.892999 0 0 0 0 0 0
// $definebone "mid_0_L" "wrist_L" 41.447063 -3.311691 2.949528 1.470717 0.015463 0.622295 0 0 0 0 0 0
// $definebone "index_0_L" "wrist_L" 40.085884 -3.775146 -12.51318 1.656148 0.058938 0.435459 0 0 0 0 0 0
// $definebone "ring_0_L" "wrist_L" 36.387821 1.20163 17.722214 1.369987 -0.016144 0.835185 0 0 0 0 0 0
// $definebone "thumb_1_L" "thumb_0_L" 21.611965 -0.000015 -0.000008 0.051502 1.005985 0.06095 0 0 0 0 0 0
// $definebone "mid_1_L" "mid_0_L" 23.920956 0.000015 -0.000015 -0.076076 0.925559 -0.095116 0 0 0 0 0 0
// $definebone "index_1_L" "index_0_L" 26.068413 0.000008 -0.000015 -0.105824 0.806062 -0.14616 0 0 0 0 0 0
// $definebone "ring_1_L" "ring_0_L" 16.637131 0.000008 -0.000023 0.111196 0.919434 0.13949 0 0 0 0 0 0
// $definebone "flag2" "flag1" 60.964508 0 0.000008 0.070469 0.210485 -0.346402 0 0 0 0 0 0
// $definebone "tail0_1" "tail0_0" 54.485645 0.000002 0.000015 0 0.504832 0 0 0 0 0 0 0
// $definebone "tail0_2" "tail0_1" 43.984924 -0.000005 0 -0.000001 0.515112 0 0 0 0 0 0 0
// $definebone "tail0_3" "tail0_2" 60.122787 -0.000003 -0.000023 0 0 0 0 0 0 0 0 0
// $definebone "knee_L" "thigh_L" 83.131027 -0.000015 0 -3.141592 1.476479 -3.141592 0 0 0 0 0 0
// $definebone "ankle_L" "knee_L" 64.071274 0.000008 0.000008 0.29294 -1.008986 -0.342364 0 0 0 0 0 0
// $definebone "toeBall_L" "ankle_L" 54.631073 0 0.000027 -0.21699 -1.286486 0.1924 0 0 0 0 0 0
// $definebone "knee_R" "thigh_R" -83.131027 0.000008 -0.000008 -3.14159 1.476479 -3.14159 0 0 0 0 0 0
// $definebone "ankle_R" "knee_R" -64.071381 -0.000008 -0.000061 0.292941 -1.008986 -0.342364 0 0 0 0 0 0
// $definebone "toeBall_R" "ankle_R" -54.631069 0.000015 -0.000019 -0.21699 -1.286486 0.1924 0 0 0 0 0 0

$sectionframes 30 160




$sequence "BindPose" "roshan_anims\BindPose.smd" {
	fps 30
}

$sequence "roshan_run" "roshan_anims\roshan_run.smd" {
	fps 30
	activity "ACT_DOTA_RUN" 1
	loop
	{ event AE_CL_PLAYSOUND 10 "Roshan.Footstep" }
	{ event AE_CL_PLAYSOUND 30 "Roshan.Footstep" }
}

$sequence "roshan_attack" "roshan_anims\roshan_attack.smd" {
	fps 30
	activity "ACT_DOTA_ATTACK" 1
	{ event AE_DOTA_PLAY_SOUND_ATTACK 9 "" }
}

$sequence "roshan_attack2" "roshan_anims\roshan_attack2.smd" {
	fps 30
	activity "ACT_DOTA_ATTACK" 1
}

$sequence "roshan_idle" "roshan_anims\roshan_idle.smd" {
	fps 30
	activity "ACT_DOTA_IDLE" 1
	loop
}

$sequence "roshan_die" "roshan_anims\roshan_die.smd" {
	fps 30
	activity "ACT_DOTA_DIE" 1
	{ event AE_CL_PLAYSOUND 1 "Roshan.Death" }
}

$sequence "roshan_slam" "roshan_anims\roshan_slam.smd" {
	fps 30
	activity "ACT_DOTA_CAST_ABILITY_3" 1
}

$sequence "roshan_stun" "roshan_anims\roshan_stun.smd" {
	fps 30
	activity "ACT_DOTA_DISABLED" 1
	loop
}

$sequence "roshan_stun_to_idle" "roshan_anims\roshan_stun_to_idle.smd" {
	fps 30
	activity "ACT_DOTA_DISABLED_END" 1
}

$sequence "roshan_flail" "roshan_anims\roshan_flail.smd" {
	fps 36
	activity "ACT_DOTA_FLAIL" 1
	loop
}

$sequence "roshan_portrait" "roshan_anims\roshan_portrait.smd" {
	fps 30
	activity "ACT_DOTA_CAPTURE" 1
}

$sequence "sr_roshan_firebreath" "roshan_anims\sr_roshan_firebreath.smd" {
	fps 30
	activity "ACT_DOTA_CAST_ABILITY_1" 1
}

$sequence "roshan_death_frostivus" "roshan_anims\roshan_death_frostivus.smd" {
	fps 35
	activity "ACT_DOTA_DIE" 1
	{ event AE_CL_PLAYSOUND 24 "BodyImpact_Common.Heavy" }
}


$keyvalues
{
}
