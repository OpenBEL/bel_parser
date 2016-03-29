
# begin: ragel
=begin

class << self
	attr_accessor :_bel_actions
	private :_bel_actions, :_bel_actions=
end
self._bel_actions = [
	0, 1, 1, 1, 4, 1, 7, 1, 
	9, 1, 21, 1, 24, 1, 25, 1, 
	27, 1, 28, 1, 31, 1, 33, 1, 
	34, 1, 35, 1, 36, 1, 42, 1, 
	43, 1, 44, 2, 0, 1, 2, 1, 
	17, 2, 2, 3, 2, 2, 12, 2, 
	2, 18, 2, 2, 23, 2, 4, 5, 
	2, 4, 9, 2, 6, 7, 2, 8, 
	10, 2, 9, 4, 2, 9, 11, 2, 
	26, 27, 2, 28, 29, 2, 28, 40, 
	2, 30, 31, 2, 32, 33, 2, 32, 
	36, 2, 32, 44, 2, 34, 39, 2, 
	35, 36, 3, 2, 14, 15, 3, 2, 
	14, 22, 3, 2, 18, 21, 3, 8, 
	13, 15, 3, 8, 13, 22, 3, 35, 
	41, 43, 4, 0, 1, 16, 17, 4, 
	2, 14, 22, 24, 4, 8, 13, 22, 
	24, 5, 19, 16, 0, 1, 17, 5, 
	20, 16, 0, 1, 17, 6, 2, 14, 
	22, 35, 41, 43, 6, 8, 13, 22, 
	35, 41, 43, 6, 37, 19, 16, 0, 
	1, 17, 6, 38, 19, 16, 0, 1, 
	17
]

class << self
	attr_accessor :_bel_key_offsets
	private :_bel_key_offsets, :_bel_key_offsets=
end
self._bel_key_offsets = [
	0, 0, 7, 17, 20, 30, 40, 42, 
	46, 49, 59, 72, 76, 78, 82, 86, 
	89, 90, 94, 95, 96, 97, 98, 109, 
	116, 124, 125, 127, 128, 129, 139, 149, 
	151, 152, 153, 161, 170, 177, 187, 190, 
	200, 210, 212, 216, 219, 229, 242, 246, 
	247, 258, 265, 275, 278, 288, 298, 300, 
	304, 307, 317, 330, 334, 335, 336, 347, 
	349, 352, 354, 355, 356, 357, 364, 374, 
	377, 387, 397, 399, 403, 406, 416, 429, 
	433, 435, 439, 443, 452, 462, 465, 475, 
	485, 487, 491, 494, 504, 517, 521, 525, 
	529, 530, 531, 532, 533, 544, 545, 556, 
	563, 573, 576, 586, 596, 598, 602, 605, 
	615, 628, 632, 634, 638, 642, 652, 653, 
	663, 666, 676, 686, 688, 692, 695, 705, 
	718, 722, 723, 734, 735, 746, 746, 746, 
	746, 746, 746, 746, 746, 746, 746
]

class << self
	attr_accessor :_bel_trans_keys
	private :_bel_trans_keys, :_bel_trans_keys=
end
self._bel_trans_keys = [
	95, 48, 57, 65, 90, 97, 122, 9, 
	32, 40, 95, 48, 57, 65, 90, 97, 
	122, 9, 32, 40, 9, 32, 34, 95, 
	48, 57, 65, 90, 97, 122, 9, 32, 
	34, 95, 48, 57, 65, 90, 97, 122, 
	34, 92, 9, 32, 41, 44, 9, 32, 
	44, 9, 32, 34, 95, 48, 57, 65, 
	90, 97, 122, 9, 32, 40, 41, 44, 
	58, 95, 48, 57, 65, 90, 97, 122, 
	9, 32, 41, 44, 9, 32, 9, 32, 
	33, 126, 9, 32, 33, 126, 9, 32, 
	40, 41, 9, 10, 32, 47, 47, 10, 
	10, 92, 9, 32, 41, 44, 95, 48, 
	57, 65, 90, 97, 122, 95, 48, 57, 
	65, 90, 97, 122, 10, 95, 48, 57, 
	65, 90, 97, 122, 34, 34, 92, 10, 
	92, 9, 32, 34, 95, 48, 57, 65, 
	90, 97, 122, 9, 32, 34, 95, 48, 
	57, 65, 90, 97, 122, 34, 92, 10, 
	92, 10, 95, 48, 57, 65, 90, 97, 
	122, 10, 58, 95, 48, 57, 65, 90, 
	97, 122, 95, 48, 57, 65, 90, 97, 
	122, 9, 32, 40, 95, 48, 57, 65, 
	90, 97, 122, 9, 32, 40, 9, 32, 
	34, 95, 48, 57, 65, 90, 97, 122, 
	9, 32, 34, 95, 48, 57, 65, 90, 
	97, 122, 34, 92, 9, 32, 41, 44, 
	9, 32, 44, 9, 32, 34, 95, 48, 
	57, 65, 90, 97, 122, 9, 32, 40, 
	41, 44, 58, 95, 48, 57, 65, 90, 
	97, 122, 9, 32, 41, 44, 92, 9, 
	32, 41, 44, 95, 48, 57, 65, 90, 
	97, 122, 95, 48, 57, 65, 90, 97, 
	122, 9, 32, 40, 95, 48, 57, 65, 
	90, 97, 122, 9, 32, 40, 9, 32, 
	34, 95, 48, 57, 65, 90, 97, 122, 
	9, 32, 34, 95, 48, 57, 65, 90, 
	97, 122, 34, 92, 9, 32, 41, 44, 
	9, 32, 44, 9, 32, 34, 95, 48, 
	57, 65, 90, 97, 122, 9, 32, 40, 
	41, 44, 58, 95, 48, 57, 65, 90, 
	97, 122, 9, 32, 41, 44, 10, 92, 
	9, 32, 41, 44, 95, 48, 57, 65, 
	90, 97, 122, 33, 126, 10, 33, 126, 
	10, 47, 47, 10, 10, 95, 48, 57, 
	65, 90, 97, 122, 9, 32, 40, 95, 
	48, 57, 65, 90, 97, 122, 9, 32, 
	40, 9, 32, 34, 95, 48, 57, 65, 
	90, 97, 122, 9, 32, 34, 95, 48, 
	57, 65, 90, 97, 122, 34, 92, 9, 
	32, 41, 44, 9, 32, 44, 9, 32, 
	34, 95, 48, 57, 65, 90, 97, 122, 
	9, 32, 40, 41, 44, 58, 95, 48, 
	57, 65, 90, 97, 122, 9, 32, 41, 
	44, 9, 32, 9, 32, 33, 126, 9, 
	32, 33, 126, 9, 32, 95, 48, 57, 
	65, 90, 97, 122, 9, 32, 40, 95, 
	48, 57, 65, 90, 97, 122, 9, 32, 
	40, 9, 32, 34, 95, 48, 57, 65, 
	90, 97, 122, 9, 32, 34, 95, 48, 
	57, 65, 90, 97, 122, 34, 92, 9, 
	32, 41, 44, 9, 32, 44, 9, 32, 
	34, 95, 48, 57, 65, 90, 97, 122, 
	9, 32, 40, 41, 44, 58, 95, 48, 
	57, 65, 90, 97, 122, 9, 32, 41, 
	44, 9, 10, 32, 47, 9, 10, 32, 
	47, 47, 10, 10, 92, 9, 32, 41, 
	44, 95, 48, 57, 65, 90, 97, 122, 
	92, 9, 32, 41, 44, 95, 48, 57, 
	65, 90, 97, 122, 95, 48, 57, 65, 
	90, 97, 122, 9, 32, 40, 95, 48, 
	57, 65, 90, 97, 122, 9, 32, 40, 
	9, 32, 34, 95, 48, 57, 65, 90, 
	97, 122, 9, 32, 34, 95, 48, 57, 
	65, 90, 97, 122, 34, 92, 9, 32, 
	41, 44, 9, 32, 44, 9, 32, 34, 
	95, 48, 57, 65, 90, 97, 122, 9, 
	32, 40, 41, 44, 58, 95, 48, 57, 
	65, 90, 97, 122, 9, 32, 41, 44, 
	9, 32, 9, 32, 33, 126, 9, 32, 
	33, 126, 9, 32, 40, 95, 48, 57, 
	65, 90, 97, 122, 41, 9, 32, 40, 
	95, 48, 57, 65, 90, 97, 122, 9, 
	32, 40, 9, 32, 34, 95, 48, 57, 
	65, 90, 97, 122, 9, 32, 34, 95, 
	48, 57, 65, 90, 97, 122, 34, 92, 
	9, 32, 41, 44, 9, 32, 44, 9, 
	32, 34, 95, 48, 57, 65, 90, 97, 
	122, 9, 32, 40, 41, 44, 58, 95, 
	48, 57, 65, 90, 97, 122, 9, 32, 
	41, 44, 92, 9, 32, 41, 44, 95, 
	48, 57, 65, 90, 97, 122, 92, 9, 
	32, 41, 44, 95, 48, 57, 65, 90, 
	97, 122, 0
]

class << self
	attr_accessor :_bel_single_lengths
	private :_bel_single_lengths, :_bel_single_lengths=
end
self._bel_single_lengths = [
	0, 1, 4, 3, 4, 4, 2, 4, 
	3, 4, 7, 4, 2, 2, 2, 3, 
	1, 4, 1, 1, 1, 1, 5, 1, 
	2, 1, 2, 1, 1, 4, 4, 2, 
	1, 1, 2, 3, 1, 4, 3, 4, 
	4, 2, 4, 3, 4, 7, 4, 1, 
	5, 1, 4, 3, 4, 4, 2, 4, 
	3, 4, 7, 4, 1, 1, 5, 0, 
	1, 2, 1, 1, 1, 1, 4, 3, 
	4, 4, 2, 4, 3, 4, 7, 4, 
	2, 2, 2, 3, 4, 3, 4, 4, 
	2, 4, 3, 4, 7, 4, 4, 4, 
	1, 1, 1, 1, 5, 1, 5, 1, 
	4, 3, 4, 4, 2, 4, 3, 4, 
	7, 4, 2, 2, 2, 4, 1, 4, 
	3, 4, 4, 2, 4, 3, 4, 7, 
	4, 1, 5, 1, 5, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0
]

class << self
	attr_accessor :_bel_range_lengths
	private :_bel_range_lengths, :_bel_range_lengths=
end
self._bel_range_lengths = [
	0, 3, 3, 0, 3, 3, 0, 0, 
	0, 3, 3, 0, 0, 1, 1, 0, 
	0, 0, 0, 0, 0, 0, 3, 3, 
	3, 0, 0, 0, 0, 3, 3, 0, 
	0, 0, 3, 3, 3, 3, 0, 3, 
	3, 0, 0, 0, 3, 3, 0, 0, 
	3, 3, 3, 0, 3, 3, 0, 0, 
	0, 3, 3, 0, 0, 0, 3, 1, 
	1, 0, 0, 0, 0, 3, 3, 0, 
	3, 3, 0, 0, 0, 3, 3, 0, 
	0, 1, 1, 3, 3, 0, 3, 3, 
	0, 0, 0, 3, 3, 0, 0, 0, 
	0, 0, 0, 0, 3, 0, 3, 3, 
	3, 0, 3, 3, 0, 0, 0, 3, 
	3, 0, 0, 1, 1, 3, 0, 3, 
	0, 3, 3, 0, 0, 0, 3, 3, 
	0, 0, 3, 0, 3, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0
]

class << self
	attr_accessor :_bel_index_offsets
	private :_bel_index_offsets, :_bel_index_offsets=
end
self._bel_index_offsets = [
	0, 0, 5, 13, 17, 25, 33, 36, 
	41, 45, 53, 64, 69, 72, 76, 80, 
	84, 86, 91, 93, 95, 97, 99, 108, 
	113, 119, 121, 124, 126, 128, 136, 144, 
	147, 149, 151, 157, 164, 169, 177, 181, 
	189, 197, 200, 205, 209, 217, 228, 233, 
	235, 244, 249, 257, 261, 269, 277, 280, 
	285, 289, 297, 308, 313, 315, 317, 326, 
	328, 331, 334, 336, 338, 340, 345, 353, 
	357, 365, 373, 376, 381, 385, 393, 404, 
	409, 412, 416, 420, 427, 435, 439, 447, 
	455, 458, 463, 467, 475, 486, 491, 496, 
	501, 503, 505, 507, 509, 518, 520, 529, 
	534, 542, 546, 554, 562, 565, 570, 574, 
	582, 593, 598, 601, 605, 609, 617, 619, 
	627, 631, 639, 647, 650, 655, 659, 667, 
	678, 683, 685, 694, 696, 705, 706, 707, 
	708, 709, 710, 711, 712, 713, 714
]

class << self
	attr_accessor :_bel_indicies
	private :_bel_indicies, :_bel_indicies=
end
self._bel_indicies = [
	1, 1, 1, 1, 0, 2, 2, 3, 
	4, 4, 4, 4, 0, 5, 5, 7, 
	6, 9, 9, 10, 11, 11, 11, 11, 
	8, 9, 9, 10, 13, 13, 13, 13, 
	12, 15, 16, 14, 18, 18, 19, 20, 
	17, 21, 21, 22, 6, 22, 22, 10, 
	11, 11, 11, 11, 8, 23, 23, 24, 
	25, 26, 28, 27, 27, 27, 27, 0, 
	21, 21, 29, 22, 6, 30, 30, 6, 
	31, 31, 32, 6, 33, 33, 34, 6, 
	35, 35, 36, 6, 37, 6, 37, 38, 
	37, 39, 6, 40, 6, 6, 41, 43, 
	42, 16, 14, 23, 23, 25, 26, 44, 
	44, 44, 44, 0, 46, 46, 46, 46, 
	45, 47, 48, 48, 48, 48, 45, 50, 
	49, 52, 53, 51, 54, 49, 53, 51, 
	55, 55, 56, 57, 57, 57, 57, 8, 
	55, 55, 56, 58, 58, 58, 58, 12, 
	60, 61, 59, 62, 17, 61, 59, 63, 
	64, 64, 64, 64, 0, 63, 66, 65, 
	65, 65, 65, 0, 67, 67, 67, 67, 
	0, 68, 68, 69, 70, 70, 70, 70, 
	0, 71, 71, 72, 6, 73, 73, 74, 
	75, 75, 75, 75, 8, 73, 73, 74, 
	76, 76, 76, 76, 12, 78, 79, 77, 
	80, 80, 81, 82, 17, 83, 83, 84, 
	6, 84, 84, 74, 75, 75, 75, 75, 
	8, 85, 85, 86, 87, 88, 90, 89, 
	89, 89, 89, 0, 83, 83, 91, 84, 
	6, 79, 77, 85, 85, 87, 88, 92, 
	92, 92, 92, 0, 93, 93, 93, 93, 
	0, 94, 94, 95, 96, 96, 96, 96, 
	0, 97, 97, 98, 6, 99, 99, 100, 
	101, 101, 101, 101, 8, 99, 99, 100, 
	102, 102, 102, 102, 12, 104, 105, 103, 
	106, 106, 107, 108, 17, 109, 109, 110, 
	6, 110, 110, 100, 101, 101, 101, 101, 
	8, 111, 111, 112, 113, 114, 116, 115, 
	115, 115, 115, 0, 109, 109, 117, 110, 
	6, 118, 6, 105, 103, 111, 111, 113, 
	114, 119, 119, 119, 119, 0, 120, 6, 
	121, 122, 6, 123, 124, 6, 125, 6, 
	6, 126, 128, 127, 129, 129, 129, 129, 
	0, 130, 130, 131, 132, 132, 132, 132, 
	0, 133, 133, 134, 6, 135, 135, 136, 
	137, 137, 137, 137, 8, 135, 135, 136, 
	138, 138, 138, 138, 12, 140, 141, 139, 
	142, 142, 143, 144, 17, 145, 145, 146, 
	6, 146, 146, 136, 137, 137, 137, 137, 
	8, 147, 147, 148, 149, 150, 152, 151, 
	151, 151, 151, 0, 145, 145, 153, 146, 
	6, 154, 154, 6, 155, 155, 156, 6, 
	157, 157, 158, 6, 159, 159, 160, 160, 
	160, 160, 0, 161, 161, 162, 163, 163, 
	163, 163, 0, 164, 164, 165, 6, 166, 
	166, 167, 168, 168, 168, 168, 8, 166, 
	166, 167, 169, 169, 169, 169, 12, 171, 
	172, 170, 173, 173, 174, 175, 17, 176, 
	176, 177, 6, 177, 177, 167, 168, 168, 
	168, 168, 8, 178, 178, 179, 180, 181, 
	183, 182, 182, 182, 182, 0, 176, 176, 
	184, 177, 6, 185, 186, 185, 187, 6, 
	188, 189, 188, 190, 6, 191, 6, 6, 
	192, 194, 193, 172, 170, 178, 178, 180, 
	181, 195, 195, 195, 195, 0, 141, 139, 
	147, 147, 149, 150, 196, 196, 196, 196, 
	0, 197, 197, 197, 197, 0, 198, 198, 
	199, 200, 200, 200, 200, 0, 201, 201, 
	202, 6, 203, 203, 204, 205, 205, 205, 
	205, 8, 203, 203, 204, 206, 206, 206, 
	206, 12, 208, 209, 207, 210, 210, 211, 
	212, 17, 213, 213, 214, 6, 214, 214, 
	204, 205, 205, 205, 205, 8, 215, 215, 
	216, 217, 218, 220, 219, 219, 219, 219, 
	0, 213, 213, 221, 214, 6, 222, 222, 
	6, 223, 223, 224, 6, 225, 225, 226, 
	6, 227, 227, 228, 229, 229, 229, 229, 
	0, 230, 6, 231, 231, 232, 233, 233, 
	233, 233, 0, 234, 234, 235, 6, 236, 
	236, 237, 238, 238, 238, 238, 8, 236, 
	236, 237, 239, 239, 239, 239, 12, 241, 
	242, 240, 243, 243, 244, 245, 17, 246, 
	246, 247, 6, 247, 247, 237, 238, 238, 
	238, 238, 8, 248, 248, 249, 250, 251, 
	253, 252, 252, 252, 252, 0, 246, 246, 
	254, 247, 6, 242, 240, 248, 248, 250, 
	251, 255, 255, 255, 255, 0, 209, 207, 
	215, 215, 217, 218, 256, 256, 256, 256, 
	0, 6, 6, 6, 6, 6, 6, 6, 
	6, 6, 6, 0
]

class << self
	attr_accessor :_bel_trans_targs
	private :_bel_trans_targs, :_bel_trans_targs=
end
self._bel_trans_targs = [
	0, 2, 3, 4, 2, 3, 0, 4, 
	0, 5, 6, 10, 0, 22, 6, 7, 
	21, 0, 8, 12, 9, 8, 9, 8, 
	11, 12, 9, 10, 5, 12, 13, 13, 
	14, 15, 14, 15, 16, 17, 133, 18, 
	19, 20, 20, 133, 22, 0, 24, 134, 
	24, 0, 26, 26, 27, 28, 135, 30, 
	31, 35, 34, 31, 32, 33, 136, 136, 
	34, 35, 30, 37, 38, 39, 37, 38, 
	39, 40, 41, 45, 48, 41, 42, 47, 
	43, 137, 44, 43, 44, 43, 46, 137, 
	44, 45, 40, 137, 48, 50, 51, 52, 
	50, 51, 52, 53, 54, 58, 62, 54, 
	55, 61, 56, 60, 57, 56, 57, 56, 
	59, 60, 57, 58, 53, 60, 138, 62, 
	64, 139, 64, 140, 66, 67, 68, 68, 
	140, 70, 71, 72, 70, 71, 72, 73, 
	74, 78, 102, 74, 75, 101, 76, 80, 
	77, 76, 77, 76, 79, 80, 77, 78, 
	73, 80, 81, 81, 82, 83, 82, 83, 
	84, 85, 86, 84, 85, 86, 87, 88, 
	92, 100, 88, 89, 99, 90, 94, 91, 
	90, 91, 90, 93, 94, 91, 92, 87, 
	94, 95, 141, 96, 95, 141, 96, 97, 
	98, 98, 141, 100, 102, 104, 105, 106, 
	104, 105, 106, 107, 108, 112, 132, 108, 
	109, 131, 110, 114, 111, 110, 111, 110, 
	113, 114, 111, 112, 107, 114, 115, 115, 
	116, 117, 116, 117, 118, 119, 142, 120, 
	121, 119, 120, 121, 122, 123, 127, 130, 
	123, 124, 129, 125, 142, 126, 125, 126, 
	125, 128, 142, 126, 127, 122, 142, 130, 
	132
]

class << self
	attr_accessor :_bel_trans_actions
	private :_bel_trans_actions, :_bel_trans_actions=
end
self._bel_trans_actions = [
	3, 163, 47, 106, 38, 0, 0, 9, 
	56, 0, 59, 122, 65, 35, 5, 5, 
	5, 7, 114, 114, 114, 0, 0, 102, 
	50, 102, 102, 38, 44, 0, 92, 0, 
	71, 77, 15, 0, 29, 0, 33, 0, 
	0, 80, 19, 89, 1, 53, 35, 41, 
	1, 68, 59, 5, 5, 5, 62, 0, 
	59, 35, 35, 5, 5, 5, 110, 98, 
	1, 1, 44, 143, 47, 106, 38, 0, 
	9, 0, 59, 122, 35, 5, 5, 5, 
	114, 132, 114, 0, 0, 102, 50, 127, 
	102, 38, 44, 11, 1, 137, 47, 106, 
	38, 0, 9, 0, 59, 122, 35, 5, 
	5, 5, 114, 114, 114, 0, 0, 102, 
	50, 102, 102, 38, 44, 0, 13, 1, 
	71, 74, 15, 21, 0, 0, 80, 19, 
	83, 137, 47, 106, 38, 0, 9, 0, 
	59, 122, 35, 5, 5, 5, 114, 114, 
	114, 0, 0, 102, 50, 102, 102, 38, 
	44, 0, 23, 0, 71, 17, 15, 0, 
	137, 47, 106, 38, 0, 9, 0, 59, 
	122, 35, 5, 5, 5, 114, 114, 114, 
	0, 0, 102, 50, 102, 102, 38, 44, 
	0, 25, 95, 25, 0, 27, 0, 0, 
	80, 19, 86, 1, 1, 170, 47, 106, 
	38, 0, 9, 0, 59, 122, 35, 5, 
	5, 5, 114, 114, 114, 0, 0, 102, 
	50, 102, 102, 38, 44, 0, 92, 0, 
	71, 77, 15, 0, 29, 137, 31, 47, 
	106, 38, 0, 9, 0, 59, 122, 35, 
	5, 5, 5, 114, 156, 114, 0, 0, 
	102, 50, 149, 102, 38, 44, 118, 1, 
	1
]

class << self
	attr_accessor :_bel_eof_actions
	private :_bel_eof_actions, :_bel_eof_actions=
end
self._bel_eof_actions = [
	0, 3, 3, 0, 56, 65, 7, 7, 
	0, 56, 3, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 7, 3, 53, 
	53, 68, 68, 68, 68, 56, 65, 7, 
	7, 7, 3, 3, 3, 3, 0, 56, 
	65, 7, 7, 0, 56, 3, 0, 7, 
	3, 3, 3, 0, 56, 65, 7, 7, 
	0, 56, 3, 0, 0, 7, 3, 0, 
	0, 0, 0, 0, 0, 3, 3, 0, 
	56, 65, 7, 7, 0, 56, 3, 0, 
	0, 0, 0, 3, 3, 0, 56, 65, 
	7, 7, 0, 56, 3, 0, 0, 0, 
	0, 0, 0, 7, 3, 7, 3, 3, 
	3, 0, 56, 65, 7, 7, 0, 56, 
	3, 0, 0, 0, 0, 3, 0, 3, 
	0, 56, 65, 7, 7, 0, 56, 3, 
	0, 7, 3, 7, 3, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0
]

class << self
	attr_accessor :bel_start
end
self.bel_start = 1;
class << self
	attr_accessor :bel_first_final
end
self.bel_first_final = 133;
class << self
	attr_accessor :bel_error
end
self.bel_error = 0;

class << self
	attr_accessor :bel_en_ident
end
self.bel_en_ident = 23;
class << self
	attr_accessor :bel_en_string
end
self.bel_en_string = 25;
class << self
	attr_accessor :bel_en_bel_parameter
end
self.bel_en_bel_parameter = 29;
class << self
	attr_accessor :bel_en_inner_term
end
self.bel_en_inner_term = 36;
class << self
	attr_accessor :bel_en_term
end
self.bel_en_term = 49;
class << self
	attr_accessor :bel_en_relationship
end
self.bel_en_relationship = 63;
class << self
	attr_accessor :bel_en_comment
end
self.bel_en_comment = 65;
class << self
	attr_accessor :bel_en_statement_simple
end
self.bel_en_statement_simple = 69;
class << self
	attr_accessor :bel_en_inner_statement
end
self.bel_en_inner_statement = 103;
class << self
	attr_accessor :bel_en_statement_nested
end
self.bel_en_statement_nested = 1;


begin
	p ||= 0
	pe ||= data.length
	cs = bel_start
	top = 0
end

begin
	_klen, _trans, _keys, _acts, _nacts = nil
	_goto_level = 0
	_resume = 10
	_eof_trans = 15
	_again = 20
	_test_eof = 30
	_out = 40
	while true
	_trigger_goto = false
	if _goto_level <= 0
	if p == pe
		_goto_level = _test_eof
		next
	end
	if cs == 0
		_goto_level = _out
		next
	end
	end
	if _goto_level <= _resume
	_keys = _bel_key_offsets[cs]
	_trans = _bel_index_offsets[cs]
	_klen = _bel_single_lengths[cs]
	_break_match = false
	
	begin
	  if _klen > 0
	     _lower = _keys
	     _upper = _keys + _klen - 1

	     loop do
	        break if _upper < _lower
	        _mid = _lower + ( (_upper - _lower) >> 1 )

	        if data[p].ord < _bel_trans_keys[_mid]
	           _upper = _mid - 1
	        elsif data[p].ord > _bel_trans_keys[_mid]
	           _lower = _mid + 1
	        else
	           _trans += (_mid - _keys)
	           _break_match = true
	           break
	        end
	     end # loop
	     break if _break_match
	     _keys += _klen
	     _trans += _klen
	  end
	  _klen = _bel_range_lengths[cs]
	  if _klen > 0
	     _lower = _keys
	     _upper = _keys + (_klen << 1) - 2
	     loop do
	        break if _upper < _lower
	        _mid = _lower + (((_upper-_lower) >> 1) & ~1)
	        if data[p].ord < _bel_trans_keys[_mid]
	          _upper = _mid - 2
	        elsif data[p].ord > _bel_trans_keys[_mid+1]
	          _lower = _mid + 2
	        else
	          _trans += ((_mid - _keys) >> 1)
	          _break_match = true
	          break
	        end
	     end # loop
	     break if _break_match
	     _trans += _klen
	  end
	end while false
	_trans = _bel_indicies[_trans]
	cs = _bel_trans_targs[_trans]
	if _bel_trans_actions[_trans] != 0
		_acts = _bel_trans_actions[_trans]
		_nacts = _bel_actions[_acts]
		_acts += 1
		while _nacts > 0
			_nacts -= 1
			_acts += 1
			case _bel_actions[_acts - 1]
when 0 then
		begin

    @buffers[:ident] = []
  		end
when 1 then
		begin

    (@buffers[:ident] ||= []) << data[p].ord
  		end
when 2 then
		begin

    @buffers[:ident] = s(:identifier,
                         utf8_string(@buffers[:ident]))
  		end
when 3 then
		begin

    yield @buffers[:ident]
  		end
when 4 then
		begin

    unless @buffers[:ident].is_a?(::AST::Node)
      @buffers[:ident] ||= []
      @buffers[:ident]   = s(:identifier,
                             utf8_string(@buffers[:ident]).sub(/\n$/, ''))
    end
  		end
when 5 then
		begin

    @buffers[:ident] ||= []
    yield @buffers[:ident]
  		end
when 6 then
		begin

    @buffers[:string] = []
  		end
when 7 then
		begin

    (@buffers[:string] ||= []) << data[p].ord
  		end
when 8 then
		begin

    @buffers[:string] = s(:string,
                          utf8_string(@buffers[:string]))
  		end
when 9 then
		begin

    @buffers[:string] ||= []
    @buffers[:string] = s(:string,
                          utf8_string(@buffers[:string]).sub(/\n$/, ''))
  		end
when 10 then
		begin

    yield @buffers[:string]
  		end
when 11 then
		begin

    @buffers[:string] ||= []
    yield @buffers[:string]
  		end
when 12 then
		begin

    @parameter = s(:parameter,
                   s(:prefix, @buffers[:ident]))
  		end
when 13 then
		begin

    @parameter ||= s(:parameter, s(:prefix, nil))
    @parameter   = @parameter << s(:value, @buffers[:string])
  		end
when 14 then
		begin

    @parameter ||= s(:parameter, s(:prefix, nil))
    @parameter   = @parameter << s(:value, @buffers[:ident])
  		end
when 15 then
		begin

    yield @parameter
  		end
when 16 then
		begin

    @buffers[:function] = []
  		end
when 17 then
		begin

    @buffers[:function] << data[p].ord
  		end
when 18 then
		begin

    @buffers[:function] = s(:identifier,
                            utf8_string(@buffers[:function]))
  		end
when 19 then
		begin

    @buffers[:term_stack] = [ s(:term) ]
  		end
when 20 then
		begin

    @buffers[:term_stack] << s(:term)
  		end
when 21 then
		begin

    fx                        = @buffers[:function]
    @buffers[:term_stack][-1] = @buffers[:term_stack][-1] << s(:function, fx)
  		end
when 22 then
		begin

    @buffers[:term_stack][-1] = @buffers[:term_stack][-1] << s(:argument, @parameter)
    @parameter                = nil
  		end
when 23 then
		begin

    p -= @buffers[:function].length + 1
    	begin
		stack[top] = cs
		top+= 1
		cs = 36
		_trigger_goto = true
		_goto_level = _again
		break
	end

  		end
when 24 then
		begin

    inner_term = @buffers[:term_stack].pop
    @buffers[:term_stack][-1] = @buffers[:term_stack][-1] << s(:argument, inner_term)
    	begin
		top -= 1
		cs = stack[top]
		_trigger_goto = true
		_goto_level = _again
		break
	end

  		end
when 25 then
		begin

    yield @buffers[:term_stack][-1]
  		end
when 26 then
		begin

    @buffers[:relationship] = []
  		end
when 27 then
		begin

    @buffers[:relationship] << data[p].ord
  		end
when 28 then
		begin

    @buffers[:relationship] = s(:relationship,
                                utf8_string(@buffers[:relationship]))
  		end
when 29 then
		begin

    yield @buffers[:relationship]
  		end
when 30 then
		begin

    @buffers[:comment] = []
  		end
when 31 then
		begin

    @buffers[:comment] << data[p].ord
  		end
when 32 then
		begin

    @buffers[:comment] = s(:comment,
                           utf8_string(@buffers[:comment]))
  		end
when 33 then
		begin

    yield @buffers[:comment] || s(:comment, nil)
  		end
when 34 then
		begin

    @buffers[:subject]    = s(:subject,
                              @buffers[:term_stack][-1])
    @buffers[:term_stack] = nil
  		end
when 35 then
		begin

    @buffers[:object]     = s(:object,
                              @buffers[:term_stack][-1])
    @buffers[:term_stack] = nil
  		end
when 36 then
		begin

    @buffers[:comment] ||= s(:comment, nil)
    yield s(:statement_simple,
            s(:statement,
              @buffers[:subject],
              @buffers[:relationship],
              @buffers[:object],
              @buffers[:comment]))
  		end
when 37 then
		begin

    @buffers[:statement_stack] = [ s(:statement) ]
  		end
when 38 then
		begin

    @buffers[:statement_stack] << s(:statement)
  		end
when 39 then
		begin

    @buffers[:statement_stack][-1] = @buffers[:statement_stack][-1] << @buffers[:subject]
  		end
when 40 then
		begin

    @buffers[:statement_stack][-1] = @buffers[:statement_stack][-1] << @buffers[:relationship]
  		end
when 41 then
		begin

    @buffers[:statement_stack][-1] = @buffers[:statement_stack][-1] << s(:object, @buffers[:object])
  		end
when 42 then
		begin

    	begin
		stack[top] = cs
		top+= 1
		cs = 103
		_trigger_goto = true
		_goto_level = _again
		break
	end

  		end
when 43 then
		begin

    inner_statement = @buffers[:statement_stack].pop
    @buffers[:object] = inner_statement
    @buffers[:statement_stack][-1] = @buffers[:statement_stack][-1] << s(:object, inner_statement)
    	begin
		top -= 1
		cs = stack[top]
		_trigger_goto = true
		_goto_level = _again
		break
	end

  		end
when 44 then
		begin

    yield s(:nested_statement, @buffers[:statement_stack][-1])
  		end
			end # action switch
		end
	end
	if _trigger_goto
		next
	end
	end
	if _goto_level <= _again
	if cs == 0
		_goto_level = _out
		next
	end
	p += 1
	if p != pe
		_goto_level = _resume
		next
	end
	end
	if _goto_level <= _test_eof
	if p == eof
	__acts = _bel_eof_actions[cs]
	__nacts =  _bel_actions[__acts]
	__acts += 1
	while __nacts > 0
		__nacts -= 1
		__acts += 1
		case _bel_actions[__acts - 1]
when 4 then
		begin

    unless @buffers[:ident].is_a?(::AST::Node)
      @buffers[:ident] ||= []
      @buffers[:ident]   = s(:identifier,
                             utf8_string(@buffers[:ident]).sub(/\n$/, ''))
    end
  		end
when 5 then
		begin

    @buffers[:ident] ||= []
    yield @buffers[:ident]
  		end
when 9 then
		begin

    @buffers[:string] ||= []
    @buffers[:string] = s(:string,
                          utf8_string(@buffers[:string]).sub(/\n$/, ''))
  		end
when 11 then
		begin

    @buffers[:string] ||= []
    yield @buffers[:string]
  		end
		end # eof action switch
	end
	if _trigger_goto
		next
	end
end
	end
	if _goto_level <= _out
		break
	end
	end
	end

class << self
	attr_accessor :_bel_actions
	private :_bel_actions, :_bel_actions=
