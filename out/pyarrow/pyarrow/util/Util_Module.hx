/* This file is generated, do not edit! */
package pyarrow.util;
@:pythonImport("pyarrow.util") extern class Util_Module {
	static public var _DEPR_MSG : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _break_traceback_cycle_from_frame(frame:Dynamic):Dynamic;
	static public function _deprecate_api(old_name:Dynamic, new_name:Dynamic, api:Dynamic, next_version:Dynamic):Dynamic;
	/**
		Raise warning if a deprecated class is used in an isinstance check.
	**/
	static public function _deprecate_class(old_name:Dynamic, new_class:Dynamic, next_version:Dynamic, ?instancecheck:Dynamic):Dynamic;
	static public function _is_iterable(obj:Dynamic):Dynamic;
	static public function _is_path_like(path:Dynamic):Dynamic;
	/**
		Convert *path* to a string or unicode path if possible.
	**/
	static public function _stringify_path(path:Dynamic):Dynamic;
	static public function find_free_port():Dynamic;
	/**
		Return a contiguous span of N-D array data.
		
		Parameters
		----------
		shape : tuple
		strides : tuple
		itemsize : int
		  Specify array shape data
		
		Returns
		-------
		start, end : int
		  The span end points.
	**/
	static public function get_contiguous_span(shape:Dynamic, strides:Dynamic, itemsize:Dynamic):Int;
	static public function guid():Dynamic;
	@:native("implements")
	static public function _implements(f:Dynamic):Dynamic;
	/**
		Return a product of sequence items.
	**/
	static public function product(seq:Dynamic):Dynamic;
}