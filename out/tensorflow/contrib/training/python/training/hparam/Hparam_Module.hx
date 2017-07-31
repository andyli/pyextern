/* This file is generated, do not edit! */
package tensorflow.contrib.training.python.training.hparam;
@:pythonImport("tensorflow.contrib.training.python.training.hparam") extern class Hparam_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Parses hyperparameter values from a string into a python map..
		
		`values` is a string containing comma-separated `name=value` pairs.
		For each pair, the value of the hyperparameter named `name` is set to
		`value`.
		
		If a hyperparameter name appears multiple times in `values`, the last
		value is used.
		
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
		   enclosed in square backets.  E.g.: [1,2,3], [1.0,1e-12], [high,low].
		
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
		  A python map containing the name, value pairs.
		
		Raises:
		  ValueError: If `values` cannot be parsed.
	**/
	static public function parse_values(values:Dynamic, type_map:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}