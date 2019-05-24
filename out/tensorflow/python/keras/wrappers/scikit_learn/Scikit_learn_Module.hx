/* This file is generated, do not edit! */
package tensorflow.python.keras.wrappers.scikit_learn;
@:pythonImport("tensorflow.python.keras.wrappers.scikit_learn") extern class Scikit_learn_Module {
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
		Checks if a callable accepts a given keyword argument.
		
		Arguments:
		    fn: Callable to inspect.
		    name: Check if `fn` can be called with `name` as a keyword argument.
		    accept_all: What to return if there is no parameter called `name`
		                but the function accepts a `**kwargs` argument.
		
		Returns:
		    bool, whether `fn` accepts a `name` keyword argument.
	**/
	static public function has_arg(fn:Dynamic, name:Dynamic, ?accept_all:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Converts a class vector (integers) to binary class matrix.
		
		E.g. for use with categorical_crossentropy.
		
		Arguments:
		    y: class vector to be converted into a matrix
		        (integers from 0 to num_classes).
		    num_classes: total number of classes.
		    dtype: The data type expected by the input. Default: `'float32'`.
		
		Returns:
		    A binary matrix representation of the input. The classes axis is placed
		    last.
	**/
	static public function to_categorical(y:Dynamic, ?num_classes:Dynamic, ?dtype:Dynamic):Dynamic;
}