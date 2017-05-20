-- Redo: Outer Uldaman
-- Missing creatures added - Free WoTLK guids Reused
DELETE FROM creature_addon WHERE guid IN (1158,1162,1215,1317,1345,1361,1369,1374,1377,1382,1383,1392,1395,129561,129643,129653,129696,129702,129709,129723,129724);
DELETE FROM creature_movement WHERE id IN (1158,1162,1215,1317,1345,1361,1369,1374,1377,1382,1383,1392,1395,129561,129643,129653,129696,129702,129709,129723,129724);
DELETE FROM game_event_creature WHERE guid IN (1158,1162,1215,1317,1345,1361,1369,1374,1377,1382,1383,1392,1395,129561,129643,129653,129696,129702,129709,129723,129724);
DELETE FROM game_event_creature_data WHERE guid IN (1158,1162,1215,1317,1345,1361,1369,1374,1377,1382,1383,1392,1395,129561,129643,129653,129696,129702,129709,129723,129724);
DELETE FROM creature_battleground WHERE guid IN (1158,1162,1215,1317,1345,1361,1369,1374,1377,1382,1383,1392,1395,129561,129643,129653,129696,129702,129709,129723,129724);
DELETE FROM creature_linking WHERE guid IN (1158,1162,1215,1317,1345,1361,1369,1374,1377,1382,1383,1392,1395,129561,129643,129653,129696,129702,129709,129723,129724)
OR master_guid IN (1158,1162,1215,1317,1345,1361,1369,1374,1377,1382,1383,1392,1395,129561,129643,129653,129696,129702,129709,129723,129724);
DELETE FROM creature WHERE guid IN (1158,1162,1215,1317,1345,1361,1369,1374,1377,1382,1383,1392,1395,129561,129643,129653,129696,129702,129709,129723,129724);
INSERT INTO creature (guid, id, map, spawnmask, phasemask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) values
-- Shadowforge Surveyor
(1158,4844,0,1,1,0,0,-6108.28,-2940.55,207.731,0.272529,300,300,0,0,1160,2134,0,2),
(1162,4844,0,1,1,0,0,-6090.285,-2973.696,207.5536,2.1274390,300,300,2,0,1160,2134,0,1),
-- Shadowforge Ruffian
(1215,4845,0,1,1,0,0,-6099.7,-2938.75,207.575,3.89165,300,300,2,0,1403,0,0,1),
(1317,4845,0,1,1,0,0,-6083.313,-3075.271,243.9682,3.8458910,300,300,0,0,1403,0,0,2),
(1345,4845,0,1,1,0,0,-6073.946,-3008.351,231.0783,4.2900960,300,300,2,0,1403,0,0,1),
(1361,4845,0,1,1,0,0,-6098.674,-2984.181,225.4634,3.2040120,300,300,2,0,1403,0,0,1),
(1369,4845,0,1,1,0,0,-6118.807,-3001.019,223.6784,1.1391230,300,300,0,0,1403,0,0,2),
-- Shadowforge Digger
(1374,4846,0,1,1,0,0,-6061.596,-3148.339,254.2748,5.9166660,300,300,0,0,1403,0,0,0),
(1377,4846,0,1,1,0,0,-6091.622,-3160.969,253.4217,2.5307270,300,300,0,0,1403,0,0,0),
(1382,4846,0,1,1,0,0,-6078.361,-3100.635,251.1098,0.2617994,300,300,0,0,1403,0,0,0),
(1383,4846,0,1,1,0,0,-6094.885,-3065.247,240.8229,2.1467550,300,300,0,0,1403,0,0,0),
(1392,4846,0,1,1,0,0,-6079.715,-3055.071,237.4403,6.2482790,300,300,0,0,1403,0,0,0),
(1395,4846,0,1,1,0,0,-6093.073,-3024.615,232.2344,3.1415930,300,300,0,0,1403,0,0,0),
(129561,4846,0,1,1,0,0,-6080.854,-3164.193,255.3357,5.3756140,300,300,0,0,1403,0,0,2),
(129643,4846,0,1,1,0,0,-6089.713,-3129.134,253.7381,3.9095380,300,300,0,0,1403,0,0,2),
(129653,4846,0,1,1,0,0,-6077.599,-3044.535,234.7345,0.1047198,300,300,0,0,1403,0,0,2),
-- Stonevault Cave Hunter 
(129696,4856,0,1,1,0,0,-6147.052,-2882.075,211.6505,6.0989790,300,300,2,0,1596,0,0,1),
(129702,4856,0,1,1,0,0,-6174.300,-2908.135,214.4293,5.4999160,300,300,2,0,1596,0,0,1),
(129709,4856,0,1,1,0,0,-6174.552,-2926.184,214.4293,1.1507780,300,300,2,0,1596,0,0,1),
(129723,4856,0,1,1,0,0,-6204.215,-2953.500,223.0049,2.4085540,300,300,2,0,1596,0,0,1),
(129724,4856,0,1,1,0,0,-6190.311,-3015.969,223.6346,2.8067230,300,300,2,0,1596,0,0,1);