end
self._bel_actions = [
	0, 1, 1, 1, 4, 1, 7, 1, 
	9, 1, 21, 1, 24, 1, 25, 1, 
	27, 1, 28, 1, 31, 1, 33, 1, 
	34, 1, 35, 1, 36, 1, 42, 1, 
	43, 1, 44, 2, 0, 1, 2, 1, 
	17, 2, 2, 3, 2, 2, 12, 2, 
	2, 18, 2, 2, 23, 2, 4, 5, 
	2, 4, 9, 2, 6, 7, 2, 8, 
	10, 2, 9, 4, 2, 9, 11, 2, 
	26, 27, 2, 28, 29, 2, 28, 40, 
	2, 30, 31, 2, 32, 33, 2, 32, 
	36, 2, 32, 44, 2, 34, 39, 2, 
	35, 36, 3, 2, 14, 15, 3, 2, 
	14, 22, 3, 2, 18, 21, 3, 8, 
	13, 15, 3, 8, 13, 22, 3, 35, 
	41, 43, 4, 0, 1, 16, 17, 4, 
	2, 14, 22, 24, 4, 8, 13, 22, 
	24, 5, 19, 16, 0, 1, 17, 5, 
	20, 16, 0, 1, 17, 6, 2, 14, 
	22, 35, 41, 43, 6, 8, 13, 22, 
	35, 41, 43, 6, 37, 19, 16, 0, 
	1, 17, 6, 38, 19, 16, 0, 1, 
	17
]

class << self
	attr_accessor :_bel_key_offsets
	private :_bel_key_offsets, :_bel_key_offsets=
end
self._bel_key_offsets = [
	0, 0, 7, 17, 20, 30, 40, 42, 
	46, 49, 59, 72, 76, 78, 82, 86, 
	89, 90, 94, 95, 96, 97, 98, 109, 
	116, 124, 125, 127, 128, 129, 139, 149, 
	151, 152, 153, 161, 170, 177, 187, 190, 
	200, 210, 212, 216, 219, 229, 242, 246, 
	247, 258, 265, 275, 278, 288, 298, 300, 
	304, 307, 317, 330, 334, 335, 336, 347, 
	349, 352, 354, 355, 356, 357, 364, 374, 
	377, 387, 397, 399, 403, 406, 416, 429, 
	433, 435, 439, 443, 452, 462, 465, 475, 
	485, 487, 491, 494, 504, 517, 521, 525, 
	529, 530, 531, 532, 533, 544, 545, 556, 
	563, 573, 576, 586, 596, 598, 602, 605, 
	615, 628, 632, 634, 638, 642, 652, 653, 
	663, 666, 676, 686, 688, 692, 695, 705, 
	718, 722, 723, 734, 735, 746, 746, 746, 
	746, 746, 746, 746, 746, 746, 746
]

class << self
	attr_accessor :_bel_trans_keys
	private :_bel_trans_keys, :_bel_trans_keys=
end
self._bel_trans_keys = [
	95, 48, 57, 65, 90, 97, 122, 9, 
	32, 40, 95, 48, 57, 65, 90, 97, 
	122, 9, 32, 40, 9, 32, 34, 95, 
	48, 57, 65, 90, 97, 122, 9, 32, 
	34, 95, 48, 57, 65, 90, 97, 122, 
	34, 92, 9, 32, 41, 44, 9, 32, 
	44, 9, 32, 34, 95, 48, 57, 65, 
	90, 97, 122, 9, 32, 40, 41, 44, 
	58, 95, 48, 57, 65, 90, 97, 122, 
	9, 32, 41, 44, 9, 32, 9, 32, 
	33, 126, 9, 32, 33, 126, 9, 32, 
	40, 41, 9, 10, 32, 47, 47, 10, 
	10, 92, 9, 32, 41, 44, 95, 48, 
	57, 65, 90, 97, 122, 95, 48, 57, 
	65, 90, 97, 122, 10, 95, 48, 57, 
	65, 90, 97, 122, 34, 34, 92, 10, 
	92, 9, 32, 34, 95, 48, 57, 65, 
	90, 97, 122, 9, 32, 34, 95, 48, 
	57, 65, 90, 97, 122, 34, 92, 10, 
	92, 10, 95, 48, 57, 65, 90, 97, 
	122, 10, 58, 95, 48, 57, 65, 90, 
	97, 122, 95, 48, 57, 65, 90, 97, 
	122, 9, 32, 40, 95, 48, 57, 65, 
	90, 97, 122, 9, 32, 40, 9, 32, 
	34, 95, 48, 57, 65, 90, 97, 122, 
	9, 32, 34, 95, 48, 57, 65, 90, 
	97, 122, 34, 92, 9, 32, 41, 44, 
	9, 32, 44, 9, 32, 34, 95, 48, 
	57, 65, 90, 97, 122, 9, 32, 40, 
	41, 44, 58, 95, 48, 57, 65, 90, 
	97, 122, 9, 32, 41, 44, 92, 9, 
	32, 41, 44, 95, 48, 57, 65, 90, 
	97, 122, 95, 48, 57, 65, 90, 97, 
	122, 9, 32, 40, 95, 48, 57, 65, 
	90, 97, 122, 9, 32, 40, 9, 32, 
	34, 95, 48, 57, 65, 90, 97, 122, 
	9, 32, 34, 95, 48, 57, 65, 90, 
	97, 122, 34, 92, 9, 32, 41, 44, 
	9, 32, 44, 9, 32, 34, 95, 48, 
	57, 65, 90, 97, 122, 9, 32, 40, 
	41, 44, 58, 95, 48, 57, 65, 90, 
	97, 122, 9, 32, 41, 44, 10, 92, 
	9, 32, 41, 44, 95, 48, 57, 65, 
	90, 97, 122, 33, 126, 10, 33, 126, 
	10, 47, 47, 10, 10, 95, 48, 57, 
	65, 90, 97, 122, 9, 32, 40, 95, 
	48, 57, 65, 90, 97, 122, 9, 32, 
	40, 9, 32, 34, 95, 48, 57, 65, 
	90, 97, 122, 9, 32, 34, 95, 48, 
	57, 65, 90, 97, 122, 34, 92, 9, 
	32, 41, 44, 9, 32, 44, 9, 32, 
	34, 95, 48, 57, 65, 90, 97, 122, 
	9, 32, 40, 41, 44, 58, 95, 48, 
	57, 65, 90, 97, 122, 9, 32, 41, 
	44, 9, 32, 9, 32, 33, 126, 9, 
	32, 33, 126, 9, 32, 95, 48, 57, 
	65, 90, 97, 122, 9, 32, 40, 95, 
	48, 57, 65, 90, 97, 122, 9, 32, 
	40, 9, 32, 34, 95, 48, 57, 65, 
	90, 97, 122, 9, 32, 34, 95, 48, 
	57, 65, 90, 97, 122, 34, 92, 9, 
	32, 41, 44, 9, 32, 44, 9, 32, 
	34, 95, 48, 57, 65, 90, 97, 122, 
	9, 32, 40, 41, 44, 58, 95, 48, 
	57, 65, 90, 97, 122, 9, 32, 41, 
	44, 9, 10, 32, 47, 9, 10, 32, 
	47, 47, 10, 10, 92, 9, 32, 41, 
	44, 95, 48, 57, 65, 90, 97, 122, 
	92, 9, 32, 41, 44, 95, 48, 57, 
	65, 90, 97, 122, 95, 48, 57, 65, 
	90, 97, 122, 9, 32, 40, 95, 48, 
	57, 65, 90, 97, 122, 9, 32, 40, 
	9, 32, 34, 95, 48, 57, 65, 90, 
	97, 122, 9, 32, 34, 95, 48, 57, 
	65, 90, 97, 122, 34, 92, 9, 32, 
	41, 44, 9, 32, 44, 9, 32, 34, 
	95, 48, 57, 65, 90, 97, 122, 9, 
	32, 40, 41, 44, 58, 95, 48, 57, 
	65, 90, 97, 122, 9, 32, 41, 44, 
	9, 32, 9, 32, 33, 126, 9, 32, 
	33, 126, 9, 32, 40, 95, 48, 57, 
	65, 90, 97, 122, 41, 9, 32, 40, 
	95, 48, 57, 65, 90, 97, 122, 9, 
	32, 40, 9, 32, 34, 95, 48, 57, 
	65, 90, 97, 122, 9, 32, 34, 95, 
	48, 57, 65, 90, 97, 122, 34, 92, 
	9, 32, 41, 44, 9, 32, 44, 9, 
	32, 34, 95, 48, 57, 65, 90, 97, 
	122, 9, 32, 40, 41, 44, 58, 95, 
	48, 57, 65, 90, 97, 122, 9, 32, 
	41, 44, 92, 9, 32, 41, 44, 95, 
	48, 57, 65, 90, 97, 122, 92, 9, 
	32, 41, 44, 95, 48, 57, 65, 90, 
	97, 122, 0
]

class << self
	attr_accessor :_bel_single_lengths
	private :_bel_single_lengths, :_bel_single_lengths=
end
self._bel_single_lengths = [
	0, 1, 4, 3, 4, 4, 2, 4, 
	3, 4, 7, 4, 2, 2, 2, 3, 
	1, 4, 1, 1, 1, 1, 5, 1, 
	2, 1, 2, 1, 1, 4, 4, 2, 
	1, 1, 2, 3, 1, 4, 3, 4, 
	4, 2, 4, 3, 4, 7, 4, 1, 
	5, 1, 4, 3, 4, 4, 2, 4, 
	3, 4, 7, 4, 1, 1, 5, 0, 
	1, 2, 1, 1, 1, 1, 4, 3, 
	4, 4, 2, 4, 3, 4, 7, 4, 
	2, 2, 2, 3, 4, 3, 4, 4, 
	2, 4, 3, 4, 7, 4, 4, 4, 
	1, 1, 1, 1, 5, 1, 5, 1, 
	4, 3, 4, 4, 2, 4, 3, 4, 
	7, 4, 2, 2, 2, 4, 1, 4, 
	3, 4, 4, 2, 4, 3, 4, 7, 
	4, 1, 5, 1, 5, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0
]

class << self
	attr_accessor :_bel_range_lengths
	private :_bel_range_lengths, :_bel_range_lengths=
end
self._bel_range_lengths = [
	0, 3, 3, 0, 3, 3, 0, 0, 
	0, 3, 3, 0, 0, 1, 1, 0, 
	0, 0, 0, 0, 0, 0, 3, 3, 
	3, 0, 0, 0, 0, 3, 3, 0, 
	0, 0, 3, 3, 3, 3, 0, 3, 
	3, 0, 0, 0, 3, 3, 0, 0, 
	3, 3, 3, 0, 3, 3, 0, 0, 
	0, 3, 3, 0, 0, 0, 3, 1, 
	1, 0, 0, 0, 0, 3, 3, 0, 
	3, 3, 0, 0, 0, 3, 3, 0, 
	0, 1, 1, 3, 3, 0, 3, 3, 
	0, 0, 0, 3, 3, 0, 0, 0, 
	0, 0, 0, 0, 3, 0, 3, 3, 
	3, 0, 3, 3, 0, 0, 0, 3, 
	3, 0, 0, 1, 1, 3, 0, 3, 
	0, 3, 3, 0, 0, 0, 3, 3, 
	0, 0, 3, 0, 3, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0
]

class << self
	attr_accessor :_bel_index_offsets
	private :_bel_index_offsets, :_bel_index_offsets=
end
self._bel_index_offsets = [
	0, 0, 5, 13, 17, 25, 33, 36, 
	41, 45, 53, 64, 69, 72, 76, 80, 
	84, 86, 91, 93, 95, 97, 99, 108, 
	113, 119, 121, 124, 126, 128, 136, 144, 
	147, 149, 151, 157, 164, 169, 177, 181, 
	189, 197, 200, 205, 209, 217, 228, 233, 
	235, 244, 249, 257, 261, 269, 277, 280, 
	285, 289, 297, 308, 313, 315, 317, 326, 
	328, 331, 334, 336, 338, 340, 345, 353, 
	357, 365, 373, 376, 381, 385, 393, 404, 
	409, 412, 416, 420, 427, 435, 439, 447, 
	455, 458, 463, 467, 475, 486, 491, 496, 
	501, 503, 505, 507, 509, 518, 520, 529, 
	534, 542, 546, 554, 562, 565, 570, 574, 
	582, 593, 598, 601, 605, 609, 617, 619, 
	627, 631, 639, 647, 650, 655, 659, 667, 
	678, 683, 685, 694, 696, 705, 706, 707, 
	708, 709, 710, 711, 712, 713, 714
]

class << self
	attr_accessor :_bel_indicies
	private :_bel_indicies, :_bel_indicies=
end
self._bel_indicies = [
	1, 1, 1, 1, 0, 2, 2, 3, 
	4, 4, 4, 4, 0, 5, 5, 7, 
	6, 9, 9, 10, 11, 11, 11, 11, 
	8, 9, 9, 10, 13, 13, 13, 13, 
	12, 15, 16, 14, 18, 18, 19, 20, 
	17, 21, 21, 22, 6, 22, 22, 10, 
	11, 11, 11, 11, 8, 23, 23, 24, 
	25, 26, 28, 27, 27, 27, 27, 0, 
	21, 21, 29, 22, 6, 30, 30, 6, 
	31, 31, 32, 6, 33, 33, 34, 6, 
	35, 35, 36, 6, 37, 6, 37, 38, 
	37, 39, 6, 40, 6, 6, 41, 43, 
	42, 16, 14, 23, 23, 25, 26, 44, 
	44, 44, 44, 0, 46, 46, 46, 46, 
	45, 47, 48, 48, 48, 48, 45, 50, 
	49, 52, 53, 51, 54, 49, 53, 51, 
	55, 55, 56, 57, 57, 57, 57, 8, 
	55, 55, 56, 58, 58, 58, 58, 12, 
	60, 61, 59, 62, 17, 61, 59, 63, 
	64, 64, 64, 64, 0, 63, 66, 65, 
	65, 65, 65, 0, 67, 67, 67, 67, 
	0, 68, 68, 69, 70, 70, 70, 70, 
	0, 71, 71, 72, 6, 73, 73, 74, 
	75, 75, 75, 75, 8, 73, 73, 74, 
	76, 76, 76, 76, 12, 78, 79, 77, 
	80, 80, 81, 82, 17, 83, 83, 84, 
	6, 84, 84, 74, 75, 75, 75, 75, 
	8, 85, 85, 86, 87, 88, 90, 89, 
	89, 89, 89, 0, 83, 83, 91, 84, 
	6, 79, 77, 85, 85, 87, 88, 92, 
	92, 92, 92, 0, 93, 93, 93, 93, 
	0, 94, 94, 95, 96, 96, 96, 96, 
	0, 97, 97, 98, 6, 99, 99, 100, 
	101, 101, 101, 101, 8, 99, 99, 100, 
	102, 102, 102, 102, 12, 104, 105, 103, 
	106, 106, 107, 108, 17, 109, 109, 110, 
	6, 110, 110, 100, 101, 101, 101, 101, 
	8, 111, 111, 112, 113, 114, 116, 115, 
	115, 115, 115, 0, 109, 109, 117, 110, 
	6, 118, 6, 105, 103, 111, 111, 113, 
	114, 119, 119, 119, 119, 0, 120, 6, 
	121, 122, 6, 123, 124, 6, 125, 6, 
	6, 126, 128, 127, 129, 129, 129, 129, 
	0, 130, 130, 131, 132, 132, 132, 132, 
	0, 133, 133, 134, 6, 135, 135, 136, 
	137, 137, 137, 137, 8, 135, 135, 136, 
	138, 138, 138, 138, 12, 140, 141, 139, 
	142, 142, 143, 144, 17, 145, 145, 146, 
	6, 146, 146, 136, 137, 137, 137, 137, 
	8, 147, 147, 148, 149, 150, 152, 151, 
	151, 151, 151, 0, 145, 145, 153, 146, 
	6, 154, 154, 6, 155, 155, 156, 6, 
	157, 157, 158, 6, 159, 159, 160, 160, 
	160, 160, 0, 161, 161, 162, 163, 163, 
	163, 163, 0, 164, 164, 165, 6, 166, 
	166, 167, 168, 168, 168, 168, 8, 166, 
	166, 167, 169, 169, 169, 169, 12, 171, 
	172, 170, 173, 173, 174, 175, 17, 176, 
	176, 177, 6, 177, 177, 167, 168, 168, 
	168, 168, 8, 178, 178, 179, 180, 181, 
	183, 182, 182, 182, 182, 0, 176, 176, 
	184, 177, 6, 185, 186, 185, 187, 6, 
	188, 189, 188, 190, 6, 191, 6, 6, 
	192, 194, 193, 172, 170, 178, 178, 180, 
	181, 195, 195, 195, 195, 0, 141, 139, 
	147, 147, 149, 150, 196, 196, 196, 196, 
	0, 197, 197, 197, 197, 0, 198, 198, 
	199, 200, 200, 200, 200, 0, 201, 201, 
	202, 6, 203, 203, 204, 205, 205, 205, 
	205, 8, 203, 203, 204, 206, 206, 206, 
	206, 12, 208, 209, 207, 210, 210, 211, 
	212, 17, 213, 213, 214, 6, 214, 214, 
	204, 205, 205, 205, 205, 8, 215, 215, 
	216, 217, 218, 220, 219, 219, 219, 219, 
	0, 213, 213, 221, 214, 6, 222, 222, 
	6, 223, 223, 224, 6, 225, 225, 226, 
	6, 227, 227, 228, 229, 229, 229, 229, 
	0, 230, 6, 231, 231, 232, 233, 233, 
	233, 233, 0, 234, 234, 235, 6, 236, 
	236, 237, 238, 238, 238, 238, 8, 236, 
	236, 237, 239, 239, 239, 239, 12, 241, 
	242, 240, 243, 243, 244, 245, 17, 246, 
	246, 247, 6, 247, 247, 237, 238, 238, 
	238, 238, 8, 248, 248, 249, 250, 251, 
	253, 252, 252, 252, 252, 0, 246, 246, 
	254, 247, 6, 242, 240, 248, 248, 250, 
	251, 255, 255, 255, 255, 0, 209, 207, 
	215, 215, 217, 218, 256, 256, 256, 256, 
	0, 6, 6, 6, 6, 6, 6, 6, 
	6, 6, 6, 0
]

class << self
	attr_accessor :_bel_trans_targs
	private :_bel_trans_targs, :_bel_trans_targs=
end
self._bel_trans_targs = [
	0, 2, 3, 4, 2, 3, 0, 4, 
	0, 5, 6, 10, 0, 22, 6, 7, 
	21, 0, 8, 12, 9, 8, 9, 8, 
	11, 12, 9, 10, 5, 12, 13, 13, 
	14, 15, 14, 15, 16, 17, 133, 18, 
	19, 20, 20, 133, 22, 0, 24, 134, 
	24, 0, 26, 26, 27, 28, 135, 30, 
	31, 35, 34, 31, 32, 33, 136, 136, 
	34, 35, 30, 37, 38, 39, 37, 38, 
	39, 40, 41, 45, 48, 41, 42, 47, 
	43, 137, 44, 43, 44, 43, 46, 137, 
	44, 45, 40, 137, 48, 50, 51, 52, 
	50, 51, 52, 53, 54, 58, 62, 54, 
	55, 61, 56, 60, 57, 56, 57, 56, 
	59, 60, 57, 58, 53, 60, 138, 62, 
	64, 139, 64, 140, 66, 67, 68, 68, 
	140, 70, 71, 72, 70, 71, 72, 73, 
	74, 78, 102, 74, 75, 101, 76, 80, 
	77, 76, 77, 76, 79, 80, 77, 78, 
	73, 80, 81, 81, 82, 83, 82, 83, 
	84, 85, 86, 84, 85, 86, 87, 88, 
	92, 100, 88, 89, 99, 90, 94, 91, 
	90, 91, 90, 93, 94, 91, 92, 87, 
	94, 95, 141, 96, 95, 141, 96, 97, 
	98, 98, 141, 100, 102, 104, 105, 106, 
	104, 105, 106, 107, 108, 112, 132, 108, 
	109, 131, 110, 114, 111, 110, 111, 110, 
	113, 114, 111, 112, 107, 114, 115, 115, 
	116, 117, 116, 117, 118, 119, 142, 120, 
	121, 119, 120, 121, 122, 123, 127, 130, 
	123, 124, 129, 125, 142, 126, 125, 126, 
	125, 128, 142, 126, 127, 122, 142, 130, 
	132
]

class << self
	attr_accessor :_bel_trans_actions
	private :_bel_trans_actions, :_bel_trans_actions=
end
self._bel_trans_actions = [
	3, 163, 47, 106, 38, 0, 0, 9, 
	56, 0, 59, 122, 65, 35, 5, 5, 
	5, 7, 114, 114, 114, 0, 0, 102, 
	50, 102, 102, 38, 44, 0, 92, 0, 
	71, 77, 15, 0, 29, 0, 33, 0, 
	0, 80, 19, 89, 1, 53, 35, 41, 
	1, 68, 59, 5, 5, 5, 62, 0, 
	59, 35, 35, 5, 5, 5, 110, 98, 
	1, 1, 44, 143, 47, 106, 38, 0, 
	9, 0, 59, 122, 35, 5, 5, 5, 
	114, 132, 114, 0, 0, 102, 50, 127, 
	102, 38, 44, 11, 1, 137, 47, 106, 
	38, 0, 9, 0, 59, 122, 35, 5, 
	5, 5, 114, 114, 114, 0, 0, 102, 
	50, 102, 102, 38, 44, 0, 13, 1, 
	71, 74, 15, 21, 0, 0, 80, 19, 
	83, 137, 47, 106, 38, 0, 9, 0, 
	59, 122, 35, 5, 5, 5, 114, 114, 
	114, 0, 0, 102, 50, 102, 102, 38, 
	44, 0, 23, 0, 71, 17, 15, 0, 
	137, 47, 106, 38, 0, 9, 0, 59, 
	122, 35, 5, 5, 5, 114, 114, 114, 
	0, 0, 102, 50, 102, 102, 38, 44, 
	0, 25, 95, 25, 0, 27, 0, 0, 
	80, 19, 86, 1, 1, 170, 47, 106, 
	38, 0, 9, 0, 59, 122, 35, 5, 
	5, 5, 114, 114, 114, 0, 0, 102, 
	50, 102, 102, 38, 44, 0, 92, 0, 
	71, 77, 15, 0, 29, 137, 31, 47, 
	106, 38, 0, 9, 0, 59, 122, 35, 
	5, 5, 5, 114, 156, 114, 0, 0, 
	102, 50, 149, 102, 38, 44, 118, 1, 
	1
]

class << self
	attr_accessor :_bel_eof_actions
	private :_bel_eof_actions, :_bel_eof_actions=
end
self._bel_eof_actions = [
	0, 3, 3, 0, 56, 65, 7, 7, 
	0, 56, 3, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 7, 3, 53, 
	53, 68, 68, 68, 68, 56, 65, 7, 
	7, 7, 3, 3, 3, 3, 0, 56, 
	65, 7, 7, 0, 56, 3, 0, 7, 
	3, 3, 3, 0, 56, 65, 7, 7, 
	0, 56, 3, 0, 0, 7, 3, 0, 
	0, 0, 0, 0, 0, 3, 3, 0, 
	56, 65, 7, 7, 0, 56, 3, 0, 
	0, 0, 0, 3, 3, 0, 56, 65, 
	7, 7, 0, 56, 3, 0, 0, 0, 
	0, 0, 0, 7, 3, 7, 3, 3, 
	3, 0, 56, 65, 7, 7, 0, 56, 
	3, 0, 0, 0, 0, 3, 0, 3, 
	0, 56, 65, 7, 7, 0, 56, 3, 
	0, 7, 3, 7, 3, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0
]

class << self
	attr_accessor :bel_start
end
self.bel_start = 1;
class << self
	attr_accessor :bel_first_final
end
self.bel_first_final = 133;
class << self
	attr_accessor :bel_error
end
self.bel_error = 0;

class << self
	attr_accessor :bel_en_ident
end
self.bel_en_ident = 23;
class << self
	attr_accessor :bel_en_string
end
self.bel_en_string = 25;
class << self
	attr_accessor :bel_en_bel_parameter
end
self.bel_en_bel_parameter = 29;
class << self
	attr_accessor :bel_en_inner_term
end
self.bel_en_inner_term = 36;
class << self
	attr_accessor :bel_en_term
end
self.bel_en_term = 49;
class << self
	attr_accessor :bel_en_relationship
end
self.bel_en_relationship = 63;
class << self
	attr_accessor :bel_en_comment
end
self.bel_en_comment = 65;
class << self
	attr_accessor :bel_en_statement_simple
end
self.bel_en_statement_simple = 69;
class << self
	attr_accessor :bel_en_inner_statement
end
self.bel_en_inner_statement = 103;
class << self
	attr_accessor :bel_en_statement_nested
end
self.bel_en_statement_nested = 1;


begin
	p ||= 0
	pe ||= data.length
	cs = bel_start
	top = 0
end

begin
	_klen, _trans, _keys, _acts, _nacts = nil
	_goto_level = 0
	_resume = 10
	_eof_trans = 15
	_again = 20
	_test_eof = 30
	_out = 40
	while true
	_trigger_goto = false
	if _goto_level <= 0
	if p == pe
		_goto_level = _test_eof
		next
	end
	if cs == 0
		_goto_level = _out
		next
	end
	end
	if _goto_level <= _resume
	_keys = _bel_key_offsets[cs]
	_trans = _bel_index_offsets[cs]
	_klen = _bel_single_lengths[cs]
	_break_match = false
	
	begin
	  if _klen > 0
	     _lower = _keys
	     _upper = _keys + _klen - 1

	     loop do
	        break if _upper < _lower
	        _mid = _lower + ( (_upper - _lower) >> 1 )

	        if data[p].ord < _bel_trans_keys[_mid]
	           _upper = _mid - 1
	        elsif data[p].ord > _bel_trans_keys[_mid]
	           _lower = _mid + 1
	        else
	           _trans += (_mid - _keys)
	           _break_match = true
	           break
	        end
	     end # loop
	     break if _break_match
	     _keys += _klen
	     _trans += _klen
	  end
	  _klen = _bel_range_lengths[cs]
	  if _klen > 0
	     _lower = _keys
	     _upper = _keys + (_klen << 1) - 2
	     loop do
	        break if _upper < _lower
	        _mid = _lower + (((_upper-_lower) >> 1) & ~1)
	        if data[p].ord < _bel_trans_keys[_mid]
	          _upper = _mid - 2
	        elsif data[p].ord > _bel_trans_keys[_mid+1]
	          _lower = _mid + 2
	        else
	          _trans += ((_mid - _keys) >> 1)
	          _break_match = true
	          break
	        end
	     end # loop
	     break if _break_match
	     _trans += _klen
	  end
	end while false
	_trans = _bel_indicies[_trans]
	cs = _bel_trans_targs[_trans]
	if _bel_trans_actions[_trans] != 0
		_acts = _bel_trans_actions[_trans]
		_nacts = _bel_actions[_acts]
		_acts += 1
		while _nacts > 0
			_nacts -= 1
			_acts += 1
			case _bel_actions[_acts - 1]
when 0 then
		begin

    @buffers[:ident] = []
  		end
when 1 then
		begin

    (@buffers[:ident] ||= []) << data[p].ord
  		end
when 2 then
		begin

    @buffers[:ident] = s(:identifier,
                         utf8_string(@buffers[:ident]))
  		end
when 3 then
		begin

    yield @buffers[:ident]
  		end
when 4 then
		begin

    unless @buffers[:ident].is_a?(::AST::Node)
      @buffers[:ident] ||= []
      @buffers[:ident]   = s(:identifier,
                             utf8_string(@buffers[:ident]).sub(/\n$/, ''))
    end
  		end
when 5 then
		begin

    @buffers[:ident] ||= []
    yield @buffers[:ident]
  		end
when 6 then
		begin

    @buffers[:string] = []
  		end
when 7 then
		begin

    (@buffers[:string] ||= []) << data[p].ord
  		end
when 8 then
		begin

    @buffers[:string] = s(:string,
                          utf8_string(@buffers[:string]))
  		end
when 9 then
		begin

    @buffers[:string] ||= []
    @buffers[:string] = s(:string,
                          utf8_string(@buffers[:string]).sub(/\n$/, ''))
  		end
when 10 then
		begin

    yield @buffers[:string]
  		end
when 11 then
		begin

    @buffers[:string] ||= []
    yield @buffers[:string]
  		end
when 12 then
		begin

    @parameter = s(:parameter,
                   s(:prefix, @buffers[:ident]))
  		end
when 13 then
		begin

    @parameter ||= s(:parameter, s(:prefix, nil))
    @parameter   = @parameter << s(:value, @buffers[:string])
  		end
when 14 then
		begin

    @parameter ||= s(:parameter, s(:prefix, nil))
    @parameter   = @parameter << s(:value, @buffers[:ident])
  		end
when 15 then
		begin

    yield @parameter
  		end
when 16 then
		begin

    @buffers[:function] = []
  		end
when 17 then
		begin

    @buffers[:function] << data[p].ord
  		end
when 18 then
		begin

    @buffers[:function] = s(:identifier,
                            utf8_string(@buffers[:function]))
  		end
when 19 then
		begin

    @buffers[:term_stack] = [ s(:term) ]
  		end
when 20 then
		begin

    @buffers[:term_stack] << s(:term)
  		end
when 21 then
		begin

    fx                        = @buffers[:function]
    @buffers[:term_stack][-1] = @buffers[:term_stack][-1] << s(:function, fx)
  		end
when 22 then
		begin

    @buffers[:term_stack][-1] = @buffers[:term_stack][-1] << s(:argument, @parameter)
    @parameter                = nil
  		end
when 23 then
		begin

    p -= @buffers[:function].length + 1
    	begin
		stack[top] = cs
		top+= 1
		cs = 36
		_trigger_goto = true
		_goto_level = _again
		break
	end

  		end
when 24 then
		begin

    inner_term = @buffers[:term_stack].pop
    @buffers[:term_stack][-1] = @buffers[:term_stack][-1] << s(:argument, inner_term)
    	begin
		top -= 1
		cs = stack[top]
		_trigger_goto = true
		_goto_level = _again
		break
	end

  		end
when 25 then
		begin

    yield @buffers[:term_stack][-1]
  		end
when 26 then
		begin

    @buffers[:relationship] = []
  		end
when 27 then
		begin

    @buffers[:relationship] << data[p].ord
  		end
when 28 then
		begin

    @buffers[:relationship] = s(:relationship,
                                utf8_string(@buffers[:relationship]))
  		end
when 29 then
		begin

    yield @buffers[:relationship]
  		end
when 30 then
		begin

    @buffers[:comment] = []
  		end
when 31 then
		begin

    @buffers[:comment] << data[p].ord
  		end
when 32 then
		begin

    @buffers[:comment] = s(:comment,
                           utf8_string(@buffers[:comment]))
  		end
when 33 then
		begin

    yield @buffers[:comment] || s(:comment, nil)
  		end
when 34 then
		begin

    @buffers[:subject]    = s(:subject,
                              @buffers[:term_stack][-1])
    @buffers[:term_stack] = nil
  		end
when 35 then
		begin

    @buffers[:object]     = s(:object,
                              @buffers[:term_stack][-1])
    @buffers[:term_stack] = nil
  		end
when 36 then
		begin

    @buffers[:comment] ||= s(:comment, nil)
    yield s(:statement_simple,
            s(:statement,
              @buffers[:subject],
              @buffers[:relationship],
              @buffers[:object],
              @buffers[:comment]))
  		end
when 37 then
		begin

    @buffers[:statement_stack] = [ s(:statement) ]
  		end
when 38 then
		begin

    @buffers[:statement_stack] << s(:statement)
  		end
when 39 then
		begin

    @buffers[:statement_stack][-1] = @buffers[:statement_stack][-1] << @buffers[:subject]
  		end
when 40 then
		begin

    @buffers[:statement_stack][-1] = @buffers[:statement_stack][-1] << @buffers[:relationship]
  		end
when 41 then
		begin

    @buffers[:statement_stack][-1] = @buffers[:statement_stack][-1] << s(:object, @buffers[:object])
  		end
when 42 then
		begin

    	begin
		stack[top] = cs
		top+= 1
		cs = 103
		_trigger_goto = true
		_goto_level = _again
		break
	end

  		end
when 43 then
		begin

    inner_statement = @buffers[:statement_stack].pop
    @buffers[:object] = inner_statement
    @buffers[:statement_stack][-1] = @buffers[:statement_stack][-1] << s(:object, inner_statement)
    	begin
		top -= 1
		cs = stack[top]
		_trigger_goto = true
		_goto_level = _again
		break
	end

  		end
when 44 then
		begin

    yield s(:nested_statement, @buffers[:statement_stack][-1])
  		end
			end # action switch
		end
	end
	if _trigger_goto
		next
	end
	end
	if _goto_level <= _again
	if cs == 0
		_goto_level = _out
		next
	end
	p += 1
	if p != pe
		_goto_level = _resume
		next
	end
	end
	if _goto_level <= _test_eof
	if p == eof
	__acts = _bel_eof_actions[cs]
	__nacts =  _bel_actions[__acts]
	__acts += 1
	while __nacts > 0
		__nacts -= 1
		__acts += 1
		case _bel_actions[__acts - 1]
when 4 then
		begin

    unless @buffers[:ident].is_a?(::AST::Node)
      @buffers[:ident] ||= []
      @buffers[:ident]   = s(:identifier,
                             utf8_string(@buffers[:ident]).sub(/\n$/, ''))
    end
  		end
when 5 then
		begin

    @buffers[:ident] ||= []
    yield @buffers[:ident]
  		end
when 9 then
		begin

    @buffers[:string] ||= []
    @buffers[:string] = s(:string,
                          utf8_string(@buffers[:string]).sub(/\n$/, ''))
  		end
when 11 then
		begin

    @buffers[:string] ||= []
    yield @buffers[:string]
  		end
		end # eof action switch
	end
	if _trigger_goto
		next
	end
end
	end
	if _goto_level <= _out
		break
	end
	end
	end

class << self
	attr_accessor :_bel_actions
	private :_bel_actions, :_bel_actions=
