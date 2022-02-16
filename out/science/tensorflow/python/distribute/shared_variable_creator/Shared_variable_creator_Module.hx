/* This file is generated, do not edit! */
package tensorflow.python.distribute.shared_variable_creator;
@:pythonImport("tensorflow.python.distribute.shared_variable_creator") extern class Shared_variable_creator_Module {
	static public var _VARIABLE_UNIQUIFYING_REGEX : Dynamic;
	static public var _VARIABLE_UNIQUIFYING_REGEX_AT_END : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _canonicalize_variable_name(name:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Construct the variable creator function for device `device_id`.
		
		Constructs custom variable creator functions for the given device.
		On first device (device_id == 0), it creates the variable using the
		`next_creator`, and stores it in the provided `shared_variable_store`.
		On all other devices (device_id > 0), it tries to re-use the variable
		already created with the same name. If no such variable exists, it throws an
		error.
		Additionally, we de-uniquify variable names before checking for matches. This
		helps re-use variables which are intended to be the same but have different
		names due to variable uniquification happening upstream. Since this might
		mean we may have multiple variables with the same canonical name, we store
		them in a list per canonical name and return them in the same order as well.
		
		Args:
		  shared_variable_store: A dictionary that we will use to store variables
		    created on the first device, and re-used by creators for other devices.
		  device_id: Integer index of the device whose creator should be
		    constructed.
		
		Returns:
		  An appropriate creator function based on device_id.
	**/
	static public function make_fn(shared_variable_store:Dynamic, device_id:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}