-- individual Addons
DELETE FROM creature_addon WHERE guid IN (1374,1377,1382,1383,1392,1395,129561,129643,129653);
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(1374,0,0,1,16,233,0,NULL),
(1377,0,0,1,16,233,0,NULL),
(1382,0,0,1,16,233,0,NULL),
(1383,0,0,1,16,233,0,NULL),
(1392,0,0,1,16,233,0,NULL),
(1395,0,0,1,16,233,0,NULL),
(129561,0,0,1,16,233,0,NULL),
(129643,0,0,1,16,233,0,NULL),
(129653,0,0,1,16,233,0,NULL);

-- Waypoints
-- Shadowforge Ruffian #1
UPDATE creature SET position_x = -6076.106, position_y = -3130.264, position_z = 254.2906, orientation = 5.6593550, spawndist = 0, MovementType = 2 WHERE guid = 9230;
DELETE FROM creature_movement WHERE id = 9230;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(9230, 1, -6071.022, -3133.923, 254.0056, 0, 0, 100),
(9230, 2, -6067.031, -3134.642, 253.7443, 0, 0, 100),
(9230, 3, -6069.149, -3137.896, 254.2526, 0, 0, 100),
(9230, 4, -6076.126, -3133.620, 253.9887, 0, 0, 100),
(9230, 5, -6080.281, -3131.972, 253.4255, 0, 0, 100),
(9230, 6, -6084.899, -3130.197, 253.6310, 0, 0, 100),
(9230, 7, -6088.523, -3124.030, 252.5135, 0, 0, 100),
(9230, 8, -6089.379, -3117.482, 251.5384, 0, 0, 100),
(9230, 9, -6089.480, -3111.038, 251.3942, 0, 0, 100),
(9230, 10, -6089.522, -3106.349, 250.8367, 0, 0, 100),
(9230, 11, -6089.073, -3114.419, 251.3768, 0, 0, 100),
(9230, 12, -6088.677, -3121.534, 252.0317, 0, 0, 100),
(9230, 13, -6087.679, -3126.747, 253.0979, 0, 0, 100),
(9230, 14, -6085.504, -3129.507, 253.5546, 0, 0, 100),
(9230, 15, -6080.595, -3130.182, 253.7399, 0, 0, 100),
(9230, 16, -6076.074, -3130.611, 254.1852, 0, 0, 100);

-- Shadowforge Ruffian #2
UPDATE creature SET position_x = -6132.203, position_y = -2959.769, position_z = 205.2758, orientation = 6.2311860, spawndist = 0, MovementType = 2 WHERE guid = 7800;
DELETE FROM creature_movement WHERE id = 7800;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(7800, 1, -6120.182, -2960.395, 204.4170, 0, 0, 100),
(7800, 2, -6109.877, -2958.618, 204.0871, 0, 0, 100),
(7800, 3, -6105.400, -2957.561, 203.9925, 0, 0, 100),
(7800, 4, -6119.333, -2957.440, 204.0702, 0, 0, 100),
(7800, 5, -6125.680, -2957.952, 205.0811, 0, 0, 100),
(7800, 6, -6135.474, -2956.585, 205.5629, 0, 0, 100),
(7800, 7, -6141.474, -2959.672, 206.9242, 0, 0, 100),
(7800, 8, -6152.056, -2963.141, 209.8475, 0, 0, 100),
(7800, 9, -6156.419, -2969.546, 210.3756, 0, 0, 100),
(7800, 10, -6154.431, -2977.586, 212.3069, 0, 0, 100),
(7800, 11, -6149.911, -2989.422, 215.9681, 0, 0, 100),
(7800, 12, -6141.598, -2996.239, 218.3785, 0, 0, 100),
(7800, 13, -6149.552, -2989.752, 216.0364, 0, 0, 100),
(7800, 14, -6153.342, -2972.473, 210.6609, 0, 0, 100),
(7800, 15, -6149.925, -2963.468, 209.5184, 0, 0, 100),
(7800, 16, -6142.724, -2959.909, 207.1032, 0, 0, 100),
(7800, 17, -6138.087, -2960.056, 206.2636, 0, 0, 100),
(7800, 18, -6130.889, -2959.874, 205.1738, 0, 0, 100);

