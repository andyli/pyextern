/* This file is generated, do not edit! */
package scipy.spatial.transform.rotation;
@:pythonImport("scipy.spatial.transform.rotation") extern class Rotation_Module {
	static public var _AXIS_TO_IND : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _compose_quat(p:Dynamic, q:Dynamic):Dynamic;
	static public function _compute_euler_from_dcm(dcm:Dynamic, seq:Dynamic, ?extrinsic:Dynamic):Dynamic;
	static public function _elementary_basis_vector(axis:Dynamic):Dynamic;
	static public function _elementary_quat_compose(seq:Dynamic, angles:Dynamic, ?intrinsic:Dynamic):Dynamic;
	static public function _make_elementary_quat(axis:Dynamic, angles:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Turn seed into a np.random.RandomState instance
		
		If seed is None (or np.random), return the RandomState singleton used
		by np.random.
		If seed is an int, return a new RandomState instance seeded with seed.
		If seed is already a RandomState instance, return it.
		Otherwise raise ValueError.
	**/
	static public function check_random_state(seed:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}