end
self._bel_actions = [
	0, 1, 1, 1, 4, 1, 7, 1, 
	9, 1, 21, 1, 24, 1, 25, 1, 
	27, 1, 28, 1, 31, 1, 33, 1, 
	34, 1, 35, 1, 36, 1, 42, 1, 
	43, 1, 44, 2, 0, 1, 2, 1, 
	17, 2, 2, 3, 2, 2, 12, 2, 
	2, 18, 2, 2, 23, 2, 4, 5, 
	2, 4, 9, 2, 6, 7, 2, 8, 
	10, 2, 9, 4, 2, 9, 11, 2, 
	26, 27, 2, 28, 29, 2, 28, 40, 
	2, 30, 31, 2, 32, 33, 2, 32, 
	36, 2, 32, 44, 2, 34, 39, 2, 
	35, 36, 3, 2, 14, 15, 3, 2, 
	14, 22, 3, 2, 18, 21, 3, 8, 
	13, 15, 3, 8, 13, 22, 3, 35, 
	41, 43, 4, 0, 1, 16, 17, 4, 
	2, 14, 22, 24, 4, 8, 13, 22, 
	24, 5, 19, 16, 0, 1, 17, 5, 
	20, 16, 0, 1, 17, 6, 2, 14, 
	22, 35, 41, 43, 6, 8, 13, 22, 
	35, 41, 43, 6, 37, 19, 16, 0, 
	1, 17, 6, 38, 19, 16, 0, 1, 
	17
]

class << self
	attr_accessor :_bel_key_offsets
	private :_bel_key_offsets, :_bel_key_offsets=
end
self._bel_key_offsets = [
	0, 0, 7, 17, 20, 30, 40, 42, 
	46, 49, 59, 72, 76, 78, 82, 86, 
	89, 90, 94, 95, 96, 97, 98, 109, 
	116, 124, 125, 127, 128, 129, 139, 149, 
	151, 152, 153, 161, 170, 177, 187, 190, 
	200, 210, 212, 216, 219, 229, 242, 246, 
	247, 258, 265, 275, 278, 288, 298, 300, 
	304, 307, 317, 330, 334, 335, 336, 347, 
	349, 352, 354, 355, 356, 357, 364, 374, 
	377, 387, 397, 399, 403, 406, 416, 429, 
	433, 435, 439, 443, 452, 462, 465, 475, 
	485, 487, 491, 494, 504, 517, 521, 525, 
	529, 530, 531, 532, 533, 544, 545, 556, 
	563, 573, 576, 586, 596, 598, 602, 605, 
	615, 628, 632, 634, 638, 642, 652, 653, 
	663, 666, 676, 686, 688, 692, 695, 705, 
	718, 722, 723, 734, 735, 746, 746, 746, 
	746, 746, 746, 746, 746, 746, 746
]

class << self
	attr_accessor :_bel_trans_keys
	private :_bel_trans_keys, :_bel_trans_keys=
end
self._bel_trans_keys = [
	95, 48, 57, 65, 90, 97, 122, 9, 
	32, 40, 95, 48, 57, 65, 90, 97, 
	122, 9, 32, 40, 9, 32, 34, 95, 
	48, 57, 65, 90, 97, 122, 9, 32, 
	34, 95, 48, 57, 65, 90, 97, 122, 
	34, 92, 9, 32, 41, 44, 9, 32, 
	44, 9, 32, 34, 95, 48, 57, 65, 
	90, 97, 122, 9, 32, 40, 41, 44, 
	58, 95, 48, 57, 65, 90, 97, 122, 
	9, 32, 41, 44, 9, 32, 9, 32, 
	33, 126, 9, 32, 33, 126, 9, 32, 
	40, 41, 9, 10, 32, 47, 47, 10, 
	10, 92, 9, 32, 41, 44, 95, 48, 
	57, 65, 90, 97, 122, 95, 48, 57, 
	65, 90, 97, 122, 10, 95, 48, 57, 
	65, 90, 97, 122, 34, 34, 92, 10, 
	92, 9, 32, 34, 95, 48, 57, 65, 
	90, 97, 122, 9, 32, 34, 95, 48, 
	57, 65, 90, 97, 122, 34, 92, 10, 
	92, 10, 95, 48, 57, 65, 90, 97, 
	122, 10, 58, 95, 48, 57, 65, 90, 
	97, 122, 95, 48, 57, 65, 90, 97, 
	122, 9, 32, 40, 95, 48, 57, 65, 
	90, 97, 122, 9, 32, 40, 9, 32, 
	34, 95, 48, 57, 65, 90, 97, 122, 
	9, 32, 34, 95, 48, 57, 65, 90, 
	97, 122, 34, 92, 9, 32, 41, 44, 
	9, 32, 44, 9, 32, 34, 95, 48, 
	57, 65, 90, 97, 122, 9, 32, 40, 
	41, 44, 58, 95, 48, 57, 65, 90, 
	97, 122, 9, 32, 41, 44, 92, 9, 
	32, 41, 44, 95, 48, 57, 65, 90, 
	97, 122, 95, 48, 57, 65, 90, 97, 
	122, 9, 32, 40, 95, 48, 57, 65, 
	90, 97, 122, 9, 32, 40, 9, 32, 
	34, 95, 48, 57, 65, 90, 97, 122, 
	9, 32, 34, 95, 48, 57, 65, 90, 
	97, 122, 34, 92, 9, 32, 41, 44, 
	9, 32, 44, 9, 32, 34, 95, 48, 
	57, 65, 90, 97, 122, 9, 32, 40, 
	41, 44, 58, 95, 48, 57, 65, 90, 
	97, 122, 9, 32, 41, 44, 10, 92, 
	9, 32, 41, 44, 95, 48, 57, 65, 
	90, 97, 122, 33, 126, 10, 33, 126, 
	10, 47, 47, 10, 10, 95, 48, 57, 
	65, 90, 97, 122, 9, 32, 40, 95, 
	48, 57, 65, 90, 97, 122, 9, 32, 
	40, 9, 32, 34, 95, 48, 57, 65, 
	90, 97, 122, 9, 32, 34, 95, 48, 
	57, 65, 90, 97, 122, 34, 92, 9, 
	32, 41, 44, 9, 32, 44, 9, 32, 
	34, 95, 48, 57, 65, 90, 97, 122, 
	9, 32, 40, 41, 44, 58, 95, 48, 
	57, 65, 90, 97, 122, 9, 32, 41, 
	44, 9, 32, 9, 32, 33, 126, 9, 
	32, 33, 126, 9, 32, 95, 48, 57, 
	65, 90, 97, 122, 9, 32, 40, 95, 
	48, 57, 65, 90, 97, 122, 9, 32, 
	40, 9, 32, 34, 95, 48, 57, 65, 
	90, 97, 122, 9, 32, 34, 95, 48, 
	57, 65, 90, 97, 122, 34, 92, 9, 
	32, 41, 44, 9, 32, 44, 9, 32, 
	34, 95, 48, 57, 65, 90, 97, 122, 
	9, 32, 40, 41, 44, 58, 95, 48, 
	57, 65, 90, 97, 122, 9, 32, 41, 
	44, 9, 10, 32, 47, 9, 10, 32, 
	47, 47, 10, 10, 92, 9, 32, 41, 
	44, 95, 48, 57, 65, 90, 97, 122, 
	92, 9, 32, 41, 44, 95, 48, 57, 
	65, 90, 97, 122, 95, 48, 57, 65, 
	90, 97, 122, 9, 32, 40, 95, 48, 
	57, 65, 90, 97, 122, 9, 32, 40, 
	9, 32, 34, 95, 48, 57, 65, 90, 
	97, 122, 9, 32, 34, 95, 48, 57, 
	65, 90, 97, 122, 34, 92, 9, 32, 
	41, 44, 9, 32, 44, 9, 32, 34, 
	95, 48, 57, 65, 90, 97, 122, 9, 
	32, 40, 41, 44, 58, 95, 48, 57, 
	65, 90, 97, 122, 9, 32, 41, 44, 
	9, 32, 9, 32, 33, 126, 9, 32, 
	33, 126, 9, 32, 40, 95, 48, 57, 
	65, 90, 97, 122, 41, 9, 32, 40, 
	95, 48, 57, 65, 90, 97, 122, 9, 
	32, 40, 9, 32, 34, 95, 48, 57, 
	65, 90, 97, 122, 9, 32, 34, 95, 
	48, 57, 65, 90, 97, 122, 34, 92, 
	9, 32, 41, 44, 9, 32, 44, 9, 
	32, 34, 95, 48, 57, 65, 90, 97, 
	122, 9, 32, 40, 41, 44, 58, 95, 
	48, 57, 65, 90, 97, 122, 9, 32, 
	41, 44, 92, 9, 32, 41, 44, 95, 
	48, 57, 65, 90, 97, 122, 92, 9, 
	32, 41, 44, 95, 48, 57, 65, 90, 
	97, 122, 0
]

class << self
	attr_accessor :_bel_single_lengths
	private :_bel_single_lengths, :_bel_single_lengths=
end
self._bel_single_lengths = [
	0, 1, 4, 3, 4, 4, 2, 4, 
	3, 4, 7, 4, 2, 2, 2, 3, 
	1, 4, 1, 1, 1, 1, 5, 1, 
	2, 1, 2, 1, 1, 4, 4, 2, 
	1, 1, 2, 3, 1, 4, 3, 4, 
	4, 2, 4, 3, 4, 7, 4, 1, 
	5, 1, 4, 3, 4, 4, 2, 4, 
	3, 4, 7, 4, 1, 1, 5, 0, 
	1, 2, 1, 1, 1, 1, 4, 3, 
	4, 4, 2, 4, 3, 4, 7, 4, 
	2, 2, 2, 3, 4, 3, 4, 4, 
	2, 4, 3, 4, 7, 4, 4, 4, 
	1, 1, 1, 1, 5, 1, 5, 1, 
	4, 3, 4, 4, 2, 4, 3, 4, 
	7, 4, 2, 2, 2, 4, 1, 4, 
	3, 4, 4, 2, 4, 3, 4, 7, 
	4, 1, 5, 1, 5, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0
]

class << self
	attr_accessor :_bel_range_lengths
	private :_bel_range_lengths, :_bel_range_lengths=
end
self._bel_range_lengths = [
	0, 3, 3, 0, 3, 3, 0, 0, 
	0, 3, 3, 0, 0, 1, 1, 0, 
	0, 0, 0, 0, 0, 0, 3, 3, 
	3, 0, 0, 0, 0, 3, 3, 0, 
	0, 0, 3, 3, 3, 3, 0, 3, 
	3, 0, 0, 0, 3, 3, 0, 0, 
	3, 3, 3, 0, 3, 3, 0, 0, 
	0, 3, 3, 0, 0, 0, 3, 1, 
	1, 0, 0, 0, 0, 3, 3, 0, 
	3, 3, 0, 0, 0, 3, 3, 0, 
	0, 1, 1, 3, 3, 0, 3, 3, 
	0, 0, 0, 3, 3, 0, 0, 0, 
	0, 0, 0, 0, 3, 0, 3, 3, 
	3, 0, 3, 3, 0, 0, 0, 3, 
	3, 0, 0, 1, 1, 3, 0, 3, 
	0, 3, 3, 0, 0, 0, 3, 3, 
	0, 0, 3, 0, 3, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0
]

class << self
	attr_accessor :_bel_index_offsets
	private :_bel_index_offsets, :_bel_index_offsets=
end
self._bel_index_offsets = [
	0, 0, 5, 13, 17, 25, 33, 36, 
	41, 45, 53, 64, 69, 72, 76, 80, 
	84, 86, 91, 93, 95, 97, 99, 108, 
	113, 119, 121, 124, 126, 128, 136, 144, 
	147, 149, 151, 157, 164, 169, 177, 181, 
	189, 197, 200, 205, 209, 217, 228, 233, 
	235, 244, 249, 257, 261, 269, 277, 280, 
	285, 289, 297, 308, 313, 315, 317, 326, 
	328, 331, 334, 336, 338, 340, 345, 353, 
	357, 365, 373, 376, 381, 385, 393, 404, 
	409, 412, 416, 420, 427, 435, 439, 447, 
	455, 458, 463, 467, 475, 486, 491, 496, 
	501, 503, 505, 507, 509, 518, 520, 529, 
	534, 542, 546, 554, 562, 565, 570, 574, 
	582, 593, 598, 601, 605, 609, 617, 619, 
	627, 631, 639, 647, 650, 655, 659, 667, 
	678, 683, 685, 694, 696, 705, 706, 707, 
	708, 709, 710, 711, 712, 713, 714
]

class << self
	attr_accessor :_bel_indicies
	private :_bel_indicies, :_bel_indicies=
end
self._bel_indicies = [
	1, 1, 1, 1, 0, 2, 2, 3, 
	4, 4, 4, 4, 0, 5, 5, 7, 
	6, 9, 9, 10, 11, 11, 11, 11, 
	8, 9, 9, 10, 13, 13, 13, 13, 
	12, 15, 16, 14, 18, 18, 19, 20, 
	17, 21, 21, 22, 6, 22, 22, 10, 
	11, 11, 11, 11, 8, 23, 23, 24, 
	25, 26, 28, 27, 27, 27, 27, 0, 
	21, 21, 29, 22, 6, 30, 30, 6, 
	31, 31, 32, 6, 33, 33, 34, 6, 
	35, 35, 36, 6, 37, 6, 37, 38, 
	37, 39, 6, 40, 6, 6, 41, 43, 
	42, 16, 14, 23, 23, 25, 26, 44, 
	44, 44, 44, 0, 46, 46, 46, 46, 
	45, 47, 48, 48, 48, 48, 45, 50, 
	49, 52, 53, 51, 54, 49, 53, 51, 
	55, 55, 56, 57, 57, 57, 57, 8, 
	55, 55, 56, 58, 58, 58, 58, 12, 
	60, 61, 59, 62, 17, 61, 59, 63, 
	64, 64, 64, 64, 0, 63, 66, 65, 
	65, 65, 65, 0, 67, 67, 67, 67, 
	0, 68, 68, 69, 70, 70, 70, 70, 
	0, 71, 71, 72, 6, 73, 73, 74, 
	75, 75, 75, 75, 8, 73, 73, 74, 
	76, 76, 76, 76, 12, 78, 79, 77, 
	80, 80, 81, 82, 17, 83, 83, 84, 
	6, 84, 84, 74, 75, 75, 75, 75, 
	8, 85, 85, 86, 87, 88, 90, 89, 
	89, 89, 89, 0, 83, 83, 91, 84, 
	6, 79, 77, 85, 85, 87, 88, 92, 
	92, 92, 92, 0, 93, 93, 93, 93, 
	0, 94, 94, 95, 96, 96, 96, 96, 
	0, 97, 97, 98, 6, 99, 99, 100, 
	101, 101, 101, 101, 8, 99, 99, 100, 
	102, 102, 102, 102, 12, 104, 105, 103, 
	106, 106, 107, 108, 17, 109, 109, 110, 
	6, 110, 110, 100, 101, 101, 101, 101, 
	8, 111, 111, 112, 113, 114, 116, 115, 
	115, 115, 115, 0, 109, 109, 117, 110, 
	6, 118, 6, 105, 103, 111, 111, 113, 
	114, 119, 119, 119, 119, 0, 120, 6, 
	121, 122, 6, 123, 124, 6, 125, 6, 
	6, 126, 128, 127, 129, 129, 129, 129, 
	0, 130, 130, 131, 132, 132, 132, 132, 
	0, 133, 133, 134, 6, 135, 135, 136, 
	137, 137, 137, 137, 8, 135, 135, 136, 
	138, 138, 138, 138, 12, 140, 141, 139, 
	142, 142, 143, 144, 17, 145, 145, 146, 
	6, 146, 146, 136, 137, 137, 137, 137, 
	8, 147, 147, 148, 149, 150, 152, 151, 
	151, 151, 151, 0, 145, 145, 153, 146, 
	6, 154, 154, 6, 155, 155, 156, 6, 
	157, 157, 158, 6, 159, 159, 160, 160, 
	160, 160, 0, 161, 161, 162, 163, 163, 
	163, 163, 0, 164, 164, 165, 6, 166, 
	166, 167, 168, 168, 168, 168, 8, 166, 
	166, 167, 169, 169, 169, 169, 12, 171, 
	172, 170, 173, 173, 174, 175, 17, 176, 
	176, 177, 6, 177, 177, 167, 168, 168, 
	168, 168, 8, 178, 178, 179, 180, 181, 
	183, 182, 182, 182, 182, 0, 176, 176, 
	184, 177, 6, 185, 186, 185, 187, 6, 
	188, 189, 188, 190, 6, 191, 6, 6, 
	192, 194, 193, 172, 170, 178, 178, 180, 
	181, 195, 195, 195, 195, 0, 141, 139, 
	147, 147, 149, 150, 196, 196, 196, 196, 
	0, 197, 197, 197, 197, 0, 198, 198, 
	199, 200, 200, 200, 200, 0, 201, 201, 
	202, 6, 203, 203, 204, 205, 205, 205, 
	205, 8, 203, 203, 204, 206, 206, 206, 
	206, 12, 208, 209, 207, 210, 210, 211, 
	212, 17, 213, 213, 214, 6, 214, 214, 
	204, 205, 205, 205, 205, 8, 215, 215, 
	216, 217, 218, 220, 219, 219, 219, 219, 
	0, 213, 213, 221, 214, 6, 222, 222, 
	6, 223, 223, 224, 6, 225, 225, 226, 
	6, 227, 227, 228, 229, 229, 229, 229, 
	0, 230, 6, 231, 231, 232, 233, 233, 
	233, 233, 0, 234, 234, 235, 6, 236, 
	236, 237, 238, 238, 238, 238, 8, 236, 
	236, 237, 239, 239, 239, 239, 12, 241, 
	242, 240, 243, 243, 244, 245, 17, 246, 
	246, 247, 6, 247, 247, 237, 238, 238, 
	238, 238, 8, 248, 248, 249, 250, 251, 
	253, 252, 252, 252, 252, 0, 246, 246, 
	254, 247, 6, 242, 240, 248, 248, 250, 
	251, 255, 255, 255, 255, 0, 209, 207, 
	215, 215, 217, 218, 256, 256, 256, 256, 
	0, 6, 6, 6, 6, 6, 6, 6, 
	6, 6, 6, 0
]

class << self
	attr_accessor :_bel_trans_targs
	private :_bel_trans_targs, :_bel_trans_targs=
end
self._bel_trans_targs = [
	0, 2, 3, 4, 2, 3, 0, 4, 
	0, 5, 6, 10, 0, 22, 6, 7, 
	21, 0, 8, 12, 9, 8, 9, 8, 
	11, 12, 9, 10, 5, 12, 13, 13, 
	14, 15, 14, 15, 16, 17, 133, 18, 
	19, 20, 20, 133, 22, 0, 24, 134, 
	24, 0, 26, 26, 27, 28, 135, 30, 
	31, 35, 34, 31, 32, 33, 136, 136, 
	34, 35, 30, 37, 38, 39, 37, 38, 
	39, 40, 41, 45, 48, 41, 42, 47, 
	43, 137, 44, 43, 44, 43, 46, 137, 
	44, 45, 40, 137, 48, 50, 51, 52, 
	50, 51, 52, 53, 54, 58, 62, 54, 
	55, 61, 56, 60, 57, 56, 57, 56, 
	59, 60, 57, 58, 53, 60, 138, 62, 
	64, 139, 64, 140, 66, 67, 68, 68, 
	140, 70, 71, 72, 70, 71, 72, 73, 
	74, 78, 102, 74, 75, 101, 76, 80, 
	77, 76, 77, 76, 79, 80, 77, 78, 
	73, 80, 81, 81, 82, 83, 82, 83, 
	84, 85, 86, 84, 85, 86, 87, 88, 
	92, 100, 88, 89, 99, 90, 94, 91, 
	90, 91, 90, 93, 94, 91, 92, 87, 
	94, 95, 141, 96, 95, 141, 96, 97, 
	98, 98, 141, 100, 102, 104, 105, 106, 
	104, 105, 106, 107, 108, 112, 132, 108, 
	109, 131, 110, 114, 111, 110, 111, 110, 
	113, 114, 111, 112, 107, 114, 115, 115, 
	116, 117, 116, 117, 118, 119, 142, 120, 
	121, 119, 120, 121, 122, 123, 127, 130, 
	123, 124, 129, 125, 142, 126, 125, 126, 
	125, 128, 142, 126, 127, 122, 142, 130, 
	132
]

class << self
	attr_accessor :_bel_trans_actions
	private :_bel_trans_actions, :_bel_trans_actions=
end
self._bel_trans_actions = [
	3, 163, 47, 106, 38, 0, 0, 9, 
	56, 0, 59, 122, 65, 35, 5, 5, 
	5, 7, 114, 114, 114, 0, 0, 102, 
	50, 102, 102, 38, 44, 0, 92, 0, 
	71, 77, 15, 0, 29, 0, 33, 0, 
	0, 80, 19, 89, 1, 53, 35, 41, 
	1, 68, 59, 5, 5, 5, 62, 0, 
	59, 35, 35, 5, 5, 5, 110, 98, 
	1, 1, 44, 143, 47, 106, 38, 0, 
	9, 0, 59, 122, 35, 5, 5, 5, 
	114, 132, 114, 0, 0, 102, 50, 127, 
	102, 38, 44, 11, 1, 137, 47, 106, 
	38, 0, 9, 0, 59, 122, 35, 5, 
	5, 5, 114, 114, 114, 0, 0, 102, 
	50, 102, 102, 38, 44, 0, 13, 1, 
	71, 74, 15, 21, 0, 0, 80, 19, 
	83, 137, 47, 106, 38, 0, 9, 0, 
	59, 122, 35, 5, 5, 5, 114, 114, 
	114, 0, 0, 102, 50, 102, 102, 38, 
	44, 0, 23, 0, 71, 17, 15, 0, 
	137, 47, 106, 38, 0, 9, 0, 59, 
	122, 35, 5, 5, 5, 114, 114, 114, 
	0, 0, 102, 50, 102, 102, 38, 44, 
	0, 25, 95, 25, 0, 27, 0, 0, 
	80, 19, 86, 1, 1, 170, 47, 106, 
	38, 0, 9, 0, 59, 122, 35, 5, 
	5, 5, 114, 114, 114, 0, 0, 102, 
	50, 102, 102, 38, 44, 0, 92, 0, 
	71, 77, 15, 0, 29, 137, 31, 47, 
	106, 38, 0, 9, 0, 59, 122, 35, 
	5, 5, 5, 114, 156, 114, 0, 0, 
	102, 50, 149, 102, 38, 44, 118, 1, 
	1
]

class << self
	attr_accessor :_bel_eof_actions
	private :_bel_eof_actions, :_bel_eof_actions=
end
self._bel_eof_actions = [
	0, 3, 3, 0, 56, 65, 7, 7, 
	0, 56, 3, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 7, 3, 53, 
	53, 68, 68, 68, 68, 56, 65, 7, 
	7, 7, 3, 3, 3, 3, 0, 56, 
	65, 7, 7, 0, 56, 3, 0, 7, 
	3, 3, 3, 0, 56, 65, 7, 7, 
	0, 56, 3, 0, 0, 7, 3, 0, 
	0, 0, 0, 0, 0, 3, 3, 0, 
	56, 65, 7, 7, 0, 56, 3, 0, 
	0, 0, 0, 3, 3, 0, 56, 65, 
	7, 7, 0, 56, 3, 0, 0, 0, 
	0, 0, 0, 7, 3, 7, 3, 3, 
	3, 0, 56, 65, 7, 7, 0, 56, 
	3, 0, 0, 0, 0, 3, 0, 3, 
	0, 56, 65, 7, 7, 0, 56, 3, 
	0, 7, 3, 7, 3, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0
]

class << self
	attr_accessor :bel_start
end
self.bel_start = 1;
class << self
	attr_accessor :bel_first_final
end
self.bel_first_final = 133;
class << self
	attr_accessor :bel_error
end
self.bel_error = 0;

class << self
	attr_accessor :bel_en_ident
end
self.bel_en_ident = 23;
class << self
	attr_accessor :bel_en_string
end
self.bel_en_string = 25;
class << self
	attr_accessor :bel_en_bel_parameter
end
self.bel_en_bel_parameter = 29;
class << self
	attr_accessor :bel_en_inner_term
end
self.bel_en_inner_term = 36;
class << self
	attr_accessor :bel_en_term
end
self.bel_en_term = 49;
class << self
	attr_accessor :bel_en_relationship
end
self.bel_en_relationship = 63;
class << self
	attr_accessor :bel_en_comment
end
self.bel_en_comment = 65;
class << self
	attr_accessor :bel_en_statement_simple
end
self.bel_en_statement_simple = 69;
class << self
	attr_accessor :bel_en_inner_statement
end
self.bel_en_inner_statement = 103;
class << self
	attr_accessor :bel_en_statement_nested
end
self.bel_en_statement_nested = 1;


begin
	p ||= 0
	pe ||= data.length
	cs = bel_start
	top = 0
end

begin
	_klen, _trans, _keys, _acts, _nacts = nil
	_goto_level = 0
	_resume = 10
	_eof_trans = 15
	_again = 20
	_test_eof = 30
	_out = 40
	while true
	_trigger_goto = false
	if _goto_level <= 0
	if p == pe
		_goto_level = _test_eof
		next
	end
	if cs == 0
		_goto_level = _out
		next
	end
	end
	if _goto_level <= _resume
	_keys = _bel_key_offsets[cs]
	_trans = _bel_index_offsets[cs]
	_klen = _bel_single_lengths[cs]
	_break_match = false
	
	begin
	  if _klen > 0
	     _lower = _keys
	     _upper = _keys + _klen - 1

	     loop do
	        break if _upper < _lower
	        _mid = _lower + ( (_upper - _lower) >> 1 )

	        if data[p].ord < _bel_trans_keys[_mid]
	           _upper = _mid - 1
	        elsif data[p].ord > _bel_trans_keys[_mid]
	           _lower = _mid + 1
	        else
	           _trans += (_mid - _keys)
	           _break_match = true
	           break
	        end
	     end # loop
	     break if _break_match
	     _keys += _klen
	     _trans += _klen
	  end
	  _klen = _bel_range_lengths[cs]
	  if _klen > 0
	     _lower = _keys
	     _upper = _keys + (_klen << 1) - 2
	     loop do
	        break if _upper < _lower
	        _mid = _lower + (((_upper-_lower) >> 1) & ~1)
	        if data[p].ord < _bel_trans_keys[_mid]
	          _upper = _mid - 2
	        elsif data[p].ord > _bel_trans_keys[_mid+1]
	          _lower = _mid + 2
	        else
	          _trans += ((_mid - _keys) >> 1)
	          _break_match = true
	          break
	        end
	     end # loop
	     break if _break_match
	     _trans += _klen
	  end
	end while false
	_trans = _bel_indicies[_trans]
	cs = _bel_trans_targs[_trans]
	if _bel_trans_actions[_trans] != 0
		_acts = _bel_trans_actions[_trans]
		_nacts = _bel_actions[_acts]
		_acts += 1
		while _nacts > 0
			_nacts -= 1
			_acts += 1
			case _bel_actions[_acts - 1]
when 0 then
		begin

    @buffers[:ident] = []
  		end
when 1 then
		begin

    (@buffers[:ident] ||= []) << data[p].ord
  		end
when 2 then
		begin

    @buffers[:ident] = s(:identifier,
                         utf8_string(@buffers[:ident]))
  		end
when 3 then
		begin

    yield @buffers[:ident]
  		end
when 4 then
		begin

    unless @buffers[:ident].is_a?(::AST::Node)
      @buffers[:ident] ||= []
      @buffers[:ident]   = s(:identifier,
                             utf8_string(@buffers[:ident]).sub(/\n$/, ''))
    end
  		end
when 5 then
		begin

    @buffers[:ident] ||= []
    yield @buffers[:ident]
  		end
when 6 then
		begin

    @buffers[:string] = []
  		end
when 7 then
		begin

    (@buffers[:string] ||= []) << data[p].ord
  		end
when 8 then
		begin

    @buffers[:string] = s(:string,
                          utf8_string(@buffers[:string]))
  		end
when 9 then
		begin

    @buffers[:string] ||= []
    @buffers[:string] = s(:string,
                          utf8_string(@buffers[:string]).sub(/\n$/, ''))
  		end
when 10 then
		begin

    yield @buffers[:string]
  		end
when 11 then
		begin

    @buffers[:string] ||= []
    yield @buffers[:string]
  		end
when 12 then
		begin

    @parameter = s(:parameter,
                   s(:prefix, @buffers[:ident]))
  		end
when 13 then
		begin

    @parameter ||= s(:parameter, s(:prefix, nil))
    @parameter   = @parameter << s(:value, @buffers[:string])
  		end
when 14 then
		begin

    @parameter ||= s(:parameter, s(:prefix, nil))
    @parameter   = @parameter << s(:value, @buffers[:ident])
  		end
when 15 then
		begin

    yield @parameter
  		end
when 16 then
		begin

    @buffers[:function] = []
  		end
when 17 then
		begin

    @buffers[:function] << data[p].ord
  		end
when 18 then
		begin

    @buffers[:function] = s(:identifier,
                            utf8_string(@buffers[:function]))
  		end
when 19 then
		begin

    @buffers[:term_stack] = [ s(:term) ]
  		end
when 20 then
		begin

    @buffers[:term_stack] << s(:term)
  		end
when 21 then
		begin

    fx                        = @buffers[:function]
    @buffers[:term_stack][-1] = @buffers[:term_stack][-1] << s(:function, fx)
  		end
when 22 then
		begin

    @buffers[:term_stack][-1] = @buffers[:term_stack][-1] << s(:argument, @parameter)
    @parameter                = nil
  		end
when 23 then
		begin

    p -= @buffers[:function].length + 1
    	begin
		stack[top] = cs
		top+= 1
		cs = 36
		_trigger_goto = true
		_goto_level = _again
		break
	end

  		end
when 24 then
		begin

    inner_term = @buffers[:term_stack].pop
    @buffers[:term_stack][-1] = @buffers[:term_stack][-1] << s(:argument, inner_term)
    	begin
		top -= 1
		cs = stack[top]
		_trigger_goto = true
		_goto_level = _again
		break
	end

  		end
when 25 then
		begin

    yield @buffers[:term_stack][-1]
  		end
when 26 then
		begin

    @buffers[:relationship] = []
  		end
when 27 then
		begin

    @buffers[:relationship] << data[p].ord
  		end
when 28 then
		begin

    @buffers[:relationship] = s(:relationship,
                                utf8_string(@buffers[:relationship]))
  		end
when 29 then
		begin

    yield @buffers[:relationship]
  		end
when 30 then
		begin

    @buffers[:comment] = []
  		end
when 31 then
		begin

    @buffers[:comment] << data[p].ord
  		end
when 32 then
		begin

    @buffers[:comment] = s(:comment,
                           utf8_string(@buffers[:comment]))
  		end
when 33 then
		begin

    yield @buffers[:comment] || s(:comment, nil)
  		end
when 34 then
		begin

    @buffers[:subject]    = s(:subject,
                              @buffers[:term_stack][-1])
    @buffers[:term_stack] = nil
  		end
when 35 then
		begin

    @buffers[:object]     = s(:object,
                              @buffers[:term_stack][-1])
    @buffers[:term_stack] = nil
  		end
when 36 then
		begin

    @buffers[:comment] ||= s(:comment, nil)
    yield s(:statement_simple,
            s(:statement,
              @buffers[:subject],
              @buffers[:relationship],
              @buffers[:object],
              @buffers[:comment]))
  		end
when 37 then
		begin

    @buffers[:statement_stack] = [ s(:statement) ]
  		end
when 38 then
		begin

    @buffers[:statement_stack] << s(:statement)
  		end
when 39 then
		begin

    @buffers[:statement_stack][-1] = @buffers[:statement_stack][-1] << @buffers[:subject]
  		end
when 40 then
		begin

    @buffers[:statement_stack][-1] = @buffers[:statement_stack][-1] << @buffers[:relationship]
  		end
when 41 then
		begin

    @buffers[:statement_stack][-1] = @buffers[:statement_stack][-1] << s(:object, @buffers[:object])
  		end
when 42 then
		begin

    	begin
		stack[top] = cs
		top+= 1
		cs = 103
		_trigger_goto = true
		_goto_level = _again
		break
	end

  		end
when 43 then
		begin

    inner_statement = @buffers[:statement_stack].pop
    @buffers[:object] = inner_statement
    @buffers[:statement_stack][-1] = @buffers[:statement_stack][-1] << s(:object, inner_statement)
    	begin
		top -= 1
		cs = stack[top]
		_trigger_goto = true
		_goto_level = _again
		break
	end

  		end
when 44 then
		begin

    yield s(:nested_statement, @buffers[:statement_stack][-1])
  		end
			end # action switch
		end
	end
	if _trigger_goto
		next
	end
	end
	if _goto_level <= _again
	if cs == 0
		_goto_level = _out
		next
	end
	p += 1
	if p != pe
		_goto_level = _resume
		next
	end
	end
	if _goto_level <= _test_eof
	if p == eof
	__acts = _bel_eof_actions[cs]
	__nacts =  _bel_actions[__acts]
	__acts += 1
	while __nacts > 0
		__nacts -= 1
		__acts += 1
		case _bel_actions[__acts - 1]
when 4 then
		begin

    unless @buffers[:ident].is_a?(::AST::Node)
      @buffers[:ident] ||= []
      @buffers[:ident]   = s(:identifier,
                             utf8_string(@buffers[:ident]).sub(/\n$/, ''))
    end
  		end
when 5 then
		begin

    @buffers[:ident] ||= []
    yield @buffers[:ident]
  		end
when 9 then
		begin

    @buffers[:string] ||= []
    @buffers[:string] = s(:string,
                          utf8_string(@buffers[:string]).sub(/\n$/, ''))
  		end
when 11 then
		begin

    @buffers[:string] ||= []
    yield @buffers[:string]
  		end
		end # eof action switch
	end
	if _trigger_goto
		next
	end
end
	end
	if _goto_level <= _out
		break
	end
	end
	end

class << self
	attr_accessor :_bel_actions
	private :_bel_actions, :_bel_actions=