-- Shadowforge Surveyor #1
UPDATE creature SET position_x = -6141.809, position_y = -3087.353, position_z = 225.7320, orientation = 1.9369630, spawndist = 0, MovementType = 2 WHERE guid = 7220;
DELETE FROM creature_movement WHERE id = 7220;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(7220, 1, -6144.042, -3081.531, 225.9803, 0, 0, 100),
(7220, 2, -6146.375, -3077.724, 225.7653, 0, 0, 100),
(7220, 3, -6149.534, -3071.435, 226.4855, 0, 0, 100),
(7220, 4, -6152.114, -3068.479, 226.1134, 0, 0, 100),
(7220, 5, -6154.744, -3063.185, 225.0024, 0, 0, 100),
(7220, 6, -6155.242, -3055.538, 224.8400, 0, 0, 100),
(7220, 7, -6154.359, -3048.774, 224.4911, 0, 0, 100),
(7220, 8, -6150.639, -3042.611, 224.5289, 0, 0, 100),
(7220, 9, -6144.752, -3037.450, 224.9959, 0, 0, 100),
(7220, 10, -6137.218, -3033.508, 223.7434, 0, 0, 100),
(7220, 11, -6144.752, -3037.450, 224.9959, 0, 0, 100),
(7220, 12, -6150.639, -3042.611, 224.5289, 0, 0, 100),
(7220, 13, -6154.359, -3048.774, 224.4911, 0, 0, 100),
(7220, 14, -6155.242, -3055.538, 224.8400, 0, 0, 100),
(7220, 15, -6154.846, -3062.721, 224.8617, 0, 0, 100),
(7220, 16, -6152.156, -3068.391, 226.1260, 0, 0, 100),
(7220, 17, -6149.534, -3071.435, 226.4855, 0, 0, 100),
(7220, 18, -6146.375, -3077.724, 225.7653, 0, 0, 100),
(7220, 19, -6144.042, -3081.531, 225.9803, 0, 0, 100),
(7220, 20, -6141.792, -3087.052, 225.7316, 0, 0, 100);

-- Shadowforge Digger #1
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid = 7736;
DELETE FROM creature_movement WHERE id = 7736;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(7736, 1, -6116.140, -3006.021, 223.4517, 45000, 0, 100),
(7736, 2, -6123.767, -3009.480, 221.8325, 45000, 0, 100);

-- Shadowforge Digger #2
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid = 7224;
DELETE FROM creature_movement WHERE id = 7224;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(7224, 1, -6154.459, -3053.129, 224.8258, 0, 0, 100),
(7224, 2, -6154.061, -3046.471, 224.6519, 0, 0, 100),
(7224, 3, -6155.399, -3043.882, 224.4220, 45000, 0, 100),
(7224, 4, -6155.823, -3055.489, 224.8069, 0, 0, 100),
(7224, 5, -6153.585, -3059.572, 224.9298, 0, 0, 100),
(7224, 6, -6151.697, -3060.308, 225.2451, 45000, 0, 0.4712389);

DELETE FROM creature_movement WHERE id = 129561;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(129561, 1, -6083.516, -3157.839, 253.9827, 45000, 0, 100),
(129561, 2, -6080.800, -3164.309, 255.2561, 45000, 0, 100);

DELETE FROM creature_movement WHERE id = 129643;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(129643, 1, -6085.698, -3122.537, 252.6650, 45000, 0, 6.265732),
(129643, 2, -6088.088, -3128.182, 253.2332, 0, 0, 100),
(129643, 3, -6089.709, -3129.257, 253.6562, 45000, 0, 100);

