/* This file is generated, do not edit! */
package tensorflow.python.ops.distributions.categorical;
@:pythonImport("tensorflow.python.ops.distributions.categorical") extern class Categorical_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Broadcasts the event or distribution parameters.
	**/
	static public function _broadcast_cat_event_and_params(event:Dynamic, params:Dynamic, base_dtype:Dynamic):Dynamic;
	/**
		Calculate the batched KL divergence KL(a || b) with a and b Categorical.
		
		Args:
		  a: instance of a Categorical distribution object.
		  b: instance of a Categorical distribution object.
		  name: (optional) Name to use for created operations.
		    default is "kl_categorical_categorical".
		
		Returns:
		  Batchwise KL(a || b)
	**/
	static public function _kl_categorical_categorical(a:Dynamic, b:Dynamic, ?name:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}