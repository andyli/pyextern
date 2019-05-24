/* This file is generated, do not edit! */
package tensorflow._api.v1.experimental;
@:pythonImport("tensorflow._api.v1.experimental") extern class Experimental_Module {
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
		Context manager for setting the executor of eagar defined functions.
		
		Eager defined functions are functions decorated by tf.contrib.eager.defun.
		
		Args:
		  executor_type: a string for the name of the executor to be used
		  to execute functions defined by tf.contrib.eager.defun.
		
		Returns:
		  Context manager for setting the executor of eager defined functions.
	**/
	static public function function_executor_type(executor_type:Dynamic):Dynamic;
}