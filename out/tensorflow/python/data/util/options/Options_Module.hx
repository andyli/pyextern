/* This file is generated, do not edit! */
package tensorflow.python.data.util.options;
@:pythonImport("tensorflow.python.data.util.options") extern class Options_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _internal_attr_name(name:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Creates a type-checked property.
		
		Args:
		  name: The name to use.
		  ty: The type to use. The type of the property will be validated when it
		    is set.
		  docstring: The docstring to use.
		  default_factory: A callable that takes no arguments and returns a default
		    value to use if not set.
		
		Returns:
		  A type-checked property.
	**/
	static public function create_option(name:Dynamic, ty:Dynamic, docstring:Dynamic, ?default_factory:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Merges the given options, returning the result as a new options object.
		
		The input arguments are expected to have a matching type that derives from
		`OptionsBase` (and thus each represent a set of options). The method outputs
		an object of the same type created by merging the sets of options represented
		by the input arguments.
		
		The sets of options can be merged as long as there does not exist an option
		with different non-default values.
		
		If an option is an instance of `OptionsBase` itself, then this method is
		applied recursively to the set of options represented by this option.
		
		Args:
		  *options_list: options to merge
		
		Raises:
		  TypeError: if the input arguments are incompatible or not derived from
		    `OptionsBase`
		  ValueError: if the given options cannot be merged
		
		Returns:
		  A new options object which is the result of merging the given options.
	**/
	static public function merge_options(?options_list:python.VarArgs<Dynamic>):Dynamic;
	static public var print_function : Dynamic;
}