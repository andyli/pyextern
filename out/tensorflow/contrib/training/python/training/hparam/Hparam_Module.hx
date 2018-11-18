/* This file is generated, do not edit! */
package tensorflow.contrib.training.python.training.hparam;
@:pythonImport("tensorflow.contrib.training.python.training.hparam") extern class Hparam_Module {
	static public var PARAM_RE : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Cast hparam to the provided type, if compatible.
		
		Args:
		  name: Name of the hparam to be cast.
		  param_type: The type of the hparam.
		  value: The value to be cast, if compatible.
		
		Returns:
		  The result of casting `value` to `param_type`.
		
		Raises:
		  ValueError: If the type of `value` is not compatible with param_type.
		    * If `param_type` is a string type, but `value` is not.
		    * If `param_type` is a boolean, but `value` is not, or vice versa.
		    * If `param_type` is an integer type, but `value` is not.
		    * If `param_type` is a float type, but `value` is not a numeric type.
	**/
	static public function _cast_to_type_if_compatible(name:Dynamic, param_type:Dynamic, value:Dynamic):Dynamic;
	/**
		Helper function for raising a value error for bad assignment.
	**/
	static public function _parse_fail(name:Dynamic, var_type:Dynamic, value:Dynamic, values:Dynamic):Dynamic;
	/**
		Update results_dictionary from a list of values.
		
		Used to update results_dictionary to be returned by parse_values when
		encountering a clause with a list RHS (e.g.  "arr=[1,2,3]".)
		
		Mutates results_dictionary.
		
		Args:
		  name: Name of variable in assignment ("arr").
		  parse_fn: Function for parsing individual values.
		  var_type: Type of named variable.
		  m_dict: Dictionary constructed from regex parsing.
		    m_dict['val']: RHS value (scalar)
		  values: Full expression being parsed
		  results_dictionary: The dictionary being updated for return by the parsing
		    function.
		
		Raises:
		  ValueError: If the name has an index or the values cannot be parsed.
	**/
	static public function _process_list_value(name:Dynamic, parse_fn:Dynamic, var_type:Dynamic, m_dict:Dynamic, values:Dynamic, results_dictionary:Dynamic):Dynamic;
	/**
		Update results_dictionary with a scalar value.
		
		Used to update the results_dictionary to be returned by parse_values when
		encountering a clause with a scalar RHS (e.g.  "s=5" or "arr[0]=5".)
		
		Mutates results_dictionary.
		
		Args:
		  name: Name of variable in assignment ("s" or "arr").
		  parse_fn: Function for parsing the actual value.
		  var_type: Type of named variable.
		  m_dict: Dictionary constructed from regex parsing.
		    m_dict['val']: RHS value (scalar)
		    m_dict['index']: List index value (or None)
		  values: Full expression being parsed
		  results_dictionary: The dictionary being updated for return by the parsing
		    function.
		
		Raises:
		  ValueError: If the name has already been used.
	**/
	static public function _process_scalar_value(name:Dynamic, parse_fn:Dynamic, var_type:Dynamic, m_dict:Dynamic, values:Dynamic, results_dictionary:Dynamic):Dynamic;
	/**
		Helper function for raising a value error for reuse of name.
	**/
	static public function _reuse_fail(name:Dynamic, values:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Parses hyperparameter values from a string into a python map.
		
		`values` is a string containing comma-separated `name=value` pairs.
		For each pair, the value of the hyperparameter named `name` is set to
		`value`.
		
		If a hyperparameter name appears multiple times in `values`, a ValueError
		is raised (e.g. 'a=1,a=2', 'a[1]=1,a[1]=2').
		
		If a hyperparameter name in both an index assignment and scalar assignment,
		a ValueError is raised.  (e.g. 'a=[1,2,3],a[0] = 1').
		
		The hyperparameter name may contain '.' symbols, which will result in an
		attribute name that is only accessible through the getattr and setattr
		functions.  (And must be first explicit added through add_hparam.)
		
		WARNING: Use of '.' in your variable names is allowed, but is not well
		supported and not recommended.
		
		The `value` in `name=value` must follows the syntax according to the
		type of the parameter:
		
		*  Scalar integer: A Python-parsable integer point value.  E.g.: 1,
		   100, -12.
		*  Scalar float: A Python-parsable floating point value.  E.g.: 1.0,
		   -.54e89.
		*  Boolean: Either true or false.
		*  Scalar string: A non-empty sequence of characters, excluding comma,
		   spaces, and square brackets.  E.g.: foo, bar_1.
		*  List: A comma separated list of scalar values of the parameter type
		   enclosed in square brackets.  E.g.: [1,2,3], [1.0,1e-12], [high,low].
		
		When index assignment is used, the corresponding type_map key should be the
		list name.  E.g. for "arr[1]=0" the type_map must have the key "arr" (not
		"arr[1]").
		
		Args:
		  values: String.  Comma separated list of `name=value` pairs where
		    'value' must follow the syntax described above.
		  type_map: A dictionary mapping hyperparameter names to types.  Note every
		    parameter name in values must be a key in type_map.  The values must
		    conform to the types indicated, where a value V is said to conform to a
		    type T if either V has type T, or V is a list of elements of type T.
		    Hence, for a multidimensional parameter 'x' taking float values,
		    'x=[0.1,0.2]' will parse successfully if type_map['x'] = float.
		
		Returns:
		  A python map mapping each name to either:
		  * A scalar value.
		  * A list of scalar values.
		  * A dictionary mapping index numbers to scalar values.
		  (e.g. "x=5,L=[1,2],arr[1]=3" results in {'x':5,'L':[1,2],'arr':{1:3}}")
		
		Raises:
		  ValueError: If there is a problem with input.
		  * If `values` cannot be parsed.
		  * If a list is assigned to a list index (e.g. 'a[1] = [1,2,3]').
		  * If the same rvalue is assigned two different values (e.g. 'a=1,a=2',
		    'a[1]=1,a[1]=2', or 'a=1,a=[1]')
	**/
	static public function parse_values(values:Dynamic, type_map:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}