/* This file is generated, do not edit! */
package tensorflow.python.training.server_lib;
@:pythonImport("tensorflow.python.training.server_lib") extern class Server_lib_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Creates a `tf.train.ServerDef` protocol buffer.
		
		Args:
		  server_or_cluster_def: A `tf.train.ServerDef` or
		    `tf.train.ClusterDef` protocol buffer, or a
		    `tf.train.ClusterSpec` object, describing the server to be
		    defined and/or the cluster of which it is a member.
		  job_name: (Optional.) Specifies the name of the job of which the server
		    is a member. Defaults to the value in `server_or_cluster_def`, if
		    specified.
		  task_index: (Optional.) Specifies the task index of the server in its job.
		    Defaults to the value in `server_or_cluster_def`, if specified. Otherwise
		    defaults to 0 if the server's job has only one task.
		  protocol: (Optional.) Specifies the protocol to be used by the server.
		    Acceptable values include `"grpc", "grpc+verbs"`. Defaults to the value
		    in `server_or_cluster_def`, if specified. Otherwise defaults to `"grpc"`.
		  config: (Options.) A `tf.ConfigProto` that specifies default configuration
		    options for all sessions that run on this server.
		
		Returns:
		  A `tf.train.ServerDef`.
		
		Raises:
		  TypeError: If the arguments do not have the appropriate type.
		  ValueError: If an argument is not specified and cannot be inferred.
	**/
	static public function _make_server_def(server_or_cluster_def:Dynamic, job_name:Dynamic, task_index:Dynamic, protocol:Dynamic, config:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}