DELETE FROM creature_movement WHERE id = 1317;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(1317, 1, -6087.080, -3078.472, 243.0625, 0, 0, 100),
(1317, 2, -6092.253, -3078.085, 241.9996, 0, 0, 100),
(1317, 3, -6096.979, -3072.725, 241.0038, 0, 0, 100),
(1317, 4, -6099.916, -3067.068, 242.2799, 0, 0, 100),
(1317, 5, -6102.648, -3061.949, 244.4221, 0, 0, 100),
(1317, 6, -6101.180, -3058.374, 246.5884, 0, 0, 100),
(1317, 7, -6096.688, -3053.641, 247.8182, 0, 0, 100),
(1317, 8, -6090.717, -3048.851, 249.0942, 0, 0, 100),
(1317, 9, -6085.924, -3041.447, 250.6751, 0, 0, 100),
(1317, 10, -6088.905, -3038.339, 250.1787, 0, 0, 100),
(1317, 11, -6085.924, -3041.447, 250.6751, 0, 0, 100),
(1317, 12, -6090.717, -3048.851, 249.0942, 0, 0, 100),
(1317, 13, -6096.688, -3053.641, 247.8182, 0, 0, 100),
(1317, 14, -6101.180, -3058.374, 246.5884, 0, 0, 100),
(1317, 15, -6102.648, -3061.949, 244.4221, 0, 0, 100),
(1317, 16, -6099.916, -3067.068, 242.2799, 0, 0, 100),
(1317, 17, -6097.126, -3072.557, 241.0719, 0, 0, 100),
(1317, 18, -6092.425, -3077.890, 241.9591, 0, 0, 100),
(1317, 19, -6087.236, -3078.455, 243.0242, 0, 0, 100),
(1317, 20, -6083.168, -3075.361, 243.9205, 0, 0, 100);

DELETE FROM creature_movement WHERE id = 129653;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(129653, 1, -6085.951, -3041.822, 234.0142, 45000, 0, 100),
(129653, 2, -6077.663, -3044.587, 234.6292, 45000, 0, 100);

DELETE FROM creature_movement WHERE id = 1369;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(1369, 1, -6116.644, -2996.322, 223.4151, 0, 0, 100),
(1369, 2, -6110.243, -2991.871, 224.1620, 0, 0, 100),
(1369, 3, -6103.823, -2988.717, 224.9708, 0, 0, 100),
(1369, 4, -6097.711, -2987.333, 225.9724, 0, 0, 100),
(1369, 5, -6093.989, -2988.967, 227.0916, 0, 0, 100),
(1369, 6, -6089.258, -2991.952, 228.1291, 0, 0, 100),
(1369, 7, -6085.414, -2996.224, 229.3204, 0, 0, 100),
(1369, 8, -6081.330, -3001.787, 229.9325, 0, 0, 100),
(1369, 9, -6077.954, -3006.212, 230.3325, 0, 0, 100),
(1369, 10, -6077.165, -3010.118, 231.2074, 0, 0, 100),
(1369, 11, -6079.629, -3014.095, 231.8772, 0, 0, 100),
(1369, 12, -6083.682, -3016.998, 231.4985, 0, 0, 100),
(1369, 13, -6079.629, -3014.095, 231.8772, 0, 0, 100),
(1369, 14, -6077.165, -3010.118, 231.2074, 0, 0, 100),
(1369, 15, -6077.954, -3006.212, 230.3325, 0, 0, 100),
(1369, 16, -6081.330, -3001.787, 229.9325, 0, 0, 100),
(1369, 17, -6085.414, -2996.224, 229.3204, 0, 0, 100),
(1369, 18, -6089.258, -2991.952, 228.1291, 0, 0, 100),
(1369, 19, -6093.989, -2988.967, 227.0916, 0, 0, 100),
(1369, 20, -6097.711, -2987.333, 225.9724, 0, 0, 100),
(1369, 21, -6103.823, -2988.717, 224.9708, 0, 0, 100),
(1369, 22, -6109.968, -2991.736, 224.2469, 0, 0, 100),
(1369, 23, -6116.644, -2996.322, 223.4151, 0, 0, 100),
(1369, 24, -6118.495, -3000.398, 223.5979, 0, 0, 100);

