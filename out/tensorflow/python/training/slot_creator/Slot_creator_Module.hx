/* This file is generated, do not edit! */
package tensorflow.python.training.slot_creator;
@:pythonImport("tensorflow.python.training.slot_creator") extern class Slot_creator_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Helper function for creating a slot variable.
	**/
	static public function _create_slot_var(primary:Dynamic, val:Dynamic, scope:Dynamic, validate_shape:Dynamic, shape:Dynamic, dtype:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Create a slot initialized to the given value.
		
		The type of the slot is determined by the given value.
		
		Args:
		  primary: The primary `Variable` or `Tensor`.
		  val: A `Tensor` specifying the initial value of the slot.
		  name: Name to use for the slot variable.
		  colocate_with_primary: Boolean.  If True the slot is located
		    on the same device as `primary`.
		
		Returns:
		  A `Variable` object.
	**/
	static public function create_slot(primary:Dynamic, val:Dynamic, name:Dynamic, ?colocate_with_primary:Dynamic):Dynamic;
	/**
		Creates a slot initialized using an `Initializer`.
		
		The type of the slot is determined by the given value.
		
		Args:
		  primary: The primary `Variable` or `Tensor`.
		  initializer: An `Initializer`.  The initial value of the slot.
		  shape: Shape of the initial value of the slot.
		  dtype: Type of the value of the slot.
		  name: Name to use for the slot variable.
		  colocate_with_primary: Boolean.  If True the slot is located
		    on the same device as `primary`.
		
		Returns:
		  A `Variable` object.
	**/
	static public function create_slot_with_initializer(primary:Dynamic, initializer:Dynamic, shape:Dynamic, dtype:Dynamic, name:Dynamic, ?colocate_with_primary:Dynamic):Dynamic;
	/**
		Create a slot initialized to 0 with same shape as the primary object.
		
		Args:
		  primary: The primary `Variable` or `Tensor`.
		  name: Name to use for the slot variable.
		  dtype: Type of the slot variable.  Defaults to the type of `primary`.
		  colocate_with_primary: Boolean.  If True the slot is located
		    on the same device as `primary`.
		
		Returns:
		  A `Variable` object.
	**/
	static public function create_zeros_slot(primary:Dynamic, name:Dynamic, ?dtype:Dynamic, ?colocate_with_primary:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}