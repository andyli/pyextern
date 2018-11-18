/* This file is generated, do not edit! */
package tensorflow.contrib.tpu.python.tpu.tpu_context;
@:pythonImport("tensorflow.contrib.tpu.python.tpu.tpu_context") extern class Tpu_context_Module {
	static public var _DEFAULT_COORDINATOR_JOB_NAME : Dynamic;
	static public var _DEFAULT_JOB_NAME : Dynamic;
	static public var _LOCAL_MASTERS : Dynamic;
	static public var _NUM_CORES_TO_COMPUTATION_SHAPE : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Returns an instance of `_InternalTPUContext`.
	**/
	static public function _get_tpu_context(config:Dynamic, train_batch_size:Dynamic, eval_batch_size:Dynamic, predict_batch_size:Dynamic, use_tpu:Dynamic, eval_on_tpu:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		@contextmanager decorator.
		
		Typical usage:
		
		    @contextmanager
		    def some_generator(<arguments>):
		        <setup>
		        try:
		            yield <value>
		        finally:
		            <cleanup>
		
		This makes this:
		
		    with some_generator(<arguments>) as <variable>:
		        <body>
		
		equivalent to this:
		
		    <setup>
		    try:
		        <variable> = <value>
		        <body>
		    finally:
		        <cleanup>
	**/
	static public function contextmanager(func:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}