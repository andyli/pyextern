/* This file is generated, do not edit! */
package tensorflow.compat.v1.compat.v2.keras.mixed_precision.experimental;
@:pythonImport("tensorflow.compat.v1.compat.v2.keras.mixed_precision.experimental") extern class Experimental_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Returns the dtype policy of a layer.
		
		Warning: This function is deprecated. Use
		`tf.keras.layers.Layer.dtype_policy` instead.
		
		Args:
		  layer: A `tf.keras.layers.Layer`.
		
		Returns:
		  The `tf.keras.mixed_precision.Policy` of the layer.
	**/
	static public function get_layer_policy(layer:Dynamic):Dynamic;
	/**
		Returns the global dtype policy.
		
		The global policy is the default `tf.keras.mixed_precision.Policy` used for
		layers, if no policy is passed to the layer constructor. If no policy has been
		set with `keras.mixed_precision.set_global_policy`, this will return a policy
		constructed from `tf.keras.backend.floatx()` (floatx defaults to float32).
		
		>>> tf.keras.mixed_precision.global_policy()
		<Policy "float32">
		>>> tf.keras.layers.Dense(10).dtype_policy  # Defaults to the global policy
		<Policy "float32">
		
		If TensorFlow 2 behavior has been disabled with
		`tf.compat.v1.disable_v2_behavior()`, this will instead return a special
		"_infer" policy which infers the dtype from the dtype of the first input the
		first time the layer is called. This behavior matches the behavior that
		existed in TensorFlow 1.
		
		See `tf.keras.mixed_precision.Policy` for more information on policies.
		
		Returns:
		  The global Policy.
	**/
	static public function global_policy():Dynamic;
	/**
		Sets the global dtype policy.
		
		The global policy is the default `tf.keras.mixed_precision.Policy` used for
		layers, if no policy is passed to the layer constructor.
		
		>>> tf.keras.mixed_precision.set_global_policy('mixed_float16')
		>>> tf.keras.mixed_precision.global_policy()
		<Policy "mixed_float16">
		>>> tf.keras.layers.Dense(10).dtype_policy
		<Policy "mixed_float16">
		>>> # Global policy is not used if a policy is directly passed to constructor
		>>> tf.keras.layers.Dense(10, dtype='float64').dtype_policy
		<Policy "float64">
		>>> tf.keras.mixed_precision.set_global_policy('float32')
		
		If no global policy is set, layers will instead default to a Policy
		constructed from `tf.keras.backend.floatx()`.
		
		To use mixed precision, the global policy should be set to `'mixed_float16'`
		or `'mixed_bfloat16'`, so that every layer uses a 16-bit compute dtype and
		float32 variable dtype by default.
		
		Only floating point policies can be set as the global policy, such as
		`'float32'` and `'mixed_float16'`. Non-floating point policies such as
		`'int32'` and `'complex64'` cannot be set as the global policy because most
		layers do not support such policies.
		
		See `tf.keras.mixed_precision.Policy` for more information.
		
		Args:
		  policy: A Policy, or a string that will be converted to a Policy. Can also
		    be None, in which case the global policy will be constructed from
		    `tf.keras.backend.floatx()`
	**/
	static public function set_policy(policy:Dynamic):Dynamic;
}