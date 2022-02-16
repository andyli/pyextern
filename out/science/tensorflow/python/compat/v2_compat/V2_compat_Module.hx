/* This file is generated, do not edit! */
package tensorflow.python.compat.v2_compat;
@:pythonImport("tensorflow.python.compat.v2_compat") extern class V2_compat_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _v2_behavior_usage_gauge : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Disables TensorFlow 2.x behaviors.
		
		This function can be called at the beginning of the program (before `Tensors`,
		`Graphs` or other structures have been created, and before devices have been
		initialized. It switches all global behaviors that are different between
		TensorFlow 1.x and 2.x to behave as intended for 1.x.
		
		User can call this function to disable 2.x behavior during complex migrations.
		
		@compatibility(TF2)
		Using this function indicates that your software is not compatible
		with eager execution and `tf.function` in TF2.
		
		To migrate to TF2, rewrite your code to be compatible with eager execution.
		Please refer to the [migration guide]
		(https://www.tensorflow.org/guide/migrate) for additional resource on the
		topic.
		@end_compatibility
	**/
	static public function disable_v2_behavior():Dynamic;
	static public var division : Dynamic;
	/**
		Enables TensorFlow 2.x behaviors.
		
		This function can be called at the beginning of the program (before `Tensors`,
		`Graphs` or other structures have been created, and before devices have been
		initialized. It switches all global behaviors that are different between
		TensorFlow 1.x and 2.x to behave as intended for 2.x.
		
		This function is called in the main TensorFlow `__init__.py` file, user should
		not need to call it, except during complex migrations.
		
		@compatibility(TF2)
		This function is not necessary if you are using TF2. V2 behavior is enabled by
		default.
		@end_compatibility
	**/
	static public function enable_v2_behavior():Dynamic;
	static public var print_function : Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}