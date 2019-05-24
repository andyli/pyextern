/* This file is generated, do not edit! */
package tensorflow.python.training.distribute;
@:pythonImport("tensorflow.python.training.distribute") extern class Distribute_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		`tf.distribute.ReduceOp` corresponding to the last loss reduction.
	**/
	static public function get_loss_reduction():Dynamic;
	/**
		Get the current device if in a `tf.distribute.Strategy.update()` call.
	**/
	static public function get_update_device():Dynamic;
	static public var print_function : Dynamic;
	/**
		Verify in `replica_ctx` replica context.
	**/
	static public function require_replica_context(replica_ctx:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}