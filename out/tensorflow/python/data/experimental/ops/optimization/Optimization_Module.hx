/* This file is generated, do not edit! */
package tensorflow.python.data.experimental.ops.optimization;
@:pythonImport("tensorflow.python.data.experimental.ops.optimization") extern class Optimization_Module {
	static public var AUTOTUNE : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		A transformation that asserts which transformations happen next.
		
		Args:
		  transformations: A `tf.string` vector `tf.Tensor` identifying the
		    transformations that are expected to happen next.
		
		Returns:
		  A `Dataset` transformation function, which can be passed to
		  `tf.data.Dataset.apply`.
	**/
	static public function assert_next(transformations:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		A transformation that models performance.
		
		Returns:
		  A `Dataset` transformation function, which can be passed to
		  `tf.data.Dataset.apply`.
	**/
	static public function model():Dynamic;
	/**
		A transformation that applies optimizations.
		
		Args:
		  optimizations: (Optional.) A `tf.string` vector `tf.Tensor` identifying
		    optimizations to use. If not specified, the default set of optimizations
		    is applied.
		
		Returns:
		  A `Dataset` transformation function, which can be passed to
		  `tf.data.Dataset.apply`.
	**/
	static public function optimize(?optimizations:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}