end
self._bel_actions = [
	0, 1, 1, 1, 4, 1, 7, 1, 
	9, 1, 21, 1, 24, 1, 25, 1, 
	27, 1, 28, 1, 31, 1, 33, 1, 
	34, 1, 35, 1, 36, 1, 42, 1, 
	43, 1, 44, 2, 0, 1, 2, 1, 
	17, 2, 2, 3, 2, 2, 12, 2, 
	2, 18, 2, 2, 23, 2, 4, 5, 
	2, 4, 9, 2, 6, 7, 2, 8, 
	10, 2, 9, 4, 2, 9, 11, 2, 
	26, 27, 2, 28, 29, 2, 28, 40, 
	2, 30, 31, 2, 32, 33, 2, 32, 
	36, 2, 32, 44, 2, 34, 39, 2, 
	35, 36, 3, 2, 14, 15, 3, 2, 
	14, 22, 3, 2, 18, 21, 3, 8, 
	13, 15, 3, 8, 13, 22, 3, 35, 
	41, 43, 4, 0, 1, 16, 17, 4, 
	2, 14, 22, 24, 4, 8, 13, 22, 
	24, 5, 19, 16, 0, 1, 17, 5, 
	20, 16, 0, 1, 17, 6, 2, 14, 
	22, 35, 41, 43, 6, 8, 13, 22, 
	35, 41, 43, 6, 37, 19, 16, 0, 
	1, 17, 6, 38, 19, 16, 0, 1, 
	17
]

class << self
	attr_accessor :_bel_key_offsets
	private :_bel_key_offsets, :_bel_key_offsets=
end
self._bel_key_offsets = [
	0, 0, 7, 17, 20, 30, 40, 42, 
	46, 49, 59, 72, 76, 78, 82, 86, 
	89, 90, 94, 95, 96, 97, 98, 109, 
	116, 124, 125, 127, 128, 129, 139, 149, 
	151, 152, 153, 161, 170, 177, 187, 190, 
	200, 210, 212, 216, 219, 229, 242, 246, 
	247, 258, 265, 275, 278, 288, 298, 300, 
	304, 307, 317, 330, 334, 335, 336, 347, 
	349, 352, 354, 355, 356, 357, 364, 374, 
	377, 387, 397, 399, 403, 406, 416, 429, 
	433, 435, 439, 443, 452, 462, 465, 475, 
	485, 487, 491, 494, 504, 517, 521, 525, 
	529, 530, 531, 532, 533, 544, 545, 556, 
	563, 573, 576, 586, 596, 598, 602, 605, 
	615, 628, 632, 634, 638, 642, 652, 653, 
	663, 666, 676, 686, 688, 692, 695, 705, 
	718, 722, 723, 734, 735, 746, 746, 746, 
	746, 746, 746, 746, 746, 746, 746
]

class << self
	attr_accessor :_bel_trans_keys
	private :_bel_trans_keys, :_bel_trans_keys=
end
self._bel_trans_keys = [
	95, 48, 57, 65, 90, 97, 122, 9, 
	32, 40, 95, 48, 57, 65, 90, 97, 
	122, 9, 32, 40, 9, 32, 34, 95, 
	48, 57, 65, 90, 97, 122, 9, 32, 
	34, 95, 48, 57, 65, 90, 97, 122, 
	34, 92, 9, 32, 41, 44, 9, 32, 
	44, 9, 32, 34, 95, 48, 57, 65, 
	90, 97, 122, 9, 32, 40, 41, 44, 
	58, 95, 48, 57, 65, 90, 97, 122, 
	9, 32, 41, 44, 9, 32, 9, 32, 
	33, 126, 9, 32, 33, 126, 9, 32, 
	40, 41, 9, 10, 32, 47, 47, 10, 
	10, 92, 9, 32, 41, 44, 95, 48, 
	57, 65, 90, 97, 122, 95, 48, 57, 
	65, 90, 97, 122, 10, 95, 48, 57, 
	65, 90, 97, 122, 34, 34, 92, 10, 
	92, 9, 32, 34, 95, 48, 57, 65, 
	90, 97, 122, 9, 32, 34, 95, 48, 
	57, 65, 90, 97, 122, 34, 92, 10, 
	92, 10, 95, 48, 57, 65, 90, 97, 
	122, 10, 58, 95, 48, 57, 65, 90, 
	97, 122, 95, 48, 57, 65, 90, 97, 
	122, 9, 32, 40, 95, 48, 57, 65, 
	90, 97, 122, 9, 32, 40, 9, 32, 
	34, 95, 48, 57, 65, 90, 97, 122, 
	9, 32, 34, 95, 48, 57, 65, 90, 
	97, 122, 34, 92, 9, 32, 41, 44, 
	9, 32, 44, 9, 32, 34, 95, 48, 
	57, 65, 90, 97, 122, 9, 32, 40, 
	41, 44, 58, 95, 48, 57, 65, 90, 
	97, 122, 9, 32, 41, 44, 92, 9, 
	32, 41, 44, 95, 48, 57, 65, 90, 
	97, 122, 95, 48, 57, 65, 90, 97, 
	122, 9, 32, 40, 95, 48, 57, 65, 
	90, 97, 122, 9, 32, 40, 9, 32, 
	34, 95, 48, 57, 65, 90, 97, 122, 
	9, 32, 34, 95, 48, 57, 65, 90, 
	97, 122, 34, 92, 9, 32, 41, 44, 
	9, 32, 44, 9, 32, 34, 95, 48, 
	57, 65, 90, 97, 122, 9, 32, 40, 
	41, 44, 58, 95, 48, 57, 65, 90, 
	97, 122, 9, 32, 41, 44, 10, 92, 
	9, 32, 41, 44, 95, 48, 57, 65, 
	90, 97, 122, 33, 126, 10, 33, 126, 
	10, 47, 47, 10, 10, 95, 48, 57, 
	65, 90, 97, 122, 9, 32, 40, 95, 
	48, 57, 65, 90, 97, 122, 9, 32, 
	40, 9, 32, 34, 95, 48, 57, 65, 
	90, 97, 122, 9, 32, 34, 95, 48, 
	57, 65, 90, 97, 122, 34, 92, 9, 
	32, 41, 44, 9, 32, 44, 9, 32, 
	34, 95, 48, 57, 65, 90, 97, 122, 
	9, 32, 40, 41, 44, 58, 95, 48, 
	57, 65, 90, 97, 122, 9, 32, 41, 
	44, 9, 32, 9, 32, 33, 126, 9, 
	32, 33, 126, 9, 32, 95, 48, 57, 
	65, 90, 97, 122, 9, 32, 40, 95, 
	48, 57, 65, 90, 97, 122, 9, 32, 
	40, 9, 32, 34, 95, 48, 57, 65, 
	90, 97, 122, 9, 32, 34, 95, 48, 
	57, 65, 90, 97, 122, 34, 92, 9, 
	32, 41, 44, 9, 32, 44, 9, 32, 
	34, 95, 48, 57, 65, 90, 97, 122, 
	9, 32, 40, 41, 44, 58, 95, 48, 
	57, 65, 90, 97, 122, 9, 32, 41, 
	44, 9, 10, 32, 47, 9, 10, 32, 
	47, 47, 10, 10, 92, 9, 32, 41, 
	44, 95, 48, 57, 65, 90, 97, 122, 
	92, 9, 32, 41, 44, 95, 48, 57, 
	65, 90, 97, 122, 95, 48, 57, 65, 
	90, 97, 122, 9, 32, 40, 95, 48, 
	57, 65, 90, 97, 122, 9, 32, 40, 
	9, 32, 34, 95, 48, 57, 65, 90, 
	97, 122, 9, 32, 34, 95, 48, 57, 
	65, 90, 97, 122, 34, 92, 9, 32, 
	41, 44, 9, 32, 44, 9, 32, 34, 
	95, 48, 57, 65, 90, 97, 122, 9, 
	32, 40, 41, 44, 58, 95, 48, 57, 
	65, 90, 97, 122, 9, 32, 41, 44, 
	9, 32, 9, 32, 33, 126, 9, 32, 
	33, 126, 9, 32, 40, 95, 48, 57, 
	65, 90, 97, 122, 41, 9, 32, 40, 
	95, 48, 57, 65, 90, 97, 122, 9, 
	32, 40, 9, 32, 34, 95, 48, 57, 
	65, 90, 97, 122, 9, 32, 34, 95, 
	48, 57, 65, 90, 97, 122, 34, 92, 
	9, 32, 41, 44, 9, 32, 44, 9, 
	32, 34, 95, 48, 57, 65, 90, 97, 
	122, 9, 32, 40, 41, 44, 58, 95, 
	48, 57, 65, 90, 97, 122, 9, 32, 
	41, 44, 92, 9, 32, 41, 44, 95, 
	48, 57, 65, 90, 97, 122, 92, 9, 
	32, 41, 44, 95, 48, 57, 65, 90, 
	97, 122, 0
]

class << self
	attr_accessor :_bel_single_lengths
	private :_bel_single_lengths, :_bel_single_lengths=
end
self._bel_single_lengths = [
	0, 1, 4, 3, 4, 4, 2, 4, 
	3, 4, 7, 4, 2, 2, 2, 3, 
	1, 4, 1, 1, 1, 1, 5, 1, 
	2, 1, 2, 1, 1, 4, 4, 2, 
	1, 1, 2, 3, 1, 4, 3, 4, 
	4, 2, 4, 3, 4, 7, 4, 1, 
	5, 1, 4, 3, 4, 4, 2, 4, 
	3, 4, 7, 4, 1, 1, 5, 0, 
	1, 2, 1, 1, 1, 1, 4, 3, 
	4, 4, 2, 4, 3, 4, 7, 4, 
	2, 2, 2, 3, 4, 3, 4, 4, 
	2, 4, 3, 4, 7, 4, 4, 4, 
	1, 1, 1, 1, 5, 1, 5, 1, 
	4, 3, 4, 4, 2, 4, 3, 4, 
	7, 4, 2, 2, 2, 4, 1, 4, 
	3, 4, 4, 2, 4, 3, 4, 7, 
	4, 1, 5, 1, 5, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0
]

class << self
	attr_accessor :_bel_range_lengths
	private :_bel_range_lengths, :_bel_range_lengths=
end
self._bel_range_lengths = [
	0, 3, 3, 0, 3, 3, 0, 0, 
	0, 3, 3, 0, 0, 1, 1, 0, 
	0, 0, 0, 0, 0, 0, 3, 3, 
	3, 0, 0, 0, 0, 3, 3, 0, 
	0, 0, 3, 3, 3, 3, 0, 3, 
	3, 0, 0, 0, 3, 3, 0, 0, 
	3, 3, 3, 0, 3, 3, 0, 0, 
	0, 3, 3, 0, 0, 0, 3, 1, 
	1, 0, 0, 0, 0, 3, 3, 0, 
	3, 3, 0, 0, 0, 3, 3, 0, 
	0, 1, 1, 3, 3, 0, 3, 3, 
	0, 0, 0, 3, 3, 0, 0, 0, 
	0, 0, 0, 0, 3, 0, 3, 3, 
	3, 0, 3, 3, 0, 0, 0, 3, 
	3, 0, 0, 1, 1, 3, 0, 3, 
	0, 3, 3, 0, 0, 0, 3, 3, 
	0, 0, 3, 0, 3, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0
]

class << self
	attr_accessor :_bel_index_offsets
	private :_bel_index_offsets, :_bel_index_offsets=
end
self._bel_index_offsets = [
	0, 0, 5, 13, 17, 25, 33, 36, 
	41, 45, 53, 64, 69, 72, 76, 80, 
	84, 86, 91, 93, 95, 97, 99, 108, 
	113, 119, 121, 124, 126, 128, 136, 144, 
	147, 149, 151, 157, 164, 169, 177, 181, 
	189, 197, 200, 205, 209, 217, 228, 233, 
	235, 244, 249, 257, 261, 269, 277, 280, 
	285, 289, 297, 308, 313, 315, 317, 326, 
	328, 331, 334, 336, 338, 340, 345, 353, 
	357, 365, 373, 376, 381, 385, 393, 404, 
	409, 412, 416, 420, 427, 435, 439, 447, 
	455, 458, 463, 467, 475, 486, 491, 496, 
	501, 503, 505, 507, 509, 518, 520, 529, 
	534, 542, 546, 554, 562, 565, 570, 574, 
	582, 593, 598, 601, 605, 609, 617, 619, 
	627, 631, 639, 647, 650, 655, 659, 667, 
	678, 683, 685, 694, 696, 705, 706, 707, 
	708, 709, 710, 711, 712, 713, 714
]

class << self
	attr_accessor :_bel_indicies
	private :_bel_indicies, :_bel_indicies=
end
self._bel_indicies = [
	1, 1, 1, 1, 0, 2, 2, 3, 
	4, 4, 4, 4, 0, 5, 5, 7, 
	6, 9, 9, 10, 11, 11, 11, 11, 
	8, 9, 9, 10, 13, 13, 13, 13, 
	12, 15, 16, 14, 18, 18, 19, 20, 
	17, 21, 21, 22, 6, 22, 22, 10, 
	11, 11, 11, 11, 8, 23, 23, 24, 
	25, 26, 28, 27, 27, 27, 27, 0, 
	21, 21, 29, 22, 6, 30, 30, 6, 
	31, 31, 32, 6, 33, 33, 34, 6, 
	35, 35, 36, 6, 37, 6, 37, 38, 
	37, 39, 6, 40, 6, 6, 41, 43, 
	42, 16, 14, 23, 23, 25, 26, 44, 
	44, 44, 44, 0, 46, 46, 46, 46, 
	45, 47, 48, 48, 48, 48, 45, 50, 
	49, 52, 53, 51, 54, 49, 53, 51, 
	55, 55, 56, 57, 57, 57, 57, 8, 
	55, 55, 56, 58, 58, 58, 58, 12, 
	60, 61, 59, 62, 17, 61, 59, 63, 
	64, 64, 64, 64, 0, 63, 66, 65, 
	65, 65, 65, 0, 67, 67, 67, 67, 
	0, 68, 68, 69, 70, 70, 70, 70, 
	0, 71, 71, 72, 6, 73, 73, 74, 
	75, 75, 75, 75, 8, 73, 73, 74, 
	76, 76, 76, 76, 12, 78, 79, 77, 
	80, 80, 81, 82, 17, 83, 83, 84, 
	6, 84, 84, 74, 75, 75, 75, 75, 
	8, 85, 85, 86, 87, 88, 90, 89, 
	89, 89, 89, 0, 83, 83, 91, 84, 
	6, 79, 77, 85, 85, 87, 88, 92, 
	92, 92, 92, 0, 93, 93, 93, 93, 
	0, 94, 94, 95, 96, 96, 96, 96, 
	0, 97, 97, 98, 6, 99, 99, 100, 
	101, 101, 101, 101, 8, 99, 99, 100, 
	102, 102, 102, 102, 12, 104, 105, 103, 
	106, 106, 107, 108, 17, 109, 109, 110, 
	6, 110, 110, 100, 101, 101, 101, 101, 
	8, 111, 111, 112, 113, 114, 116, 115, 
	115, 115, 115, 0, 109, 109, 117, 110, 
	6, 118, 6, 105, 103, 111, 111, 113, 
	114, 119, 119, 119, 119, 0, 120, 6, 
	121, 122, 6, 123, 124, 6, 125, 6, 
	6, 126, 128, 127, 129, 129, 129, 129, 
	0, 130, 130, 131, 132, 132, 132, 132, 
	0, 133, 133, 134, 6, 135, 135, 136, 
	137, 137, 137, 137, 8, 135, 135, 136, 
	138, 138, 138, 138, 12, 140, 141, 139, 
	142, 142, 143, 144, 17, 145, 145, 146, 
	6, 146, 146, 136, 137, 137, 137, 137, 
	8, 147, 147, 148, 149, 150, 152, 151, 
	151, 151, 151, 0, 145, 145, 153, 146, 
	6, 154, 154, 6, 155, 155, 156, 6, 
	157, 157, 158, 6, 159, 159, 160, 160, 
	160, 160, 0, 161, 161, 162, 163, 163, 
	163, 163, 0, 164, 164, 165, 6, 166, 
	166, 167, 168, 168, 168, 168, 8, 166, 
	166, 167, 169, 169, 169, 169, 12, 171, 
	172, 170, 173, 173, 174, 175, 17, 176, 
	176, 177, 6, 177, 177, 167, 168, 168, 
	168, 168, 8, 178, 178, 179, 180, 181, 
	183, 182, 182, 182, 182, 0, 176, 176, 
	184, 177, 6, 185, 186, 185, 187, 6, 
	188, 189, 188, 190, 6, 191, 6, 6, 
	192, 194, 193, 172, 170, 178, 178, 180, 
	181, 195, 195, 195, 195, 0, 141, 139, 
	147, 147, 149, 150, 196, 196, 196, 196, 
	0, 197, 197, 197, 197, 0, 198, 198, 
	199, 200, 200, 200, 200, 0, 201, 201, 
	202, 6, 203, 203, 204, 205, 205, 205, 
	205, 8, 203, 203, 204, 206, 206, 206, 
	206, 12, 208, 209, 207, 210, 210, 211, 
	212, 17, 213, 213, 214, 6, 214, 214, 
	204, 205, 205, 205, 205, 8, 215, 215, 
	216, 217, 218, 220, 219, 219, 219, 219, 
	0, 213, 213, 221, 214, 6, 222, 222, 
	6, 223, 223, 224, 6, 225, 225, 226, 
	6, 227, 227, 228, 229, 229, 229, 229, 
	0, 230, 6, 231, 231, 232, 233, 233, 
	233, 233, 0, 234, 234, 235, 6, 236, 
	236, 237, 238, 238, 238, 238, 8, 236, 
	236, 237, 239, 239, 239, 239, 12, 241, 
	242, 240, 243, 243, 244, 245, 17, 246, 
	246, 247, 6, 247, 247, 237, 238, 238, 
	238, 238, 8, 248, 248, 249, 250, 251, 
	253, 252, 252, 252, 252, 0, 246, 246, 
	254, 247, 6, 242, 240, 248, 248, 250, 
	251, 255, 255, 255, 255, 0, 209, 207, 
	215, 215, 217, 218, 256, 256, 256, 256, 
	0, 6, 6, 6, 6, 6, 6, 6, 
	6, 6, 6, 0
]

class << self
	attr_accessor :_bel_trans_targs
	private :_bel_trans_targs, :_bel_trans_targs=
end
self._bel_trans_targs = [
	0, 2, 3, 4, 2, 3, 0, 4, 
	0, 5, 6, 10, 0, 22, 6, 7, 
	21, 0, 8, 12, 9, 8, 9, 8, 
	11, 12, 9, 10, 5, 12, 13, 13, 
	14, 15, 14, 15, 16, 17, 133, 18, 
	19, 20, 20, 133, 22, 0, 24, 134, 
	24, 0, 26, 26, 27, 28, 135, 30, 
	31, 35, 34, 31, 32, 33, 136, 136, 
	34, 35, 30, 37, 38, 39, 37, 38, 
	39, 40, 41, 45, 48, 41, 42, 47, 
	43, 137, 44, 43, 44, 43, 46, 137, 
	44, 45, 40, 137, 48, 50, 51, 52, 
	50, 51, 52, 53, 54, 58, 62, 54, 
	55, 61, 56, 60, 57, 56, 57, 56, 
	59, 60, 57, 58, 53, 60, 138, 62, 
	64, 139, 64, 140, 66, 67, 68, 68, 
	140, 70, 71, 72, 70, 71, 72, 73, 
	74, 78, 102, 74, 75, 101, 76, 80, 
	77, 76, 77, 76, 79, 80, 77, 78, 
	73, 80, 81, 81, 82, 83, 82, 83, 
	84, 85, 86, 84, 85, 86, 87, 88, 
	92, 100, 88, 89, 99, 90, 94, 91, 
	90, 91, 90, 93, 94, 91, 92, 87, 
	94, 95, 141, 96, 95, 141, 96, 97, 
	98, 98, 141, 100, 102, 104, 105, 106, 
	104, 105, 106, 107, 108, 112, 132, 108, 
	109, 131, 110, 114, 111, 110, 111, 110, 
	113, 114, 111, 112, 107, 114, 115, 115, 
	116, 117, 116, 117, 118, 119, 142, 120, 
	121, 119, 120, 121, 122, 123, 127, 130, 
	123, 124, 129, 125, 142, 126, 125, 126, 
	125, 128, 142, 126, 127, 122, 142, 130, 
	132
]

class << self
	attr_accessor :_bel_trans_actions
	private :_bel_trans_actions, :_bel_trans_actions=
end
self._bel_trans_actions = [
	3, 163, 47, 106, 38, 0, 0, 9, 
	56, 0, 59, 122, 65, 35, 5, 5, 
	5, 7, 114, 114, 114, 0, 0, 102, 
	50, 102, 102, 38, 44, 0, 92, 0, 
	71, 77, 15, 0, 29, 0, 33, 0, 
	0, 80, 19, 89, 1, 53, 35, 41, 
	1, 68, 59, 5, 5, 5, 62, 0, 
	59, 35, 35, 5, 5, 5, 110, 98, 
	1, 1, 44, 143, 47, 106, 38, 0, 
	9, 0, 59, 122, 35, 5, 5, 5, 
	114, 132, 114, 0, 0, 102, 50, 127, 
	102, 38, 44, 11, 1, 137, 47, 106, 
	38, 0, 9, 0, 59, 122, 35, 5, 
	5, 5, 114, 114, 114, 0, 0, 102, 
	50, 102, 102, 38, 44, 0, 13, 1, 
	71, 74, 15, 21, 0, 0, 80, 19, 
	83, 137, 47, 106, 38, 0, 9, 0, 
	59, 122, 35, 5, 5, 5, 114, 114, 
	114, 0, 0, 102, 50, 102, 102, 38, 
	44, 0, 23, 0, 71, 17, 15, 0, 
	137, 47, 106, 38, 0, 9, 0, 59, 
	122, 35, 5, 5, 5, 114, 114, 114, 
	0, 0, 102, 50, 102, 102, 38, 44, 
	0, 25, 95, 25, 0, 27, 0, 0, 
	80, 19, 86, 1, 1, 170, 47, 106, 
	38, 0, 9, 0, 59, 122, 35, 5, 
	5, 5, 114, 114, 114, 0, 0, 102, 
	50, 102, 102, 38, 44, 0, 92, 0, 
	71, 77, 15, 0, 29, 137, 31, 47, 
	106, 38, 0, 9, 0, 59, 122, 35, 
	5, 5, 5, 114, 156, 114, 0, 0, 
	102, 50, 149, 102, 38, 44, 118, 1, 
	1
]

class << self
	attr_accessor :_bel_eof_actions
	private :_bel_eof_actions, :_bel_eof_actions=
end
self._bel_eof_actions = [
	0, 3, 3, 0, 56, 65, 7, 7, 
	0, 56, 3, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 7, 3, 53, 
	53, 68, 68, 68, 68, 56, 65, 7, 
	7, 7, 3, 3, 3, 3, 0, 56, 
	65, 7, 7, 0, 56, 3, 0, 7, 
	3, 3, 3, 0, 56, 65, 7, 7, 
	0, 56, 3, 0, 0, 7, 3, 0, 
	0, 0, 0, 0, 0, 3, 3, 0, 
	56, 65, 7, 7, 0, 56, 3, 0, 
	0, 0, 0, 3, 3, 0, 56, 65, 
	7, 7, 0, 56, 3, 0, 0, 0, 
	0, 0, 0, 7, 3, 7, 3, 3, 
	3, 0, 56, 65, 7, 7, 0, 56, 
	3, 0, 0, 0, 0, 3, 0, 3, 
	0, 56, 65, 7, 7, 0, 56, 3, 
	0, 7, 3, 7, 3, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0
]

class << self
	attr_accessor :bel_start
end
self.bel_start = 1;
class << self
	attr_accessor :bel_first_final
end
self.bel_first_final = 133;
class << self
	attr_accessor :bel_error
end
self.bel_error = 0;

class << self
	attr_accessor :bel_en_ident
end
self.bel_en_ident = 23;
class << self
	attr_accessor :bel_en_string
end
self.bel_en_string = 25;
class << self
	attr_accessor :bel_en_bel_parameter
end
self.bel_en_bel_parameter = 29;
class << self
	attr_accessor :bel_en_inner_term
end
self.bel_en_inner_term = 36;
class << self
	attr_accessor :bel_en_term
end
self.bel_en_term = 49;
class << self
	attr_accessor :bel_en_relationship
end
self.bel_en_relationship = 63;
class << self
	attr_accessor :bel_en_comment
end
self.bel_en_comment = 65;
class << self
	attr_accessor :bel_en_statement_simple
end
self.bel_en_statement_simple = 69;
class << self
	attr_accessor :bel_en_inner_statement
end
self.bel_en_inner_statement = 103;
class << self
	attr_accessor :bel_en_statement_nested
end
self.bel_en_statement_nested = 1;


begin
	p ||= 0
	pe ||= data.length
	cs = bel_start
	top = 0
end

begin
	_klen, _trans, _keys, _acts, _nacts = nil
	_goto_level = 0
	_resume = 10
	_eof_trans = 15
	_again = 20
	_test_eof = 30
	_out = 40
	while true
	_trigger_goto = false
	if _goto_level <= 0
	if p == pe
		_goto_level = _test_eof
		next
	end
	if cs == 0
		_goto_level = _out
		next
	end
	end
	if _goto_level <= _resume
	_keys = _bel_key_offsets[cs]
	_trans = _bel_index_offsets[cs]
	_klen = _bel_single_lengths[cs]
	_break_match = false
	
	begin
	  if _klen > 0
	     _lower = _keys
	     _upper = _keys + _klen - 1

	     loop do
	        break if _upper < _lower
	        _mid = _lower + ( (_upper - _lower) >> 1 )

	        if data[p].ord < _bel_trans_keys[_mid]
	           _upper = _mid - 1
	        elsif data[p].ord > _bel_trans_keys[_mid]
	           _lower = _mid + 1
	        else
	           _trans += (_mid - _keys)
	           _break_match = true
	           break
	        end
	     end # loop
	     break if _break_match
	     _keys += _klen
	     _trans += _klen
	  end
	  _klen = _bel_range_lengths[cs]
	  if _klen > 0
	     _lower = _keys
	     _upper = _keys + (_klen << 1) - 2
	     loop do
	        break if _upper < _lower
	        _mid = _lower + (((_upper-_lower) >> 1) & ~1)
	        if data[p].ord < _bel_trans_keys[_mid]
	          _upper = _mid - 2
	        elsif data[p].ord > _bel_trans_keys[_mid+1]
	          _lower = _mid + 2
	        else
	          _trans += ((_mid - _keys) >> 1)
	          _break_match = true
	          break
	        end
	     end # loop
	     break if _break_match
	     _trans += _klen
	  end
	end while false
	_trans = _bel_indicies[_trans]
	cs = _bel_trans_targs[_trans]
	if _bel_trans_actions[_trans] != 0
		_acts = _bel_trans_actions[_trans]
		_nacts = _bel_actions[_acts]
		_acts += 1
		while _nacts > 0
			_nacts -= 1
			_acts += 1
			case _bel_actions[_acts - 1]
when 0 then
		begin

    @buffers[:ident] = []
  		end
when 1 then
		begin

    (@buffers[:ident] ||= []) << data[p].ord
  		end
when 2 then
		begin

    @buffers[:ident] = s(:identifier,
                         utf8_string(@buffers[:ident]))
  		end
when 3 then
		begin

    yield @buffers[:ident]
  		end
when 4 then
		begin

    unless @buffers[:ident].is_a?(::AST::Node)
      @buffers[:ident] ||= []
      @buffers[:ident]   = s(:identifier,
                             utf8_string(@buffers[:ident]).sub(/\n$/, ''))
    end
  		end
when 5 then
		begin

    @buffers[:ident] ||= []
    yield @buffers[:ident]
  		end
when 6 then
		begin

    @buffers[:string] = []
  		end
when 7 then
		begin

    (@buffers[:string] ||= []) << data[p].ord
  		end
when 8 then
		begin

    @buffers[:string] = s(:string,
                          utf8_string(@buffers[:string]))
  		end
when 9 then
		begin

    @buffers[:string] ||= []
    @buffers[:string] = s(:string,
                          utf8_string(@buffers[:string]).sub(/\n$/, ''))
  		end
when 10 then
		begin

    yield @buffers[:string]
  		end
when 11 then
		begin

    @buffers[:string] ||= []
    yield @buffers[:string]
  		end
when 12 then
		begin

    @parameter = s(:parameter,
                   s(:prefix, @buffers[:ident]))
  		end
when 13 then
		begin

    @parameter ||= s(:parameter, s(:prefix, nil))
    @parameter   = @parameter << s(:value, @buffers[:string])
  		end
when 14 then
		begin

    @parameter ||= s(:parameter, s(:prefix, nil))
    @parameter   = @parameter << s(:value, @buffers[:ident])
  		end
when 15 then
		begin

    yield @parameter
  		end
when 16 then
		begin

    @buffers[:function] = []
  		end
when 17 then
		begin

    @buffers[:function] << data[p].ord
  		end
when 18 then
		begin

    @buffers[:function] = s(:identifier,
                            utf8_string(@buffers[:function]))
  		end
when 19 then
		begin

    @buffers[:term_stack] = [ s(:term) ]
  		end
when 20 then
		begin

    @buffers[:term_stack] << s(:term)
  		end
when 21 then
		begin

    fx                        = @buffers[:function]
    @buffers[:term_stack][-1] = @buffers[:term_stack][-1] << s(:function, fx)
  		end
when 22 then
		begin

    @buffers[:term_stack][-1] = @buffers[:term_stack][-1] << s(:argument, @parameter)
    @parameter                = nil
  		end
when 23 then
		begin

    p -= @buffers[:function].length + 1
    	begin
		stack[top] = cs
		top+= 1
		cs = 36
		_trigger_goto = true
		_goto_level = _again
		break
	end

  		end
when 24 then
		begin

    inner_term = @buffers[:term_stack].pop
    @buffers[:term_stack][-1] = @buffers[:term_stack][-1] << s(:argument, inner_term)
    	begin
		top -= 1
		cs = stack[top]
		_trigger_goto = true
		_goto_level = _again
		break
	end

  		end
when 25 then
		begin

    yield @buffers[:term_stack][-1]
  		end
when 26 then
		begin

    @buffers[:relationship] = []
  		end
when 27 then
		begin

    @buffers[:relationship] << data[p].ord
  		end
when 28 then
		begin

    @buffers[:relationship] = s(:relationship,
                                utf8_string(@buffers[:relationship]))
  		end
when 29 then
		begin

    yield @buffers[:relationship]
  		end
when 30 then
		begin

    @buffers[:comment] = []
  		end
when 31 then
		begin

    @buffers[:comment] << data[p].ord
  		end
when 32 then
		begin

    @buffers[:comment] = s(:comment,
                           utf8_string(@buffers[:comment]))
  		end
when 33 then
		begin

    yield @buffers[:comment] || s(:comment, nil)
  		end
when 34 then
		begin

    @buffers[:subject]    = s(:subject,
                              @buffers[:term_stack][-1])
    @buffers[:term_stack] = nil
  		end
when 35 then
		begin

    @buffers[:object]     = s(:object,
                              @buffers[:term_stack][-1])
    @buffers[:term_stack] = nil
  		end
when 36 then
		begin

    @buffers[:comment] ||= s(:comment, nil)
    yield s(:statement_simple,
            s(:statement,
              @buffers[:subject],
              @buffers[:relationship],
              @buffers[:object],
              @buffers[:comment]))
  		end
when 37 then
		begin

    @buffers[:statement_stack] = [ s(:statement) ]
  		end
when 38 then
		begin

    @buffers[:statement_stack] << s(:statement)
  		end
when 39 then
		begin

    @buffers[:statement_stack][-1] = @buffers[:statement_stack][-1] << @buffers[:subject]
  		end
when 40 then
		begin

    @buffers[:statement_stack][-1] = @buffers[:statement_stack][-1] << @buffers[:relationship]
  		end
when 41 then
		begin

    @buffers[:statement_stack][-1] = @buffers[:statement_stack][-1] << s(:object, @buffers[:object])
  		end
when 42 then
		begin

    	begin
		stack[top] = cs
		top+= 1
		cs = 103
		_trigger_goto = true
		_goto_level = _again
		break
	end

  		end
when 43 then
		begin

    inner_statement = @buffers[:statement_stack].pop
    @buffers[:object] = inner_statement
    @buffers[:statement_stack][-1] = @buffers[:statement_stack][-1] << s(:object, inner_statement)
    	begin
		top -= 1
		cs = stack[top]
		_trigger_goto = true
		_goto_level = _again
		break
	end

  		end
when 44 then
		begin

    yield s(:nested_statement, @buffers[:statement_stack][-1])
  		end
			end # action switch
		end
	end
	if _trigger_goto
		next
	end
	end
	if _goto_level <= _again
	if cs == 0
		_goto_level = _out
		next
	end
	p += 1
	if p != pe
		_goto_level = _resume
		next
	end
	end
	if _goto_level <= _test_eof
	if p == eof
	__acts = _bel_eof_actions[cs]
	__nacts =  _bel_actions[__acts]
	__acts += 1
	while __nacts > 0
		__nacts -= 1
		__acts += 1
		case _bel_actions[__acts - 1]
when 4 then
		begin

    unless @buffers[:ident].is_a?(::AST::Node)
      @buffers[:ident] ||= []
      @buffers[:ident]   = s(:identifier,
                             utf8_string(@buffers[:ident]).sub(/\n$/, ''))
    end
  		end
when 5 then
		begin

    @buffers[:ident] ||= []
    yield @buffers[:ident]
  		end
when 9 then
		begin

    @buffers[:string] ||= []
    @buffers[:string] = s(:string,
                          utf8_string(@buffers[:string]).sub(/\n$/, ''))
  		end
when 11 then
		begin

    @buffers[:string] ||= []
    yield @buffers[:string]
  		end
		end # eof action switch
	end
	if _trigger_goto
		next
	end
end
	end
	if _goto_level <= _out
		break
	end
	end
	end

class << self
	attr_accessor :_bel_actions
	private :_bel_actions, :_bel_actions=
