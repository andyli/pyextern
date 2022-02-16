/* This file is generated, do not edit! */
package torch.fx.proxy;
@:pythonImport("torch.fx.proxy") extern class Proxy_Module {
	static public function Any(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function Argument(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Callable type; Callable[[int], str] is a function of (int) -> str.
		
		The subscription syntax must always be used with exactly two
		values: the argument list and the return type.  The argument list
		must be a list of types or ellipsis; the return type must be a single type.
		
		There is no syntax to indicate optional or keyword arguments,
		such function types are rarely used as callback types.
	**/
	static public function Callable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Dict(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Iterable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Iterator(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Optional(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function Target(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Tuple type; Tuple[X, Y] is the cross-product type of X and Y.
		
		Example: Tuple[T1, T2] is a tuple of two elements corresponding
		to type variables T1 and T2.  Tuple[int, float, str] is a tuple
		of an int, a float and a string.
		
		To specify a variable-length tuple of homogeneous type, use Tuple[T, ...].
	**/
	static public function Tuple(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _define_reflectable(orig_method_name:Dynamic):Dynamic;
	static public function _scope(method:Dynamic):Dynamic;
	static public var base_types : Dynamic;
	/**
		.. warning::
		    This API is experimental and is *NOT* backward-compatible.
	**/
	static public function check_for_mutable_operation(target:Dynamic, args:Dynamic, kwargs:Dynamic):Dynamic;
	static public function compatibility(is_backward_compatible:Dynamic):Dynamic;
	static public var magic_methods : Dynamic;
	/**
		Apply fn to each Node appearing arg. arg may be a list, tuple, slice, or dict with string keys.
		
		.. note::
		    Backwards-compatibility for this API is guaranteed.
	**/
	static public function map_aggregate(a:Dynamic, fn:Dynamic):Dynamic;
	static public var method : Dynamic;
	static public var orig_method_name : Dynamic;
	static public var reflectable_magic_methods : Dynamic;
}