/* This file is generated, do not edit! */
package tensorflow.python.keras.combinations;
@:pythonImport("tensorflow.python.keras.combinations") extern class Combinations_Module {
	static public var KERAS_MODEL_TYPES : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _defaults : Dynamic;
	/**
		Generate combinations based on its keyword arguments.
		
		Two sets of returned combinations can be concatenated using +.  Their product
		can be computed using `times()`.
		
		Args:
		  **kwargs: keyword arguments of form `option=[possibilities, ...]`
		       or `option=the_only_possibility`.
		
		Returns:
		  a list of dictionaries for each combination. Keys in the dictionaries are
		  the keyword argument names.  Each key has one value - one of the
		  corresponding keyword argument values.
	**/
	static public function combine(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function generate(combinations:Dynamic, ?test_combinations:Dynamic):Dynamic;
	/**
		Returns the default test combinations for tf.keras tests.
		
		Note that if tf2 is enabled, then v1 session test will be skipped.
		
		Args:
		  mode: List of modes to run the tests. The valid options are 'graph' and
		    'eager'. Default to ['graph', 'eager'] if not specified. If a empty list
		    is provide, then the test will run under the context based on tf's
		    version, eg graph for v1 and eager for v2.
		  run_eagerly: List of `run_eagerly` value to be run with the tests.
		    Default to [True, False] if not specified. Note that for `graph` mode,
		    run_eagerly value will only be False.
		
		Returns:
		  A list contains all the combinations to be used to generate test cases.
	**/
	static public function keras_mode_combinations(?mode:Dynamic, ?run_eagerly:Dynamic):Dynamic;
	static public function keras_model_type_combinations():Dynamic;
	/**
		Generate a product of N sets of combinations.
		
		times(combine(a=[1,2]), combine(b=[3,4])) == combine(a=[1,2], b=[3,4])
		
		Args:
		  *combined: N lists of dictionaries that specify combinations.
		
		Returns:
		  a list of dictionaries for each combination.
		
		Raises:
		  ValueError: if some of the inputs have overlapping keys.
	**/
	static public function times(?combined:python.VarArgs<Dynamic>):Dynamic;
}