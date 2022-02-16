/* This file is generated, do not edit! */
package tensorflow.python.training.saving.saveable_object_util;
@:pythonImport("tensorflow.python.training.saving.saveable_object_util") extern class Saveable_object_util_Module {
	static public var _VARIABLE_OPS : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Adds the saveable to the saveables list.
		
		Args:
		  saveables: List to append the SaveableObject to.
		  seen_ops: Set of the ops of the saveables already processed.  Used to
		    check that each saveable is only saved once.
		  saveable: The saveable.
		
		Raises:
		  ValueError: If the saveable has already been processed.
	**/
	static public function _add_saveable(saveables:Dynamic, seen_ops:Dynamic, saveable:Dynamic):Dynamic;
	static public function _tensor_comes_from_variable(v:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Creates a Saveable with traced save and restore functions.
	**/
	static public function build_traceable_saveable(saveable_factory:Dynamic, checkpoint_key:Dynamic, obj:Dynamic):Dynamic;
	/**
		Creates a SaveableObject while potentially in a different graph.
		
		When creating the frozen saver for SavedModel, the save and restore ops are
		placed in a separate graph. Since RestoredSaveableObject uses tf.functions to
		save and restore, the function captures must be mapped to the new graph.
		
		Args:
		  factory: Factory method for creating the SaveableObject.
		  name: Checkpoint key of this SaveableObject.
		  call_with_mapped_captures: Helper that calls a tf.function while remapping
		    the captures.
		
		Returns:
		  a SaveableObject.
	**/
	static public function create_saveable_object(factory:Dynamic, name:Dynamic, call_with_mapped_captures:Dynamic):Dynamic;
	/**
		Runs the saveable factory to produce a tuple of SaveableObjects.
		
		`obj` and `attribute_name` are only used in the error produced in the
		validation of the produced saveables.
		
		Args:
		  saveable_factory: A callable that accepts a name argument and produces
		    a SaveableObject.
		  checkpoint_key: A string that is uniquely generated to be used in the
		    `saveable_factory`. The names of the produced SaveableObjects must contain
		    this key.
		  call_with_mapped_captures: Helper that calls a tf.function while remapping
		    the captures.
		  use_graph_element_for_variables: Boolean, whether to return the graph
		    element of resource variables created under graph mode. This argument
		    defaults to True for compatibility reasons.
		Returns:
		  a tuple of SaveableObjects
	**/
	static public function create_saveables_from_factory(saveable_factory:Dynamic, checkpoint_key:Dynamic, ?call_with_mapped_captures:Dynamic, ?use_graph_element_for_variables:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public function is_factory_for_restored_saveable_object(factory:Dynamic):Dynamic;
	/**
		Create a dictionary of names to operation lists.
		
		Args:
		  op_list: A (nested) list, tuple, or set of Variables or SaveableObjects.
		  convert_variable_to_tensor: Whether or not to convert single Variables
		    with no slice info into Tensors.
		
		Returns:
		  A dictionary of names to the operations that must be saved under
		  that name.  Variables with save_slice_info are grouped together under the
		  same key in no particular order.
		
		Raises:
		  TypeError: If the type of op_list or its elements is not supported.
		  ValueError: If at least two saveables share the same name.
	**/
	static public function op_list_to_dict(op_list:Dynamic, ?convert_variable_to_tensor:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public function restored_saved_object_factory(save_function:Dynamic, restore_function:Dynamic):Dynamic;
	/**
		Create `SaveableObject`s from an object or operation.
		
		This function converts all of the objects returned from
		`_gather_saveables_for_checkpoint` and factory methods to SaveableObjects. The
		different types of objects that may be received include variables objects,
		variable handles, other Trackables, and data structures containing
		SaveableObjects.
		
		Args:
		  op: A variable, operation, or SaveableObject to coerce into a
		    SaveableObject.
		  name: A string name for the SaveableObject.
		  use_graph_element_for_variables: Boolean, whether to replace resource
		    variables with their graph element (i.e. a pre-created tensor in the Graph
		    that reads the resource variable). This argument defaults to True for
		    compatibility reasons.
		
		Yields:
		  `SaveableObject`s which together save/restore `op`.
		
		Raises:
		  TypeError: If `name` is not a string.
		  ValueError: For operations with no known conversion to SaveableObject.
	**/
	static public function saveable_objects_for_op(op:Dynamic, name:Dynamic, ?use_graph_element_for_variables:Dynamic):Dynamic;
	/**
		Creates a new device string based on `device_string` but using /CPU:0.
		
		If the device is already on /CPU:0, this is a no-op.
		
		Args:
		  device_string: A device string.
		
		Returns:
		  A device string.
	**/
	static public function set_cpu0(device_string:Dynamic):Dynamic;
	/**
		Returns the variables and names that will be used for a Saver.
		
		Args:
		  names_to_saveables: A dict (k, v) where k is the name of an operation and
		     v is an operation to save or a BaseSaverBuilder.Saver.
		
		Returns:
		  A list of SaveableObjects.
		
		Raises:
		  TypeError: If any of the keys are not strings or any of the
		    values are not one of Tensor or Variable or a trackable operation.
		  ValueError: If the same operation is given in more than one value
		    (this also applies to slices of SlicedVariables).
	**/
	static public function validate_and_slice_inputs(names_to_saveables:Dynamic):Dynamic;
	/**
		Makes sure SaveableObjects are compatible with SavedModel.
	**/
	static public function validate_saveables_for_saved_model(saveables:Dynamic, obj:Dynamic):Dynamic;
}