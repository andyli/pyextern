/* This file is generated, do not edit! */
package numpy.lib.stride_tricks;
@:pythonImport("numpy.lib.stride_tricks") extern class Stride_tricks_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Returns the shape of the ararys that would result from broadcasting the
		supplied arrays against each other.
	**/
	static public function _broadcast_shape(?args:python.VarArgs<Dynamic>):Dynamic;
	static public function _broadcast_to(array:Dynamic, shape:Dynamic, subok:Dynamic, readonly:Dynamic):Dynamic;
	static public function _maybe_view_as_subclass(original_array:Dynamic, new_array:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Make an ndarray from the given array with the given shape and strides.
		    
	**/
	static public function as_strided(x:Dynamic, ?shape:Dynamic, ?strides:Dynamic, ?subok:Dynamic):Dynamic;
	/**
		Broadcast any number of arrays against each other.
		
		Parameters
		----------
		`*args` : array_likes
		    The arrays to broadcast.
		
		subok : bool, optional
		    If True, then sub-classes will be passed-through, otherwise
		    the returned arrays will be forced to be a base-class array (default).
		
		Returns
		-------
		broadcasted : list of arrays
		    These arrays are views on the original arrays.  They are typically
		    not contiguous.  Furthermore, more than one element of a
		    broadcasted array may refer to a single memory location.  If you
		    need to write to the arrays, make copies first.
		
		Examples
		--------
		>>> x = np.array([[1,2,3]])
		>>> y = np.array([[1],[2],[3]])
		>>> np.broadcast_arrays(x, y)
		[array([[1, 2, 3],
		       [1, 2, 3],
		       [1, 2, 3]]), array([[1, 1, 1],
		       [2, 2, 2],
		       [3, 3, 3]])]
		
		Here is a useful idiom for getting contiguous copies instead of
		non-contiguous views.
		
		>>> [np.array(a) for a in np.broadcast_arrays(x, y)]
		[array([[1, 2, 3],
		       [1, 2, 3],
		       [1, 2, 3]]), array([[1, 1, 1],
		       [2, 2, 2],
		       [3, 3, 3]])]
	**/
	static public function broadcast_arrays(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Broadcast an array to a new shape.
		
		Parameters
		----------
		array : array_like
		    The array to broadcast.
		shape : tuple
		    The shape of the desired array.
		subok : bool, optional
		    If True, then sub-classes will be passed-through, otherwise
		    the returned array will be forced to be a base-class array (default).
		
		Returns
		-------
		broadcast : array
		    A readonly view on the original array with the given shape. It is
		    typically not contiguous. Furthermore, more than one element of a
		    broadcasted array may refer to a single memory location.
		
		Raises
		------
		ValueError
		    If the array is not compatible with the new shape according to NumPy's
		    broadcasting rules.
		
		Notes
		-----
		.. versionadded:: 1.10.0
		
		Examples
		--------
		>>> x = np.array([1, 2, 3])
		>>> np.broadcast_to(x, (3, 3))
		array([[1, 2, 3],
		       [1, 2, 3],
		       [1, 2, 3]])
	**/
	static public function broadcast_to(array:Dynamic, shape:Dynamic, ?subok:Dynamic):Array<Dynamic>;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}