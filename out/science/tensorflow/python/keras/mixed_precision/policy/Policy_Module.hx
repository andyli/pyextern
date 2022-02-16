/* This file is generated, do not edit! */
package tensorflow.python.keras.mixed_precision.policy;
@:pythonImport("tensorflow.python.keras.mixed_precision.policy") extern class Policy_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _check_if_mixed_precision_graph_rewrite_is_enabled(policy:Dynamic):Dynamic;
	static public var _global_policy : Dynamic;
	static public function _is_convertible_to_dtype(dtype:Dynamic):Dynamic;
	/**
		Returns True if the Policy is equivalent to a single dtype.
		
		A policy is equivalent to a single dtype if the policy's compute and variable
		dtypes are the same and the policy's type is Policy and not a subclass of
		Policy (such as PolicyV1).
		
		The "_infer" policy is considered equivalent to a single dtype.
		
		Args:
		  policy: A Policy.
		
		Returns:
		  True, if the policy is equivalent to a single dtype.
	**/
	static public function _policy_equivalent_to_dtype(policy:Dynamic):Dynamic;
	static public function deserialize(config:Dynamic, ?custom_objects:Dynamic):Dynamic;
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
	static public function keras_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		A context manager that sets the global Policy under it.
		
		Args:
		  policy: A Policy, or a string that will be converted to a Policy..
		
		Yields:
		  Nothing.
	**/
	static public function policy_scope(policy:Dynamic):Dynamic;
	static public function serialize(policy:Dynamic):Dynamic;
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
	static public function set_global_policy(policy:Dynamic):Dynamic;
}