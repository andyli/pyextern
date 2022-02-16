/* This file is generated, do not edit! */
package tensorflow.python.distribute.tpu_values;
@:pythonImport("tensorflow.python.distribute.tpu_values") extern class Tpu_values_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Wrap `raw_assign_fn` with the proper graph context and device scope.
		
		Args:
		  raw_assign_fn: the function to be wrapped.
		  use_handle: if True, the `raw_assign_fn` will be applied to the handle of a
		    variable; otherwise it will be applied to the variable itself.
		
		Returns:
		  The wrapped function.
	**/
	static public function _make_raw_assign_fn(raw_assign_fn:Dynamic, ?use_handle:Dynamic):Dynamic;
	/**
		Wrap `raw_scatter_xxx_fn` so that it can be called w/ and w/o packed handle.
	**/
	static public function _make_raw_scatter_xxx_fn(raw_scatter_xxx_fn:Dynamic):Dynamic;
	static public function _maybe_enter_graph(tensor:Dynamic):Dynamic;
	static public function _maybe_on_device(_var:Dynamic):Dynamic;
	static public var _scatter_error_msg : Dynamic;
	static public var absolute_import : Dynamic;
	static public function assign(_var:Dynamic, value:Dynamic, ?use_locking:Dynamic, ?name:Dynamic, ?read_value:Dynamic):Dynamic;
	static public function assign_add(_var:Dynamic, value:Dynamic, ?use_locking:Dynamic, ?name:Dynamic, ?read_value:Dynamic):Dynamic;
	static public function assign_sub(_var:Dynamic, value:Dynamic, ?use_locking:Dynamic, ?name:Dynamic, ?read_value:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}