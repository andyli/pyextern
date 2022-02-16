/* This file is generated, do not edit! */
package numpy.typing.mypy_plugin;
@:pythonImport("numpy.typing.mypy_plugin") extern class Mypy_plugin_Module {
	/**
		Callable type; Callable[[int], str] is a function of (int) -> str.
		
		The subscription syntax must always be used with exactly two
		values: the argument list and the return type.  The argument list
		must be a list of types or ellipsis; the return type must be a single type.
		
		There is no syntax to indicate optional or keyword arguments,
		such function types are rarely used as callback types.
	**/
	static public function Callable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Final(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var MYPY_EX : Dynamic;
	static public var TYPE_CHECKING : Dynamic;
	static public var _C_INTP : Dynamic;
	static public var _EXTENDED_PRECISION_LIST : Dynamic;
	static public var _PRECISION_DICT : Dynamic;
	static public var __all__ : Dynamic;
	static public var __annotations__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _get_c_intp_name():Dynamic;
	static public function _get_extended_precision_list():Dynamic;
	static public function _get_precision_dict():Dynamic;
	/**
		Replace a type-alias with a concrete ``NBitBase`` subclass.
	**/
	static public function _hook(ctx:Dynamic):Dynamic;
	static public var annotations : Dynamic;
	/**
		An entry-point for mypy.
	**/
	static public function plugin(version:Dynamic):Dynamic;
}