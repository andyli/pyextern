/* This file is generated, do not edit! */
package torch.onnx.symbolic_registry;
@:pythonImport("torch.onnx.symbolic_registry") extern class Symbolic_registry_Module {
	static public function Any(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function Dict(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Tuple type; Tuple[X, Y] is the cross-product type of X and Y.
		
		Example: Tuple[T1, T2] is a tuple of two elements corresponding
		to type variables T1 and T2.  Tuple[int, float, str] is a tuple
		of an int, a float and a string.
		
		To specify a variable-length tuple of homogeneous type, use Tuple[T, ...].
	**/
	static public function Tuple(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Union(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var __annotations__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _onnx_main_opset : Dynamic;
	static public var _onnx_stable_opsets : Dynamic;
	static public var _registry : Dynamic;
	static public var _symbolic_versions : Dynamic;
	static public function get_op_supported_version(opname:Dynamic, domain:Dynamic, version:Dynamic):Dynamic;
	static public function get_ops_in_version(version:Dynamic):Dynamic;
	static public function get_registered_op(opname:Dynamic, domain:Dynamic, version:Dynamic):Dynamic;
	/**
		Return all members of an object as (name, value) pairs sorted by name.
		Optionally, only return members that satisfy a given predicate.
	**/
	static public function getmembers(object:Dynamic, ?predicate:Dynamic):Dynamic;
	static public function is_registered_op(opname:Dynamic, domain:Dynamic, version:Dynamic):Dynamic;
	static public function is_registered_version(domain:Dynamic, version:Dynamic):Dynamic;
	/**
		Return true if the object is a user-defined function.
		
		Function objects provide these attributes:
		    __doc__         documentation string
		    __name__        name with which this function was defined
		    __code__        code object containing compiled function bytecode
		    __defaults__    tuple of any default values for arguments
		    __globals__     global namespace in which this function was defined
		    __annotations__ dict of parameter annotations
		    __kwdefaults__  dict of keyword only parameters with defaults
	**/
	static public function isfunction(object:Dynamic):Dynamic;
	static public var opset_version : Dynamic;
	static public function register_op(opname:Dynamic, op:Dynamic, domain:Dynamic, version:Dynamic):Dynamic;
	static public function register_ops_helper(domain:Dynamic, version:Dynamic, iter_version:Dynamic):Dynamic;
	static public function register_ops_in_version(domain:Dynamic, version:Dynamic):Dynamic;
	static public function register_version(domain:Dynamic, version:Dynamic):Dynamic;
	static public function unregister_op(opname:Dynamic, domain:Dynamic, version:Dynamic):Dynamic;
}