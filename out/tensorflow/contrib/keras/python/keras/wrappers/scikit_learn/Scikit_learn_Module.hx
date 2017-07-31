/* This file is generated, do not edit! */
package tensorflow.contrib.keras.python.keras.wrappers.scikit_learn;
@:pythonImport("tensorflow.contrib.keras.python.keras.wrappers.scikit_learn") extern class Scikit_learn_Module {
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
		Converts a class vector (integers) to binary class matrix.
		
		E.g. for use with categorical_crossentropy.
		
		Arguments:
		    y: class vector to be converted into a matrix
		        (integers from 0 to num_classes).
		    num_classes: total number of classes.
		
		Returns:
		    A binary matrix representation of the input.
	**/
	static public function to_categorical(y:Dynamic, ?num_classes:Dynamic):Dynamic;
}