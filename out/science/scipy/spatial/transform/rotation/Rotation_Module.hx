/* This file is generated, do not edit! */
package scipy.spatial.transform.rotation;
@:pythonImport("scipy.spatial.transform.rotation") extern class Rotation_Module {
	/**
		Turn `seed` into a `np.random.RandomState` instance.
		
		Parameters
		----------
		seed : {None, int, `numpy.random.Generator`,
		        `numpy.random.RandomState`}, optional
		
		    If `seed` is None (or `np.random`), the `numpy.random.RandomState`
		    singleton is used.
		    If `seed` is an int, a new ``RandomState`` instance is used,
		    seeded with `seed`.
		    If `seed` is already a ``Generator`` or ``RandomState`` instance then
		    that instance is used.
		
		Returns
		-------
		seed : {`numpy.random.Generator`, `numpy.random.RandomState`}
		    Random number generator.
	**/
	static public function check_random_state(seed:Dynamic):Dynamic;
	static public function create_group(cls:Dynamic, group:Dynamic, ?axis:Dynamic):Dynamic;
}