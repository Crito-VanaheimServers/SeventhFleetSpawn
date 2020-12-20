if (isServer) then {
diag_log ":: Spawning Carrier";
//  Spawn Carrier
private _obj = ["Land_Carrier_01_base_F", [1510, 27224.2, 0], [-0.776351, -0.630301, 0], [0, 0, 1], true];
private _vehicle = (_obj select 0) createVehicle (_obj select 1);
_vehicle allowDamage false;
_vehicle setDir 129.072;
_vehicle setPosWorld (_obj select 1);
_vehicle setVectorDirAndUp [_obj select 2, _obj select 3];
[_vehicle] call BIS_fnc_Carrier01PosUpdate;
 
// Broadcast Carrier ID over network
missionNamespace setVariable ["USS_FREEDOM_CARRIER",_vehicle]; publicVariable "USS_FREEDOM_CARRIER";
_vehicle enableSimulationGlobal true;
 
} else {
    [] spawn {
        // Clients wait for carrier
        waitUntil { !(isNull (missionNamespace getVariable ["USS_FREEDOM_CARRIER",objNull])) };
 
        // Work around for missing carrier data not being broadcast as expected
        if (count (USS_FREEDOM_CARRIER getVariable ["bis_carrierParts", []]) == 0) then {
            ["Carrier %1 is empty. Client Fixing.",str "bis_carrierParts"] call BIS_fnc_logFormatServer;
            private _carrierPartsArray = (configFile >> "CfgVehicles" >> typeOf USS_FREEDOM_CARRIER >> "multiStructureParts") call BIS_fnc_getCfgDataArray;
            private _partClasses = _carrierPartsArray apply {_x select 0};
            private _nearbyCarrierParts = nearestObjects [USS_FREEDOM_CARRIER,_partClasses,500];
            {
                private _carrierPart = _x;
                private _index = _forEachIndex;
                {
                    if ((_carrierPart select 0) isEqualTo typeOf _x) exitWith { _carrierPart set [0,_x]; };
                } forEach _nearbyCarrierParts;
                _carrierPartsArray set [_index,_carrierPart];
            } forEach _carrierPartsArray;
            USS_FREEDOM_CARRIER setVariable ["bis_carrierParts",_nearbyCarrierParts];
            ["Carrier %1 was empty. Now contains %2.",str "bis_carrierParts",USS_FREEDOM_CARRIER getVariable ["bis_carrierParts", []]] call BIS_fnc_logFormatServer;
        };
 
        // Client Initiate Carrier Actions with slight delay to ensure carrier is sync'd
        [USS_FREEDOM_CARRIER] spawn { sleep 1; _this call BIS_fnc_Carrier01Init};
    };
};

if (isServer) then {
diag_log ":: Spawning Destroyer";
//  Spawn Destroyer
private _obj = ["Land_Destroyer_01_base_F", [2073.37,27541.3,0], [-0.753683,-0.657238,0], [0, 0, 1], [true,false]];
private _vehicle = (_obj select 0) createVehicle (_obj select 1);
_vehicle allowDamage false;
_vehicle setDir 131.09;
_vehicle setPosWorld (_obj select 1);
_vehicle setVectorDirAndUp [_obj select 2, _obj select 3];
[_vehicle] call BIS_fnc_Destroyer01PosUpdate;
 
// Broadcast Destroyer ID over network
missionNamespace setVariable ["USS_LIBERTY_DESTROYER",_vehicle]; publicVariable "USS_LIBERTY_DESTROYER";
_vehicle enableSimulationGlobal true;
 
} else {
    [] spawn {
        // Clients wait for Destroyer
        waitUntil { !(isNull (missionNamespace getVariable ["USS_LIBERTY_DESTROYER",objNull])) };
    };
};

if (isServer) then {
diag_log ":: Spawning Destroyer";
//  Spawn Destroyer
private _obj = ["Land_Destroyer_01_base_F", [1442.12,27598.2,0], [-0.757318,-0.653047,0], [0, 0, 1], [true,false]];
private _vehicle = (_obj select 0) createVehicle (_obj select 1);
_vehicle allowDamage false;
_vehicle setDir 130.772;
_vehicle setPosWorld (_obj select 1);
_vehicle setVectorDirAndUp [_obj select 2, _obj select 3];
[_vehicle] call BIS_fnc_Destroyer01PosUpdate;
 
// Broadcast Destroyer ID over network
missionNamespace setVariable ["USS_LIBERTY_DESTROYER",_vehicle]; publicVariable "USS_LIBERTY_DESTROYER";
_vehicle enableSimulationGlobal true;
 
} else {
    [] spawn {
        // Clients wait for Destroyer
        waitUntil { !(isNull (missionNamespace getVariable ["USS_LIBERTY_DESTROYER",objNull])) };
    };
};

if (isServer) then {
diag_log ":: Spawning Destroyer";
//  Spawn Destroyer
private _obj = ["Land_Destroyer_01_base_F", [1658.68,26900.9,-0.26818], [-0.784954,-0.619554,0], [0, 0, 1], true];
private _vehicle = (_obj select 0) createVehicle (_obj select 1);
_vehicle allowDamage false;
_vehicle setDir 0;
_vehicle setPosWorld (_obj select 1);
_vehicle setVectorDirAndUp [_obj select 2, _obj select 3];
[_vehicle] call BIS_fnc_Destroyer01PosUpdate;
 
// Broadcast Destroyer ID over network
missionNamespace setVariable ["USS_LIBERTY_DESTROYER",_vehicle]; publicVariable "USS_LIBERTY_DESTROYER";
_vehicle enableSimulationGlobal true;
 
} else {
    [] spawn {
        // Clients wait for Destroyer
        waitUntil { !(isNull (missionNamespace getVariable ["USS_LIBERTY_DESTROYER",objNull])) };
    };
};

if (isServer) then {
diag_log ":: Spawning Destroyer";
//  Spawn Destroyer
private _obj = ["Land_Destroyer_01_base_F", [952.049,26934.7,0], [-0.692559,-0.721361,0], [0, 0, 1], [true,false]];
private _vehicle = (_obj select 0) createVehicle (_obj select 1);
_vehicle allowDamage false;
_vehicle setDir 136.167;
_vehicle setPosWorld (_obj select 1);
_vehicle setVectorDirAndUp [_obj select 2, _obj select 3];
[_vehicle] call BIS_fnc_Destroyer01PosUpdate;
 
// Broadcast Destroyer ID over network
missionNamespace setVariable ["USS_LIBERTY_DESTROYER",_vehicle]; publicVariable "USS_LIBERTY_DESTROYER";
_vehicle enableSimulationGlobal true;
 
} else {
    [] spawn {
        // Clients wait for Destroyer
        waitUntil { !(isNull (missionNamespace getVariable ["USS_LIBERTY_DESTROYER",objNull])) };
    };
};