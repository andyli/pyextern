/* This file is generated, do not edit! */
package tensorflow.compat.v1.lite.experimental.authoring;
@:pythonImport("tensorflow.compat.v1.lite.experimental.authoring") extern class Authoring_Module {
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
		Wraps `tf.function` into a callable function with TFLite compatibility checking.
		
		Example:
		
		```python
		@tf.lite.experimental.authoring.compatible
		@tf.function(input_signature=[
		    tf.TensorSpec(shape=[None], dtype=tf.float32)
		])
		def f(x):
		    return tf.cosh(x)
		
		result = f(tf.constant([0.0]))
		# COMPATIBILITY WARNING: op 'tf.Cosh' require(s) "Select TF Ops" for model
		# conversion for TensorFlow Lite.
		# Op: tf.Cosh
		#   - tensorflow/python/framework/op_def_library.py:748
		#   - tensorflow/python/ops/gen_math_ops.py:2458
		#   - <stdin>:6
		```
		
		WARNING: Experimental interface, subject to change.
		
		Args:
		  target: A `tf.function` to decorate.
		  converter_target_spec : target_spec of TFLite converter parameter.
		  **kwargs: The keyword arguments of the decorator class _Compatible.
		
		Returns:
		   A callable object of `tf.lite.experimental.authoring._Compatible`.
	**/
	static public function compatible(?target:Dynamic, ?converter_target_spec:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}