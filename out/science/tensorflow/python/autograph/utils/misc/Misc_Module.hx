/* This file is generated, do not edit! */
package tensorflow.python.autograph.utils.misc;
@:pythonImport("tensorflow.python.autograph.utils.misc") extern class Misc_Module {
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
		Wraps any Tensor arguments with an identity op.
		
		Any other argument, including Variables, is returned unchanged.
		
		Args:
		  *args: Any arguments. Must contain at least one element.
		
		Returns:
		  Same as *args, with Tensor instances replaced as described.
		
		Raises:
		  ValueError: If args doesn't meet the requirements.
	**/
	static public function alias_tensors(?args:python.VarArgs<Dynamic>):Dynamic;
	static public var division : Dynamic;
	static public function get_range_len(start:Dynamic, limit:Dynamic, delta:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}