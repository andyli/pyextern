/* This file is generated, do not edit! */
package tensorflow.python.autograph.core.ag_ctx;
@:pythonImport("tensorflow.python.autograph.core.ag_ctx") extern class Ag_ctx_Module {
	static public var INSPECT_SOURCE_SUPPORTED : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _control_ctx():Dynamic;
	static public function _default_control_status_ctx():Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Returns the current control context for autograph.
		
		This method is useful when calling `tf.__internal__.autograph.tf_convert`,
		The context will be used by tf_convert to determine whether it should convert
		the input function. See the sample usage like below:
		
		```
		def foo(func):
		  return tf.__internal__.autograph.tf_convert(
		     input_fn, ctx=tf.__internal__.autograph.control_status_ctx())()
		```
		
		Returns:
		  The current control context of autograph.
	**/
	static public function control_status_ctx():Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	static public var stacks : Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}