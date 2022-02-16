/* This file is generated, do not edit! */
package tensorflow.python.framework.combinations;
@:pythonImport("tensorflow.python.framework.combinations") extern class Combinations_Module {
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
	static public var division : Dynamic;
	static public function generate(combinations:Dynamic, ?test_combinations:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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