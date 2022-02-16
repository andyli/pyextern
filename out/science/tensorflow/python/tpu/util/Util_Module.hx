/* This file is generated, do not edit! */
package tensorflow.python.tpu.util;
@:pythonImport("tensorflow.python.tpu.util") extern class Util_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Checks whether `value` is a positive integer.
	**/
	static public function check_positive_integer(value:Dynamic, name:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Parses the `iterations_per_loop` value.
		
		The parser expects the value of the `iterations_per_loop` value to be a
		positive integer value with unit:`count` or time-based value `<N><s|m|h>`
		where <N> is any positive integer and `s`, `m`, `h` are unit of time in
		seconds, minutes, hours respectively. Examples of valid values: `3600s`, `60m`
		, `1h`.
		
		Args:
		  iterations_per_loop: Number of iterations or time alloted to spend on per
		    device loop.
		
		Returns:
		  A dictionary of `value` and `unit`. The `unit` value can be either a raw
		  `count`, or time in `seconds`.
		  {
		    "value": <positive-integer>,
		    "unit": <unit: `count` | `seconds`>
		  }
	**/
	static public function parse_iterations_per_loop(iterations_per_loop:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}