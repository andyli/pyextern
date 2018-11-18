/* This file is generated, do not edit! */
package tensorflow.python.training.session_manager;
@:pythonImport("tensorflow.python.training.session_manager") extern class Session_manager_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Returns object name if it has one, or a message otherwise.
		
		This is useful for names that apper in error messages.
		Args:
		  obj: Object to get the name of.
		Returns:
		  name, "None", or a "no name" message.
	**/
	static public function _maybe_name(obj:Dynamic):Dynamic;
	/**
		Checks if the model is ready or not, as determined by op.
		
		Args:
		  op: An op, either _ready_op or _ready_for_local_init_op, which defines the
		    readiness of the model.
		  sess: A `Session`.
		  msg: A message to log to warning if not ready
		
		Returns:
		  A tuple (is_ready, msg), where is_ready is True if ready and False
		  otherwise, and msg is `None` if the model is ready, a `String` with the
		  reason why it is not ready otherwise.
	**/
	static public function _ready(op:Dynamic, sess:Dynamic, msg:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}