if ((TF_tangent_dd_pressed) and {alive currentUnit}) then {
	[format[localize "STR_transmit_end", "DD", "1", TF_dd_frequency], format["TANGENT_DD	RELEASED	%1	0	dd", TF_dd_frequency]] call TFAR_fnc_ProcessTangent;
	TF_tangent_dd_pressed = false;
	//						unit, radio, radioType, additional, buttonDown
	["OnTangent", currentUnit, [currentUnit, "DD", 2, false, false]] call TFAR_fnc_fireEventHandlers;
};
true