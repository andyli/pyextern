/* This file is generated, do not edit! */
package tensorflow.python.data.util.random_seed;
@:pythonImport("tensorflow.python.data.util.random_seed") extern class Random_seed_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Returns the local seeds an operation should use given an op-specific seed.
		
		See `random_seed.get_seed` for more details. This wrapper adds support for
		the case where `seed` may be a tensor.
		
		Args:
		  seed: An integer or a `tf.int64` scalar tensor.
		
		Returns:
		  A tuple of two `tf.int64` scalar tensors that should be used for the local
		  seed of the calling dataset.
	**/
	static public function get_seed(seed:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}