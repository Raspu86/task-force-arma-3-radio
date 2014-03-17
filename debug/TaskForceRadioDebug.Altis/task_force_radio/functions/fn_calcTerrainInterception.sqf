private ["_result", "_l", "_r", "_m", "_p1", "_p2", "_middle"];

_result = 0;
_p1 = eyePos player;
_p2 = eyePos _this;

if (terrainIntersectASL[_p1, _p2]) then {
	_l = 10.0;
	_r = 300.0;
	_m = 60.0;

	_middle = [((_p1 select 0) + (_p2 select 0)) / 2.0, ((_p1 select 1) + (_p2 select 1)) / 2.0, ((_p1 select 2) + (_p2 select 2)) / 2.0];	
	_base = _middle select 2;

	while {(_r - _l) > 10} do {
		_middle set[2, _base + _m];
		if ((!terrainIntersectASL [ _p1, _middle ]) and {!terrainIntersectASL [ _p2, _middle ]}) then {
			_r = _m;
		} else {
			_l = _m;
		};
		_m = (_l + _r) / 2.0;
	};
	_result = _m;
};
_result