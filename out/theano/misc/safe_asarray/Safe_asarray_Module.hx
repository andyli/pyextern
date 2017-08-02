/* This file is generated, do not edit! */
package theano.misc.safe_asarray;
@:pythonImport("theano.misc.safe_asarray") extern class Safe_asarray_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __docformat__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Convert the input to a Numpy array.
		
		This function is almost identical to ``numpy.asarray``, but it should be
		used instead of its numpy counterpart when a data type is provided in
		order to perform type conversion if required.
		The reason is that ``numpy.asarray`` may not actually update the array's
		data type to the user-provided type. For more information see ticket
		http://projects.scipy.org/numpy/ticket/870.
		
		In that case, we check that both dtype have the same string
		description (byte order, basic type, and number of bytes), and
		return a view with the desired dtype.
		
		This function's name starts with a '_' to indicate that it is meant to be
		used internally. It is imported so as to be available directly through
		    theano._asarray
	**/
	static public function _asarray(a:Dynamic, dtype:Dynamic, ?order:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}