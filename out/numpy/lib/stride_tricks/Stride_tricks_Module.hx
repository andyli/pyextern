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
		Returns the shape of the arrays that would result from broadcasting the
		supplied arrays against each other.
	**/
	static public function _broadcast_shape(?args:python.VarArgs<Dynamic>):Dynamic;
	static public function _broadcast_to(array:Dynamic, shape:Dynamic, subok:Dynamic, readonly:Dynamic):Dynamic;
	static public function _maybe_view_as_subclass(original_array:Dynamic, new_array:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Create a view into the array with the given shape and strides.
		
		.. warning:: This function has to be used with extreme care, see notes.
		
		Parameters
		----------
		x : ndarray
		    Array to create a new.
		shape : sequence of int, optional
		    The shape of the new array. Defaults to ``x.shape``.
		strides : sequence of int, optional
		    The strides of the new array. Defaults to ``x.strides``.
		subok : bool, optional
		    .. versionadded:: 1.10
		
		    If True, subclasses are preserved.
		writeable : bool, optional
		    .. versionadded:: 1.12
		
		    If set to False, the returned array will always be readonly.
		    Otherwise it will be writable if the original array was. It
		    is advisable to set this to False if possible (see Notes).
		
		Returns
		-------
		view : ndarray
		
		See also
		--------
		broadcast_to: broadcast an array to a given shape.
		reshape : reshape an array.
		
		Notes
		-----
		``as_strided`` creates a view into the array given the exact strides
		and shape. This means it manipulates the internal data structure of
		ndarray and, if done incorrectly, the array elements can point to
		invalid memory and can corrupt results or crash your program.
		It is advisable to always use the original ``x.strides`` when
		calculating new strides to avoid reliance on a contiguous memory
		layout.
		
		Furthermore, arrays created with this function often contain self
		overlapping memory, so that two elements are identical.
		Vectorized write operations on such arrays will typically be
		unpredictable. They may even give different results for small, large,
		or transposed arrays.
		Since writing to these arrays has to be tested and done with great
		care, you may want to use ``writeable=False`` to avoid accidental write
		operations.
		
		For these reasons it is advisable to avoid ``as_strided`` when
		possible.
	**/
	static public function as_strided(x:Dynamic, ?shape:Dynamic, ?strides:Dynamic, ?subok:Dynamic, ?writeable:Dynamic):numpy.Ndarray;
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