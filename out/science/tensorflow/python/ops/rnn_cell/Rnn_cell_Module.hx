/* This file is generated, do not edit! */
package tensorflow.python.ops.rnn_cell;
@:pythonImport("tensorflow.python.ops.rnn_cell") extern class Rnn_cell_Module {
	static public var ASSERT_LIKE_RNNCELL_ERROR_REGEXP : Dynamic;
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
		Raises a TypeError if cell is not like an RNNCell.
		
		NOTE: Do not rely on the error message (in particular in tests) which can be
		subject to change to increase readability. Use
		ASSERT_LIKE_RNNCELL_ERROR_REGEXP.
		
		Args:
		  cell_name: A string to give a meaningful error referencing to the name of
		    the functionargument.
		  cell: The object which should behave like an RNNCell.
		
		Raises:
		  TypeError: A human-friendly exception.
	**/
	static public function assert_like_rnncell(cell_name:Dynamic, cell:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}