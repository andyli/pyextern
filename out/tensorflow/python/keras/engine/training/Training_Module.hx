/* This file is generated, do not edit! */
package tensorflow.python.keras.engine.training;
@:pythonImport("tensorflow.python.keras.engine.training") extern class Training_Module {
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
	static public var print_function : Dynamic;
	/**
		Slice an array or list of arrays.
		
		This takes an array-like, or a list of
		array-likes, and outputs:
		    - arrays[start:stop] if `arrays` is an array-like
		    - [x[start:stop] for x in arrays] if `arrays` is a list
		
		Can also work on list/array of indices: `slice_arrays(x, indices)`
		
		Arguments:
		    arrays: Single array or list of arrays.
		    start: can be an integer index (start index)
		        or a list/array of indices
		    stop: integer (stop index); should be None if
		        `start` was a list.
		
		Returns:
		    A slice of the array(s).
		
		Raises:
		    ValueError: If the value of start is a list and stop is not None.
	**/
	static public function slice_arrays(arrays:Dynamic, ?start:Dynamic, ?stop:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}