end
self._bel_actions = [
	0, 1, 1, 1, 4, 1, 7, 1, 
	9, 1, 21, 1, 24, 1, 25, 1, 
	27, 1, 28, 1, 31, 1, 33, 1, 
	34, 1, 35, 1, 36, 1, 42, 1, 
	43, 1, 44, 2, 0, 1, 2, 1, 
	17, 2, 2, 3, 2, 2, 12, 2, 
	2, 18, 2, 2, 23, 2, 4, 5, 
	2, 4, 9, 2, 6, 7, 2, 8, 
	10, 2, 9, 4, 2, 9, 11, 2, 
	26, 27, 2, 28, 29, 2, 28, 40, 
	2, 30, 31, 2, 32, 33, 2, 32, 
	36, 2, 32, 44, 2, 34, 39, 2, 
	35, 36, 3, 2, 14, 15, 3, 2, 
	14, 22, 3, 2, 18, 21, 3, 8, 
	13, 15, 3, 8, 13, 22, 3, 35, 
	41, 43, 4, 0, 1, 16, 17, 4, 
	2, 14, 22, 24, 4, 8, 13, 22, 
	24, 5, 19, 16, 0, 1, 17, 5, 
	20, 16, 0, 1, 17, 6, 2, 14, 
	22, 35, 41, 43, 6, 8, 13, 22, 
	35, 41, 43, 6, 37, 19, 16, 0, 
	1, 17, 6, 38, 19, 16, 0, 1, 
	17
]

class << self
	attr_accessor :_bel_key_offsets
	private :_bel_key_offsets, :_bel_key_offsets=
end
self._bel_key_offsets = [
	0, 0, 7, 17, 20, 30, 40, 42, 
	46, 49, 59, 72, 76, 78, 82, 86, 
	89, 90, 94, 95, 96, 97, 98, 109, 
	116, 124, 125, 127, 128, 129, 139, 149, 
	151, 152, 153, 161, 170, 177, 187, 190, 
	200, 210, 212, 216, 219, 229, 242, 246, 
	247, 258, 265, 275, 278, 288, 298, 300, 
	304, 307, 317, 330, 334, 335, 336, 347, 
	349, 352, 354, 355, 356, 357, 364, 374, 
	377, 387, 397, 399, 403, 406, 416, 429, 
	433, 435, 439, 443, 452, 462, 465, 475, 
	485, 487, 491, 494, 504, 517, 521, 525, 
	529, 530, 531, 532, 533, 544, 545, 556, 
	563, 573, 576, 586, 596, 598, 602, 605, 
	615, 628, 632, 634, 638, 642, 652, 653, 
	663, 666, 676, 686, 688, 692, 695, 705, 
	718, 722, 723, 734, 735, 746, 746, 746, 
	746, 746, 746, 746, 746, 746, 746
]

class << self
	attr_accessor :_bel_trans_keys
	private :_bel_trans_keys, :_bel_trans_keys=
end
self._bel_trans_keys = [
	95, 48, 57, 65, 90, 97, 122, 9, 
	32, 40, 95, 48, 57, 65, 90, 97, 
	122, 9, 32, 40, 9, 32, 34, 95, 
	48, 57, 65, 90, 97, 122, 9, 32, 
	34, 95, 48, 57, 65, 90, 97, 122, 
	34, 92, 9, 32, 41, 44, 9, 32, 
	44, 9, 32, 34, 95, 48, 57, 65, 
	90, 97, 122, 9, 32, 40, 41, 44, 
	58, 95, 48, 57, 65, 90, 97, 122, 
	9, 32, 41, 44, 9, 32, 9, 32, 
	33, 126, 9, 32, 33, 126, 9, 32, 
	40, 41, 9, 10, 32, 47, 47, 10, 
	10, 92, 9, 32, 41, 44, 95, 48, 
	57, 65, 90, 97, 122, 95, 48, 57, 
	65, 90, 97, 122, 10, 95, 48, 57, 
	65, 90, 97, 122, 34, 34, 92, 10, 
	92, 9, 32, 34, 95, 48, 57, 65, 
	90, 97, 122, 9, 32, 34, 95, 48, 
	57, 65, 90, 97, 122, 34, 92, 10, 
	92, 10, 95, 48, 57, 65, 90, 97, 
	122, 10, 58, 95, 48, 57, 65, 90, 
	97, 122, 95, 48, 57, 65, 90, 97, 
	122, 9, 32, 40, 95, 48, 57, 65, 
	90, 97, 122, 9, 32, 40, 9, 32, 
	34, 95, 48, 57, 65, 90, 97, 122, 
	9, 32, 34, 95, 48, 57, 65, 90, 
	97, 122, 34, 92, 9, 32, 41, 44, 
	9, 32, 44, 9, 32, 34, 95, 48, 
	57, 65, 90, 97, 122, 9, 32, 40, 
	41, 44, 58, 95, 48, 57, 65, 90, 
	97, 122, 9, 32, 41, 44, 92, 9, 
	32, 41, 44, 95, 48, 57, 65, 90, 
	97, 122, 95, 48, 57, 65, 90, 97, 
	122, 9, 32, 40, 95, 48, 57, 65, 
	90, 97, 122, 9, 32, 40, 9, 32, 
	34, 95, 48, 57, 65, 90, 97, 122, 
	9, 32, 34, 95, 48, 57, 65, 90, 
	97, 122, 34, 92, 9, 32, 41, 44, 
	9, 32, 44, 9, 32, 34, 95, 48, 
	57, 65, 90, 97, 122, 9, 32, 40, 
	41, 44, 58, 95, 48, 57, 65, 90, 
	97, 122, 9, 32, 41, 44, 10, 92, 
	9, 32, 41, 44, 95, 48, 57, 65, 
	90, 97, 122, 33, 126, 10, 33, 126, 
	10, 47, 47, 10, 10, 95, 48, 57, 
	65, 90, 97, 122, 9, 32, 40, 95, 
	48, 57, 65, 90, 97, 122, 9, 32, 
	40, 9, 32, 34, 95, 48, 57, 65, 
	90, 97, 122, 9, 32, 34, 95, 48, 
	57, 65, 90, 97, 122, 34, 92, 9, 
	32, 41, 44, 9, 32, 44, 9, 32, 
	34, 95, 48, 57, 65, 90, 97, 122, 
	9, 32, 40, 41, 44, 58, 95, 48, 
	57, 65, 90, 97, 122, 9, 32, 41, 
	44, 9, 32, 9, 32, 33, 126, 9, 
	32, 33, 126, 9, 32, 95, 48, 57, 
	65, 90, 97, 122, 9, 32, 40, 95, 
	48, 57, 65, 90, 97, 122, 9, 32, 
	40, 9, 32, 34, 95, 48, 57, 65, 
	90, 97, 122, 9, 32, 34, 95, 48, 
	57, 65, 90, 97, 122, 34, 92, 9, 
	32, 41, 44, 9, 32, 44, 9, 32, 
	34, 95, 48, 57, 65, 90, 97, 122, 
	9, 32, 40, 41, 44, 58, 95, 48, 
	57, 65, 90, 97, 122, 9, 32, 41, 
	44, 9, 10, 32, 47, 9, 10, 32, 
	47, 47, 10, 10, 92, 9, 32, 41, 
	44, 95, 48, 57, 65, 90, 97, 122, 
	92, 9, 32, 41, 44, 95, 48, 57, 
	65, 90, 97, 122, 95, 48, 57, 65, 
	90, 97, 122, 9, 32, 40, 95, 48, 
	57, 65, 90, 97, 122, 9, 32, 40, 
	9, 32, 34, 95, 48, 57, 65, 90, 
	97, 122, 9, 32, 34, 95, 48, 57, 
	65, 90, 97, 122, 34, 92, 9, 32, 
	41, 44, 9, 32, 44, 9, 32, 34, 
	95, 48, 57, 65, 90, 97, 122, 9, 
	32, 40, 41, 44, 58, 95, 48, 57, 
	65, 90, 97, 122, 9, 32, 41, 44, 
	9, 32, 9, 32, 33, 126, 9, 32, 
	33, 126, 9, 32, 40, 95, 48, 57, 
	65, 90, 97, 122, 41, 9, 32, 40, 
	95, 48, 57, 65, 90, 97, 122, 9, 
	32, 40, 9, 32, 34, 95, 48, 57, 
	65, 90, 97, 122, 9, 32, 34, 95, 
	48, 57, 65, 90, 97, 122, 34, 92, 
	9, 32, 41, 44, 9, 32, 44, 9, 
	32, 34, 95, 48, 57, 65, 90, 97, 
	122, 9, 32, 40, 41, 44, 58, 95, 
	48, 57, 65, 90, 97, 122, 9, 32, 
	41, 44, 92, 9, 32, 41, 44, 95, 
	48, 57, 65, 90, 97, 122, 92, 9, 
	32, 41, 44, 95, 48, 57, 65, 90, 
	97, 122, 0
]

class << self
	attr_accessor :_bel_single_lengths
	private :_bel_single_lengths, :_bel_single_lengths=
end
self._bel_single_lengths = [
	0, 1, 4, 3, 4, 4, 2, 4, 
	3, 4, 7, 4, 2, 2, 2, 3, 
	1, 4, 1, 1, 1, 1, 5, 1, 
	2, 1, 2, 1, 1, 4, 4, 2, 
	1, 1, 2, 3, 1, 4, 3, 4, 
	4, 2, 4, 3, 4, 7, 4, 1, 
	5, 1, 4, 3, 4, 4, 2, 4, 
	3, 4, 7, 4, 1, 1, 5, 0, 
	1, 2, 1, 1, 1, 1, 4, 3, 
	4, 4, 2, 4, 3, 4, 7, 4, 
	2, 2, 2, 3, 4, 3, 4, 4, 
	2, 4, 3, 4, 7, 4, 4, 4, 
	1, 1, 1, 1, 5, 1, 5, 1, 
	4, 3, 4, 4, 2, 4, 3, 4, 
	7, 4, 2, 2, 2, 4, 1, 4, 
	3, 4, 4, 2, 4, 3, 4, 7, 
	4, 1, 5, 1, 5, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0
]

class << self
	attr_accessor :_bel_range_lengths
	private :_bel_range_lengths, :_bel_range_lengths=
end
self._bel_range_lengths = [
	0, 3, 3, 0, 3, 3, 0, 0, 
	0, 3, 3, 0, 0, 1, 1, 0, 
	0, 0, 0, 0, 0, 0, 3, 3, 
	3, 0, 0, 0, 0, 3, 3, 0, 
	0, 0, 3, 3, 3, 3, 0, 3, 
	3, 0, 0, 0, 3, 3, 0, 0, 
	3, 3, 3, 0, 3, 3, 0, 0, 
	0, 3, 3, 0, 0, 0, 3, 1, 
	1, 0, 0, 0, 0, 3, 3, 0, 
	3, 3, 0, 0, 0, 3, 3, 0, 
	0, 1, 1, 3, 3, 0, 3, 3, 
	0, 0, 0, 3, 3, 0, 0, 0, 
	0, 0, 0, 0, 3, 0, 3, 3, 
	3, 0, 3, 3, 0, 0, 0, 3, 
	3, 0, 0, 1, 1, 3, 0, 3, 
	0, 3, 3, 0, 0, 0, 3, 3, 
	0, 0, 3, 0, 3, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0
]

class << self
	attr_accessor :_bel_index_offsets
	private :_bel_index_offsets, :_bel_index_offsets=
end
self._bel_index_offsets = [
	0, 0, 5, 13, 17, 25, 33, 36, 
	41, 45, 53, 64, 69, 72, 76, 80, 
	84, 86, 91, 93, 95, 97, 99, 108, 
	113, 119, 121, 124, 126, 128, 136, 144, 
	147, 149, 151, 157, 164, 169, 177, 181, 
	189, 197, 200, 205, 209, 217, 228, 233, 
	235, 244, 249, 257, 261, 269, 277, 280, 
	285, 289, 297, 308, 313, 315, 317, 326, 
	328, 331, 334, 336, 338, 340, 345, 353, 
	357, 365, 373, 376, 381, 385, 393, 404, 
	409, 412, 416, 420, 427, 435, 439, 447, 
	455, 458, 463, 467, 475, 486, 491, 496, 
	501, 503, 505, 507, 509, 518, 520, 529, 
	534, 542, 546, 554, 562, 565, 570, 574, 
	582, 593, 598, 601, 605, 609, 617, 619, 
	627, 631, 639, 647, 650, 655, 659, 667, 
	678, 683, 685, 694, 696, 705, 706, 707, 
	708, 709, 710, 711, 712, 713, 714
]

class << self
	attr_accessor :_bel_indicies
	private :_bel_indicies, :_bel_indicies=
end
self._bel_indicies = [
	1, 1, 1, 1, 0, 2, 2, 3, 
	4, 4, 4, 4, 0, 5, 5, 7, 
	6, 9, 9, 10, 11, 11, 11, 11, 
	8, 9, 9, 10, 13, 13, 13, 13, 
	12, 15, 16, 14, 18, 18, 19, 20, 
	17, 21, 21, 22, 6, 22, 22, 10, 
	11, 11, 11, 11, 8, 23, 23, 24, 
	25, 26, 28, 27, 27, 27, 27, 0, 
	21, 21, 29, 22, 6, 30, 30, 6, 
	31, 31, 32, 6, 33, 33, 34, 6, 
	35, 35, 36, 6, 37, 6, 37, 38, 
	37, 39, 6, 40, 6, 6, 41, 43, 
	42, 16, 14, 23, 23, 25, 26, 44, 
	44, 44, 44, 0, 46, 46, 46, 46, 
	45, 47, 48, 48, 48, 48, 45, 50, 
	49, 52, 53, 51, 54, 49, 53, 51, 
	55, 55, 56, 57, 57, 57, 57, 8, 
	55, 55, 56, 58, 58, 58, 58, 12, 
	60, 61, 59, 62, 17, 61, 59, 63, 
	64, 64, 64, 64, 0, 63, 66, 65, 
	65, 65, 65, 0, 67, 67, 67, 67, 
	0, 68, 68, 69, 70, 70, 70, 70, 
	0, 71, 71, 72, 6, 73, 73, 74, 
	75, 75, 75, 75, 8, 73, 73, 74, 
	76, 76, 76, 76, 12, 78, 79, 77, 
	80, 80, 81, 82, 17, 83, 83, 84, 
	6, 84, 84, 74, 75, 75, 75, 75, 
	8, 85, 85, 86, 87, 88, 90, 89, 
	89, 89, 89, 0, 83, 83, 91, 84, 
	6, 79, 77, 85, 85, 87, 88, 92, 
	92, 92, 92, 0, 93, 93, 93, 93, 
	0, 94, 94, 95, 96, 96, 96, 96, 
	0, 97, 97, 98, 6, 99, 99, 100, 
	101, 101, 101, 101, 8, 99, 99, 100, 
	102, 102, 102, 102, 12, 104, 105, 103, 
	106, 106, 107, 108, 17, 109, 109, 110, 
	6, 110, 110, 100, 101, 101, 101, 101, 
	8, 111, 111, 112, 113, 114, 116, 115, 
	115, 115, 115, 0, 109, 109, 117, 110, 
	6, 118, 6, 105, 103, 111, 111, 113, 
	114, 119, 119, 119, 119, 0, 120, 6, 
	121, 122, 6, 123, 124, 6, 125, 6, 
	6, 126, 128, 127, 129, 129, 129, 129, 
	0, 130, 130, 131, 132, 132, 132, 132, 
	0, 133, 133, 134, 6, 135, 135, 136, 
	137, 137, 137, 137, 8, 135, 135, 136, 
	138, 138, 138, 138, 12, 140, 141, 139, 
	142, 142, 143, 144, 17, 145, 145, 146, 
	6, 146, 146, 136, 137, 137, 137, 137, 
	8, 147, 147, 148, 149, 150, 152, 151, 
	151, 151, 151, 0, 145, 145, 153, 146, 
	6, 154, 154, 6, 155, 155, 156, 6, 
	157, 157, 158, 6, 159, 159, 160, 160, 
	160, 160, 0, 161, 161, 162, 163, 163, 
	163, 163, 0, 164, 164, 165, 6, 166, 
	166, 167, 168, 168, 168, 168, 8, 166, 
	166, 167, 169, 169, 169, 169, 12, 171, 
	172, 170, 173, 173, 174, 175, 17, 176, 
	176, 177, 6, 177, 177, 167, 168, 168, 
	168, 168, 8, 178, 178, 179, 180, 181, 
	183, 182, 182, 182, 182, 0, 176, 176, 
	184, 177, 6, 185, 186, 185, 187, 6, 
	188, 189, 188, 190, 6, 191, 6, 6, 
	192, 194, 193, 172, 170, 178, 178, 180, 
	181, 195, 195, 195, 195, 0, 141, 139, 
	147, 147, 149, 150, 196, 196, 196, 196, 
	0, 197, 197, 197, 197, 0, 198, 198, 
	199, 200, 200, 200, 200, 0, 201, 201, 
	202, 6, 203, 203, 204, 205, 205, 205, 
	205, 8, 203, 203, 204, 206, 206, 206, 
	206, 12, 208, 209, 207, 210, 210, 211, 
	212, 17, 213, 213, 214, 6, 214, 214, 
	204, 205, 205, 205, 205, 8, 215, 215, 
	216, 217, 218, 220, 219, 219, 219, 219, 
	0, 213, 213, 221, 214, 6, 222, 222, 
	6, 223, 223, 224, 6, 225, 225, 226, 
	6, 227, 227, 228, 229, 229, 229, 229, 
	0, 230, 6, 231, 231, 232, 233, 233, 
	233, 233, 0, 234, 234, 235, 6, 236, 
	236, 237, 238, 238, 238, 238, 8, 236, 
	236, 237, 239, 239, 239, 239, 12, 241, 
	242, 240, 243, 243, 244, 245, 17, 246, 
	246, 247, 6, 247, 247, 237, 238, 238, 
	238, 238, 8, 248, 248, 249, 250, 251, 
	253, 252, 252, 252, 252, 0, 246, 246, 
	254, 247, 6, 242, 240, 248, 248, 250, 
	251, 255, 255, 255, 255, 0, 209, 207, 
	215, 215, 217, 218, 256, 256, 256, 256, 
	0, 6, 6, 6, 6, 6, 6, 6, 
	6, 6, 6, 0
]

class << self
	attr_accessor :_bel_trans_targs
	private :_bel_trans_targs, :_bel_trans_targs=
end
self._bel_trans_targs = [
	0, 2, 3, 4, 2, 3, 0, 4, 
	0, 5, 6, 10, 0, 22, 6, 7, 
	21, 0, 8, 12, 9, 8, 9, 8, 
	11, 12, 9, 10, 5, 12, 13, 13, 
	14, 15, 14, 15, 16, 17, 133, 18, 
	19, 20, 20, 133, 22, 0, 24, 134, 
	24, 0, 26, 26, 27, 28, 135, 30, 
	31, 35, 34, 31, 32, 33, 136, 136, 
	34, 35, 30, 37, 38, 39, 37, 38, 
	39, 40, 41, 45, 48, 41, 42, 47, 
	43, 137, 44, 43, 44, 43, 46, 137, 
	44, 45, 40, 137, 48, 50, 51, 52, 
	50, 51, 52, 53, 54, 58, 62, 54, 
	55, 61, 56, 60, 57, 56, 57, 56, 
	59, 60, 57, 58, 53, 60, 138, 62, 
	64, 139, 64, 140, 66, 67, 68, 68, 
	140, 70, 71, 72, 70, 71, 72, 73, 
	74, 78, 102, 74, 75, 101, 76, 80, 
	77, 76, 77, 76, 79, 80, 77, 78, 
	73, 80, 81, 81, 82, 83, 82, 83, 
	84, 85, 86, 84, 85, 86, 87, 88, 
	92, 100, 88, 89, 99, 90, 94, 91, 
	90, 91, 90, 93, 94, 91, 92, 87, 
	94, 95, 141, 96, 95, 141, 96, 97, 
	98, 98, 141, 100, 102, 104, 105, 106, 
	104, 105, 106, 107, 108, 112, 132, 108, 
	109, 131, 110, 114, 111, 110, 111, 110, 
	113, 114, 111, 112, 107, 114, 115, 115, 
	116, 117, 116, 117, 118, 119, 142, 120, 
	121, 119, 120, 121, 122, 123, 127, 130, 
	123, 124, 129, 125, 142, 126, 125, 126, 
	125, 128, 142, 126, 127, 122, 142, 130, 
	132
]

class << self
	attr_accessor :_bel_trans_actions
	private :_bel_trans_actions, :_bel_trans_actions=
end
self._bel_trans_actions = [
	3, 163, 47, 106, 38, 0, 0, 9, 
	56, 0, 59, 122, 65, 35, 5, 5, 
	5, 7, 114, 114, 114, 0, 0, 102, 
	50, 102, 102, 38, 44, 0, 92, 0, 
	71, 77, 15, 0, 29, 0, 33, 0, 
	0, 80, 19, 89, 1, 53, 35, 41, 
	1, 68, 59, 5, 5, 5, 62, 0, 
	59, 35, 35, 5, 5, 5, 110, 98, 
	1, 1, 44, 143, 47, 106, 38, 0, 
	9, 0, 59, 122, 35, 5, 5, 5, 
	114, 132, 114, 0, 0, 102, 50, 127, 
	102, 38, 44, 11, 1, 137, 47, 106, 
	38, 0, 9, 0, 59, 122, 35, 5, 
	5, 5, 114, 114, 114, 0, 0, 102, 
	50, 102, 102, 38, 44, 0, 13, 1, 
	71, 74, 15, 21, 0, 0, 80, 19, 
	83, 137, 47, 106, 38, 0, 9, 0, 
	59, 122, 35, 5, 5, 5, 114, 114, 
	114, 0, 0, 102, 50, 102, 102, 38, 
	44, 0, 23, 0, 71, 17, 15, 0, 
	137, 47, 106, 38, 0, 9, 0, 59, 
	122, 35, 5, 5, 5, 114, 114, 114, 
	0, 0, 102, 50, 102, 102, 38, 44, 
	0, 25, 95, 25, 0, 27, 0, 0, 
	80, 19, 86, 1, 1, 170, 47, 106, 
	38, 0, 9, 0, 59, 122, 35, 5, 
	5, 5, 114, 114, 114, 0, 0, 102, 
	50, 102, 102, 38, 44, 0, 92, 0, 
	71, 77, 15, 0, 29, 137, 31, 47, 
	106, 38, 0, 9, 0, 59, 122, 35, 
	5, 5, 5, 114, 156, 114, 0, 0, 
	102, 50, 149, 102, 38, 44, 118, 1, 
	1
]

class << self
	attr_accessor :_bel_eof_actions
	private :_bel_eof_actions, :_bel_eof_actions=
end
self._bel_eof_actions = [
	0, 3, 3, 0, 56, 65, 7, 7, 
	0, 56, 3, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 7, 3, 53, 
	53, 68, 68, 68, 68, 56, 65, 7, 
	7, 7, 3, 3, 3, 3, 0, 56, 
	65, 7, 7, 0, 56, 3, 0, 7, 
	3, 3, 3, 0, 56, 65, 7, 7, 
	0, 56, 3, 0, 0, 7, 3, 0, 
	0, 0, 0, 0, 0, 3, 3, 0, 
	56, 65, 7, 7, 0, 56, 3, 0, 
	0, 0, 0, 3, 3, 0, 56, 65, 
	7, 7, 0, 56, 3, 0, 0, 0, 
	0, 0, 0, 7, 3, 7, 3, 3, 
	3, 0, 56, 65, 7, 7, 0, 56, 
	3, 0, 0, 0, 0, 3, 0, 3, 
	0, 56, 65, 7, 7, 0, 56, 3, 
	0, 7, 3, 7, 3, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0
]

class << self
	attr_accessor :bel_start
end
self.bel_start = 1;
class << self
	attr_accessor :bel_first_final
end
self.bel_first_final = 133;
class << self
	attr_accessor :bel_error
end
self.bel_error = 0;

class << self
	attr_accessor :bel_en_ident
end
self.bel_en_ident = 23;
class << self
	attr_accessor :bel_en_string
end
self.bel_en_string = 25;
class << self
	attr_accessor :bel_en_bel_parameter
end
self.bel_en_bel_parameter = 29;
class << self
	attr_accessor :bel_en_inner_term
end
self.bel_en_inner_term = 36;
class << self
	attr_accessor :bel_en_term
end
self.bel_en_term = 49;
class << self
	attr_accessor :bel_en_relationship
end
self.bel_en_relationship = 63;
class << self
	attr_accessor :bel_en_comment
end
self.bel_en_comment = 65;
class << self
	attr_accessor :bel_en_statement_simple
end
self.bel_en_statement_simple = 69;
class << self
	attr_accessor :bel_en_inner_statement
end
self.bel_en_inner_statement = 103;
class << self
	attr_accessor :bel_en_statement_nested
end
self.bel_en_statement_nested = 1;


begin
	p ||= 0
	pe ||= data.length
	cs = bel_start
	top = 0
end

begin
	_klen, _trans, _keys, _acts, _nacts = nil
	_goto_level = 0
	_resume = 10
	_eof_trans = 15
	_again = 20
	_test_eof = 30
	_out = 40
	while true
	_trigger_goto = false
	if _goto_level <= 0
	if p == pe
		_goto_level = _test_eof
		next
	end
	if cs == 0
		_goto_level = _out
		next
	end
	end
	if _goto_level <= _resume
	_keys = _bel_key_offsets[cs]
	_trans = _bel_index_offsets[cs]
	_klen = _bel_single_lengths[cs]
	_break_match = false
	
	begin
	  if _klen > 0
	     _lower = _keys
	     _upper = _keys + _klen - 1

	     loop do
	        break if _upper < _lower
	        _mid = _lower + ( (_upper - _lower) >> 1 )

	        if data[p].ord < _bel_trans_keys[_mid]
	           _upper = _mid - 1
	        elsif data[p].ord > _bel_trans_keys[_mid]
	           _lower = _mid + 1
	        else
	           _trans += (_mid - _keys)
	           _break_match = true
	           break
	        end
	     end # loop
	     break if _break_match
	     _keys += _klen
	     _trans += _klen
	  end
	  _klen = _bel_range_lengths[cs]
	  if _klen > 0
	     _lower = _keys
	     _upper = _keys + (_klen << 1) - 2
	     loop do
	        break if _upper < _lower
	        _mid = _lower + (((_upper-_lower) >> 1) & ~1)
	        if data[p].ord < _bel_trans_keys[_mid]
	          _upper = _mid - 2
	        elsif data[p].ord > _bel_trans_keys[_mid+1]
	          _lower = _mid + 2
	        else
	          _trans += ((_mid - _keys) >> 1)
	          _break_match = true
	          break
	        end
	     end # loop
	     break if _break_match
	     _trans += _klen
	  end
	end while false
	_trans = _bel_indicies[_trans]
	cs = _bel_trans_targs[_trans]
	if _bel_trans_actions[_trans] != 0
		_acts = _bel_trans_actions[_trans]
		_nacts = _bel_actions[_acts]
		_acts += 1
		while _nacts > 0
			_nacts -= 1
			_acts += 1
			case _bel_actions[_acts - 1]
when 0 then
		begin

    @buffers[:ident] = []
  		end
when 1 then
		begin

    (@buffers[:ident] ||= []) << data[p].ord
  		end
when 2 then
		begin

    @buffers[:ident] = s(:identifier,
                         utf8_string(@buffers[:ident]))
  		end
when 3 then
		begin

    yield @buffers[:ident]
  		end
when 4 then
		begin

    unless @buffers[:ident].is_a?(::AST::Node)
      @buffers[:ident] ||= []
      @buffers[:ident]   = s(:identifier,
                             utf8_string(@buffers[:ident]).sub(/\n$/, ''))
    end
  		end
when 5 then
		begin

    @buffers[:ident] ||= []
    yield @buffers[:ident]
  		end
when 6 then
		begin

    @buffers[:string] = []
  		end
when 7 then
		begin

    (@buffers[:string] ||= []) << data[p].ord
  		end
when 8 then
		begin

    @buffers[:string] = s(:string,
                          utf8_string(@buffers[:string]))
  		end
when 9 then
		begin

    @buffers[:string] ||= []
    @buffers[:string] = s(:string,
                          utf8_string(@buffers[:string]).sub(/\n$/, ''))
  		end
when 10 then
		begin

    yield @buffers[:string]
  		end
when 11 then
		begin

    @buffers[:string] ||= []
    yield @buffers[:string]
  		end
when 12 then
		begin

    @parameter = s(:parameter,
                   s(:prefix, @buffers[:ident]))
  		end
when 13 then
		begin

    @parameter ||= s(:parameter, s(:prefix, nil))
    @parameter   = @parameter << s(:value, @buffers[:string])
  		end
when 14 then
		begin

    @parameter ||= s(:parameter, s(:prefix, nil))
    @parameter   = @parameter << s(:value, @buffers[:ident])
  		end
when 15 then
		begin

    yield @parameter
  		end
when 16 then
		begin

    @buffers[:function] = []
  		end
when 17 then
		begin

    @buffers[:function] << data[p].ord
  		end
when 18 then
		begin

    @buffers[:function] = s(:identifier,
                            utf8_string(@buffers[:function]))
  		end
when 19 then
		begin

    @buffers[:term_stack] = [ s(:term) ]
  		end
when 20 then
		begin

    @buffers[:term_stack] << s(:term)
  		end
when 21 then
		begin

    fx                        = @buffers[:function]
    @buffers[:term_stack][-1] = @buffers[:term_stack][-1] << s(:function, fx)
  		end
when 22 then
		begin

    @buffers[:term_stack][-1] = @buffers[:term_stack][-1] << s(:argument, @parameter)
    @parameter                = nil
  		end
when 23 then
		begin

    p -= @buffers[:function].length + 1
    	begin
		stack[top] = cs
		top+= 1
		cs = 36
		_trigger_goto = true
		_goto_level = _again
		break
	end

  		end
when 24 then
		begin

    inner_term = @buffers[:term_stack].pop
    @buffers[:term_stack][-1] = @buffers[:term_stack][-1] << s(:argument, inner_term)
    	begin
		top -= 1
		cs = stack[top]
		_trigger_goto = true
		_goto_level = _again
		break
	end

  		end
when 25 then
		begin

    yield @buffers[:term_stack][-1]
  		end
when 26 then
		begin

    @buffers[:relationship] = []
  		end
when 27 then
		begin

    @buffers[:relationship] << data[p].ord
  		end
when 28 then
		begin

    @buffers[:relationship] = s(:relationship,
                                utf8_string(@buffers[:relationship]))
  		end
when 29 then
		begin

    yield @buffers[:relationship]
  		end
when 30 then
		begin

    @buffers[:comment] = []
  		end
when 31 then
		begin

    @buffers[:comment] << data[p].ord
  		end
when 32 then
		begin

    @buffers[:comment] = s(:comment,
                           utf8_string(@buffers[:comment]))
  		end
when 33 then
		begin

    yield @buffers[:comment] || s(:comment, nil)
  		end
when 34 then
		begin

    @buffers[:subject]    = s(:subject,
                              @buffers[:term_stack][-1])
    @buffers[:term_stack] = nil
  		end
when 35 then
		begin

    @buffers[:object]     = s(:object,
                              @buffers[:term_stack][-1])
    @buffers[:term_stack] = nil
  		end
when 36 then
		begin

    @buffers[:comment] ||= s(:comment, nil)
    yield s(:statement_simple,
            s(:statement,
              @buffers[:subject],
              @buffers[:relationship],
              @buffers[:object],
              @buffers[:comment]))
  		end
when 37 then
		begin

    @buffers[:statement_stack] = [ s(:statement) ]
  		end
when 38 then
		begin

    @buffers[:statement_stack] << s(:statement)
  		end
when 39 then
		begin

    @buffers[:statement_stack][-1] = @buffers[:statement_stack][-1] << @buffers[:subject]
  		end
when 40 then
		begin

    @buffers[:statement_stack][-1] = @buffers[:statement_stack][-1] << @buffers[:relationship]
  		end
when 41 then
		begin

    @buffers[:statement_stack][-1] = @buffers[:statement_stack][-1] << s(:object, @buffers[:object])
  		end
when 42 then
		begin

    	begin
		stack[top] = cs
		top+= 1
		cs = 103
		_trigger_goto = true
		_goto_level = _again
		break
	end

  		end
when 43 then
		begin

    inner_statement = @buffers[:statement_stack].pop
    @buffers[:object] = inner_statement
    @buffers[:statement_stack][-1] = @buffers[:statement_stack][-1] << s(:object, inner_statement)
    	begin
		top -= 1
		cs = stack[top]
		_trigger_goto = true
		_goto_level = _again
		break
	end

  		end
when 44 then
		begin

    yield s(:nested_statement, @buffers[:statement_stack][-1])
  		end
			end # action switch
		end
	end
	if _trigger_goto
		next
	end
	end
	if _goto_level <= _again
	if cs == 0
		_goto_level = _out
		next
	end
	p += 1
	if p != pe
		_goto_level = _resume
		next
	end
	end
	if _goto_level <= _test_eof
	if p == eof
	__acts = _bel_eof_actions[cs]
	__nacts =  _bel_actions[__acts]
	__acts += 1
	while __nacts > 0
		__nacts -= 1
		__acts += 1
		case _bel_actions[__acts - 1]
when 4 then
		begin

    unless @buffers[:ident].is_a?(::AST::Node)
      @buffers[:ident] ||= []
      @buffers[:ident]   = s(:identifier,
                             utf8_string(@buffers[:ident]).sub(/\n$/, ''))
    end
  		end
when 5 then
		begin

    @buffers[:ident] ||= []
    yield @buffers[:ident]
  		end
when 9 then
		begin

    @buffers[:string] ||= []
    @buffers[:string] = s(:string,
                          utf8_string(@buffers[:string]).sub(/\n$/, ''))
  		end
when 11 then
		begin

    @buffers[:string] ||= []
    yield @buffers[:string]
  		end
		end # eof action switch
	end
	if _trigger_goto
		next
	end
end
	end
	if _goto_level <= _out
		break
	end
	end
	end

class << self
	attr_accessor :_bel_actions
	private :_bel_actions, :_bel_actions=
