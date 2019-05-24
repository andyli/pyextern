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
	static public var division : Dynamic;
	/**
		Create a dictionary of names to operation lists.
		
		Args:
		  op_list: A list, tuple, or set of Variables or SaveableObjects.
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
	/**
		Create `SaveableObject`s from an operation.
		
		Args:
		  op: A variable, operation, or SaveableObject to coerce into a
		    SaveableObject.
		  name: A string name for the SaveableObject.
		
		Yields:
		  `SaveableObject`s which together save/restore `op`.
		
		Raises:
		  TypeError: If `name` is not a string.
		  ValueError: For operations with no known conversion to SaveableObject.
	**/
	static public function saveable_objects_for_op(op:Dynamic, name:Dynamic):Dynamic;
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
		    values are not one of Tensor or Variable or a checkpointable operation.
		  ValueError: If the same operation is given in more than one value
		    (this also applies to slices of SlicedVariables).
	**/
	static public function validate_and_slice_inputs(names_to_saveables:Dynamic):Dynamic;
}