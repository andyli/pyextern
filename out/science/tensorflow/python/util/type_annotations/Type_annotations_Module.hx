/* This file is generated, do not edit! */
package tensorflow.python.util.type_annotations;
@:pythonImport("tensorflow.python.util.type_annotations") extern class Type_annotations_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Get type arguments with all substitutions performed.
		
		For unions, basic simplifications used by Union constructor are performed.
		Examples::
		    get_args(Dict[str, int]) == (str, int)
		    get_args(int) == ()
		    get_args(Union[int, Union[T, int], str][int]) == (int, str)
		    get_args(Union[int, Tuple[T, int]][str]) == (int, Tuple[str, int])
		    get_args(Callable[[], T][int]) == ([], int)
	**/
	static public function get_generic_type_args(tp:Dynamic):Dynamic;
	/**
		Returns true if `tp` is a typing forward reference.
	**/
	static public function is_forward_ref(tp:Dynamic):Dynamic;
	/**
		Returns true if `tp` is a parameterized typing.List value.
	**/
	static public function is_generic_list(tp:Dynamic):Dynamic;
	/**
		Returns true if `tp` is a parameterized typing.Mapping value.
	**/
	static public function is_generic_mapping(tp:Dynamic):Dynamic;
	/**
		Returns true if `tp` is a parameterized typing.Tuple value.
	**/
	static public function is_generic_tuple(tp:Dynamic):Dynamic;
	/**
		Returns true if `tp` is a parameterized typing.Union value.
	**/
	static public function is_generic_union(tp:Dynamic):Dynamic;
}