end
self._bel_actions = [
	0, 1, 1, 1, 4, 1, 7, 1, 
	9, 1, 21, 1, 24, 1, 25, 1, 
	27, 1, 28, 1, 31, 1, 33, 1, 
	34, 1, 35, 1, 36, 1, 42, 1, 
	43, 1, 44, 2, 0, 1, 2, 1, 
	17, 2, 2, 3, 2, 2, 12, 2, 
	2, 18, 2, 2, 23, 2, 4, 5, 
	2, 4, 9, 2, 6, 7, 2, 8, 
	10, 2, 9, 4, 2, 9, 11, 2, 
	26, 27, 2, 28, 29, 2, 28, 40, 
	2, 30, 31, 2, 32, 33, 2, 32, 
	36, 2, 32, 44, 2, 34, 39, 2, 
	35, 36, 3, 2, 14, 15, 3, 2, 
	14, 22, 3, 2, 18, 21, 3, 8, 
	13, 15, 3, 8, 13, 22, 3, 35, 
	41, 43, 4, 0, 1, 16, 17, 4, 
	2, 14, 22, 24, 4, 8, 13, 22, 
	24, 5, 19, 16, 0, 1, 17, 5, 
	20, 16, 0, 1, 17, 6, 2, 14, 
	22, 35, 41, 43, 6, 8, 13, 22, 
	35, 41, 43, 6, 37, 19, 16, 0, 
	1, 17, 6, 38, 19, 16, 0, 1, 
	17
]

class << self
	attr_accessor :_bel_key_offsets
	private :_bel_key_offsets, :_bel_key_offsets=
end
self._bel_key_offsets = [
	0, 0, 7, 17, 20, 30, 40, 42, 
	46, 49, 59, 72, 76, 78, 82, 86, 
	89, 90, 94, 95, 96, 97, 98, 109, 
	116, 124, 125, 127, 128, 129, 139, 149, 
	151, 152, 153, 161, 170, 177, 187, 190, 
	200, 210, 212, 216, 219, 229, 242, 246, 
	247, 258, 265, 275, 278, 288, 298, 300, 
	304, 307, 317, 330, 334, 335, 336, 347, 
	349, 352, 354, 355, 356, 357, 364, 374, 
	377, 387, 397, 399, 403, 406, 416, 429, 
	433, 435, 439, 443, 452, 462, 465, 475, 
	485, 487, 491, 494, 504, 517, 521, 525, 
	529, 530, 531, 532, 533, 544, 545, 556, 
	563, 573, 576, 586, 596, 598, 602, 605, 
	615, 628, 632, 634, 638, 642, 652, 653, 
	663, 666, 676, 686, 688, 692, 695, 705, 
	718, 722, 723, 734, 735, 746, 746, 746, 
	746, 746, 746, 746, 746, 746, 746
]

class << self
	attr_accessor :_bel_trans_keys
	private :_bel_trans_keys, :_bel_trans_keys=
end
self._bel_trans_keys = [
	95, 48, 57, 65, 90, 97, 122, 9, 
	32, 40, 95, 48, 57, 65, 90, 97, 
	122, 9, 32, 40, 9, 32, 34, 95, 
	48, 57, 65, 90, 97, 122, 9, 32, 
	34, 95, 48, 57, 65, 90, 97, 122, 
	34, 92, 9, 32, 41, 44, 9, 32, 
	44, 9, 32, 34, 95, 48, 57, 65, 
	90, 97, 122, 9, 32, 40, 41, 44, 
	58, 95, 48, 57, 65, 90, 97, 122, 
	9, 32, 41, 44, 9, 32, 9, 32, 
	33, 126, 9, 32, 33, 126, 9, 32, 
	40, 41, 9, 10, 32, 47, 47, 10, 
	10, 92, 9, 32, 41, 44, 95, 48, 
	57, 65, 90, 97, 122, 95, 48, 57, 
	65, 90, 97, 122, 10, 95, 48, 57, 
	65, 90, 97, 122, 34, 34, 92, 10, 
	92, 9, 32, 34, 95, 48, 57, 65, 
	90, 97, 122, 9, 32, 34, 95, 48, 
	57, 65, 90, 97, 122, 34, 92, 10, 
	92, 10, 95, 48, 57, 65, 90, 97, 
	122, 10, 58, 95, 48, 57, 65, 90, 
	97, 122, 95, 48, 57, 65, 90, 97, 
	122, 9, 32, 40, 95, 48, 57, 65, 
	90, 97, 122, 9, 32, 40, 9, 32, 
	34, 95, 48, 57, 65, 90, 97, 122, 
	9, 32, 34, 95, 48, 57, 65, 90, 
	97, 122, 34, 92, 9, 32, 41, 44, 
	9, 32, 44, 9, 32, 34, 95, 48, 
	57, 65, 90, 97, 122, 9, 32, 40, 
	41, 44, 58, 95, 48, 57, 65, 90, 
	97, 122, 9, 32, 41, 44, 92, 9, 
	32, 41, 44, 95, 48, 57, 65, 90, 
	97, 122, 95, 48, 57, 65, 90, 97, 
	122, 9, 32, 40, 95, 48, 57, 65, 
	90, 97, 122, 9, 32, 40, 9, 32, 
	34, 95, 48, 57, 65, 90, 97, 122, 
	9, 32, 34, 95, 48, 57, 65, 90, 
	97, 122, 34, 92, 9, 32, 41, 44, 
	9, 32, 44, 9, 32, 34, 95, 48, 
	57, 65, 90, 97, 122, 9, 32, 40, 
	41, 44, 58, 95, 48, 57, 65, 90, 
	97, 122, 9, 32, 41, 44, 10, 92, 
	9, 32, 41, 44, 95, 48, 57, 65, 
	90, 97, 122, 33, 126, 10, 33, 126, 
	10, 47, 47, 10, 10, 95, 48, 57, 
	65, 90, 97, 122, 9, 32, 40, 95, 
	48, 57, 65, 90, 97, 122, 9, 32, 
	40, 9, 32, 34, 95, 48, 57, 65, 
	90, 97, 122, 9, 32, 34, 95, 48, 
	57, 65, 90, 97, 122, 34, 92, 9, 
	32, 41, 44, 9, 32, 44, 9, 32, 
	34, 95, 48, 57, 65, 90, 97, 122, 
	9, 32, 40, 41, 44, 58, 95, 48, 
	57, 65, 90, 97, 122, 9, 32, 41, 
	44, 9, 32, 9, 32, 33, 126, 9, 
	32, 33, 126, 9, 32, 95, 48, 57, 
	65, 90, 97, 122, 9, 32, 40, 95, 
	48, 57, 65, 90, 97, 122, 9, 32, 
	40, 9, 32, 34, 95, 48, 57, 65, 
	90, 97, 122, 9, 32, 34, 95, 48, 
	57, 65, 90, 97, 122, 34, 92, 9, 
	32, 41, 44, 9, 32, 44, 9, 32, 
	34, 95, 48, 57, 65, 90, 97, 122, 
	9, 32, 40, 41, 44, 58, 95, 48, 
	57, 65, 90, 97, 122, 9, 32, 41, 
	44, 9, 10, 32, 47, 9, 10, 32, 
	47, 47, 10, 10, 92, 9, 32, 41, 
	44, 95, 48, 57, 65, 90, 97, 122, 
	92, 9, 32, 41, 44, 95, 48, 57, 
	65, 90, 97, 122, 95, 48, 57, 65, 
	90, 97, 122, 9, 32, 40, 95, 48, 
	57, 65, 90, 97, 122, 9, 32, 40, 
	9, 32, 34, 95, 48, 57, 65, 90, 
	97, 122, 9, 32, 34, 95, 48, 57, 
	65, 90, 97, 122, 34, 92, 9, 32, 
	41, 44, 9, 32, 44, 9, 32, 34, 
	95, 48, 57, 65, 90, 97, 122, 9, 
	32, 40, 41, 44, 58, 95, 48, 57, 
	65, 90, 97, 122, 9, 32, 41, 44, 
	9, 32, 9, 32, 33, 126, 9, 32, 
	33, 126, 9, 32, 40, 95, 48, 57, 
	65, 90, 97, 122, 41, 9, 32, 40, 
	95, 48, 57, 65, 90, 97, 122, 9, 
	32, 40, 9, 32, 34, 95, 48, 57, 
	65, 90, 97, 122, 9, 32, 34, 95, 
	48, 57, 65, 90, 97, 122, 34, 92, 
	9, 32, 41, 44, 9, 32, 44, 9, 
	32, 34, 95, 48, 57, 65, 90, 97, 
	122, 9, 32, 40, 41, 44, 58, 95, 
	48, 57, 65, 90, 97, 122, 9, 32, 
	41, 44, 92, 9, 32, 41, 44, 95, 
	48, 57, 65, 90, 97, 122, 92, 9, 
	32, 41, 44, 95, 48, 57, 65, 90, 
	97, 122, 0
]

class << self
	attr_accessor :_bel_single_lengths
	private :_bel_single_lengths, :_bel_single_lengths=
end
self._bel_single_lengths = [
	0, 1, 4, 3, 4, 4, 2, 4, 
	3, 4, 7, 4, 2, 2, 2, 3, 
	1, 4, 1, 1, 1, 1, 5, 1, 
	2, 1, 2, 1, 1, 4, 4, 2, 
	1, 1, 2, 3, 1, 4, 3, 4, 
	4, 2, 4, 3, 4, 7, 4, 1, 
	5, 1, 4, 3, 4, 4, 2, 4, 
	3, 4, 7, 4, 1, 1, 5, 0, 
	1, 2, 1, 1, 1, 1, 4, 3, 
	4, 4, 2, 4, 3, 4, 7, 4, 
	2, 2, 2, 3, 4, 3, 4, 4, 
	2, 4, 3, 4, 7, 4, 4, 4, 
	1, 1, 1, 1, 5, 1, 5, 1, 
	4, 3, 4, 4, 2, 4, 3, 4, 
	7, 4, 2, 2, 2, 4, 1, 4, 
	3, 4, 4, 2, 4, 3, 4, 7, 
	4, 1, 5, 1, 5, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0
]

class << self
	attr_accessor :_bel_range_lengths
	private :_bel_range_lengths, :_bel_range_lengths=
end
self._bel_range_lengths = [
	0, 3, 3, 0, 3, 3, 0, 0, 
	0, 3, 3, 0, 0, 1, 1, 0, 
	0, 0, 0, 0, 0, 0, 3, 3, 
	3, 0, 0, 0, 0, 3, 3, 0, 
	0, 0, 3, 3, 3, 3, 0, 3, 
	3, 0, 0, 0, 3, 3, 0, 0, 
	3, 3, 3, 0, 3, 3, 0, 0, 
	0, 3, 3, 0, 0, 0, 3, 1, 
	1, 0, 0, 0, 0, 3, 3, 0, 
	3, 3, 0, 0, 0, 3, 3, 0, 
	0, 1, 1, 3, 3, 0, 3, 3, 
	0, 0, 0, 3, 3, 0, 0, 0, 
	0, 0, 0, 0, 3, 0, 3, 3, 
	3, 0, 3, 3, 0, 0, 0, 3, 
	3, 0, 0, 1, 1, 3, 0, 3, 
	0, 3, 3, 0, 0, 0, 3, 3, 
	0, 0, 3, 0, 3, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0
]

class << self
	attr_accessor :_bel_index_offsets
	private :_bel_index_offsets, :_bel_index_offsets=
end
self._bel_index_offsets = [
	0, 0, 5, 13, 17, 25, 33, 36, 
	41, 45, 53, 64, 69, 72, 76, 80, 
	84, 86, 91, 93, 95, 97, 99, 108, 
	113, 119, 121, 124, 126, 128, 136, 144, 
	147, 149, 151, 157, 164, 169, 177, 181, 
	189, 197, 200, 205, 209, 217, 228, 233, 
	235, 244, 249, 257, 261, 269, 277, 280, 
	285, 289, 297, 308, 313, 315, 317, 326, 
	328, 331, 334, 336, 338, 340, 345, 353, 
	357, 365, 373, 376, 381, 385, 393, 404, 
	409, 412, 416, 420, 427, 435, 439, 447, 
	455, 458, 463, 467, 475, 486, 491, 496, 
	501, 503, 505, 507, 509, 518, 520, 529, 
	534, 542, 546, 554, 562, 565, 570, 574, 
	582, 593, 598, 601, 605, 609, 617, 619, 
	627, 631, 639, 647, 650, 655, 659, 667, 
	678, 683, 685, 694, 696, 705, 706, 707, 
	708, 709, 710, 711, 712, 713, 714
]

class << self
	attr_accessor :_bel_indicies
	private :_bel_indicies, :_bel_indicies=
end
self._bel_indicies = [
	1, 1, 1, 1, 0, 2, 2, 3, 
	4, 4, 4, 4, 0, 5, 5, 7, 
	6, 9, 9, 10, 11, 11, 11, 11, 
	8, 9, 9, 10, 13, 13, 13, 13, 
	12, 15, 16, 14, 18, 18, 19, 20, 
	17, 21, 21, 22, 6, 22, 22, 10, 
	11, 11, 11, 11, 8, 23, 23, 24, 
	25, 26, 28, 27, 27, 27, 27, 0, 
	21, 21, 29, 22, 6, 30, 30, 6, 
	31, 31, 32, 6, 33, 33, 34, 6, 
	35, 35, 36, 6, 37, 6, 37, 38, 
	37, 39, 6, 40, 6, 6, 41, 43, 
	42, 16, 14, 23, 23, 25, 26, 44, 
	44, 44, 44, 0, 46, 46, 46, 46, 
	45, 47, 48, 48, 48, 48, 45, 50, 
	49, 52, 53, 51, 54, 49, 53, 51, 
	55, 55, 56, 57, 57, 57, 57, 8, 
	55, 55, 56, 58, 58, 58, 58, 12, 
	60, 61, 59, 62, 17, 61, 59, 63, 
	64, 64, 64, 64, 0, 63, 66, 65, 
	65, 65, 65, 0, 67, 67, 67, 67, 
	0, 68, 68, 69, 70, 70, 70, 70, 
	0, 71, 71, 72, 6, 73, 73, 74, 
	75, 75, 75, 75, 8, 73, 73, 74, 
	76, 76, 76, 76, 12, 78, 79, 77, 
	80, 80, 81, 82, 17, 83, 83, 84, 
	6, 84, 84, 74, 75, 75, 75, 75, 
	8, 85, 85, 86, 87, 88, 90, 89, 
	89, 89, 89, 0, 83, 83, 91, 84, 
	6, 79, 77, 85, 85, 87, 88, 92, 
	92, 92, 92, 0, 93, 93, 93, 93, 
	0, 94, 94, 95, 96, 96, 96, 96, 
	0, 97, 97, 98, 6, 99, 99, 100, 
	101, 101, 101, 101, 8, 99, 99, 100, 
	102, 102, 102, 102, 12, 104, 105, 103, 
	106, 106, 107, 108, 17, 109, 109, 110, 
	6, 110, 110, 100, 101, 101, 101, 101, 
	8, 111, 111, 112, 113, 114, 116, 115, 
	115, 115, 115, 0, 109, 109, 117, 110, 
	6, 118, 6, 105, 103, 111, 111, 113, 
	114, 119, 119, 119, 119, 0, 120, 6, 
	121, 122, 6, 123, 124, 6, 125, 6, 
	6, 126, 128, 127, 129, 129, 129, 129, 
	0, 130, 130, 131, 132, 132, 132, 132, 
	0, 133, 133, 134, 6, 135, 135, 136, 
	137, 137, 137, 137, 8, 135, 135, 136, 
	138, 138, 138, 138, 12, 140, 141, 139, 
	142, 142, 143, 144, 17, 145, 145, 146, 
	6, 146, 146, 136, 137, 137, 137, 137, 
	8, 147, 147, 148, 149, 150, 152, 151, 
	151, 151, 151, 0, 145, 145, 153, 146, 
	6, 154, 154, 6, 155, 155, 156, 6, 
	157, 157, 158, 6, 159, 159, 160, 160, 
	160, 160, 0, 161, 161, 162, 163, 163, 
	163, 163, 0, 164, 164, 165, 6, 166, 
	166, 167, 168, 168, 168, 168, 8, 166, 
	166, 167, 169, 169, 169, 169, 12, 171, 
	172, 170, 173, 173, 174, 175, 17, 176, 
	176, 177, 6, 177, 177, 167, 168, 168, 
	168, 168, 8, 178, 178, 179, 180, 181, 
	183, 182, 182, 182, 182, 0, 176, 176, 
	184, 177, 6, 185, 186, 185, 187, 6, 
	188, 189, 188, 190, 6, 191, 6, 6, 
	192, 194, 193, 172, 170, 178, 178, 180, 
	181, 195, 195, 195, 195, 0, 141, 139, 
	147, 147, 149, 150, 196, 196, 196, 196, 
	0, 197, 197, 197, 197, 0, 198, 198, 
	199, 200, 200, 200, 200, 0, 201, 201, 
	202, 6, 203, 203, 204, 205, 205, 205, 
	205, 8, 203, 203, 204, 206, 206, 206, 
	206, 12, 208, 209, 207, 210, 210, 211, 
	212, 17, 213, 213, 214, 6, 214, 214, 
	204, 205, 205, 205, 205, 8, 215, 215, 
	216, 217, 218, 220, 219, 219, 219, 219, 
	0, 213, 213, 221, 214, 6, 222, 222, 
	6, 223, 223, 224, 6, 225, 225, 226, 
	6, 227, 227, 228, 229, 229, 229, 229, 
	0, 230, 6, 231, 231, 232, 233, 233, 
	233, 233, 0, 234, 234, 235, 6, 236, 
	236, 237, 238, 238, 238, 238, 8, 236, 
	236, 237, 239, 239, 239, 239, 12, 241, 
	242, 240, 243, 243, 244, 245, 17, 246, 
	246, 247, 6, 247, 247, 237, 238, 238, 
	238, 238, 8, 248, 248, 249, 250, 251, 
	253, 252, 252, 252, 252, 0, 246, 246, 
	254, 247, 6, 242, 240, 248, 248, 250, 
	251, 255, 255, 255, 255, 0, 209, 207, 
	215, 215, 217, 218, 256, 256, 256, 256, 
	0, 6, 6, 6, 6, 6, 6, 6, 
	6, 6, 6, 0
]

class << self
	attr_accessor :_bel_trans_targs
	private :_bel_trans_targs, :_bel_trans_targs=
end
self._bel_trans_targs = [
	0, 2, 3, 4, 2, 3, 0, 4, 
	0, 5, 6, 10, 0, 22, 6, 7, 
	21, 0, 8, 12, 9, 8, 9, 8, 
	11, 12, 9, 10, 5, 12, 13, 13, 
	14, 15, 14, 15, 16, 17, 133, 18, 
	19, 20, 20, 133, 22, 0, 24, 134, 
	24, 0, 26, 26, 27, 28, 135, 30, 
	31, 35, 34, 31, 32, 33, 136, 136, 
	34, 35, 30, 37, 38, 39, 37, 38, 
	39, 40, 41, 45, 48, 41, 42, 47, 
	43, 137, 44, 43, 44, 43, 46, 137, 
	44, 45, 40, 137, 48, 50, 51, 52, 
	50, 51, 52, 53, 54, 58, 62, 54, 
	55, 61, 56, 60, 57, 56, 57, 56, 
	59, 60, 57, 58, 53, 60, 138, 62, 
	64, 139, 64, 140, 66, 67, 68, 68, 
	140, 70, 71, 72, 70, 71, 72, 73, 
	74, 78, 102, 74, 75, 101, 76, 80, 
	77, 76, 77, 76, 79, 80, 77, 78, 
	73, 80, 81, 81, 82, 83, 82, 83, 
	84, 85, 86, 84, 85, 86, 87, 88, 
	92, 100, 88, 89, 99, 90, 94, 91, 
	90, 91, 90, 93, 94, 91, 92, 87, 
	94, 95, 141, 96, 95, 141, 96, 97, 
	98, 98, 141, 100, 102, 104, 105, 106, 
	104, 105, 106, 107, 108, 112, 132, 108, 
	109, 131, 110, 114, 111, 110, 111, 110, 
	113, 114, 111, 112, 107, 114, 115, 115, 
	116, 117, 116, 117, 118, 119, 142, 120, 
	121, 119, 120, 121, 122, 123, 127, 130, 
	123, 124, 129, 125, 142, 126, 125, 126, 
	125, 128, 142, 126, 127, 122, 142, 130, 
	132
]

class << self
	attr_accessor :_bel_trans_actions
	private :_bel_trans_actions, :_bel_trans_actions=
end
self._bel_trans_actions = [
	3, 163, 47, 106, 38, 0, 0, 9, 
	56, 0, 59, 122, 65, 35, 5, 5, 
	5, 7, 114, 114, 114, 0, 0, 102, 
	50, 102, 102, 38, 44, 0, 92, 0, 
	71, 77, 15, 0, 29, 0, 33, 0, 
	0, 80, 19, 89, 1, 53, 35, 41, 
	1, 68, 59, 5, 5, 5, 62, 0, 
	59, 35, 35, 5, 5, 5, 110, 98, 
	1, 1, 44, 143, 47, 106, 38, 0, 
	9, 0, 59, 122, 35, 5, 5, 5, 
	114, 132, 114, 0, 0, 102, 50, 127, 
	102, 38, 44, 11, 1, 137, 47, 106, 
	38, 0, 9, 0, 59, 122, 35, 5, 
	5, 5, 114, 114, 114, 0, 0, 102, 
	50, 102, 102, 38, 44, 0, 13, 1, 
	71, 74, 15, 21, 0, 0, 80, 19, 
	83, 137, 47, 106, 38, 0, 9, 0, 
	59, 122, 35, 5, 5, 5, 114, 114, 
	114, 0, 0, 102, 50, 102, 102, 38, 
	44, 0, 23, 0, 71, 17, 15, 0, 
	137, 47, 106, 38, 0, 9, 0, 59, 
	122, 35, 5, 5, 5, 114, 114, 114, 
	0, 0, 102, 50, 102, 102, 38, 44, 
	0, 25, 95, 25, 0, 27, 0, 0, 
	80, 19, 86, 1, 1, 170, 47, 106, 
	38, 0, 9, 0, 59, 122, 35, 5, 
	5, 5, 114, 114, 114, 0, 0, 102, 
	50, 102, 102, 38, 44, 0, 92, 0, 
	71, 77, 15, 0, 29, 137, 31, 47, 
	106, 38, 0, 9, 0, 59, 122, 35, 
	5, 5, 5, 114, 156, 114, 0, 0, 
	102, 50, 149, 102, 38, 44, 118, 1, 
	1
]

class << self
	attr_accessor :_bel_eof_actions
	private :_bel_eof_actions, :_bel_eof_actions=
end
self._bel_eof_actions = [
	0, 3, 3, 0, 56, 65, 7, 7, 
	0, 56, 3, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 7, 3, 53, 
	53, 68, 68, 68, 68, 56, 65, 7, 
	7, 7, 3, 3, 3, 3, 0, 56, 
	65, 7, 7, 0, 56, 3, 0, 7, 
	3, 3, 3, 0, 56, 65, 7, 7, 
	0, 56, 3, 0, 0, 7, 3, 0, 
	0, 0, 0, 0, 0, 3, 3, 0, 
	56, 65, 7, 7, 0, 56, 3, 0, 
	0, 0, 0, 3, 3, 0, 56, 65, 
	7, 7, 0, 56, 3, 0, 0, 0, 
	0, 0, 0, 7, 3, 7, 3, 3, 
	3, 0, 56, 65, 7, 7, 0, 56, 
	3, 0, 0, 0, 0, 3, 0, 3, 
	0, 56, 65, 7, 7, 0, 56, 3, 
	0, 7, 3, 7, 3, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0
]

class << self
	attr_accessor :bel_start
end
self.bel_start = 1;
class << self
	attr_accessor :bel_first_final
end
self.bel_first_final = 133;
class << self
	attr_accessor :bel_error
end
self.bel_error = 0;

class << self
	attr_accessor :bel_en_ident
end
self.bel_en_ident = 23;
class << self
	attr_accessor :bel_en_string
end
self.bel_en_string = 25;
class << self
	attr_accessor :bel_en_bel_parameter
end
self.bel_en_bel_parameter = 29;
class << self
	attr_accessor :bel_en_inner_term
end
self.bel_en_inner_term = 36;
class << self
	attr_accessor :bel_en_term
end
self.bel_en_term = 49;
class << self
	attr_accessor :bel_en_relationship
end
self.bel_en_relationship = 63;
class << self
	attr_accessor :bel_en_comment
end
self.bel_en_comment = 65;
class << self
	attr_accessor :bel_en_statement_simple
end
self.bel_en_statement_simple = 69;
class << self
	attr_accessor :bel_en_inner_statement
end
self.bel_en_inner_statement = 103;
class << self
	attr_accessor :bel_en_statement_nested
end
self.bel_en_statement_nested = 1;


begin
	p ||= 0
	pe ||= data.length
	cs = bel_start
	top = 0
end

begin
	_klen, _trans, _keys, _acts, _nacts = nil
	_goto_level = 0
	_resume = 10
	_eof_trans = 15
	_again = 20
	_test_eof = 30
	_out = 40
	while true
	_trigger_goto = false
	if _goto_level <= 0
	if p == pe
		_goto_level = _test_eof
		next
	end
	if cs == 0
		_goto_level = _out
		next
	end
	end
	if _goto_level <= _resume
	_keys = _bel_key_offsets[cs]
	_trans = _bel_index_offsets[cs]
	_klen = _bel_single_lengths[cs]
	_break_match = false
	
	begin
	  if _klen > 0
	     _lower = _keys
	     _upper = _keys + _klen - 1

	     loop do
	        break if _upper < _lower
	        _mid = _lower + ( (_upper - _lower) >> 1 )

	        if data[p].ord < _bel_trans_keys[_mid]
	           _upper = _mid - 1
	        elsif data[p].ord > _bel_trans_keys[_mid]
	           _lower = _mid + 1
	        else
	           _trans += (_mid - _keys)
	           _break_match = true
	           break
	        end
	     end # loop
	     break if _break_match
	     _keys += _klen
	     _trans += _klen
	  end
	  _klen = _bel_range_lengths[cs]
	  if _klen > 0
	     _lower = _keys
	     _upper = _keys + (_klen << 1) - 2
	     loop do
	        break if _upper < _lower
	        _mid = _lower + (((_upper-_lower) >> 1) & ~1)
	        if data[p].ord < _bel_trans_keys[_mid]
	          _upper = _mid - 2
	        elsif data[p].ord > _bel_trans_keys[_mid+1]
	          _lower = _mid + 2
	        else
	          _trans += ((_mid - _keys) >> 1)
	          _break_match = true
	          break
	        end
	     end # loop
	     break if _break_match
	     _trans += _klen
	  end
	end while false
	_trans = _bel_indicies[_trans]
	cs = _bel_trans_targs[_trans]
	if _bel_trans_actions[_trans] != 0
		_acts = _bel_trans_actions[_trans]
		_nacts = _bel_actions[_acts]
		_acts += 1
		while _nacts > 0
			_nacts -= 1
			_acts += 1
			case _bel_actions[_acts - 1]
when 0 then
		begin

    @buffers[:ident] = []
  		end
when 1 then
		begin

    (@buffers[:ident] ||= []) << data[p].ord
  		end
when 2 then
		begin

    @buffers[:ident] = s(:identifier,
                         utf8_string(@buffers[:ident]))
  		end
when 3 then
		begin

    yield @buffers[:ident]
  		end
when 4 then
		begin

    unless @buffers[:ident].is_a?(::AST::Node)
      @buffers[:ident] ||= []
      @buffers[:ident]   = s(:identifier,
                             utf8_string(@buffers[:ident]).sub(/\n$/, ''))
    end
  		end
when 5 then
		begin

    @buffers[:ident] ||= []
    yield @buffers[:ident]
  		end
when 6 then
		begin

    @buffers[:string] = []
  		end
when 7 then
		begin

    (@buffers[:string] ||= []) << data[p].ord
  		end
when 8 then
		begin

    @buffers[:string] = s(:string,
                          utf8_string(@buffers[:string]))
  		end
when 9 then
		begin

    @buffers[:string] ||= []
    @buffers[:string] = s(:string,
                          utf8_string(@buffers[:string]).sub(/\n$/, ''))
  		end
when 10 then
		begin

    yield @buffers[:string]
  		end
when 11 then
		begin

    @buffers[:string] ||= []
    yield @buffers[:string]
  		end
when 12 then
		begin

    @parameter = s(:parameter,
                   s(:prefix, @buffers[:ident]))
  		end
when 13 then
		begin

    @parameter ||= s(:parameter, s(:prefix, nil))
    @parameter   = @parameter << s(:value, @buffers[:string])
  		end
when 14 then
		begin

    @parameter ||= s(:parameter, s(:prefix, nil))
    @parameter   = @parameter << s(:value, @buffers[:ident])
  		end
when 15 then
		begin

    yield @parameter
  		end
when 16 then
		begin

    @buffers[:function] = []
  		end
when 17 then
		begin

    @buffers[:function] << data[p].ord
  		end
when 18 then
		begin

    @buffers[:function] = s(:identifier,
                            utf8_string(@buffers[:function]))
  		end
when 19 then
		begin

    @buffers[:term_stack] = [ s(:term) ]
  		end
when 20 then
		begin

    @buffers[:term_stack] << s(:term)
  		end
when 21 then
		begin

    fx                        = @buffers[:function]
    @buffers[:term_stack][-1] = @buffers[:term_stack][-1] << s(:function, fx)
  		end
when 22 then
		begin

    @buffers[:term_stack][-1] = @buffers[:term_stack][-1] << s(:argument, @parameter)
    @parameter                = nil
  		end
when 23 then
		begin

    p -= @buffers[:function].length + 1
    	begin
		stack[top] = cs
		top+= 1
		cs = 36
		_trigger_goto = true
		_goto_level = _again
		break
	end

  		end
when 24 then
		begin

    inner_term = @buffers[:term_stack].pop
    @buffers[:term_stack][-1] = @buffers[:term_stack][-1] << s(:argument, inner_term)
    	begin
		top -= 1
		cs = stack[top]
		_trigger_goto = true
		_goto_level = _again
		break
	end

  		end
when 25 then
		begin

    yield @buffers[:term_stack][-1]
  		end
when 26 then
		begin

    @buffers[:relationship] = []
  		end
when 27 then
		begin

    @buffers[:relationship] << data[p].ord
  		end
when 28 then
		begin

    @buffers[:relationship] = s(:relationship,
                                utf8_string(@buffers[:relationship]))
  		end
when 29 then
		begin

    yield @buffers[:relationship]
  		end
when 30 then
		begin

    @buffers[:comment] = []
  		end
when 31 then
		begin

    @buffers[:comment] << data[p].ord
  		end
when 32 then
		begin

    @buffers[:comment] = s(:comment,
                           utf8_string(@buffers[:comment]))
  		end
when 33 then
		begin

    yield @buffers[:comment] || s(:comment, nil)
  		end
when 34 then
		begin

    @buffers[:subject]    = s(:subject,
                              @buffers[:term_stack][-1])
    @buffers[:term_stack] = nil
  		end
when 35 then
		begin

    @buffers[:object]     = s(:object,
                              @buffers[:term_stack][-1])
    @buffers[:term_stack] = nil
  		end
when 36 then
		begin

    @buffers[:comment] ||= s(:comment, nil)
    yield s(:statement_simple,
            s(:statement,
              @buffers[:subject],
              @buffers[:relationship],
              @buffers[:object],
              @buffers[:comment]))
  		end
when 37 then
		begin

    @buffers[:statement_stack] = [ s(:statement) ]
  		end
when 38 then
		begin

    @buffers[:statement_stack] << s(:statement)
  		end
when 39 then
		begin

    @buffers[:statement_stack][-1] = @buffers[:statement_stack][-1] << @buffers[:subject]
  		end
when 40 then
		begin

    @buffers[:statement_stack][-1] = @buffers[:statement_stack][-1] << @buffers[:relationship]
  		end
when 41 then
		begin

    @buffers[:statement_stack][-1] = @buffers[:statement_stack][-1] << s(:object, @buffers[:object])
  		end
when 42 then
		begin

    	begin
		stack[top] = cs
		top+= 1
		cs = 103
		_trigger_goto = true
		_goto_level = _again
		break
	end

  		end
when 43 then
		begin

    inner_statement = @buffers[:statement_stack].pop
    @buffers[:object] = inner_statement
    @buffers[:statement_stack][-1] = @buffers[:statement_stack][-1] << s(:object, inner_statement)
    	begin
		top -= 1
		cs = stack[top]
		_trigger_goto = true
		_goto_level = _again
		break
	end

  		end
when 44 then
		begin

    yield s(:nested_statement, @buffers[:statement_stack][-1])
  		end
			end # action switch
		end
	end
	if _trigger_goto
		next
	end
	end
	if _goto_level <= _again
	if cs == 0
		_goto_level = _out
		next
	end
	p += 1
	if p != pe
		_goto_level = _resume
		next
	end
	end
	if _goto_level <= _test_eof
	if p == eof
	__acts = _bel_eof_actions[cs]
	__nacts =  _bel_actions[__acts]
	__acts += 1
	while __nacts > 0
		__nacts -= 1
		__acts += 1
		case _bel_actions[__acts - 1]
when 4 then
		begin

    unless @buffers[:ident].is_a?(::AST::Node)
      @buffers[:ident] ||= []
      @buffers[:ident]   = s(:identifier,
                             utf8_string(@buffers[:ident]).sub(/\n$/, ''))
    end
  		end
when 5 then
		begin

    @buffers[:ident] ||= []
    yield @buffers[:ident]
  		end
when 9 then
		begin

    @buffers[:string] ||= []
    @buffers[:string] = s(:string,
                          utf8_string(@buffers[:string]).sub(/\n$/, ''))
  		end
when 11 then
		begin

    @buffers[:string] ||= []
    yield @buffers[:string]
  		end
		end # eof action switch
	end
	if _trigger_goto
		next
	end
end
	end
	if _goto_level <= _out
		break
	end
	end
	end

class << self
	attr_accessor :_bel_actions
	private :_bel_actions, :_bel_actions=
end
self._bel_actions = [
	0, 1, 1, 1, 4, 1, 7, 1, 
	9, 1, 21, 1, 24, 1, 25, 1, 
	27, 1, 28, 1, 31, 1, 33, 1, 
	34, 1, 35, 1, 36, 1, 42, 1, 
	43, 1, 44, 2, 0, 1, 2, 1, 
	17, 2, 2, 3, 2, 2, 12, 2, 
	2, 18, 2, 2, 23, 2, 4, 5, 
	2, 4, 9, 2, 6, 7, 2, 8, 
	10, 2, 9, 4, 2, 9, 11, 2, 
	26, 27, 2, 28, 29, 2, 28, 40, 
	2, 30, 31, 2, 32, 33, 2, 32, 
	36, 2, 32, 44, 2, 34, 39, 2, 
	35, 36, 3, 2, 14, 15, 3, 2, 
	14, 22, 3, 2, 18, 21, 3, 8, 
	13, 15, 3, 8, 13, 22, 3, 35, 
	41, 43, 4, 0, 1, 16, 17, 4, 
	2, 14, 22, 24, 4, 8, 13, 22, 
	24, 5, 19, 16, 0, 1, 17, 5, 
	20, 16, 0, 1, 17, 6, 2, 14, 
	22, 35, 41, 43, 6, 8, 13, 22, 
	35, 41, 43, 6, 37, 19, 16, 0, 
	1, 17, 6, 38, 19, 16, 0, 1, 
	17
]

