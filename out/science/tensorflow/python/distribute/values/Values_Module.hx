/* This file is generated, do not edit! */
package tensorflow.python.distribute.values;
@:pythonImport("tensorflow.python.distribute.values") extern class Values_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Updates variables with ON_WRITE synchronization in replica context.
	**/
	static public function _on_write_update_replica(_var:Dynamic, update_fn:Dynamic, value:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function _tensor_conversion_distributed_var(_var:Dynamic, ?dtype:Dynamic, ?name:Dynamic, ?as_ref:Dynamic):Dynamic;
	static public function _tensor_conversion_mirrored(_var:Dynamic, ?dtype:Dynamic, ?name:Dynamic, ?as_ref:Dynamic):Dynamic;
	static public function _tensor_conversion_mirrored_val(value:Dynamic, ?dtype:Dynamic, ?name:Dynamic, ?as_ref:Dynamic):Dynamic;
	static public function _tensor_conversion_sync_on_read(_var:Dynamic, ?dtype:Dynamic, ?name:Dynamic, ?as_ref:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Aggregate `value` to `destinations` as specified by `aggregation`.
	**/
	static public function apply_aggregation_replica_context(value:Dynamic, aggregation:Dynamic, destinations:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}