DELETE FROM creature_movement WHERE id = 1158;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(1158, 1, -6108.278, -2940.550, 207.8129, 0, 0, 100),
(1158, 2, -6102.053, -2943.809, 205.9380, 0, 0, 100),
(1158, 3, -6101.149, -2949.617, 204.5167, 0, 0, 100),
(1158, 4, -6100.524, -2958.042, 204.4240, 0, 0, 100),
(1158, 5, -6101.874, -2964.922, 204.5645, 0, 0, 100),
(1158, 6, -6102.050, -2969.874, 205.9520, 0, 0, 100),
(1158, 7, -6099.533, -2974.474, 207.2040, 0, 0, 100),
(1158, 8, -6101.385, -2972.234, 206.9254, 0, 0, 100),
(1158, 9, -6103.052, -2967.230, 205.4125, 0, 0, 100),
(1158, 10, -6105.715, -2959.339, 204.0627, 0, 0, 100),
(1158, 11, -6109.388, -2957.833, 203.9826, 0, 0, 100),
(1158, 12, -6119.807, -2957.625, 204.1505, 0, 0, 100),
(1158, 13, -6123.529, -2959.291, 204.7974, 0, 0, 100),
(1158, 14, -6125.825, -2962.112, 205.2270, 0, 0, 100),
(1158, 15, -6127.534, -2971.227, 206.2265, 0, 0, 100),
(1158, 16, -6127.094, -2976.752, 207.9225, 0, 0, 100),
(1158, 17, -6125.497, -2978.678, 208.1843, 0, 0, 100),
(1158, 18, -6121.415, -2974.086, 207.7426, 0, 0, 100),
(1158, 19, -6122.793, -2975.419, 208.1469, 0, 0, 100),
(1158, 20, -6125.619, -2979.175, 208.2630, 0, 0, 100),
(1158, 21, -6127.380, -2976.698, 207.9361, 0, 0, 100),
(1158, 22, -6128.811, -2972.140, 206.4094, 0, 0, 100),
(1158, 23, -6129.136, -2963.716, 205.3263, 0, 0, 100),
(1158, 24, -6134.421, -2961.991, 205.3789, 0, 0, 100),
(1158, 25, -6141.194, -2959.964, 206.8950, 0, 0, 100),
(1158, 26, -6148.099, -2958.604, 208.5742, 0, 0, 100),
(1158, 27, -6151.897, -2964.003, 209.9048, 0, 0, 100),
(1158, 28, -6155.447, -2967.934, 210.3703, 0, 0, 100),
(1158, 29, -6151.275, -2964.127, 209.8114, 0, 0, 100),
(1158, 30, -6148.173, -2960.909, 208.7424, 0, 0, 100),
(1158, 31, -6145.237, -2957.414, 207.6732, 0, 0, 100),
(1158, 32, -6138.354, -2955.451, 206.2604, 0, 0, 100),
(1158, 33, -6133.299, -2954.773, 205.3833, 0, 0, 100),
(1158, 34, -6133.331, -2950.363, 205.5370, 0, 0, 100),
(1158, 35, -6129.844, -2944.939, 206.8252, 0, 0, 100),
(1158, 36, -6128.540, -2941.947, 208.2121, 0, 0, 100),
(1158, 37, -6131.505, -2937.527, 208.4833, 0, 0, 100),
(1158, 38, -6129.826, -2940.625, 208.2585, 0, 0, 100),
(1158, 39, -6131.113, -2944.509, 206.9187, 0, 0, 100),
(1158, 40, -6131.094, -2949.112, 205.6694, 0, 0, 100),
(1158, 41, -6127.615, -2952.112, 205.4447, 0, 0, 100),
(1158, 42, -6123.324, -2955.451, 205.0614, 0, 0, 100),
(1158, 43, -6119.654, -2955.990, 204.2662, 0, 0, 100),
(1158, 44, -6111.171, -2955.704, 203.9057, 0, 0, 100),
(1158, 45, -6107.260, -2954.036, 204.0976, 0, 0, 100),
(1158, 46, -6104.104, -2949.564, 204.5756, 0, 0, 100),
(1158, 47, -6102.686, -2944.576, 205.8261, 0, 0, 100),
(1158, 48, -6103.220, -2941.045, 207.1036, 0, 0, 100),
(1158, 49, -6104.592, -2939.081, 207.6933, 0, 0, 100);

-- Stats
UPDATE creature_template SET SpeedWalk=1, DamageMultiplier=1.7, MinMeleeDmg=49.7, MaxMeleeDmg=68.1, MinRangedDmg=0, MaxRangedDmg=0, MeleeAttackPower=124, RangedAttackPower=12, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE Entry=4856;