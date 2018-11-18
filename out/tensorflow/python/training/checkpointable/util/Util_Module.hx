/* This file is generated, do not edit! */
package tensorflow.python.training.checkpointable.util;
@:pythonImport("tensorflow.python.training.checkpointable.util") extern class Util_Module {
	static public var _DEPRECATED_RESTORE_INSTRUCTIONS : Dynamic;
	static public var _ESCAPE_CHAR : Dynamic;
	static public var _OBJECT_ATTRIBUTES_NAME : Dynamic;
	static public var _OPTIMIZER_SLOTS_NAME : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Find shortest paths to all variables owned by dependencies of root.
	**/
	static public function _breadth_first_checkpointable_traversal(root_checkpointable:Dynamic):Dynamic;
	/**
		Copy a `tf.train.Saver`'s state to a new Saver with different variables.
	**/
	static public function _copy_saver_with_new_var_list(old_saver:Dynamic, new_var_list:Dynamic):Dynamic;
	/**
		A pared-down version of get_variable which does not reuse variables.
	**/
	static public function _default_getter(name:Dynamic, shape:Dynamic, dtype:Dynamic, ?initializer:Dynamic, ?partition_info:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function _escape_local_name(name:Dynamic):Dynamic;
	static public function _object_prefix_from_path(path_to_root:Dynamic):Dynamic;
	/**
		Name non-slot `Checkpointable`s and add them to `object_graph_proto`.
	**/
	static public function _serialize_checkpointables(checkpointable_objects:Dynamic, node_ids:Dynamic, object_names:Dynamic, slot_variables:Dynamic, saveables_cache:Dynamic):Dynamic;
	/**
		Determine checkpoint keys for variables and build a serialized graph.
		
		Non-slot variables are keyed based on a shortest path from the root saveable
		to the object which owns the variable (i.e. the one which called
		`Checkpointable._add_variable` to create it).
		
		Slot variables are keyed based on a shortest path to the variable being
		slotted for, a shortest path to their optimizer, and the slot name.
		
		Args:
		  root_checkpointable: A `Checkpointable` object whose variables (including
		    the variables of dependencies, recursively) should be saved.
		  saveables_cache: A dictionary mapping `Checkpointable` objects -> attribute
		    names -> SaveableObjects, used to avoid re-creating SaveableObjects when
		    graph building.
		
		Returns:
		  A tuple of (named_variables, object_graph_proto, feed_additions):
		    named_variables: A dictionary mapping names to variable objects.
		    object_graph_proto: A CheckpointableObjectGraph protocol buffer containing
		      the serialized object graph and variable references.
		    feed_additions: A dictionary mapping from Tensors to values which should
		      be fed when saving.
		
		Raises:
		  ValueError: If there are invalid characters in an optimizer's slot names.
	**/
	static public function _serialize_object_graph(root_checkpointable:Dynamic, saveables_cache:Dynamic):Dynamic;
	/**
		Gather and name slot variables.
	**/
	static public function _serialize_slot_variables(checkpointable_objects:Dynamic, node_ids:Dynamic, object_names:Dynamic):Dynamic;
	/**
		Make a function for naming slot variables in an optimizer.
	**/
	static public function _slot_variable_naming_for_optimizer(optimizer_path:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Add a variable to a Checkpointable with no scope influence.
	**/
	static public function add_variable(checkpointable:Dynamic, name:Dynamic, ?shape:Dynamic, ?dtype:Dynamic, ?initializer:Dynamic):Dynamic;
	/**
		Capture variables created within this scope as `Template` dependencies.
		
		Requires that `template.variable_scope` is active.
		
		This scope is intended as a compatibility measure, allowing a checkpointable
		object to add dependencies on variables created in a block of code which is
		not aware of object-based saving (and instead uses variable names
		heavily). This is how `Template` objects add dependencies on variables and
		sub-`Template`s. Where possible, use `tf.make_template` directly.
		
		Args:
		  template: The `Template` object to register dependencies with.
		
		Yields:
		  None (when used as a context manager).
	**/
	static public function capture_dependencies(template:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Creates a static `tf.train.Saver` from a checkpointable object.
		
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
		  root_checkpointable: A checkpointable object to save.
		
		Returns:
		  A `tf.train.Saver` which saves object-based checkpoints for the object graph
		  frozen at the time `frozen_saver` was called.
	**/
	static public function frozen_saver(root_checkpointable:Dynamic):Dynamic;
	/**
		Traverse the object graph and find initialization ops.
		
		Looks for `Checkpointable` objects which are dependencies of
		`root_checkpointable` and which have an `initializer` property. Includes
		initializers for slot variables only if the variable they are slotting for and
		the optimizer are dependencies of `root_checkpointable` (i.e. if they would be
		saved with a checkpoint).
		
		Args:
		  root_checkpointable: A `Checkpointable` object to gather initializers for.
		Returns:
		  A list of initialization ops.
	**/
	static public function gather_initializers(root_checkpointable:Dynamic):Dynamic;
	/**
		Traverse the object graph and list all accessible objects.
		
		Looks for `Checkpointable` objects which are dependencies of
		`root_checkpointable`. Includes slot variables only if the variable they are
		slotting for and the optimizer are dependencies of `root_checkpointable`
		(i.e. if they would be saved with a checkpoint).
		
		Args:
		  root_checkpointable: A `Checkpointable` object whose dependencies should be
		    flattened.
		Returns:
		  A flat list of objects.
	**/
	static public function list_objects(root_checkpointable:Dynamic):Dynamic;
	/**
		Gather list of all SaveableObjects in the Checkpointable object.
	**/
	static public function named_saveables(root_checkpointable:Dynamic):Dynamic;
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
		  A parsed `tf.contrib.checkpoint.CheckpointableObjectGraph` protocol buffer.
		Raises:
		  ValueError: If an object graph was not found in the checkpoint.
	**/
	static public function object_metadata(save_path:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		When graph building, runs restore ops as soon as they come in.
		
		Args:
		  status: A _LoadStatus objects from an object-based saver's
		    restore(). Streaming restore from name-based checkpoints is not currently
		    supported.
		  session: A session to run new restore ops in.
	**/
	static public function streaming_restore(status:Dynamic, ?session:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}