class << self
	attr_accessor :_bel_key_offsets
	private :_bel_key_offsets, :_bel_key_offsets=
end
self._bel_key_offsets = [
	0, 0, 7, 17, 20, 30, 40, 42, 
	46, 49, 59, 72, 76, 78, 82, 86, 
	89, 90, 94, 95, 96, 97, 98, 109, 
	116, 124, 125, 127, 128, 129, 139, 149, 
	151, 152, 153, 161, 170, 177, 187, 190, 
	200, 210, 212, 216, 219, 229, 242, 246, 
	247, 258, 265, 275, 278, 288, 298, 300, 
	304, 307, 317, 330, 334, 335, 336, 347, 
	349, 352, 354, 355, 356, 357, 364, 374, 
	377, 387, 397, 399, 403, 406, 416, 429, 
	433, 435, 439, 443, 452, 462, 465, 475, 
	485, 487, 491, 494, 504, 517, 521, 525, 
	529, 530, 531, 532, 533, 544, 545, 556, 
	563, 573, 576, 586, 596, 598, 602, 605, 
	615, 628, 632, 634, 638, 642, 652, 653, 
	663, 666, 676, 686, 688, 692, 695, 705, 
	718, 722, 723, 734, 735, 746, 746, 746, 
	746, 746, 746, 746, 746, 746, 746
]

class << self
	attr_accessor :_bel_trans_keys
	private :_bel_trans_keys, :_bel_trans_keys=
end
self._bel_trans_keys = [
	95, 48, 57, 65, 90, 97, 122, 9, 
	32, 40, 95, 48, 57, 65, 90, 97, 
	122, 9, 32, 40, 9, 32, 34, 95, 
	48, 57, 65, 90, 97, 122, 9, 32, 
	34, 95, 48, 57, 65, 90, 97, 122, 
	34, 92, 9, 32, 41, 44, 9, 32, 
	44, 9, 32, 34, 95, 48, 57, 65, 
	90, 97, 122, 9, 32, 40, 41, 44, 
	58, 95, 48, 57, 65, 90, 97, 122, 
	9, 32, 41, 44, 9, 32, 9, 32, 
	33, 126, 9, 32, 33, 126, 9, 32, 
	40, 41, 9, 10, 32, 47, 47, 10, 
	10, 92, 9, 32, 41, 44, 95, 48, 
	57, 65, 90, 97, 122, 95, 48, 57, 
	65, 90, 97, 122, 10, 95, 48, 57, 
	65, 90, 97, 122, 34, 34, 92, 10, 
	92, 9, 32, 34, 95, 48, 57, 65, 
	90, 97, 122, 9, 32, 34, 95, 48, 
	57, 65, 90, 97, 122, 34, 92, 10, 
	92, 10, 95, 48, 57, 65, 90, 97, 
	122, 10, 58, 95, 48, 57, 65, 90, 
	97, 122, 95, 48, 57, 65, 90, 97, 
	122, 9, 32, 40, 95, 48, 57, 65, 
	90, 97, 122, 9, 32, 40, 9, 32, 
	34, 95, 48, 57, 65, 90, 97, 122, 
	9, 32, 34, 95, 48, 57, 65, 90, 
	97, 122, 34, 92, 9, 32, 41, 44, 
	9, 32, 44, 9, 32, 34, 95, 48, 
	57, 65, 90, 97, 122, 9, 32, 40, 
	41, 44, 58, 95, 48, 57, 65, 90, 
	97, 122, 9, 32, 41, 44, 92, 9, 
	32, 41, 44, 95, 48, 57, 65, 90, 
	97, 122, 95, 48, 57, 65, 90, 97, 
	122, 9, 32, 40, 95, 48, 57, 65, 
	90, 97, 122, 9, 32, 40, 9, 32, 
	34, 95, 48, 57, 65, 90, 97, 122, 
	9, 32, 34, 95, 48, 57, 65, 90, 
	97, 122, 34, 92, 9, 32, 41, 44, 
	9, 32, 44, 9, 32, 34, 95, 48, 
	57, 65, 90, 97, 122, 9, 32, 40, 
	41, 44, 58, 95, 48, 57, 65, 90, 
	97, 122, 9, 32, 41, 44, 10, 92, 
	9, 32, 41, 44, 95, 48, 57, 65, 
	90, 97, 122, 33, 126, 10, 33, 126, 
	10, 47, 47, 10, 10, 95, 48, 57, 
	65, 90, 97, 122, 9, 32, 40, 95, 
	48, 57, 65, 90, 97, 122, 9, 32, 
	40, 9, 32, 34, 95, 48, 57, 65, 
	90, 97, 122, 9, 32, 34, 95, 48, 
	57, 65, 90, 97, 122, 34, 92, 9, 
	32, 41, 44, 9, 32, 44, 9, 32, 
	34, 95, 48, 57, 65, 90, 97, 122, 
	9, 32, 40, 41, 44, 58, 95, 48, 
	57, 65, 90, 97, 122, 9, 32, 41, 
	44, 9, 32, 9, 32, 33, 126, 9, 
	32, 33, 126, 9, 32, 95, 48, 57, 
	65, 90, 97, 122, 9, 32, 40, 95, 
	48, 57, 65, 90, 97, 122, 9, 32, 
	40, 9, 32, 34, 95, 48, 57, 65, 
	90, 97, 122, 9, 32, 34, 95, 48, 
	57, 65, 90, 97, 122, 34, 92, 9, 
	32, 41, 44, 9, 32, 44, 9, 32, 
	34, 95, 48, 57, 65, 90, 97, 122, 
	9, 32, 40, 41, 44, 58, 95, 48, 
	57, 65, 90, 97, 122, 9, 32, 41, 
	44, 9, 10, 32, 47, 9, 10, 32, 
	47, 47, 10, 10, 92, 9, 32, 41, 
	44, 95, 48, 57, 65, 90, 97, 122, 
	92, 9, 32, 41, 44, 95, 48, 57, 
	65, 90, 97, 122, 95, 48, 57, 65, 
	90, 97, 122, 9, 32, 40, 95, 48, 
	57, 65, 90, 97, 122, 9, 32, 40, 
	9, 32, 34, 95, 48, 57, 65, 90, 
	97, 122, 9, 32, 34, 95, 48, 57, 
	65, 90, 97, 122, 34, 92, 9, 32, 
	41, 44, 9, 32, 44, 9, 32, 34, 
	95, 48, 57, 65, 90, 97, 122, 9, 
	32, 40, 41, 44, 58, 95, 48, 57, 
	65, 90, 97, 122, 9, 32, 41, 44, 
	9, 32, 9, 32, 33, 126, 9, 32, 
	33, 126, 9, 32, 40, 95, 48, 57, 
	65, 90, 97, 122, 41, 9, 32, 40, 
	95, 48, 57, 65, 90, 97, 122, 9, 
	32, 40, 9, 32, 34, 95, 48, 57, 
	65, 90, 97, 122, 9, 32, 34, 95, 
	48, 57, 65, 90, 97, 122, 34, 92, 
	9, 32, 41, 44, 9, 32, 44, 9, 
	32, 34, 95, 48, 57, 65, 90, 97, 
	122, 9, 32, 40, 41, 44, 58, 95, 
	48, 57, 65, 90, 97, 122, 9, 32, 
	41, 44, 92, 9, 32, 41, 44, 95, 
	48, 57, 65, 90, 97, 122, 92, 9, 
	32, 41, 44, 95, 48, 57, 65, 90, 
	97, 122, 0
]

class << self
	attr_accessor :_bel_single_lengths
	private :_bel_single_lengths, :_bel_single_lengths=
end
self._bel_single_lengths = [
	0, 1, 4, 3, 4, 4, 2, 4, 
	3, 4, 7, 4, 2, 2, 2, 3, 
	1, 4, 1, 1, 1, 1, 5, 1, 
	2, 1, 2, 1, 1, 4, 4, 2, 
	1, 1, 2, 3, 1, 4, 3, 4, 
	4, 2, 4, 3, 4, 7, 4, 1, 
	5, 1, 4, 3, 4, 4, 2, 4, 
	3, 4, 7, 4, 1, 1, 5, 0, 
	1, 2, 1, 1, 1, 1, 4, 3, 
	4, 4, 2, 4, 3, 4, 7, 4, 
	2, 2, 2, 3, 4, 3, 4, 4, 
	2, 4, 3, 4, 7, 4, 4, 4, 
	1, 1, 1, 1, 5, 1, 5, 1, 
	4, 3, 4, 4, 2, 4, 3, 4, 
	7, 4, 2, 2, 2, 4, 1, 4, 
	3, 4, 4, 2, 4, 3, 4, 7, 
	4, 1, 5, 1, 5, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0
]

class << self
	attr_accessor :_bel_range_lengths
	private :_bel_range_lengths, :_bel_range_lengths=
end
self._bel_range_lengths = [
	0, 3, 3, 0, 3, 3, 0, 0, 
	0, 3, 3, 0, 0, 1, 1, 0, 
	0, 0, 0, 0, 0, 0, 3, 3, 
	3, 0, 0, 0, 0, 3, 3, 0, 
	0, 0, 3, 3, 3, 3, 0, 3, 
	3, 0, 0, 0, 3, 3, 0, 0, 
	3, 3, 3, 0, 3, 3, 0, 0, 
	0, 3, 3, 0, 0, 0, 3, 1, 
	1, 0, 0, 0, 0, 3, 3, 0, 
	3, 3, 0, 0, 0, 3, 3, 0, 
	0, 1, 1, 3, 3, 0, 3, 3, 
	0, 0, 0, 3, 3, 0, 0, 0, 
	0, 0, 0, 0, 3, 0, 3, 3, 
	3, 0, 3, 3, 0, 0, 0, 3, 
	3, 0, 0, 1, 1, 3, 0, 3, 
	0, 3, 3, 0, 0, 0, 3, 3, 
	0, 0, 3, 0, 3, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0
]

class << self
	attr_accessor :_bel_index_offsets
	private :_bel_index_offsets, :_bel_index_offsets=
end
self._bel_index_offsets = [
	0, 0, 5, 13, 17, 25, 33, 36, 
	41, 45, 53, 64, 69, 72, 76, 80, 
	84, 86, 91, 93, 95, 97, 99, 108, 
	113, 119, 121, 124, 126, 128, 136, 144, 
	147, 149, 151, 157, 164, 169, 177, 181, 
	189, 197, 200, 205, 209, 217, 228, 233, 
	235, 244, 249, 257, 261, 269, 277, 280, 
	285, 289, 297, 308, 313, 315, 317, 326, 
	328, 331, 334, 336, 338, 340, 345, 353, 
	357, 365, 373, 376, 381, 385, 393, 404, 
	409, 412, 416, 420, 427, 435, 439, 447, 
	455, 458, 463, 467, 475, 486, 491, 496, 
	501, 503, 505, 507, 509, 518, 520, 529, 
	534, 542, 546, 554, 562, 565, 570, 574, 
	582, 593, 598, 601, 605, 609, 617, 619, 
	627, 631, 639, 647, 650, 655, 659, 667, 
	678, 683, 685, 694, 696, 705, 706, 707, 
	708, 709, 710, 711, 712, 713, 714
]

class << self
	attr_accessor :_bel_indicies
	private :_bel_indicies, :_bel_indicies=
end
self._bel_indicies = [
	1, 1, 1, 1, 0, 2, 2, 3, 
	4, 4, 4, 4, 0, 5, 5, 7, 
	6, 9, 9, 10, 11, 11, 11, 11, 
	8, 9, 9, 10, 13, 13, 13, 13, 
	12, 15, 16, 14, 18, 18, 19, 20, 
	17, 21, 21, 22, 6, 22, 22, 10, 
	11, 11, 11, 11, 8, 23, 23, 24, 
	25, 26, 28, 27, 27, 27, 27, 0, 
	21, 21, 29, 22, 6, 30, 30, 6, 
	31, 31, 32, 6, 33, 33, 34, 6, 
	35, 35, 36, 6, 37, 6, 37, 38, 
	37, 39, 6, 40, 6, 6, 41, 43, 
	42, 16, 14, 23, 23, 25, 26, 44, 
	44, 44, 44, 0, 46, 46, 46, 46, 
	45, 47, 48, 48, 48, 48, 45, 50, 
	49, 52, 53, 51, 54, 49, 53, 51, 
	55, 55, 56, 57, 57, 57, 57, 8, 
	55, 55, 56, 58, 58, 58, 58, 12, 
	60, 61, 59, 62, 17, 61, 59, 63, 
	64, 64, 64, 64, 0, 63, 66, 65, 
	65, 65, 65, 0, 67, 67, 67, 67, 
	0, 68, 68, 69, 70, 70, 70, 70, 
	0, 71, 71, 72, 6, 73, 73, 74, 
	75, 75, 75, 75, 8, 73, 73, 74, 
	76, 76, 76, 76, 12, 78, 79, 77, 
	80, 80, 81, 82, 17, 83, 83, 84, 
	6, 84, 84, 74, 75, 75, 75, 75, 
	8, 85, 85, 86, 87, 88, 90, 89, 
	89, 89, 89, 0, 83, 83, 91, 84, 
	6, 79, 77, 85, 85, 87, 88, 92, 
	92, 92, 92, 0, 93, 93, 93, 93, 
	0, 94, 94, 95, 96, 96, 96, 96, 
	0, 97, 97, 98, 6, 99, 99, 100, 
	101, 101, 101, 101, 8, 99, 99, 100, 
	102, 102, 102, 102, 12, 104, 105, 103, 
	106, 106, 107, 108, 17, 109, 109, 110, 
	6, 110, 110, 100, 101, 101, 101, 101, 
	8, 111, 111, 112, 113, 114, 116, 115, 
	115, 115, 115, 0, 109, 109, 117, 110, 
	6, 118, 6, 105, 103, 111, 111, 113, 
	114, 119, 119, 119, 119, 0, 120, 6, 
	121, 122, 6, 123, 124, 6, 125, 6, 
	6, 126, 128, 127, 129, 129, 129, 129, 
	0, 130, 130, 131, 132, 132, 132, 132, 
	0, 133, 133, 134, 6, 135, 135, 136, 
	137, 137, 137, 137, 8, 135, 135, 136, 
	138, 138, 138, 138, 12, 140, 141, 139, 
	142, 142, 143, 144, 17, 145, 145, 146, 
	6, 146, 146, 136, 137, 137, 137, 137, 
	8, 147, 147, 148, 149, 150, 152, 151, 
	151, 151, 151, 0, 145, 145, 153, 146, 
	6, 154, 154, 6, 155, 155, 156, 6, 
	157, 157, 158, 6, 159, 159, 160, 160, 
	160, 160, 0, 161, 161, 162, 163, 163, 
	163, 163, 0, 164, 164, 165, 6, 166, 
	166, 167, 168, 168, 168, 168, 8, 166, 
	166, 167, 169, 169, 169, 169, 12, 171, 
	172, 170, 173, 173, 174, 175, 17, 176, 
	176, 177, 6, 177, 177, 167, 168, 168, 
	168, 168, 8, 178, 178, 179, 180, 181, 
	183, 182, 182, 182, 182, 0, 176, 176, 
	184, 177, 6, 185, 186, 185, 187, 6, 
	188, 189, 188, 190, 6, 191, 6, 6, 
	192, 194, 193, 172, 170, 178, 178, 180, 
	181, 195, 195, 195, 195, 0, 141, 139, 
	147, 147, 149, 150, 196, 196, 196, 196, 
	0, 197, 197, 197, 197, 0, 198, 198, 
	199, 200, 200, 200, 200, 0, 201, 201, 
	202, 6, 203, 203, 204, 205, 205, 205, 
	205, 8, 203, 203, 204, 206, 206, 206, 
	206, 12, 208, 209, 207, 210, 210, 211, 
	212, 17, 213, 213, 214, 6, 214, 214, 
	204, 205, 205, 205, 205, 8, 215, 215, 
	216, 217, 218, 220, 219, 219, 219, 219, 
	0, 213, 213, 221, 214, 6, 222, 222, 
	6, 223, 223, 224, 6, 225, 225, 226, 
	6, 227, 227, 228, 229, 229, 229, 229, 
	0, 230, 6, 231, 231, 232, 233, 233, 
	233, 233, 0, 234, 234, 235, 6, 236, 
	236, 237, 238, 238, 238, 238, 8, 236, 
	236, 237, 239, 239, 239, 239, 12, 241, 
	242, 240, 243, 243, 244, 245, 17, 246, 
	246, 247, 6, 247, 247, 237, 238, 238, 
	238, 238, 8, 248, 248, 249, 250, 251, 
	253, 252, 252, 252, 252, 0, 246, 246, 
	254, 247, 6, 242, 240, 248, 248, 250, 
	251, 255, 255, 255, 255, 0, 209, 207, 
	215, 215, 217, 218, 256, 256, 256, 256, 
	0, 6, 6, 6, 6, 6, 6, 6, 
	6, 6, 6, 0
]

class << self
	attr_accessor :_bel_trans_targs
	private :_bel_trans_targs, :_bel_trans_targs=
end
self._bel_trans_targs = [
	0, 2, 3, 4, 2, 3, 0, 4, 
	0, 5, 6, 10, 0, 22, 6, 7, 
	21, 0, 8, 12, 9, 8, 9, 8, 
	11, 12, 9, 10, 5, 12, 13, 13, 
	14, 15, 14, 15, 16, 17, 133, 18, 
	19, 20, 20, 133, 22, 0, 24, 134, 
	24, 0, 26, 26, 27, 28, 135, 30, 
	31, 35, 34, 31, 32, 33, 136, 136, 
	34, 35, 30, 37, 38, 39, 37, 38, 
	39, 40, 41, 45, 48, 41, 42, 47, 
	43, 137, 44, 43, 44, 43, 46, 137, 
	44, 45, 40, 137, 48, 50, 51, 52, 
	50, 51, 52, 53, 54, 58, 62, 54, 
	55, 61, 56, 60, 57, 56, 57, 56, 
	59, 60, 57, 58, 53, 60, 138, 62, 
	64, 139, 64, 140, 66, 67, 68, 68, 
	140, 70, 71, 72, 70, 71, 72, 73, 
	74, 78, 102, 74, 75, 101, 76, 80, 
	77, 76, 77, 76, 79, 80, 77, 78, 
	73, 80, 81, 81, 82, 83, 82, 83, 
	84, 85, 86, 84, 85, 86, 87, 88, 
	92, 100, 88, 89, 99, 90, 94, 91, 
	90, 91, 90, 93, 94, 91, 92, 87, 
	94, 95, 141, 96, 95, 141, 96, 97, 
	98, 98, 141, 100, 102, 104, 105, 106, 
	104, 105, 106, 107, 108, 112, 132, 108, 
	109, 131, 110, 114, 111, 110, 111, 110, 
	113, 114, 111, 112, 107, 114, 115, 115, 
	116, 117, 116, 117, 118, 119, 142, 120, 
	121, 119, 120, 121, 122, 123, 127, 130, 
	123, 124, 129, 125, 142, 126, 125, 126, 
	125, 128, 142, 126, 127, 122, 142, 130, 
	132
]

class << self
	attr_accessor :_bel_trans_actions
	private :_bel_trans_actions, :_bel_trans_actions=
end
self._bel_trans_actions = [
	3, 163, 47, 106, 38, 0, 0, 9, 
	56, 0, 59, 122, 65, 35, 5, 5, 
	5, 7, 114, 114, 114, 0, 0, 102, 
	50, 102, 102, 38, 44, 0, 92, 0, 
	71, 77, 15, 0, 29, 0, 33, 0, 
	0, 80, 19, 89, 1, 53, 35, 41, 
	1, 68, 59, 5, 5, 5, 62, 0, 
	59, 35, 35, 5, 5, 5, 110, 98, 
	1, 1, 44, 143, 47, 106, 38, 0, 
	9, 0, 59, 122, 35, 5, 5, 5, 
	114, 132, 114, 0, 0, 102, 50, 127, 
	102, 38, 44, 11, 1, 137, 47, 106, 
	38, 0, 9, 0, 59, 122, 35, 5, 
	5, 5, 114, 114, 114, 0, 0, 102, 
	50, 102, 102, 38, 44, 0, 13, 1, 
	71, 74, 15, 21, 0, 0, 80, 19, 
	83, 137, 47, 106, 38, 0, 9, 0, 
	59, 122, 35, 5, 5, 5, 114, 114, 
	114, 0, 0, 102, 50, 102, 102, 38, 
	44, 0, 23, 0, 71, 17, 15, 0, 
	137, 47, 106, 38, 0, 9, 0, 59, 
	122, 35, 5, 5, 5, 114, 114, 114, 
	0, 0, 102, 50, 102, 102, 38, 44, 
	0, 25, 95, 25, 0, 27, 0, 0, 
	80, 19, 86, 1, 1, 170, 47, 106, 
	38, 0, 9, 0, 59, 122, 35, 5, 
	5, 5, 114, 114, 114, 0, 0, 102, 
	50, 102, 102, 38, 44, 0, 92, 0, 
	71, 77, 15, 0, 29, 137, 31, 47, 
	106, 38, 0, 9, 0, 59, 122, 35, 
	5, 5, 5, 114, 156, 114, 0, 0, 
	102, 50, 149, 102, 38, 44, 118, 1, 
	1
]

class << self
	attr_accessor :_bel_eof_actions
	private :_bel_eof_actions, :_bel_eof_actions=
end
self._bel_eof_actions = [
	0, 3, 3, 0, 56, 65, 7, 7, 
	0, 56, 3, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 7, 3, 53, 
	53, 68, 68, 68, 68, 56, 65, 7, 
	7, 7, 3, 3, 3, 3, 0, 56, 
	65, 7, 7, 0, 56, 3, 0, 7, 
	3, 3, 3, 0, 56, 65, 7, 7, 
	0, 56, 3, 0, 0, 7, 3, 0, 
	0, 0, 0, 0, 0, 3, 3, 0, 
	56, 65, 7, 7, 0, 56, 3, 0, 
	0, 0, 0, 3, 3, 0, 56, 65, 
	7, 7, 0, 56, 3, 0, 0, 0, 
	0, 0, 0, 7, 3, 7, 3, 3, 
	3, 0, 56, 65, 7, 7, 0, 56, 
	3, 0, 0, 0, 0, 3, 0, 3, 
	0, 56, 65, 7, 7, 0, 56, 3, 
	0, 7, 3, 7, 3, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0
]

class << self
	attr_accessor :bel_start
end
self.bel_start = 1;
class << self
	attr_accessor :bel_first_final
end
self.bel_first_final = 133;
class << self
	attr_accessor :bel_error
end
self.bel_error = 0;

class << self
	attr_accessor :bel_en_ident
end
self.bel_en_ident = 23;
class << self
	attr_accessor :bel_en_string
end
self.bel_en_string = 25;
class << self
	attr_accessor :bel_en_bel_parameter
end
self.bel_en_bel_parameter = 29;
class << self
	attr_accessor :bel_en_inner_term
end
self.bel_en_inner_term = 36;
class << self
	attr_accessor :bel_en_term
end
self.bel_en_term = 49;
class << self
	attr_accessor :bel_en_relationship
end
self.bel_en_relationship = 63;
class << self
	attr_accessor :bel_en_comment
end
self.bel_en_comment = 65;
class << self
	attr_accessor :bel_en_statement_simple
end
self.bel_en_statement_simple = 69;
class << self
	attr_accessor :bel_en_inner_statement
end
self.bel_en_inner_statement = 103;
class << self
	attr_accessor :bel_en_statement_nested
end
self.bel_en_statement_nested = 1;


begin
	p ||= 0
	pe ||= data.length
	cs = bel_start
	top = 0
end

begin
	_klen, _trans, _keys, _acts, _nacts = nil
	_goto_level = 0
	_resume = 10
	_eof_trans = 15
	_again = 20
	_test_eof = 30
	_out = 40
	while true
	_trigger_goto = false
	if _goto_level <= 0
	if p == pe
		_goto_level = _test_eof
		next
	end
	if cs == 0
		_goto_level = _out
		next
	end
	end
	if _goto_level <= _resume
	_keys = _bel_key_offsets[cs]
	_trans = _bel_index_offsets[cs]
	_klen = _bel_single_lengths[cs]
	_break_match = false
	
	begin
	  if _klen > 0
	     _lower = _keys
	     _upper = _keys + _klen - 1

	     loop do
	        break if _upper < _lower
	        _mid = _lower + ( (_upper - _lower) >> 1 )

	        if data[p].ord < _bel_trans_keys[_mid]
	           _upper = _mid - 1
	        elsif data[p].ord > _bel_trans_keys[_mid]
	           _lower = _mid + 1
	        else
	           _trans += (_mid - _keys)
	           _break_match = true
	           break
	        end
	     end # loop
	     break if _break_match
	     _keys += _klen
	     _trans += _klen
	  end
	  _klen = _bel_range_lengths[cs]
	  if _klen > 0
	     _lower = _keys
	     _upper = _keys + (_klen << 1) - 2
	     loop do
	        break if _upper < _lower
	        _mid = _lower + (((_upper-_lower) >> 1) & ~1)
	        if data[p].ord < _bel_trans_keys[_mid]
	          _upper = _mid - 2
	        elsif data[p].ord > _bel_trans_keys[_mid+1]
	          _lower = _mid + 2
	        else
	          _trans += ((_mid - _keys) >> 1)
	          _break_match = true
	          break
	        end
	     end # loop
	     break if _break_match
	     _trans += _klen
	  end
	end while false
	_trans = _bel_indicies[_trans]
	cs = _bel_trans_targs[_trans]
	if _bel_trans_actions[_trans] != 0
		_acts = _bel_trans_actions[_trans]
		_nacts = _bel_actions[_acts]
		_acts += 1
		while _nacts > 0
			_nacts -= 1
			_acts += 1
			case _bel_actions[_acts - 1]
when 0 then
		begin

    @buffers[:ident] = []
  		end
when 1 then
		begin

    (@buffers[:ident] ||= []) << data[p].ord
  		end
when 2 then
		begin

    @buffers[:ident] = s(:identifier,
                         utf8_string(@buffers[:ident]))
  		end
when 3 then
		begin

    yield @buffers[:ident]
  		end
when 4 then
		begin

    unless @buffers[:ident].is_a?(::AST::Node)
      @buffers[:ident] ||= []
      @buffers[:ident]   = s(:identifier,
                             utf8_string(@buffers[:ident]).sub(/\n$/, ''))
    end
  		end
when 5 then
		begin

    @buffers[:ident] ||= []
    yield @buffers[:ident]
  		end
when 6 then
		begin

    @buffers[:string] = []
  		end
when 7 then
		begin

    (@buffers[:string] ||= []) << data[p].ord
  		end
when 8 then
		begin

    @buffers[:string] = s(:string,
                          utf8_string(@buffers[:string]))
  		end
when 9 then
		begin

    @buffers[:string] ||= []
    @buffers[:string] = s(:string,
                          utf8_string(@buffers[:string]).sub(/\n$/, ''))
  		end
when 10 then
		begin

    yield @buffers[:string]
  		end
when 11 then
		begin

    @buffers[:string] ||= []
    yield @buffers[:string]
  		end
when 12 then
		begin

    @parameter = s(:parameter,
                   s(:prefix, @buffers[:ident]))
  		end
when 13 then
		begin

    @parameter ||= s(:parameter, s(:prefix, nil))
    @parameter   = @parameter << s(:value, @buffers[:string])
  		end
when 14 then
		begin

    @parameter ||= s(:parameter, s(:prefix, nil))
    @parameter   = @parameter << s(:value, @buffers[:ident])
  		end
when 15 then
		begin

    yield @parameter
  		end
when 16 then
		begin

    @buffers[:function] = []
  		end
when 17 then
		begin

    @buffers[:function] << data[p].ord
  		end
when 18 then
		begin

    @buffers[:function] = s(:identifier,
                            utf8_string(@buffers[:function]))
  		end
when 19 then
		begin

    @buffers[:term_stack] = [ s(:term) ]
  		end
when 20 then
		begin

    @buffers[:term_stack] << s(:term)
  		end
when 21 then
		begin

    fx                        = @buffers[:function]
    @buffers[:term_stack][-1] = @buffers[:term_stack][-1] << s(:function, fx)
  		end
when 22 then
		begin

    @buffers[:term_stack][-1] = @buffers[:term_stack][-1] << s(:argument, @parameter)
    @parameter                = nil
  		end
when 23 then
		begin

    p -= @buffers[:function].length + 1
    	begin
		stack[top] = cs
		top+= 1
		cs = 36
		_trigger_goto = true
		_goto_level = _again
		break
	end

  		end
when 24 then
		begin

    inner_term = @buffers[:term_stack].pop
    @buffers[:term_stack][-1] = @buffers[:term_stack][-1] << s(:argument, inner_term)
    	begin
		top -= 1
		cs = stack[top]
		_trigger_goto = true
		_goto_level = _again
		break
	end

  		end
when 25 then
		begin

    yield @buffers[:term_stack][-1]
  		end
when 26 then
		begin

    @buffers[:relationship] = []
  		end
when 27 then
		begin

    @buffers[:relationship] << data[p].ord
  		end
when 28 then
		begin

    @buffers[:relationship] = s(:relationship,
                                utf8_string(@buffers[:relationship]))
  		end
when 29 then
		begin

    yield @buffers[:relationship]
  		end
when 30 then
		begin

    @buffers[:comment] = []
  		end
when 31 then
		begin

    @buffers[:comment] << data[p].ord
  		end
when 32 then
		begin

    @buffers[:comment] = s(:comment,
                           utf8_string(@buffers[:comment]))
  		end
when 33 then
		begin

    yield @buffers[:comment] || s(:comment, nil)
  		end
when 34 then
		begin

    @buffers[:subject]    = s(:subject,
                              @buffers[:term_stack][-1])
    @buffers[:term_stack] = nil
  		end
when 35 then
		begin

    @buffers[:object]     = s(:object,
                              @buffers[:term_stack][-1])
    @buffers[:term_stack] = nil
  		end
when 36 then
		begin

    @buffers[:comment] ||= s(:comment, nil)
    yield s(:statement_simple,
            s(:statement,
              @buffers[:subject],
              @buffers[:relationship],
              @buffers[:object],
              @buffers[:comment]))
  		end
when 37 then
		begin

    @buffers[:statement_stack] = [ s(:statement) ]
  		end
when 38 then
		begin

    @buffers[:statement_stack] << s(:statement)
  		end
when 39 then
		begin

    @buffers[:statement_stack][-1] = @buffers[:statement_stack][-1] << @buffers[:subject]
  		end
when 40 then
		begin

    @buffers[:statement_stack][-1] = @buffers[:statement_stack][-1] << @buffers[:relationship]
  		end
when 41 then
		begin

    @buffers[:statement_stack][-1] = @buffers[:statement_stack][-1] << s(:object, @buffers[:object])
  		end
when 42 then
		begin

    	begin
		stack[top] = cs
		top+= 1
		cs = 103
		_trigger_goto = true
		_goto_level = _again
		break
	end

  		end
when 43 then
		begin

    inner_statement = @buffers[:statement_stack].pop
    @buffers[:object] = inner_statement
    @buffers[:statement_stack][-1] = @buffers[:statement_stack][-1] << s(:object, inner_statement)
    	begin
		top -= 1
		cs = stack[top]
		_trigger_goto = true
		_goto_level = _again
		break
	end

  		end
when 44 then
		begin

    yield s(:nested_statement, @buffers[:statement_stack][-1])
  		end
			end # action switch
		end
	end
	if _trigger_goto
		next
	end
	end
	if _goto_level <= _again
	if cs == 0
		_goto_level = _out
		next
	end
	p += 1
	if p != pe
		_goto_level = _resume
		next
	end
	end
	if _goto_level <= _test_eof
	if p == eof
	__acts = _bel_eof_actions[cs]
	__nacts =  _bel_actions[__acts]
	__acts += 1
	while __nacts > 0
		__nacts -= 1
		__acts += 1
		case _bel_actions[__acts - 1]
when 4 then
		begin

    unless @buffers[:ident].is_a?(::AST::Node)
      @buffers[:ident] ||= []
      @buffers[:ident]   = s(:identifier,
                             utf8_string(@buffers[:ident]).sub(/\n$/, ''))
    end
  		end
when 5 then
		begin

    @buffers[:ident] ||= []
    yield @buffers[:ident]
  		end
when 9 then
		begin

    @buffers[:string] ||= []
    @buffers[:string] = s(:string,
                          utf8_string(@buffers[:string]).sub(/\n$/, ''))
  		end
when 11 then
		begin

    @buffers[:string] ||= []
    yield @buffers[:string]
  		end
		end # eof action switch
	end
	if _trigger_goto
		next
	end
end
	end
	if _goto_level <= _out
		break
	end
	end
	end


=end
# end: ragel

require          'ast'
require_relative '../mixin/buffer'
require_relative '../nonblocking_io_wrapper'

module BEL
  module Parsers
    module BELExpression
      module StatementNested

        class << self

          MAX_LENGTH = 1024 * 128 # 128K

          def parse(content)
            return nil unless content

            Parser.new(content).each do |obj|
              yield obj
            end
          end
        end

        private

        class Parser
          include Enumerable
          include ::AST::Sexp
          include BEL::Parsers::Buffer

          def initialize(content)
            @content = content
      # begin: ragel        
            
class << self
	attr_accessor :_bel_actions
	private :_bel_actions, :_bel_actions=
