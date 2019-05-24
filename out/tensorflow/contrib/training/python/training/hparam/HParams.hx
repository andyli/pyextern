/* This file is generated, do not edit! */
package tensorflow.contrib.training.python.training.hparam;
@:pythonImport("tensorflow.contrib.training.python.training.hparam", "HParams") extern class HParams {
	static public var _HAS_DYNAMIC_ATTRIBUTES : Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __contains__(key:Dynamic):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		__dir__() -> list
		default dir() implementation
	**/
	public function __dir__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		default object formatter
	**/
	public function __format__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self>=value.
	**/
	public function __ge__(value:Dynamic):Dynamic;
	/**
		Return getattr(self, name).
	**/
	public function __getattribute__(name:Dynamic):Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	/**
		Create an instance of `HParams` from keyword arguments.
		
		The keyword arguments specify name-values pairs for the hyperparameters.
		The parameter types are inferred from the type of the values passed.
		
		The parameter names are added as attributes of `HParams` object, so they
		can be accessed directly with the dot notation `hparams._name_`.
		
		Example:
		
		```python
		# Define 3 hyperparameters: 'learning_rate' is a float parameter,
		# 'num_hidden_units' an integer parameter, and 'activation' a string
		# parameter.
		hparams = tf.HParams(
		    learning_rate=0.1, num_hidden_units=100, activation='relu')
		
		hparams.activation ==> 'relu'
		```
		
		Note that a few names are reserved and cannot be used as hyperparameter
		names.  If you use one of the reserved name the constructor raises a
		`ValueError`.
		
		Args:
		  hparam_def: Serialized hyperparameters, encoded as a hparam_pb2.HParamDef
		    protocol buffer. If provided, this object is initialized by
		    deserializing hparam_def.  Otherwise **kwargs is used.
		  model_structure: An instance of ModelStructure, defining the feature
		    crosses to be used in the Trial.
		  **kwargs: Key-value pairs where the key is the hyperparameter name and
		    the value is the value for the parameter.
		
		Raises:
		  ValueError: If both `hparam_def` and initialization values are provided,
		    or if one of the arguments is invalid.
	**/
	@:native("__init__")
	public function ___init__(?hparam_def:Dynamic, ?model_structure:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Create an instance of `HParams` from keyword arguments.
		
		The keyword arguments specify name-values pairs for the hyperparameters.
		The parameter types are inferred from the type of the values passed.
		
		The parameter names are added as attributes of `HParams` object, so they
		can be accessed directly with the dot notation `hparams._name_`.
		
		Example:
		
		```python
		# Define 3 hyperparameters: 'learning_rate' is a float parameter,
		# 'num_hidden_units' an integer parameter, and 'activation' a string
		# parameter.
		hparams = tf.HParams(
		    learning_rate=0.1, num_hidden_units=100, activation='relu')
		
		hparams.activation ==> 'relu'
		```
		
		Note that a few names are reserved and cannot be used as hyperparameter
		names.  If you use one of the reserved name the constructor raises a
		`ValueError`.
		
		Args:
		  hparam_def: Serialized hyperparameters, encoded as a hparam_pb2.HParamDef
		    protocol buffer. If provided, this object is initialized by
		    deserializing hparam_def.  Otherwise **kwargs is used.
		  model_structure: An instance of ModelStructure, defining the feature
		    crosses to be used in the Trial.
		  **kwargs: Key-value pairs where the key is the hyperparameter name and
		    the value is the value for the parameter.
		
		Raises:
		  ValueError: If both `hparam_def` and initialization values are provided,
		    or if one of the arguments is invalid.
	**/
	public function new(?hparam_def:Dynamic, ?model_structure:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(value:Dynamic):Dynamic;
	static public var __module__ : Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce_ex__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		__sizeof__() -> int
		size of object in memory, in bytes
	**/
	public function __sizeof__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return str(self).
	**/
	public function __str__():Dynamic;
	/**
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	/**
		Returns the field name given parameter type and is_list.
		
		Args:
		  param_type: Data type of the hparam.
		  is_list: Whether this is a list.
		
		Returns:
		  A string representation of the field name.
		
		Raises:
		  ValueError: If parameter type is not recognized.
	**/
	static public function _get_kind_name(param_type:Dynamic, is_list:Dynamic):Dynamic;
	/**
		Creates a new HParams from `HParamDef` protocol buffer.
		
		Args:
		  hparam_def: `HParamDef` protocol buffer.
	**/
	public function _init_from_proto(hparam_def:Dynamic):Dynamic;
	/**
		Adds {name, value} pair to hyperparameters.
		
		Args:
		  name: Name of the hyperparameter.
		  value: Value of the hyperparameter. Can be one of the following types:
		    int, float, string, int list, float list, or string list.
		
		Raises:
		  ValueError: if one of the arguments is invalid.
	**/
	public function add_hparam(name:Dynamic, value:Dynamic):Dynamic;
	/**
		Removes the hyperparameter with key 'name'.
		
		Args:
		  name: Name of the hyperparameter.
	**/
	public function del_hparam(name:Dynamic):Dynamic;
	static public function from_proto(hparam_def:Dynamic, ?import_scope:Dynamic):Dynamic;
	/**
		Returns the value of `key` if it exists, else `default`.
	**/
	public function get(key:Dynamic, ?_default:Dynamic):Dynamic;
	public function get_model_structure():Dynamic;
	/**
		Override hyperparameter values, parsing new values from a dictionary.
		
		Args:
		  values_dict: Dictionary of name:value pairs.
		
		Returns:
		  The `HParams` instance.
		
		Raises:
		  ValueError: If `values_dict` cannot be parsed.
	**/
	public function override_from_dict(values_dict:Dynamic):Dynamic;
	/**
		Override hyperparameter values, parsing new values from a string.
		
		See parse_values for more detail on the allowed format for values.
		
		Args:
		  values: String.  Comma separated list of `name=value` pairs where
		    'value' must follow the syntax described above.
		
		Returns:
		  The `HParams` instance.
		
		Raises:
		  ValueError: If `values` cannot be parsed.
	**/
	public function parse(values:Dynamic):Dynamic;
	/**
		Override hyperparameter values, parsing new values from a json object.
		
		Args:
		  values_json: String containing a json object of name:value pairs.
		
		Returns:
		  The `HParams` instance.
		
		Raises:
		  ValueError: If `values_json` cannot be parsed.
	**/
	public function parse_json(values_json:Dynamic):Dynamic;
	/**
		DEPRECATED. Use override_from_dict. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use `override_from_dict`.
	**/
	public function set_from_map(values_map:Dynamic):Dynamic;
	/**
		Set the value of an existing hyperparameter.
		
		This function verifies that the type of the value matches the type of the
		existing hyperparameter.
		
		Args:
		  name: Name of the hyperparameter.
		  value: New value of the hyperparameter.
		
		Raises:
		  ValueError: If there is a type mismatch.
	**/
	public function set_hparam(name:Dynamic, value:Dynamic):Dynamic;
	public function set_model_structure(model_structure:Dynamic):Dynamic;
	/**
		Serializes the hyperparameters into JSON.
		
		Args:
		  indent: If a non-negative integer, JSON array elements and object members
		    will be pretty-printed with that indent level. An indent level of 0, or
		    negative, will only insert newlines. `None` (the default) selects the
		    most compact representation.
		  separators: Optional `(item_separator, key_separator)` tuple. Default is
		    `(', ', ': ')`.
		  sort_keys: If `True`, the output dictionaries will be sorted by key.
		
		Returns:
		  A JSON string.
	**/
	public function to_json(?indent:Dynamic, ?separators:Dynamic, ?sort_keys:Dynamic):Dynamic;
	/**
		Converts a `HParams` object to a `HParamDef` protocol buffer.
		
		Args:
		  export_scope: Optional `string`. Name scope to remove.
		
		Returns:
		  A `HParamDef` protocol buffer.
	**/
	public function to_proto(?export_scope:Dynamic):Dynamic;
	/**
		Return the hyperparameter values as a Python dictionary.
		
		Returns:
		  A dictionary with hyperparameter names as keys.  The values are the
		  hyperparameter values.
	**/
	public function values():Dynamic;
}