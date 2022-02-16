/* This file is generated, do not edit! */
package pandas.core.arrays.sparse.dtype;
@:pythonImport("pandas.core.arrays.sparse.dtype", "SparseDtype") extern class SparseDtype {
	static public var __annotations__ : Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		Default dir() implementation.
	**/
	public function __dir__():Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Check whether 'other' is equal to self.
		
		By default, 'other' is considered equal if either
		
		* it's a string matching 'self.name'.
		* it's an instance of this type and all of the attributes
		  in ``self._metadata`` are equal between `self` and `other`.
		
		Parameters
		----------
		other : Any
		
		Returns
		-------
		bool
	**/
	public function __eq__(other:Dynamic):Dynamic;
	/**
		Default object formatter.
	**/
	public function __format__(format_spec:Dynamic):Dynamic;
	/**
		Return self>=value.
	**/
	public function __ge__(value:Dynamic):Dynamic;
	/**
		Return getattr(self, name).
	**/
	public function __getattribute__(name:Dynamic):Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(?dtype:Dynamic, ?fill_value:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?dtype:Dynamic, ?fill_value:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(value:Dynamic):Dynamic;
	static public var __module__ : Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(other:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce__():Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce_ex__(protocol:Dynamic):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		Size of object in memory, in bytes.
	**/
	public function __sizeof__():Dynamic;
	/**
		Return str(self).
	**/
	public function __str__():Dynamic;
	/**
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	/**
		Can arrays of this dtype hold NA values?
	**/
	public var _can_hold_na : Dynamic;
	public function _check_fill_value():Dynamic;
	/**
		Return the common dtype, if one exists.
		
		Used in `find_common_type` implementation. This is for example used
		to determine the resulting dtype in a concat operation.
		
		If no common dtype exists, return None (which gives the other dtypes
		the chance to determine a common dtype). If all dtypes in the list
		return None, then the common dtype will be "object" dtype (this means
		it is never needed to return "object" dtype from this method itself).
		
		Parameters
		----------
		dtypes : list of dtypes
		    The dtypes for which to determine a common dtype. This is a list
		    of np.dtype or ExtensionDtype instances.
		
		Returns
		-------
		Common dtype (np.dtype or ExtensionDtype) or None
	**/
	public function _get_common_dtype(dtypes:Dynamic):Dynamic;
	/**
		Whether this dtype should be considered boolean.
		
		By default, ExtensionDtypes are assumed to be non-numeric.
		Setting this to True will affect the behavior of several places,
		e.g.
		
		* is_bool
		* boolean indexing
		
		Returns
		-------
		bool
	**/
	public var _is_boolean : Dynamic;
	public var _is_na_fill_value : Dynamic;
	/**
		Whether columns with this dtype should be considered numeric.
		
		By default ExtensionDtypes are assumed to be non-numeric.
		They'll be excluded from operations that exclude non-numeric
		columns, like (groupby) reductions, plotting, etc.
	**/
	public var _is_numeric : Dynamic;
	static public var _metadata : Dynamic;
	/**
		Parse a string to get the subtype
		
		Parameters
		----------
		dtype : str
		    A string like
		
		    * Sparse[subtype]
		    * Sparse[subtype, fill_value]
		
		Returns
		-------
		subtype : str
		
		Raises
		------
		ValueError
		    When the subtype cannot be extracted.
	**/
	static public function _parse_subtype(dtype:Dynamic):String;
	/**
		Whether the SparseDtype's subtype should be considered ``str``.
		
		Typically, pandas will store string data in an object-dtype array.
		When converting values to a dtype, e.g. in ``.astype``, we need to
		be more specific, we need the actual underlying type.
		
		Returns
		-------
		>>> SparseDtype(int, 1)._subtype_with_str
		dtype('int64')
		
		>>> SparseDtype(object, 1)._subtype_with_str
		dtype('O')
		
		>>> dtype = SparseDtype(str, '')
		>>> dtype.subtype
		dtype('O')
		
		>>> dtype._subtype_with_str
		<class 'str'>
	**/
	public var _subtype_with_str : Dynamic;
	/**
		Return the array type associated with this dtype.
		
		Returns
		-------
		type
	**/
	static public function construct_array_type():Dynamic;
	/**
		Construct a SparseDtype from a string form.
		
		Parameters
		----------
		string : str
		    Can take the following forms.
		
		    string           dtype
		    ================ ============================
		    'int'            SparseDtype[np.int64, 0]
		    'Sparse'         SparseDtype[np.float64, nan]
		    'Sparse[int]'    SparseDtype[np.int64, 0]
		    'Sparse[int, 0]' SparseDtype[np.int64, 0]
		    ================ ============================
		
		    It is not possible to specify non-default fill values
		    with a string. An argument like ``'Sparse[int, 1]'``
		    will raise a ``TypeError`` because the default fill value
		    for integers is 0.
		
		Returns
		-------
		SparseDtype
	**/
	static public function construct_from_string(string:Dynamic):Dynamic;
	/**
		Construct an ExtensionArray of this dtype with the given shape.
		
		Analogous to numpy.empty.
		
		Parameters
		----------
		shape : int or tuple[int]
		
		Returns
		-------
		ExtensionArray
	**/
	public function empty(shape:Dynamic):Dynamic;
	/**
		The fill value of the array.
		
		Converting the SparseArray to a dense ndarray will fill the
		array with this value.
		
		.. warning::
		
		   It's possible to end up with a SparseArray that has ``fill_value``
		   values in ``sp_values``. This can occur, for example, when setting
		   ``SparseArray.fill_value`` directly.
	**/
	public var fill_value : Dynamic;
	/**
		Check if we match 'dtype'.
		
		Parameters
		----------
		dtype : object
		    The object to check.
		
		Returns
		-------
		bool
		
		Notes
		-----
		The default implementation is True if
		
		1. ``cls.construct_from_string(dtype)`` is an instance
		   of ``cls``.
		2. ``dtype`` is an object and is an instance of ``cls``
		3. ``dtype`` has a ``dtype`` attribute, and any of the above
		   conditions is true for ``dtype.dtype``.
	**/
	static public function is_dtype(dtype:Dynamic):Dynamic;
	/**
		The sparse kind. Either 'integer', or 'block'.
	**/
	public var kind : Dynamic;
	/**
		Default NA value to use for this type.
		
		This is used in e.g. ExtensionArray.take. This should be the
		user-facing "boxed" version of the NA value, not the physical NA value
		for storage.  e.g. for JSONArray, this is an empty dictionary.
	**/
	public var na_value : Dynamic;
	/**
		A string identifying the data type.
		
		Will be used for display in, e.g. ``Series.dtype``
	**/
	public var name : Dynamic;
	/**
		Ordered list of field names, or None if there are no fields.
		
		This is for compatibility with NumPy arrays, and may be removed in the
		future.
	**/
	public var names : Dynamic;
	public var subtype : Dynamic;
	/**
		The scalar type for the array, e.g. ``int``
		
		It's expected ``ExtensionArray[item]`` returns an instance
		of ``ExtensionDtype.type`` for scalar ``item``, assuming
		that value is valid (not NA). NA values do not need to be
		instances of `type`.
	**/
	public var type : Dynamic;
	/**
		Convert the SparseDtype to a new dtype.
		
		This takes care of converting the ``fill_value``.
		
		Parameters
		----------
		dtype : Union[str, numpy.dtype, SparseDtype]
		    The new dtype to use.
		
		    * For a SparseDtype, it is simply returned
		    * For a NumPy dtype (or str), the current fill value
		      is converted to the new dtype, and a SparseDtype
		      with `dtype` and the new fill value is returned.
		
		Returns
		-------
		SparseDtype
		    A new SparseDtype with the correct `dtype` and fill value
		    for that `dtype`.
		
		Raises
		------
		ValueError
		    When the current fill value cannot be converted to the
		    new `dtype` (e.g. trying to convert ``np.nan`` to an
		    integer dtype).
		
		
		Examples
		--------
		>>> SparseDtype(int, 0).update_dtype(float)
		Sparse[float64, 0.0]
		
		>>> SparseDtype(int, 1).update_dtype(SparseDtype(float, np.nan))
		Sparse[float64, nan]
	**/
	public function update_dtype(dtype:Dynamic):Dynamic;
}