end
self._bel_actions = [
	0, 1, 1, 1, 4, 1, 7, 1, 
	9, 1, 21, 1, 24, 1, 25, 1, 
	27, 1, 28, 1, 31, 1, 33, 1, 
	34, 1, 35, 1, 36, 1, 42, 1, 
	43, 1, 44, 2, 0, 1, 2, 1, 
	17, 2, 2, 3, 2, 2, 12, 2, 
	2, 18, 2, 2, 23, 2, 4, 5, 
	2, 4, 9, 2, 6, 7, 2, 8, 
	10, 2, 9, 4, 2, 9, 11, 2, 
	26, 27, 2, 28, 29, 2, 28, 40, 
	2, 30, 31, 2, 32, 33, 2, 32, 
	36, 2, 32, 44, 2, 34, 39, 2, 
	35, 36, 3, 2, 14, 15, 3, 2, 
	14, 22, 3, 2, 18, 21, 3, 8, 
	13, 15, 3, 8, 13, 22, 3, 35, 
	41, 43, 4, 0, 1, 16, 17, 4, 
	2, 14, 22, 24, 4, 8, 13, 22, 
	24, 5, 19, 16, 0, 1, 17, 5, 
	20, 16, 0, 1, 17, 6, 2, 14, 
	22, 35, 41, 43, 6, 8, 13, 22, 
	35, 41, 43, 6, 37, 19, 16, 0, 
	1, 17, 6, 38, 19, 16, 0, 1, 
	17
]

class << self
	attr_accessor :_bel_key_offsets
	private :_bel_key_offsets, :_bel_key_offsets=
end
self._bel_key_offsets = [
	0, 0, 7, 17, 20, 30, 40, 42, 
	46, 49, 59, 72, 76, 78, 82, 86, 
	89, 90, 94, 95, 96, 97, 98, 109, 
	116, 124, 125, 127, 128, 129, 139, 149, 
	151, 152, 153, 161, 170, 177, 187, 190, 
	200, 210, 212, 216, 219, 229, 242, 246, 
	247, 258, 265, 275, 278, 288, 298, 300, 
	304, 307, 317, 330, 334, 335, 336, 347, 
	349, 352, 354, 355, 356, 357, 364, 374, 
	377, 387, 397, 399, 403, 406, 416, 429, 
	433, 435, 439, 443, 452, 462, 465, 475, 
	485, 487, 491, 494, 504, 517, 521, 525, 
	529, 530, 531, 532, 533, 544, 545, 556, 
	563, 573, 576, 586, 596, 598, 602, 605, 
	615, 628, 632, 634, 638, 642, 652, 653, 
	663, 666, 676, 686, 688, 692, 695, 705, 
	718, 722, 723, 734, 735, 746, 746, 746, 
	746, 746, 746, 746, 746, 746, 746
]

class << self
	attr_accessor :_bel_trans_keys
	private :_bel_trans_keys, :_bel_trans_keys=
end
self._bel_trans_keys = [
	95, 48, 57, 65, 90, 97, 122, 9, 
	32, 40, 95, 48, 57, 65, 90, 97, 
	122, 9, 32, 40, 9, 32, 34, 95, 
	48, 57, 65, 90, 97, 122, 9, 32, 
	34, 95, 48, 57, 65, 90, 97, 122, 
	34, 92, 9, 32, 41, 44, 9, 32, 
	44, 9, 32, 34, 95, 48, 57, 65, 
	90, 97, 122, 9, 32, 40, 41, 44, 
	58, 95, 48, 57, 65, 90, 97, 122, 
	9, 32, 41, 44, 9, 32, 9, 32, 
	33, 126, 9, 32, 33, 126, 9, 32, 
	40, 41, 9, 10, 32, 47, 47, 10, 
	10, 92, 9, 32, 41, 44, 95, 48, 
	57, 65, 90, 97, 122, 95, 48, 57, 
	65, 90, 97, 122, 10, 95, 48, 57, 
	65, 90, 97, 122, 34, 34, 92, 10, 
	92, 9, 32, 34, 95, 48, 57, 65, 
	90, 97, 122, 9, 32, 34, 95, 48, 
	57, 65, 90, 97, 122, 34, 92, 10, 
	92, 10, 95, 48, 57, 65, 90, 97, 
	122, 10, 58, 95, 48, 57, 65, 90, 
	97, 122, 95, 48, 57, 65, 90, 97, 
	122, 9, 32, 40, 95, 48, 57, 65, 
	90, 97, 122, 9, 32, 40, 9, 32, 
	34, 95, 48, 57, 65, 90, 97, 122, 
	9, 32, 34, 95, 48, 57, 65, 90, 
	97, 122, 34, 92, 9, 32, 41, 44, 
	9, 32, 44, 9, 32, 34, 95, 48, 
	57, 65, 90, 97, 122, 9, 32, 40, 
	41, 44, 58, 95, 48, 57, 65, 90, 
	97, 122, 9, 32, 41, 44, 92, 9, 
	32, 41, 44, 95, 48, 57, 65, 90, 
	97, 122, 95, 48, 57, 65, 90, 97, 
	122, 9, 32, 40, 95, 48, 57, 65, 
	90, 97, 122, 9, 32, 40, 9, 32, 
	34, 95, 48, 57, 65, 90, 97, 122, 
	9, 32, 34, 95, 48, 57, 65, 90, 
	97, 122, 34, 92, 9, 32, 41, 44, 
	9, 32, 44, 9, 32, 34, 95, 48, 
	57, 65, 90, 97, 122, 9, 32, 40, 
	41, 44, 58, 95, 48, 57, 65, 90, 
	97, 122, 9, 32, 41, 44, 10, 92, 
	9, 32, 41, 44, 95, 48, 57, 65, 
	90, 97, 122, 33, 126, 10, 33, 126, 
	10, 47, 47, 10, 10, 95, 48, 57, 
	65, 90, 97, 122, 9, 32, 40, 95, 
	48, 57, 65, 90, 97, 122, 9, 32, 
	40, 9, 32, 34, 95, 48, 57, 65, 
	90, 97, 122, 9, 32, 34, 95, 48, 
	57, 65, 90, 97, 122, 34, 92, 9, 
	32, 41, 44, 9, 32, 44, 9, 32, 
	34, 95, 48, 57, 65, 90, 97, 122, 
	9, 32, 40, 41, 44, 58, 95, 48, 
	57, 65, 90, 97, 122, 9, 32, 41, 
	44, 9, 32, 9, 32, 33, 126, 9, 
	32, 33, 126, 9, 32, 95, 48, 57, 
	65, 90, 97, 122, 9, 32, 40, 95, 
	48, 57, 65, 90, 97, 122, 9, 32, 
	40, 9, 32, 34, 95, 48, 57, 65, 
	90, 97, 122, 9, 32, 34, 95, 48, 
	57, 65, 90, 97, 122, 34, 92, 9, 
	32, 41, 44, 9, 32, 44, 9, 32, 
	34, 95, 48, 57, 65, 90, 97, 122, 
	9, 32, 40, 41, 44, 58, 95, 48, 
	57, 65, 90, 97, 122, 9, 32, 41, 
	44, 9, 10, 32, 47, 9, 10, 32, 
	47, 47, 10, 10, 92, 9, 32, 41, 
	44, 95, 48, 57, 65, 90, 97, 122, 
	92, 9, 32, 41, 44, 95, 48, 57, 
	65, 90, 97, 122, 95, 48, 57, 65, 
	90, 97, 122, 9, 32, 40, 95, 48, 
	57, 65, 90, 97, 122, 9, 32, 40, 
	9, 32, 34, 95, 48, 57, 65, 90, 
	97, 122, 9, 32, 34, 95, 48, 57, 
	65, 90, 97, 122, 34, 92, 9, 32, 
	41, 44, 9, 32, 44, 9, 32, 34, 
	95, 48, 57, 65, 90, 97, 122, 9, 
	32, 40, 41, 44, 58, 95, 48, 57, 
	65, 90, 97, 122, 9, 32, 41, 44, 
	9, 32, 9, 32, 33, 126, 9, 32, 
	33, 126, 9, 32, 40, 95, 48, 57, 
	65, 90, 97, 122, 41, 9, 32, 40, 
	95, 48, 57, 65, 90, 97, 122, 9, 
	32, 40, 9, 32, 34, 95, 48, 57, 
	65, 90, 97, 122, 9, 32, 34, 95, 
	48, 57, 65, 90, 97, 122, 34, 92, 
	9, 32, 41, 44, 9, 32, 44, 9, 
	32, 34, 95, 48, 57, 65, 90, 97, 
	122, 9, 32, 40, 41, 44, 58, 95, 
	48, 57, 65, 90, 97, 122, 9, 32, 
	41, 44, 92, 9, 32, 41, 44, 95, 
	48, 57, 65, 90, 97, 122, 92, 9, 
	32, 41, 44, 95, 48, 57, 65, 90, 
	97, 122, 0
]

class << self
	attr_accessor :_bel_single_lengths
	private :_bel_single_lengths, :_bel_single_lengths=
end
self._bel_single_lengths = [
	0, 1, 4, 3, 4, 4, 2, 4, 
	3, 4, 7, 4, 2, 2, 2, 3, 
	1, 4, 1, 1, 1, 1, 5, 1, 
	2, 1, 2, 1, 1, 4, 4, 2, 
	1, 1, 2, 3, 1, 4, 3, 4, 
	4, 2, 4, 3, 4, 7, 4, 1, 
	5, 1, 4, 3, 4, 4, 2, 4, 
	3, 4, 7, 4, 1, 1, 5, 0, 
	1, 2, 1, 1, 1, 1, 4, 3, 
	4, 4, 2, 4, 3, 4, 7, 4, 
	2, 2, 2, 3, 4, 3, 4, 4, 
	2, 4, 3, 4, 7, 4, 4, 4, 
	1, 1, 1, 1, 5, 1, 5, 1, 
	4, 3, 4, 4, 2, 4, 3, 4, 
	7, 4, 2, 2, 2, 4, 1, 4, 
	3, 4, 4, 2, 4, 3, 4, 7, 
	4, 1, 5, 1, 5, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0
]

class << self
	attr_accessor :_bel_range_lengths
	private :_bel_range_lengths, :_bel_range_lengths=
end
self._bel_range_lengths = [
	0, 3, 3, 0, 3, 3, 0, 0, 
	0, 3, 3, 0, 0, 1, 1, 0, 
	0, 0, 0, 0, 0, 0, 3, 3, 
	3, 0, 0, 0, 0, 3, 3, 0, 
	0, 0, 3, 3, 3, 3, 0, 3, 
	3, 0, 0, 0, 3, 3, 0, 0, 
	3, 3, 3, 0, 3, 3, 0, 0, 
	0, 3, 3, 0, 0, 0, 3, 1, 
	1, 0, 0, 0, 0, 3, 3, 0, 
	3, 3, 0, 0, 0, 3, 3, 0, 
	0, 1, 1, 3, 3, 0, 3, 3, 
	0, 0, 0, 3, 3, 0, 0, 0, 
	0, 0, 0, 0, 3, 0, 3, 3, 
	3, 0, 3, 3, 0, 0, 0, 3, 
	3, 0, 0, 1, 1, 3, 0, 3, 
	0, 3, 3, 0, 0, 0, 3, 3, 
	0, 0, 3, 0, 3, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0
]

class << self
	attr_accessor :_bel_index_offsets
	private :_bel_index_offsets, :_bel_index_offsets=
end
self._bel_index_offsets = [
	0, 0, 5, 13, 17, 25, 33, 36, 
	41, 45, 53, 64, 69, 72, 76, 80, 
	84, 86, 91, 93, 95, 97, 99, 108, 
	113, 119, 121, 124, 126, 128, 136, 144, 
	147, 149, 151, 157, 164, 169, 177, 181, 
	189, 197, 200, 205, 209, 217, 228, 233, 
	235, 244, 249, 257, 261, 269, 277, 280, 
	285, 289, 297, 308, 313, 315, 317, 326, 
	328, 331, 334, 336, 338, 340, 345, 353, 
	357, 365, 373, 376, 381, 385, 393, 404, 
	409, 412, 416, 420, 427, 435, 439, 447, 
	455, 458, 463, 467, 475, 486, 491, 496, 
	501, 503, 505, 507, 509, 518, 520, 529, 
	534, 542, 546, 554, 562, 565, 570, 574, 
	582, 593, 598, 601, 605, 609, 617, 619, 
	627, 631, 639, 647, 650, 655, 659, 667, 
	678, 683, 685, 694, 696, 705, 706, 707, 
	708, 709, 710, 711, 712, 713, 714
]

class << self
	attr_accessor :_bel_indicies
	private :_bel_indicies, :_bel_indicies=
end
self._bel_indicies = [
	1, 1, 1, 1, 0, 2, 2, 3, 
	4, 4, 4, 4, 0, 5, 5, 7, 
	6, 9, 9, 10, 11, 11, 11, 11, 
	8, 9, 9, 10, 13, 13, 13, 13, 
	12, 15, 16, 14, 18, 18, 19, 20, 
	17, 21, 21, 22, 6, 22, 22, 10, 
	11, 11, 11, 11, 8, 23, 23, 24, 
	25, 26, 28, 27, 27, 27, 27, 0, 
	21, 21, 29, 22, 6, 30, 30, 6, 
	31, 31, 32, 6, 33, 33, 34, 6, 
	35, 35, 36, 6, 37, 6, 37, 38, 
	37, 39, 6, 40, 6, 6, 41, 43, 
	42, 16, 14, 23, 23, 25, 26, 44, 
	44, 44, 44, 0, 46, 46, 46, 46, 
	45, 47, 48, 48, 48, 48, 45, 50, 
	49, 52, 53, 51, 54, 49, 53, 51, 
	55, 55, 56, 57, 57, 57, 57, 8, 
	55, 55, 56, 58, 58, 58, 58, 12, 
	60, 61, 59, 62, 17, 61, 59, 63, 
	64, 64, 64, 64, 0, 63, 66, 65, 
	65, 65, 65, 0, 67, 67, 67, 67, 
	0, 68, 68, 69, 70, 70, 70, 70, 
	0, 71, 71, 72, 6, 73, 73, 74, 
	75, 75, 75, 75, 8, 73, 73, 74, 
	76, 76, 76, 76, 12, 78, 79, 77, 
	80, 80, 81, 82, 17, 83, 83, 84, 
	6, 84, 84, 74, 75, 75, 75, 75, 
	8, 85, 85, 86, 87, 88, 90, 89, 
	89, 89, 89, 0, 83, 83, 91, 84, 
	6, 79, 77, 85, 85, 87, 88, 92, 
	92, 92, 92, 0, 93, 93, 93, 93, 
	0, 94, 94, 95, 96, 96, 96, 96, 
	0, 97, 97, 98, 6, 99, 99, 100, 
	101, 101, 101, 101, 8, 99, 99, 100, 
	102, 102, 102, 102, 12, 104, 105, 103, 
	106, 106, 107, 108, 17, 109, 109, 110, 
	6, 110, 110, 100, 101, 101, 101, 101, 
	8, 111, 111, 112, 113, 114, 116, 115, 
	115, 115, 115, 0, 109, 109, 117, 110, 
	6, 118, 6, 105, 103, 111, 111, 113, 
	114, 119, 119, 119, 119, 0, 120, 6, 
	121, 122, 6, 123, 124, 6, 125, 6, 
	6, 126, 128, 127, 129, 129, 129, 129, 
	0, 130, 130, 131, 132, 132, 132, 132, 
	0, 133, 133, 134, 6, 135, 135, 136, 
	137, 137, 137, 137, 8, 135, 135, 136, 
	138, 138, 138, 138, 12, 140, 141, 139, 
	142, 142, 143, 144, 17, 145, 145, 146, 
	6, 146, 146, 136, 137, 137, 137, 137, 
	8, 147, 147, 148, 149, 150, 152, 151, 
	151, 151, 151, 0, 145, 145, 153, 146, 
	6, 154, 154, 6, 155, 155, 156, 6, 
	157, 157, 158, 6, 159, 159, 160, 160, 
	160, 160, 0, 161, 161, 162, 163, 163, 
	163, 163, 0, 164, 164, 165, 6, 166, 
	166, 167, 168, 168, 168, 168, 8, 166, 
	166, 167, 169, 169, 169, 169, 12, 171, 
	172, 170, 173, 173, 174, 175, 17, 176, 
	176, 177, 6, 177, 177, 167, 168, 168, 
	168, 168, 8, 178, 178, 179, 180, 181, 
	183, 182, 182, 182, 182, 0, 176, 176, 
	184, 177, 6, 185, 186, 185, 187, 6, 
	188, 189, 188, 190, 6, 191, 6, 6, 
	192, 194, 193, 172, 170, 178, 178, 180, 
	181, 195, 195, 195, 195, 0, 141, 139, 
	147, 147, 149, 150, 196, 196, 196, 196, 
	0, 197, 197, 197, 197, 0, 198, 198, 
	199, 200, 200, 200, 200, 0, 201, 201, 
	202, 6, 203, 203, 204, 205, 205, 205, 
	205, 8, 203, 203, 204, 206, 206, 206, 
	206, 12, 208, 209, 207, 210, 210, 211, 
	212, 17, 213, 213, 214, 6, 214, 214, 
	204, 205, 205, 205, 205, 8, 215, 215, 
	216, 217, 218, 220, 219, 219, 219, 219, 
	0, 213, 213, 221, 214, 6, 222, 222, 
	6, 223, 223, 224, 6, 225, 225, 226, 
	6, 227, 227, 228, 229, 229, 229, 229, 
	0, 230, 6, 231, 231, 232, 233, 233, 
	233, 233, 0, 234, 234, 235, 6, 236, 
	236, 237, 238, 238, 238, 238, 8, 236, 
	236, 237, 239, 239, 239, 239, 12, 241, 
	242, 240, 243, 243, 244, 245, 17, 246, 
	246, 247, 6, 247, 247, 237, 238, 238, 
	238, 238, 8, 248, 248, 249, 250, 251, 
	253, 252, 252, 252, 252, 0, 246, 246, 
	254, 247, 6, 242, 240, 248, 248, 250, 
	251, 255, 255, 255, 255, 0, 209, 207, 
	215, 215, 217, 218, 256, 256, 256, 256, 
	0, 6, 6, 6, 6, 6, 6, 6, 
	6, 6, 6, 0
]

class << self
	attr_accessor :_bel_trans_targs
	private :_bel_trans_targs, :_bel_trans_targs=
end
self._bel_trans_targs = [
	0, 2, 3, 4, 2, 3, 0, 4, 
	0, 5, 6, 10, 0, 22, 6, 7, 
	21, 0, 8, 12, 9, 8, 9, 8, 
	11, 12, 9, 10, 5, 12, 13, 13, 
	14, 15, 14, 15, 16, 17, 133, 18, 
	19, 20, 20, 133, 22, 0, 24, 134, 
	24, 0, 26, 26, 27, 28, 135, 30, 
	31, 35, 34, 31, 32, 33, 136, 136, 
	34, 35, 30, 37, 38, 39, 37, 38, 
	39, 40, 41, 45, 48, 41, 42, 47, 
	43, 137, 44, 43, 44, 43, 46, 137, 
	44, 45, 40, 137, 48, 50, 51, 52, 
	50, 51, 52, 53, 54, 58, 62, 54, 
	55, 61, 56, 60, 57, 56, 57, 56, 
	59, 60, 57, 58, 53, 60, 138, 62, 
	64, 139, 64, 140, 66, 67, 68, 68, 
	140, 70, 71, 72, 70, 71, 72, 73, 
	74, 78, 102, 74, 75, 101, 76, 80, 
	77, 76, 77, 76, 79, 80, 77, 78, 
	73, 80, 81, 81, 82, 83, 82, 83, 
	84, 85, 86, 84, 85, 86, 87, 88, 
	92, 100, 88, 89, 99, 90, 94, 91, 
	90, 91, 90, 93, 94, 91, 92, 87, 
	94, 95, 141, 96, 95, 141, 96, 97, 
	98, 98, 141, 100, 102, 104, 105, 106, 
	104, 105, 106, 107, 108, 112, 132, 108, 
	109, 131, 110, 114, 111, 110, 111, 110, 
	113, 114, 111, 112, 107, 114, 115, 115, 
	116, 117, 116, 117, 118, 119, 142, 120, 
	121, 119, 120, 121, 122, 123, 127, 130, 
	123, 124, 129, 125, 142, 126, 125, 126, 
	125, 128, 142, 126, 127, 122, 142, 130, 
	132
]

class << self
	attr_accessor :_bel_trans_actions
	private :_bel_trans_actions, :_bel_trans_actions=
end
self._bel_trans_actions = [
	3, 163, 47, 106, 38, 0, 0, 9, 
	56, 0, 59, 122, 65, 35, 5, 5, 
	5, 7, 114, 114, 114, 0, 0, 102, 
	50, 102, 102, 38, 44, 0, 92, 0, 
	71, 77, 15, 0, 29, 0, 33, 0, 
	0, 80, 19, 89, 1, 53, 35, 41, 
	1, 68, 59, 5, 5, 5, 62, 0, 
	59, 35, 35, 5, 5, 5, 110, 98, 
	1, 1, 44, 143, 47, 106, 38, 0, 
	9, 0, 59, 122, 35, 5, 5, 5, 
	114, 132, 114, 0, 0, 102, 50, 127, 
	102, 38, 44, 11, 1, 137, 47, 106, 
	38, 0, 9, 0, 59, 122, 35, 5, 
	5, 5, 114, 114, 114, 0, 0, 102, 
	50, 102, 102, 38, 44, 0, 13, 1, 
	71, 74, 15, 21, 0, 0, 80, 19, 
	83, 137, 47, 106, 38, 0, 9, 0, 
	59, 122, 35, 5, 5, 5, 114, 114, 
	114, 0, 0, 102, 50, 102, 102, 38, 
	44, 0, 23, 0, 71, 17, 15, 0, 
	137, 47, 106, 38, 0, 9, 0, 59, 
	122, 35, 5, 5, 5, 114, 114, 114, 
	0, 0, 102, 50, 102, 102, 38, 44, 
	0, 25, 95, 25, 0, 27, 0, 0, 
	80, 19, 86, 1, 1, 170, 47, 106, 
	38, 0, 9, 0, 59, 122, 35, 5, 
	5, 5, 114, 114, 114, 0, 0, 102, 
	50, 102, 102, 38, 44, 0, 92, 0, 
	71, 77, 15, 0, 29, 137, 31, 47, 
	106, 38, 0, 9, 0, 59, 122, 35, 
	5, 5, 5, 114, 156, 114, 0, 0, 
	102, 50, 149, 102, 38, 44, 118, 1, 
	1
]

class << self
	attr_accessor :_bel_eof_actions
	private :_bel_eof_actions, :_bel_eof_actions=
end
self._bel_eof_actions = [
	0, 3, 3, 0, 56, 65, 7, 7, 
	0, 56, 3, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 7, 3, 53, 
	53, 68, 68, 68, 68, 56, 65, 7, 
	7, 7, 3, 3, 3, 3, 0, 56, 
	65, 7, 7, 0, 56, 3, 0, 7, 
	3, 3, 3, 0, 56, 65, 7, 7, 
	0, 56, 3, 0, 0, 7, 3, 0, 
	0, 0, 0, 0, 0, 3, 3, 0, 
	56, 65, 7, 7, 0, 56, 3, 0, 
	0, 0, 0, 3, 3, 0, 56, 65, 
	7, 7, 0, 56, 3, 0, 0, 0, 
	0, 0, 0, 7, 3, 7, 3, 3, 
	3, 0, 56, 65, 7, 7, 0, 56, 
	3, 0, 0, 0, 0, 3, 0, 3, 
	0, 56, 65, 7, 7, 0, 56, 3, 
	0, 7, 3, 7, 3, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0
]

class << self
	attr_accessor :bel_start
end
self.bel_start = 1;
class << self
	attr_accessor :bel_first_final
end
self.bel_first_final = 133;
class << self
	attr_accessor :bel_error
end
self.bel_error = 0;

class << self
	attr_accessor :bel_en_ident
end
self.bel_en_ident = 23;
class << self
	attr_accessor :bel_en_string
end
self.bel_en_string = 25;
class << self
	attr_accessor :bel_en_bel_parameter
end
self.bel_en_bel_parameter = 29;
class << self
	attr_accessor :bel_en_inner_term
end
self.bel_en_inner_term = 36;
class << self
	attr_accessor :bel_en_term
end
self.bel_en_term = 49;
class << self
	attr_accessor :bel_en_relationship
end
self.bel_en_relationship = 63;
class << self
	attr_accessor :bel_en_comment
end
self.bel_en_comment = 65;
class << self
	attr_accessor :bel_en_statement_simple
end
self.bel_en_statement_simple = 69;
class << self
	attr_accessor :bel_en_inner_statement
end
self.bel_en_inner_statement = 103;
class << self
	attr_accessor :bel_en_statement_nested
end
self.bel_en_statement_nested = 1;


      # end: ragel        
          end

          def each
            @buffers = {}
            eof      = :ignored
            stack    = []
            data     = @content.unpack('C*')
            p        = 0
            pe       = data.length
            eof      = data.length

      # begin: ragel        
            
begin
	p ||= 0
	pe ||= data.length
	cs = bel_start
	top = 0
end

            
begin
	_klen, _trans, _keys, _acts, _nacts = nil
	_goto_level = 0
	_resume = 10
	_eof_trans = 15
	_again = 20
	_test_eof = 30
	_out = 40
	while true
	_trigger_goto = false
	if _goto_level <= 0
	if p == pe
		_goto_level = _test_eof
		next
	end
	if cs == 0
		_goto_level = _out
		next
	end
	end
	if _goto_level <= _resume
	_keys = _bel_key_offsets[cs]
	_trans = _bel_index_offsets[cs]
	_klen = _bel_single_lengths[cs]
	_break_match = false
	
	begin
	  if _klen > 0
	     _lower = _keys
	     _upper = _keys + _klen - 1

	     loop do
	        break if _upper < _lower
	        _mid = _lower + ( (_upper - _lower) >> 1 )

	        if data[p].ord < _bel_trans_keys[_mid]
	           _upper = _mid - 1
	        elsif data[p].ord > _bel_trans_keys[_mid]
	           _lower = _mid + 1
	        else
	           _trans += (_mid - _keys)
	           _break_match = true
	           break
	        end
	     end # loop
	     break if _break_match
	     _keys += _klen
	     _trans += _klen
	  end
	  _klen = _bel_range_lengths[cs]
	  if _klen > 0
	     _lower = _keys
	     _upper = _keys + (_klen << 1) - 2
	     loop do
	        break if _upper < _lower
	        _mid = _lower + (((_upper-_lower) >> 1) & ~1)
	        if data[p].ord < _bel_trans_keys[_mid]
	          _upper = _mid - 2
	        elsif data[p].ord > _bel_trans_keys[_mid+1]
	          _lower = _mid + 2
	        else
	          _trans += ((_mid - _keys) >> 1)
	          _break_match = true
	          break
	        end
	     end # loop
	     break if _break_match
	     _trans += _klen
	  end
	end while false
	_trans = _bel_indicies[_trans]
	cs = _bel_trans_targs[_trans]
	if _bel_trans_actions[_trans] != 0
		_acts = _bel_trans_actions[_trans]
		_nacts = _bel_actions[_acts]
		_acts += 1
		while _nacts > 0
			_nacts -= 1
			_acts += 1
			case _bel_actions[_acts - 1]
when 0 then
		begin

    @buffers[:ident] = []
  		end
when 1 then
		begin

    (@buffers[:ident] ||= []) << data[p].ord
  		end
when 2 then
		begin

    @buffers[:ident] = s(:identifier,
                         utf8_string(@buffers[:ident]))
  		end
when 3 then
		begin

    yield @buffers[:ident]
  		end
when 4 then
		begin

    unless @buffers[:ident].is_a?(::AST::Node)
      @buffers[:ident] ||= []
      @buffers[:ident]   = s(:identifier,
                             utf8_string(@buffers[:ident]).sub(/\n$/, ''))
    end
  		end
when 5 then
		begin

    @buffers[:ident] ||= []
    yield @buffers[:ident]
  		end
when 6 then
		begin

    @buffers[:string] = []
  		end
when 7 then
		begin

    (@buffers[:string] ||= []) << data[p].ord
  		end
when 8 then
		begin

    @buffers[:string] = s(:string,
                          utf8_string(@buffers[:string]))
  		end
when 9 then
		begin

    @buffers[:string] ||= []
    @buffers[:string] = s(:string,
                          utf8_string(@buffers[:string]).sub(/\n$/, ''))
  		end
when 10 then
		begin

    yield @buffers[:string]
  		end
when 11 then
		begin

    @buffers[:string] ||= []
    yield @buffers[:string]
  		end
when 12 then
		begin

    @parameter = s(:parameter,
                   s(:prefix, @buffers[:ident]))
  		end
when 13 then
		begin

    @parameter ||= s(:parameter, s(:prefix, nil))
    @parameter   = @parameter << s(:value, @buffers[:string])
  		end
when 14 then
		begin

    @parameter ||= s(:parameter, s(:prefix, nil))
    @parameter   = @parameter << s(:value, @buffers[:ident])
  		end
when 15 then
		begin

    yield @parameter
  		end
when 16 then
		begin

    @buffers[:function] = []
  		end
when 17 then
		begin

    @buffers[:function] << data[p].ord
  		end
when 18 then
		begin

    @buffers[:function] = s(:identifier,
                            utf8_string(@buffers[:function]))
  		end
when 19 then
		begin

    @buffers[:term_stack] = [ s(:term) ]
  		end
when 20 then
		begin

    @buffers[:term_stack] << s(:term)
  		end
when 21 then
		begin

    fx                        = @buffers[:function]
    @buffers[:term_stack][-1] = @buffers[:term_stack][-1] << s(:function, fx)
  		end
when 22 then
		begin

    @buffers[:term_stack][-1] = @buffers[:term_stack][-1] << s(:argument, @parameter)
    @parameter                = nil
  		end
when 23 then
		begin

    p -= @buffers[:function].length + 1
    	begin
		stack[top] = cs
		top+= 1
		cs = 36
		_trigger_goto = true
		_goto_level = _again
		break
	end

  		end
when 24 then
		begin

    inner_term = @buffers[:term_stack].pop
    @buffers[:term_stack][-1] = @buffers[:term_stack][-1] << s(:argument, inner_term)
    	begin
		top -= 1
		cs = stack[top]
		_trigger_goto = true
		_goto_level = _again
		break
	end

  		end
when 25 then
		begin

    yield @buffers[:term_stack][-1]
  		end
when 26 then
		begin

    @buffers[:relationship] = []
  		end
when 27 then
		begin

    @buffers[:relationship] << data[p].ord
  		end
when 28 then
		begin

    @buffers[:relationship] = s(:relationship,
                                utf8_string(@buffers[:relationship]))
  		end
when 29 then
		begin

    yield @buffers[:relationship]
  		end
when 30 then
		begin

    @buffers[:comment] = []
  		end
when 31 then
		begin

    @buffers[:comment] << data[p].ord
  		end
when 32 then
		begin

    @buffers[:comment] = s(:comment,
                           utf8_string(@buffers[:comment]))
  		end
when 33 then
		begin

    yield @buffers[:comment] || s(:comment, nil)
  		end
when 34 then
		begin

    @buffers[:subject]    = s(:subject,
                              @buffers[:term_stack][-1])
    @buffers[:term_stack] = nil
  		end
when 35 then
		begin

    @buffers[:object]     = s(:object,
                              @buffers[:term_stack][-1])
    @buffers[:term_stack] = nil
  		end
when 36 then
		begin

    @buffers[:comment] ||= s(:comment, nil)
    yield s(:statement_simple,
            s(:statement,
              @buffers[:subject],
              @buffers[:relationship],
              @buffers[:object],
              @buffers[:comment]))
  		end
when 37 then
		begin

    @buffers[:statement_stack] = [ s(:statement) ]
  		end
when 38 then
		begin

    @buffers[:statement_stack] << s(:statement)
  		end
when 39 then
		begin

    @buffers[:statement_stack][-1] = @buffers[:statement_stack][-1] << @buffers[:subject]
  		end
when 40 then
		begin

    @buffers[:statement_stack][-1] = @buffers[:statement_stack][-1] << @buffers[:relationship]
  		end
when 41 then
		begin

    @buffers[:statement_stack][-1] = @buffers[:statement_stack][-1] << s(:object, @buffers[:object])
  		end
when 42 then
		begin

    	begin
		stack[top] = cs
		top+= 1
		cs = 103
		_trigger_goto = true
		_goto_level = _again
		break
	end

  		end
when 43 then
		begin

    inner_statement = @buffers[:statement_stack].pop
    @buffers[:object] = inner_statement
    @buffers[:statement_stack][-1] = @buffers[:statement_stack][-1] << s(:object, inner_statement)
    	begin
		top -= 1
		cs = stack[top]
		_trigger_goto = true
		_goto_level = _again
		break
	end

  		end
when 44 then
		begin

    yield s(:nested_statement, @buffers[:statement_stack][-1])
  		end
			end # action switch
		end
	end
	if _trigger_goto
		next
	end
	end
	if _goto_level <= _again
	if cs == 0
		_goto_level = _out
		next
	end
	p += 1
	if p != pe
		_goto_level = _resume
		next
	end
	end
	if _goto_level <= _test_eof
	if p == eof
	__acts = _bel_eof_actions[cs]
	__nacts =  _bel_actions[__acts]
	__acts += 1
	while __nacts > 0
		__nacts -= 1
		__acts += 1
		case _bel_actions[__acts - 1]
when 4 then
		begin

    unless @buffers[:ident].is_a?(::AST::Node)
      @buffers[:ident] ||= []
      @buffers[:ident]   = s(:identifier,
                             utf8_string(@buffers[:ident]).sub(/\n$/, ''))
    end
  		end
when 5 then
		begin

    @buffers[:ident] ||= []
    yield @buffers[:ident]
  		end
when 9 then
		begin

    @buffers[:string] ||= []
    @buffers[:string] = s(:string,
                          utf8_string(@buffers[:string]).sub(/\n$/, ''))
  		end
when 11 then
		begin

    @buffers[:string] ||= []
    yield @buffers[:string]
  		end
		end # eof action switch
	end
	if _trigger_goto
		next
	end
end
	end
	if _goto_level <= _out
		break
	end
	end
	end

      # end: ragel        
          end
        end
      end
    end
  end
end

if __FILE__ == $0
  $stdin.each_line do |line|
    BEL::Parsers::BELExpression::StatementNested.parse(line) { |obj|
      puts obj.inspect
    }
  end
end

# vim: ft=ruby ts=2 sw=2:
# encoding: utf-8
