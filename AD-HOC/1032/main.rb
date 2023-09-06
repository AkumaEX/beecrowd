# frozen_string_literal: true

primes = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97, 101, 103, 107, 109, 113, 127, 131, 137, 139, 149, 151, 157, 163, 167, 173, 179, 181, 191, 193, 197, 199, 211, 223, 227, 229, 233, 239, 241, 251, 257, 263, 269, 271, 277, 281, 283, 293, 307, 311, 313, 317, 331, 337, 347, 349, 353, 359, 367, 373, 379, 383, 389, 397, 401, 409, 419, 421, 431, 433, 439, 443, 449, 457, 461, 463, 467, 479, 487, 491, 499, 503, 509, 521, 523, 541, 547, 557, 563, 569, 571, 577, 587, 593, 599, 601, 607, 613, 617, 619, 631, 641, 643, 647, 653, 659, 661, 673, 677, 683, 691, 701, 709, 719, 727, 733, 739, 743, 751, 757, 761, 769, 773, 787, 797, 809, 811, 821, 823, 827, 829, 839, 853, 857, 859, 863, 877, 881, 883, 887, 907, 911, 919, 929, 937, 941, 947, 953, 967, 971, 977, 983, 991, 997, 1009, 1013, 1019, 1021, 1031, 1033, 1039, 1049, 1051, 1061, 1063, 1069, 1087, 1091, 1093, 1097, 1103, 1109, 1117, 1123, 1129, 1151, 1153, 1163, 1171, 1181, 1187, 1193, 1201, 1213, 1217, 1223, 1229, 1231, 1237, 1249, 1259, 1277, 1279, 1283, 1289, 1291, 1297, 1301, 1303, 1307, 1319, 1321, 1327, 1361, 1367, 1373, 1381, 1399, 1409, 1423, 1427, 1429, 1433, 1439, 1447, 1451, 1453, 1459, 1471, 1481, 1483, 1487, 1489, 1493, 1499, 1511, 1523, 1531, 1543, 1549, 1553, 1559, 1567, 1571, 1579, 1583, 1597, 1601, 1607, 1609, 1613, 1619, 1621, 1627, 1637, 1657, 1663, 1667, 1669, 1693, 1697, 1699, 1709, 1721, 1723, 1733, 1741, 1747, 1753, 1759, 1777, 1783, 1787, 1789, 1801, 1811, 1823, 1831, 1847, 1861, 1867, 1871, 1873, 1877, 1879, 1889, 1901, 1907, 1913, 1931, 1933, 1949, 1951, 1973, 1979, 1987, 1993, 1997, 1999, 2003, 2011, 2017, 2027, 2029, 2039, 2053, 2063, 2069, 2081, 2083, 2087, 2089, 2099, 2111, 2113, 2129, 2131, 2137, 2141, 2143, 2153, 2161, 2179, 2203, 2207, 2213, 2221, 2237, 2239, 2243, 2251, 2267, 2269, 2273, 2281, 2287, 2293, 2297, 2309, 2311, 2333, 2339, 2341, 2347, 2351, 2357, 2371, 2377, 2381, 2383, 2389, 2393, 2399, 2411, 2417, 2423, 2437, 2441, 2447, 2459, 2467, 2473, 2477, 2503, 2521, 2531, 2539, 2543, 2549, 2551, 2557, 2579, 2591, 2593, 2609, 2617, 2621, 2633, 2647, 2657, 2659, 2663, 2671, 2677, 2683, 2687, 2689, 2693, 2699, 2707, 2711, 2713, 2719, 2729, 2731, 2741, 2749, 2753, 2767, 2777, 2789, 2791, 2797, 2801, 2803, 2819, 2833, 2837, 2843, 2851, 2857, 2861, 2879, 2887, 2897, 2903, 2909, 2917, 2927, 2939, 2953, 2957, 2963, 2969, 2971, 2999, 3001, 3011, 3019, 3023, 3037, 3041, 3049, 3061, 3067, 3079, 3083, 3089, 3109, 3119, 3121, 3137, 3163, 3167, 3169, 3181, 3187, 3191, 3203, 3209, 3217, 3221, 3229, 3251, 3253, 3257, 3259, 3271, 3299, 3301, 3307, 3313, 3319, 3323, 3329, 3331, 3343, 3347, 3359, 3361, 3371, 3373, 3389, 3391, 3407, 3413, 3433, 3449, 3457, 3461, 3463, 3467, 3469, 3491, 3499, 3511, 3517, 3527, 3529, 3533, 3539, 3541, 3547, 3557, 3559, 3571, 3581, 3583, 3593, 3607, 3613, 3617, 3623, 3631, 3637, 3643, 3659, 3671, 3673, 3677, 3691, 3697, 3701, 3709, 3719, 3727, 3733, 3739, 3761, 3767, 3769, 3779, 3793, 3797, 3803, 3821, 3823, 3833, 3847, 3851, 3853, 3863, 3877, 3881, 3889, 3907, 3911, 3917, 3919, 3923, 3929, 3931, 3943, 3947, 3967, 3989, 4001, 4003, 4007, 4013, 4019, 4021, 4027, 4049, 4051, 4057, 4073, 4079, 4091, 4093, 4099, 4111, 4127, 4129, 4133, 4139, 4153, 4157, 4159, 4177, 4201, 4211, 4217, 4219, 4229, 4231, 4241, 4243, 4253, 4259, 4261, 4271, 4273, 4283, 4289, 4297, 4327, 4337, 4339, 4349, 4357, 4363, 4373, 4391, 4397, 4409, 4421, 4423, 4441, 4447, 4451, 4457, 4463, 4481, 4483, 4493, 4507, 4513, 4517, 4519, 4523, 4547, 4549, 4561, 4567, 4583, 4591, 4597, 4603, 4621, 4637, 4639, 4643, 4649, 4651, 4657, 4663, 4673, 4679, 4691, 4703, 4721, 4723, 4729, 4733, 4751, 4759, 4783, 4787, 4789, 4793, 4799, 4801, 4813, 4817, 4831, 4861, 4871, 4877, 4889, 4903, 4909, 4919, 4931, 4933, 4937, 4943, 4951, 4957, 4967, 4969, 4973, 4987, 4993, 4999, 5003, 5009, 5011, 5021, 5023, 5039, 5051, 5059, 5077, 5081, 5087, 5099, 5101, 5107, 5113, 5119, 5147, 5153, 5167, 5171, 5179, 5189, 5197, 5209, 5227, 5231, 5233, 5237, 5261, 5273, 5279, 5281, 5297, 5303, 5309, 5323, 5333, 5347, 5351, 5381, 5387, 5393, 5399, 5407, 5413, 5417, 5419, 5431, 5437, 5441, 5443, 5449, 5471, 5477, 5479, 5483, 5501, 5503, 5507, 5519, 5521, 5527, 5531, 5557, 5563, 5569, 5573, 5581, 5591, 5623, 5639, 5641, 5647, 5651, 5653, 5657, 5659, 5669, 5683, 5689, 5693, 5701, 5711, 5717, 5737, 5741, 5743, 5749, 5779, 5783, 5791, 5801, 5807, 5813, 5821, 5827, 5839, 5843, 5849, 5851, 5857, 5861, 5867, 5869, 5879, 5881, 5897, 5903, 5923, 5927, 5939, 5953, 5981, 5987, 6007, 6011, 6029, 6037, 6043, 6047, 6053, 6067, 6073, 6079, 6089, 6091, 6101, 6113, 6121, 6131, 6133, 6143, 6151, 6163, 6173, 6197, 6199, 6203, 6211, 6217, 6221, 6229, 6247, 6257, 6263, 6269, 6271, 6277, 6287, 6299, 6301, 6311, 6317, 6323, 6329, 6337, 6343, 6353, 6359, 6361, 6367, 6373, 6379, 6389, 6397, 6421, 6427, 6449, 6451, 6469, 6473, 6481, 6491, 6521, 6529, 6547, 6551, 6553, 6563, 6569, 6571, 6577, 6581, 6599, 6607, 6619, 6637, 6653, 6659, 6661, 6673, 6679, 6689, 6691, 6701, 6703, 6709, 6719, 6733, 6737, 6761, 6763, 6779, 6781, 6791, 6793, 6803, 6823, 6827, 6829, 6833, 6841, 6857, 6863, 6869, 6871, 6883, 6899, 6907, 6911, 6917, 6947, 6949, 6959, 6961, 6967, 6971, 6977, 6983, 6991, 6997, 7001, 7013, 7019, 7027, 7039, 7043, 7057, 7069, 7079, 7103, 7109, 7121, 7127, 7129, 7151, 7159, 7177, 7187, 7193, 7207, 7211, 7213, 7219, 7229, 7237, 7243, 7247, 7253, 7283, 7297, 7307, 7309, 7321, 7331, 7333, 7349, 7351, 7369, 7393, 7411, 7417, 7433, 7451, 7457, 7459, 7477, 7481, 7487, 7489, 7499, 7507, 7517, 7523, 7529, 7537, 7541, 7547, 7549, 7559, 7561, 7573, 7577, 7583, 7589, 7591, 7603, 7607, 7621, 7639, 7643, 7649, 7669, 7673, 7681, 7687, 7691, 7699, 7703, 7717, 7723, 7727, 7741, 7753, 7757, 7759, 7789, 7793, 7817, 7823, 7829, 7841, 7853, 7867, 7873, 7877, 7879, 7883, 7901, 7907, 7919, 7927, 7933, 7937, 7949, 7951, 7963, 7993, 8009, 8011, 8017, 8039, 8053, 8059, 8069, 8081, 8087, 8089, 8093, 8101, 8111, 8117, 8123, 8147, 8161, 8167, 8171, 8179, 8191, 8209, 8219, 8221, 8231, 8233, 8237, 8243, 8263, 8269, 8273, 8287, 8291, 8293, 8297, 8311, 8317, 8329, 8353, 8363, 8369, 8377, 8387, 8389, 8419, 8423, 8429, 8431, 8443, 8447, 8461, 8467, 8501, 8513, 8521, 8527, 8537, 8539, 8543, 8563, 8573, 8581, 8597, 8599, 8609, 8623, 8627, 8629, 8641, 8647, 8663, 8669, 8677, 8681, 8689, 8693, 8699, 8707, 8713, 8719, 8731, 8737, 8741, 8747, 8753, 8761, 8779, 8783, 8803, 8807, 8819, 8821, 8831, 8837, 8839, 8849, 8861, 8863, 8867, 8887, 8893, 8923, 8929, 8933, 8941, 8951, 8963, 8969, 8971, 8999, 9001, 9007, 9011, 9013, 9029, 9041, 9043, 9049, 9059, 9067, 9091, 9103, 9109, 9127, 9133, 9137, 9151, 9157, 9161, 9173, 9181, 9187, 9199, 9203, 9209, 9221, 9227, 9239, 9241, 9257, 9277, 9281, 9283, 9293, 9311, 9319, 9323, 9337, 9341, 9343, 9349, 9371, 9377, 9391, 9397, 9403, 9413, 9419, 9421, 9431, 9433, 9437, 9439, 9461, 9463, 9467, 9473, 9479, 9491, 9497, 9511, 9521, 9533, 9539, 9547, 9551, 9587, 9601, 9613, 9619, 9623, 9629, 9631, 9643, 9649, 9661, 9677, 9679, 9689, 9697, 9719, 9721, 9733, 9739, 9743, 9749, 9767, 9769, 9781, 9787, 9791, 9803, 9811, 9817, 9829, 9833, 9839, 9851, 9857, 9859, 9871, 9883, 9887, 9901, 9907, 9923, 9929, 9931, 9941, 9949, 9967, 9973, 10_007, 10_009, 10_037, 10_039, 10_061, 10_067, 10_069, 10_079, 10_091, 10_093, 10_099, 10_103, 10_111, 10_133, 10_139, 10_141, 10_151, 10_159, 10_163, 10_169, 10_177, 10_181, 10_193, 10_211, 10_223, 10_243, 10_247, 10_253, 10_259, 10_267, 10_271, 10_273, 10_289, 10_301, 10_303, 10_313, 10_321, 10_331, 10_333, 10_337, 10_343, 10_357, 10_369, 10_391, 10_399, 10_427, 10_429, 10_433, 10_453, 10_457, 10_459, 10_463, 10_477, 10_487, 10_499, 10_501, 10_513, 10_529, 10_531, 10_559, 10_567, 10_589, 10_597, 10_601, 10_607, 10_613, 10_627, 10_631, 10_639, 10_651, 10_657, 10_663, 10_667, 10_687, 10_691, 10_709, 10_711, 10_723, 10_729, 10_733, 10_739, 10_753, 10_771, 10_781, 10_789, 10_799, 10_831, 10_837, 10_847, 10_853, 10_859, 10_861, 10_867, 10_883, 10_889, 10_891, 10_903, 10_909, 10_937, 10_939, 10_949, 10_957, 10_973, 10_979, 10_987, 10_993, 11_003, 11_027, 11_047, 11_057, 11_059, 11_069, 11_071, 11_083, 11_087, 11_093, 11_113, 11_117, 11_119, 11_131, 11_149, 11_159, 11_161, 11_171, 11_173, 11_177, 11_197, 11_213, 11_239, 11_243, 11_251, 11_257, 11_261, 11_273, 11_279, 11_287, 11_299, 11_311, 11_317, 11_321, 11_329, 11_351, 11_353, 11_369, 11_383, 11_393, 11_399, 11_411, 11_423, 11_437, 11_443, 11_447, 11_467, 11_471, 11_483, 11_489, 11_491, 11_497, 11_503, 11_519, 11_527, 11_549, 11_551, 11_579, 11_587, 11_593, 11_597, 11_617, 11_621, 11_633, 11_657, 11_677, 11_681, 11_689, 11_699, 11_701, 11_717, 11_719, 11_731, 11_743, 11_777, 11_779, 11_783, 11_789, 11_801, 11_807, 11_813, 11_821, 11_827, 11_831, 11_833, 11_839, 11_863, 11_867, 11_887, 11_897, 11_903, 11_909, 11_923, 11_927, 11_933, 11_939, 11_941, 11_953, 11_959, 11_969, 11_971, 11_981, 11_987, 12_007, 12_011, 12_037, 12_041, 12_043, 12_049, 12_071, 12_073, 12_097, 12_101, 12_107, 12_109, 12_113, 12_119, 12_143, 12_149, 12_157, 12_161, 12_163, 12_197, 12_203, 12_211, 12_227, 12_239, 12_241, 12_251, 12_253, 12_263, 12_269, 12_277, 12_281, 12_289, 12_301, 12_323, 12_329, 12_343, 12_347, 12_373, 12_377, 12_379, 12_391, 12_401, 12_409, 12_413, 12_421, 12_433, 12_437, 12_451, 12_457, 12_473, 12_479, 12_487, 12_491, 12_497, 12_503, 12_511, 12_517, 12_527, 12_539, 12_541, 12_547, 12_553, 12_569, 12_577, 12_583, 12_589, 12_601, 12_611, 12_613, 12_619, 12_637, 12_641, 12_647, 12_653, 12_659, 12_671, 12_689, 12_697, 12_703, 12_713, 12_721, 12_739, 12_743, 12_757, 12_763, 12_781, 12_791, 12_799, 12_809, 12_821, 12_823, 12_829, 12_841, 12_853, 12_889, 12_893, 12_899, 12_907, 12_911, 12_917, 12_919, 12_923, 12_941, 12_953, 12_959, 12_967, 12_973, 12_979, 12_983, 13_001, 13_003, 13_007, 13_009, 13_033, 13_037, 13_043, 13_049, 13_063, 13_093, 13_099, 13_103, 13_109, 13_121, 13_127, 13_147, 13_151, 13_159, 13_163, 13_171, 13_177, 13_183, 13_187, 13_217, 13_219, 13_229, 13_241, 13_249, 13_259, 13_267, 13_291, 13_297, 13_309, 13_313, 13_327, 13_331, 13_337, 13_339, 13_367, 13_381, 13_397, 13_399, 13_411, 13_417, 13_421, 13_441, 13_451, 13_457, 13_463, 13_469, 13_477, 13_487, 13_499, 13_513, 13_523, 13_537, 13_553, 13_567, 13_577, 13_591, 13_597, 13_613, 13_619, 13_627, 13_633, 13_649, 13_669, 13_679, 13_681, 13_687, 13_691, 13_693, 13_697, 13_709, 13_711, 13_721, 13_723, 13_729, 13_751, 13_757, 13_759, 13_763, 13_781, 13_789, 13_799, 13_807, 13_829, 13_831, 13_841, 13_859, 13_873, 13_877, 13_879, 13_883, 13_901, 13_903, 13_907, 13_913, 13_921, 13_931, 13_933, 13_963, 13_967, 13_997, 13_999, 14_009, 14_011, 14_029, 14_033, 14_051, 14_057, 14_071, 14_081, 14_083, 14_087, 14_107, 14_143, 14_149, 14_153, 14_159, 14_173, 14_177, 14_197, 14_207, 14_221, 14_243, 14_249, 14_251, 14_281, 14_293, 14_303, 14_321, 14_323, 14_327, 14_341, 14_347, 14_369, 14_387, 14_389, 14_401, 14_407, 14_411, 14_419, 14_423, 14_431, 14_437, 14_447, 14_449, 14_461, 14_479, 14_489, 14_503, 14_519, 14_533, 14_537, 14_543, 14_549, 14_551, 14_557, 14_561, 14_563, 14_591, 14_593, 14_621, 14_627, 14_629, 14_633, 14_639, 14_653, 14_657, 14_669, 14_683, 14_699, 14_713, 14_717, 14_723, 14_731, 14_737, 14_741, 14_747, 14_753, 14_759, 14_767, 14_771, 14_779, 14_783, 14_797, 14_813, 14_821, 14_827, 14_831, 14_843, 14_851, 14_867, 14_869, 14_879, 14_887, 14_891, 14_897, 14_923, 14_929, 14_939, 14_947, 14_951, 14_957, 14_969, 14_983, 15_013, 15_017, 15_031, 15_053, 15_061, 15_073, 15_077, 15_083, 15_091, 15_101, 15_107, 15_121, 15_131, 15_137, 15_139, 15_149, 15_161, 15_173, 15_187, 15_193, 15_199, 15_217, 15_227, 15_233, 15_241, 15_259, 15_263, 15_269, 15_271, 15_277, 15_287, 15_289, 15_299, 15_307, 15_313, 15_319, 15_329, 15_331, 15_349, 15_359, 15_361, 15_373, 15_377, 15_383, 15_391, 15_401, 15_413, 15_427, 15_439, 15_443, 15_451, 15_461, 15_467, 15_473, 15_493, 15_497, 15_511, 15_527, 15_541, 15_551, 15_559, 15_569, 15_581, 15_583, 15_601, 15_607, 15_619, 15_629, 15_641, 15_643, 15_647, 15_649, 15_661, 15_667, 15_671, 15_679, 15_683, 15_727, 15_731, 15_733, 15_737, 15_739, 15_749, 15_761, 15_767, 15_773, 15_787, 15_791, 15_797, 15_803, 15_809, 15_817, 15_823, 15_859, 15_877, 15_881, 15_887, 15_889, 15_901, 15_907, 15_913, 15_919, 15_923, 15_937, 15_959, 15_971, 15_973, 15_991, 16_001, 16_007, 16_033, 16_057, 16_061, 16_063, 16_067, 16_069, 16_073, 16_087, 16_091, 16_097, 16_103, 16_111, 16_127, 16_139, 16_141, 16_183, 16_187, 16_189, 16_193, 16_217, 16_223, 16_229, 16_231, 16_249, 16_253, 16_267, 16_273, 16_301, 16_319, 16_333, 16_339, 16_349, 16_361, 16_363, 16_369, 16_381, 16_411, 16_417, 16_421, 16_427, 16_433, 16_447, 16_451, 16_453, 16_477, 16_481, 16_487, 16_493, 16_519, 16_529, 16_547, 16_553, 16_561, 16_567, 16_573, 16_603, 16_607, 16_619, 16_631, 16_633, 16_649, 16_651, 16_657, 16_661, 16_673, 16_691, 16_693, 16_699, 16_703, 16_729, 16_741, 16_747, 16_759, 16_763, 16_787, 16_811, 16_823, 16_829, 16_831, 16_843, 16_871, 16_879, 16_883, 16_889, 16_901, 16_903, 16_921, 16_927, 16_931, 16_937, 16_943, 16_963, 16_979, 16_981, 16_987, 16_993, 17_011, 17_021, 17_027, 17_029, 17_033, 17_041, 17_047, 17_053, 17_077, 17_093, 17_099, 17_107, 17_117, 17_123, 17_137, 17_159, 17_167, 17_183, 17_189, 17_191, 17_203, 17_207, 17_209, 17_231, 17_239, 17_257, 17_291, 17_293, 17_299, 17_317, 17_321, 17_327, 17_333, 17_341, 17_351, 17_359, 17_377, 17_383, 17_387, 17_389, 17_393, 17_401, 17_417, 17_419, 17_431, 17_443, 17_449, 17_467, 17_471, 17_477, 17_483, 17_489, 17_491, 17_497, 17_509, 17_519, 17_539, 17_551, 17_569, 17_573, 17_579, 17_581, 17_597, 17_599, 17_609, 17_623, 17_627, 17_657, 17_659, 17_669, 17_681, 17_683, 17_707, 17_713, 17_729, 17_737, 17_747, 17_749, 17_761, 17_783, 17_789, 17_791, 17_807, 17_827, 17_837, 17_839, 17_851, 17_863, 17_881, 17_891, 17_903, 17_909, 17_911, 17_921, 17_923, 17_929, 17_939, 17_957, 17_959, 17_971, 17_977, 17_981, 17_987, 17_989, 18_013, 18_041, 18_043, 18_047, 18_049, 18_059, 18_061, 18_077, 18_089, 18_097, 18_119, 18_121, 18_127, 18_131, 18_133, 18_143, 18_149, 18_169, 18_181, 18_191, 18_199, 18_211, 18_217, 18_223, 18_229, 18_233, 18_251, 18_253, 18_257, 18_269, 18_287, 18_289, 18_301, 18_307, 18_311, 18_313, 18_329, 18_341, 18_353, 18_367, 18_371, 18_379, 18_397, 18_401, 18_413, 18_427, 18_433, 18_439, 18_443, 18_451, 18_457, 18_461, 18_481, 18_493, 18_503, 18_517, 18_521, 18_523, 18_539, 18_541, 18_553, 18_583, 18_587, 18_593, 18_617, 18_637, 18_661, 18_671, 18_679, 18_691, 18_701, 18_713, 18_719, 18_731, 18_743, 18_749, 18_757, 18_773, 18_787, 18_793, 18_797, 18_803, 18_839, 18_859, 18_869, 18_899, 18_911, 18_913, 18_917, 18_919, 18_947, 18_959, 18_973, 18_979, 19_001, 19_009, 19_013, 19_031, 19_037, 19_051, 19_069, 19_073, 19_079, 19_081, 19_087, 19_121, 19_139, 19_141, 19_157, 19_163, 19_181, 19_183, 19_207, 19_211, 19_213, 19_219, 19_231, 19_237, 19_249, 19_259, 19_267, 19_273, 19_289, 19_301, 19_309, 19_319, 19_333, 19_373, 19_379, 19_381, 19_387, 19_391, 19_403, 19_417, 19_421, 19_423, 19_427, 19_429, 19_433, 19_441, 19_447, 19_457, 19_463, 19_469, 19_471, 19_477, 19_483, 19_489, 19_501, 19_507, 19_531, 19_541, 19_543, 19_553, 19_559, 19_571, 19_577, 19_583, 19_597, 19_603, 19_609, 19_661, 19_681, 19_687, 19_697, 19_699, 19_709, 19_717, 19_727, 19_739, 19_751, 19_753, 19_759, 19_763, 19_777, 19_793, 19_801, 19_813, 19_819, 19_841, 19_843, 19_853, 19_861, 19_867, 19_889, 19_891, 19_913, 19_919, 19_927, 19_937, 19_949, 19_961, 19_963, 19_973, 19_979, 19_991, 19_993, 19_997, 20_011, 20_021, 20_023, 20_029, 20_047, 20_051, 20_063, 20_071, 20_089, 20_101, 20_107, 20_113, 20_117, 20_123, 20_129, 20_143, 20_147, 20_149, 20_161, 20_173, 20_177, 20_183, 20_201, 20_219, 20_231, 20_233, 20_249, 20_261, 20_269, 20_287, 20_297, 20_323, 20_327, 20_333, 20_341, 20_347, 20_353, 20_357, 20_359, 20_369, 20_389, 20_393, 20_399, 20_407, 20_411, 20_431, 20_441, 20_443, 20_477, 20_479, 20_483, 20_507, 20_509, 20_521, 20_533, 20_543, 20_549, 20_551, 20_563, 20_593, 20_599, 20_611, 20_627, 20_639, 20_641, 20_663, 20_681, 20_693, 20_707, 20_717, 20_719, 20_731, 20_743, 20_747, 20_749, 20_753, 20_759, 20_771, 20_773, 20_789, 20_807, 20_809, 20_849, 20_857, 20_873, 20_879, 20_887, 20_897, 20_899, 20_903, 20_921, 20_929, 20_939, 20_947, 20_959, 20_963, 20_981, 20_983, 21_001, 21_011, 21_013, 21_017, 21_019, 21_023, 21_031, 21_059, 21_061, 21_067, 21_089, 21_101, 21_107, 21_121, 21_139, 21_143, 21_149, 21_157, 21_163, 21_169, 21_179, 21_187, 21_191, 21_193, 21_211, 21_221, 21_227, 21_247, 21_269, 21_277, 21_283, 21_313, 21_317, 21_319, 21_323, 21_341, 21_347, 21_377, 21_379, 21_383, 21_391, 21_397, 21_401, 21_407, 21_419, 21_433, 21_467, 21_481, 21_487, 21_491, 21_493, 21_499, 21_503, 21_517, 21_521, 21_523, 21_529, 21_557, 21_559, 21_563, 21_569, 21_577, 21_587, 21_589, 21_599, 21_601, 21_611, 21_613, 21_617, 21_647, 21_649, 21_661, 21_673, 21_683, 21_701, 21_713, 21_727, 21_737, 21_739, 21_751, 21_757, 21_767, 21_773, 21_787, 21_799, 21_803, 21_817, 21_821, 21_839, 21_841, 21_851, 21_859, 21_863, 21_871, 21_881, 21_893, 21_911, 21_929, 21_937, 21_943, 21_961, 21_977, 21_991, 21_997, 22_003, 22_013, 22_027, 22_031, 22_037, 22_039, 22_051, 22_063, 22_067, 22_073, 22_079, 22_091, 22_093, 22_109, 22_111, 22_123, 22_129, 22_133, 22_147, 22_153, 22_157, 22_159, 22_171, 22_189, 22_193, 22_229, 22_247, 22_259, 22_271, 22_273, 22_277, 22_279, 22_283, 22_291, 22_303, 22_307, 22_343, 22_349, 22_367, 22_369, 22_381, 22_391, 22_397, 22_409, 22_433, 22_441, 22_447, 22_453, 22_469, 22_481, 22_483, 22_501, 22_511, 22_531, 22_541, 22_543, 22_549, 22_567, 22_571, 22_573, 22_613, 22_619, 22_621, 22_637, 22_639, 22_643, 22_651, 22_669, 22_679, 22_691, 22_697, 22_699, 22_709, 22_717, 22_721, 22_727, 22_739, 22_741, 22_751, 22_769, 22_777, 22_783, 22_787, 22_807, 22_811, 22_817, 22_853, 22_859, 22_861, 22_871, 22_877, 22_901, 22_907, 22_921, 22_937, 22_943, 22_961, 22_963, 22_973, 22_993, 23_003, 23_011, 23_017, 23_021, 23_027, 23_029, 23_039, 23_041, 23_053, 23_057, 23_059, 23_063, 23_071, 23_081, 23_087, 23_099, 23_117, 23_131, 23_143, 23_159, 23_167, 23_173, 23_189, 23_197, 23_201, 23_203, 23_209, 23_227, 23_251, 23_269, 23_279, 23_291, 23_293, 23_297, 23_311, 23_321, 23_327, 23_333, 23_339, 23_357, 23_369, 23_371, 23_399, 23_417, 23_431, 23_447, 23_459, 23_473, 23_497, 23_509, 23_531, 23_537, 23_539, 23_549, 23_557, 23_561, 23_563, 23_567, 23_581, 23_593, 23_599, 23_603, 23_609, 23_623, 23_627, 23_629, 23_633, 23_663, 23_669, 23_671, 23_677, 23_687, 23_689, 23_719, 23_741, 23_743, 23_747, 23_753, 23_761, 23_767, 23_773, 23_789, 23_801, 23_813, 23_819, 23_827, 23_831, 23_833, 23_857, 23_869, 23_873, 23_879, 23_887, 23_893, 23_899, 23_909, 23_911, 23_917, 23_929, 23_957, 23_971, 23_977, 23_981, 23_993, 24_001, 24_007, 24_019, 24_023, 24_029, 24_043, 24_049, 24_061, 24_071, 24_077, 24_083, 24_091, 24_097, 24_103, 24_107, 24_109, 24_113, 24_121, 24_133, 24_137, 24_151, 24_169, 24_179, 24_181, 24_197, 24_203, 24_223, 24_229, 24_239, 24_247, 24_251, 24_281, 24_317, 24_329, 24_337, 24_359, 24_371, 24_373, 24_379, 24_391, 24_407, 24_413, 24_419, 24_421, 24_439, 24_443, 24_469, 24_473, 24_481, 24_499, 24_509, 24_517, 24_527, 24_533, 24_547, 24_551, 24_571, 24_593, 24_611, 24_623, 24_631, 24_659, 24_671, 24_677, 24_683, 24_691, 24_697, 24_709, 24_733, 24_749, 24_763, 24_767, 24_781, 24_793, 24_799, 24_809, 24_821, 24_841, 24_847, 24_851, 24_859, 24_877, 24_889, 24_907, 24_917, 24_919, 24_923, 24_943, 24_953, 24_967, 24_971, 24_977, 24_979, 24_989, 25_013, 25_031, 25_033, 25_037, 25_057, 25_073, 25_087, 25_097, 25_111, 25_117, 25_121, 25_127, 25_147, 25_153, 25_163, 25_169, 25_171, 25_183, 25_189, 25_219, 25_229, 25_237, 25_243, 25_247, 25_253, 25_261, 25_301, 25_303, 25_307, 25_309, 25_321, 25_339, 25_343, 25_349, 25_357, 25_367, 25_373, 25_391, 25_409, 25_411, 25_423, 25_439, 25_447, 25_453, 25_457, 25_463, 25_469, 25_471, 25_523, 25_537, 25_541, 25_561, 25_577, 25_579, 25_583, 25_589, 25_601, 25_603, 25_609, 25_621, 25_633, 25_639, 25_643, 25_657, 25_667, 25_673, 25_679, 25_693, 25_703, 25_717, 25_733, 25_741, 25_747, 25_759, 25_763, 25_771, 25_793, 25_799, 25_801, 25_819, 25_841, 25_847, 25_849, 25_867, 25_873, 25_889, 25_903, 25_913, 25_919, 25_931, 25_933, 25_939, 25_943, 25_951, 25_969, 25_981, 25_997, 25_999, 26_003, 26_017, 26_021, 26_029, 26_041, 26_053, 26_083, 26_099, 26_107, 26_111, 26_113, 26_119, 26_141, 26_153, 26_161, 26_171, 26_177, 26_183, 26_189, 26_203, 26_209, 26_227, 26_237, 26_249, 26_251, 26_261, 26_263, 26_267, 26_293, 26_297, 26_309, 26_317, 26_321, 26_339, 26_347, 26_357, 26_371, 26_387, 26_393, 26_399, 26_407, 26_417, 26_423, 26_431, 26_437, 26_449, 26_459, 26_479, 26_489, 26_497, 26_501, 26_513, 26_539, 26_557, 26_561, 26_573, 26_591, 26_597, 26_627, 26_633, 26_641, 26_647, 26_669, 26_681, 26_683, 26_687, 26_693, 26_699, 26_701, 26_711, 26_713, 26_717, 26_723, 26_729, 26_731, 26_737, 26_759, 26_777, 26_783, 26_801, 26_813, 26_821, 26_833, 26_839, 26_849, 26_861, 26_863, 26_879, 26_881, 26_891, 26_893, 26_903, 26_921, 26_927, 26_947, 26_951, 26_953, 26_959, 26_981, 26_987, 26_993, 27_011, 27_017, 27_031, 27_043, 27_059, 27_061, 27_067, 27_073, 27_077, 27_091, 27_103, 27_107, 27_109, 27_127, 27_143, 27_179, 27_191, 27_197, 27_211, 27_239, 27_241, 27_253, 27_259, 27_271, 27_277, 27_281, 27_283, 27_299, 27_329, 27_337, 27_361, 27_367, 27_397, 27_407, 27_409, 27_427, 27_431, 27_437, 27_449, 27_457, 27_479, 27_481, 27_487, 27_509, 27_527, 27_529, 27_539, 27_541, 27_551, 27_581, 27_583, 27_611, 27_617, 27_631, 27_647, 27_653, 27_673, 27_689, 27_691, 27_697, 27_701, 27_733, 27_737, 27_739, 27_743, 27_749, 27_751, 27_763, 27_767, 27_773, 27_779, 27_791, 27_793, 27_799, 27_803, 27_809, 27_817, 27_823, 27_827, 27_847, 27_851, 27_883, 27_893, 27_901, 27_917, 27_919, 27_941, 27_943, 27_947, 27_953, 27_961, 27_967, 27_983, 27_997, 28_001, 28_019, 28_027, 28_031, 28_051, 28_057, 28_069, 28_081, 28_087, 28_097, 28_099, 28_109, 28_111, 28_123, 28_151, 28_163, 28_181, 28_183, 28_201, 28_211, 28_219, 28_229, 28_277, 28_279, 28_283, 28_289, 28_297, 28_307, 28_309, 28_319, 28_349, 28_351, 28_387, 28_393, 28_403, 28_409, 28_411, 28_429, 28_433, 28_439, 28_447, 28_463, 28_477, 28_493, 28_499, 28_513, 28_517, 28_537, 28_541, 28_547, 28_549, 28_559, 28_571, 28_573, 28_579, 28_591, 28_597, 28_603, 28_607, 28_619, 28_621, 28_627, 28_631, 28_643, 28_649, 28_657, 28_661, 28_663, 28_669, 28_687, 28_697, 28_703, 28_711, 28_723, 28_729, 28_751, 28_753, 28_759, 28_771, 28_789, 28_793, 28_807, 28_813, 28_817, 28_837, 28_843, 28_859, 28_867, 28_871, 28_879, 28_901, 28_909, 28_921, 28_927, 28_933, 28_949, 28_961, 28_979, 29_009, 29_017, 29_021, 29_023, 29_027, 29_033, 29_059, 29_063, 29_077, 29_101, 29_123, 29_129, 29_131, 29_137, 29_147, 29_153, 29_167, 29_173, 29_179, 29_191, 29_201, 29_207, 29_209, 29_221, 29_231, 29_243, 29_251, 29_269, 29_287, 29_297, 29_303, 29_311, 29_327, 29_333, 29_339, 29_347, 29_363, 29_383, 29_387, 29_389, 29_399, 29_401, 29_411, 29_423, 29_429, 29_437, 29_443, 29_453, 29_473, 29_483, 29_501, 29_527, 29_531, 29_537, 29_567, 29_569, 29_573, 29_581, 29_587, 29_599, 29_611, 29_629, 29_633, 29_641, 29_663, 29_669, 29_671, 29_683, 29_717, 29_723, 29_741, 29_753, 29_759, 29_761, 29_789, 29_803, 29_819, 29_833, 29_837, 29_851, 29_863, 29_867, 29_873, 29_879, 29_881, 29_917, 29_921, 29_927, 29_947, 29_959, 29_983, 29_989, 30_011, 30_013, 30_029, 30_047, 30_059, 30_071, 30_089, 30_091, 30_097, 30_103, 30_109, 30_113, 30_119, 30_133, 30_137, 30_139, 30_161, 30_169, 30_181, 30_187, 30_197, 30_203, 30_211, 30_223, 30_241, 30_253, 30_259, 30_269, 30_271, 30_293, 30_307, 30_313, 30_319, 30_323, 30_341, 30_347, 30_367, 30_389, 30_391, 30_403, 30_427, 30_431, 30_449, 30_467, 30_469, 30_491, 30_493, 30_497, 30_509, 30_517, 30_529, 30_539, 30_553, 30_557, 30_559, 30_577, 30_593, 30_631, 30_637, 30_643, 30_649, 30_661, 30_671, 30_677, 30_689, 30_697, 30_703, 30_707, 30_713, 30_727, 30_757, 30_763, 30_773, 30_781, 30_803, 30_809, 30_817, 30_829, 30_839, 30_841, 30_851, 30_853, 30_859, 30_869, 30_871, 30_881, 30_893, 30_911, 30_931, 30_937, 30_941, 30_949, 30_971, 30_977, 30_983, 31_013, 31_019, 31_033, 31_039, 31_051, 31_063, 31_069, 31_079, 31_081, 31_091, 31_121, 31_123, 31_139, 31_147, 31_151, 31_153, 31_159, 31_177, 31_181, 31_183, 31_189, 31_193, 31_219, 31_223, 31_231, 31_237, 31_247, 31_249, 31_253, 31_259, 31_267, 31_271, 31_277, 31_307, 31_319, 31_321, 31_327, 31_333, 31_337, 31_357, 31_379, 31_387, 31_391, 31_393, 31_397, 31_469, 31_477, 31_481, 31_489, 31_511, 31_513, 31_517, 31_531, 31_541, 31_543, 31_547, 31_567, 31_573, 31_583, 31_601, 31_607, 31_627, 31_643, 31_649, 31_657, 31_663, 31_667, 31_687, 31_699, 31_721, 31_723, 31_727, 31_729, 31_741, 31_751, 31_769, 31_771, 31_793, 31_799, 31_817, 31_847, 31_849, 31_859, 31_873, 31_883, 31_891, 31_907, 31_957, 31_963, 31_973, 31_981, 31_991, 32_003, 32_009, 32_027, 32_029, 32_051, 32_057, 32_059, 32_063, 32_069, 32_077, 32_083, 32_089, 32_099, 32_117, 32_119, 32_141, 32_143, 32_159, 32_173, 32_183, 32_189, 32_191, 32_203, 32_213, 32_233, 32_237, 32_251, 32_257, 32_261, 32_297, 32_299, 32_303, 32_309, 32_321, 32_323, 32_327, 32_341, 32_353, 32_359, 32_363, 32_369, 32_371, 32_377, 32_381, 32_401, 32_411, 32_413, 32_423, 32_429, 32_441, 32_443, 32_467, 32_479, 32_491, 32_497, 32_503, 32_507, 32_531, 32_533, 32_537, 32_561, 32_563, 32_569, 32_573, 32_579, 32_587, 32_603, 32_609]

while (n = gets.to_i) != 0
  people = [*1..n]
  selected = 0
  primes.each do |m|
    break if people.length == 1

    selected = (selected + m - 1) % people.length
    people.delete_at selected
  end
  puts people.last
end