/* This file is generated, do not edit! */
package tensorflow.python.training.tracking.util;
@:pythonImport("tensorflow.python.training.tracking.util") extern class Util_Module {
	static public var _CHECKPOINT_V1 : Dynamic;
	static public var _CHECKPOINT_V2 : Dynamic;
	static public var _DEPRECATED_RESTORE_INSTRUCTIONS : Dynamic;
	static public var _END_TIME_OF_LAST_WRITE : Dynamic;
	static public var _END_TIME_OF_LAST_WRITE_LOCK : Dynamic;
	/**
		Returns the TF session to be used by the backend.
		
		If a default TensorFlow session is available, we will return it.
		
		Else, we will return the global Keras session assuming it matches
		the current graph.
		
		If no global Keras session exists at this point:
		we will create a new global session.
		
		Note that you can manually set the global session
		via `K.set_session(sess)`.
		
		Args:
		    op_input_list: An option sequence of tensors or ops, which will be used
		      to determine the current graph. Otherwise the default graph will be
		      used.
		
		Returns:
		    A TensorFlow session.
	**/
	static public function _SESSION_PROVIDER(?op_input_list:Dynamic):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _assert_trackable(obj:Dynamic):Dynamic;
	/**
		A pared-down version of get_variable which does not reuse variables.
	**/
	static public function _default_getter(name:Dynamic, shape:Dynamic, dtype:Dynamic, ?initializer:Dynamic, ?partition_info:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function _get_duration_microseconds(start_time_seconds:Dynamic, end_time_seconds:Dynamic):Dynamic;
	/**
		Filters out objects with no direct variable dependencies for assertions.
	**/
	static public function _objects_with_attributes(full_list:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Add a variable to a Trackable with no scope influence.
	**/
	static public function add_variable(trackable:Dynamic, name:Dynamic, ?shape:Dynamic, ?dtype:Dynamic, ?initializer:Dynamic, ?trainable:Dynamic):Dynamic;
	/**
		Capture variables created within this scope as `Template` dependencies.
		
		Requires that `template.variable_scope` is active.
		
		This scope is intended as a compatibility measure, allowing a trackable
		object to add dependencies on variables created in a block of code which is
		not aware of object-based saving (and instead uses variable names
		heavily). This is how `Template` objects add dependencies on variables and
		sub-`Template`s. Where possible, use `tf.compat.v1.make_template` directly.
		
		Args:
		  template: The `Template` object to register dependencies with.
		
		Yields:
		  None (when used as a context manager).
	**/
	static public function capture_dependencies(template:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Creates a static `tf.compat.v1.train.Saver` from a trackable object.
		
		The returned `Saver` saves object-based checkpoints, but these checkpoints
		will no longer reflect structural changes to the object graph, only changes to
		the values of `Variable`s added as dependencies of the root object before
		`freeze` was called.
		
		`restore` works on the returned `Saver`, but requires that the object graph of
		the checkpoint being loaded exactly matches the object graph when `freeze` was
		called. This is in contrast the object-based restore performed by
		`tf.train.Checkpoint` which attempts a fuzzy matching between a checkpoint's
		object graph and the current Python object graph.
		
		Args:
		  root_trackable: A trackable object to save.
		
		Returns:
		  A saver which saves object-based checkpoints for the object graph frozen at
		  the time `frozen_saver` was called.
	**/
	static public function frozen_saver(root_trackable:Dynamic):Dynamic;
	/**
		Traverse the object graph and find initialization ops.
		
		Looks for `Trackable` objects which are dependencies of
		`root_trackable` and which have an `initializer` property. Includes
		initializers for slot variables only if the variable they are slotting for and
		the optimizer are dependencies of `root_trackable` (i.e. if they would be
		saved with a checkpoint).
		
		Args:
		  root_trackable: A `Trackable` object to gather initializers for.
		
		Returns:
		  A list of initialization ops.
	**/
	static public function gather_initializers(root_trackable:Dynamic):Dynamic;
	static public function get_session():Dynamic;
	/**
		Traverse the object graph and list all accessible objects.
		
		Looks for `Trackable` objects which are dependencies of
		`root_trackable`. Includes slot variables only if the variable they are
		slotting for and the optimizer are dependencies of `root_trackable`
		(i.e. if they would be saved with a checkpoint).
		
		Args:
		  root_trackable: A `Trackable` object whose dependencies should be flattened.
		
		Returns:
		  A flat list of objects.
	**/
	static public function list_objects(root_trackable:Dynamic):Dynamic;
	/**
		Retrieves information about the objects in a checkpoint.
		
		Example usage:
		
		```python
		object_graph = tf.contrib.checkpoint.object_metadata(
		    tf.train.latest_checkpoint(checkpoint_directory))
		ckpt_variable_names = set()
		for node in object_graph.nodes:
		  for attribute in node.attributes:
		    ckpt_variable_names.add(attribute.full_name)
		```
		
		Args:
		  save_path: The path to the checkpoint, as returned by `save` or
		    `tf.train.latest_checkpoint`.
		
		Returns:
		  A parsed `tf.contrib.checkpoint.TrackableObjectGraph` protocol buffer.
		Raises:
		  ValueError: If an object graph was not found in the checkpoint.
	**/
	static public function object_metadata(save_path:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public function register_session_provider(session_provider:Dynamic):Dynamic;
	static public function saver_with_op_caching(obj:Dynamic, ?attached_dependencies:Dynamic):Dynamic;
	/**
		When graph building, runs restore ops as soon as they come in.
		
		Args:
		  status: A _LoadStatus objects from an object-based saver's restore().
		    Streaming restore from name-based checkpoints is not currently supported.
		  session: A session to run new restore ops in.
	**/
	static public function streaming_restore(status:Dynamic, ?session:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}