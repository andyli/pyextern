/* This file is generated, do not edit! */
package pandas.core.panel;
@:pythonImport("pandas.core.panel", "LongPanel") extern class LongPanel {
	/**
		Transpose index and columns.
		
		Reflect the DataFrame over its main diagonal by writing rows as columns
		and vice-versa. The property :attr:`.T` is an accessor to the method
		:meth:`transpose`.
		
		Parameters
		----------
		copy : bool, default False
		    If True, the underlying data is copied. Otherwise (default), no
		    copy is made if possible.
		*args, **kwargs
		    Additional keywords have no effect but might be accepted for
		    compatibility with numpy.
		
		Returns
		-------
		DataFrame
		    The transposed DataFrame.
		
		See Also
		--------
		numpy.transpose : Permute the dimensions of a given array.
		
		Notes
		-----
		Transposing a DataFrame with mixed dtypes will result in a homogeneous
		DataFrame with the `object` dtype. In such a case, a copy of the data
		is always made.
		
		Examples
		--------
		**Square DataFrame with homogeneous dtype**
		
		>>> d1 = {'col1': [1, 2], 'col2': [3, 4]}
		>>> df1 = pd.DataFrame(data=d1)
		>>> df1
		   col1  col2
		0     1     3
		1     2     4
		
		>>> df1_transposed = df1.T # or df1.transpose()
		>>> df1_transposed
		      0  1
		col1  1  2
		col2  3  4
		
		When the dtype is homogeneous in the original DataFrame, we get a
		transposed DataFrame with the same dtype:
		
		>>> df1.dtypes
		col1    int64
		col2    int64
		dtype: object
		>>> df1_transposed.dtypes
		0    int64
		1    int64
		dtype: object
		
		**Non-square DataFrame with mixed dtypes**
		
		>>> d2 = {'name': ['Alice', 'Bob'],
		...       'score': [9.5, 8],
		...       'employed': [False, True],
		...       'kids': [0, 0]}
		>>> df2 = pd.DataFrame(data=d2)
		>>> df2
		    name  score  employed  kids
		0  Alice    9.5     False     0
		1    Bob    8.0      True     0
		
		>>> df2_transposed = df2.T # or df2.transpose()
		>>> df2_transposed
		              0     1
		name      Alice   Bob
		score       9.5     8
		employed  False  True
		kids          0     0
		
		When the DataFrame has mixed dtypes, we get a transposed DataFrame with
		the `object` dtype:
		
		>>> df2.dtypes
		name         object
		score       float64
		employed       bool
		kids          int64
		dtype: object
		>>> df2_transposed.dtypes
		0    object
		1    object
		dtype: object
	**/
	public var T : Dynamic;
	static public var _AXIS_ALIASES : Dynamic;
	static public var _AXIS_IALIASES : Dynamic;
	static public var _AXIS_LEN : Dynamic;
	static public var _AXIS_NAMES : Dynamic;
	static public var _AXIS_NUMBERS : Dynamic;
	static public var _AXIS_ORDERS : Dynamic;
	static public var _AXIS_REVERSED : Dynamic;
	static public var _AXIS_SLICEMAP : Dynamic;
	public function __abs__():Dynamic;
	/**
		Binary operator __add__ with support to substitute a fill_value for missing data in
		one of the inputs
		
		Parameters
		----------
		other : Series, DataFrame, or constant
		axis : {0, 1, 'index', 'columns'}
		    For Series input, axis to match Series index on
		fill_value : None or float value, default None
		    Fill existing missing (NaN) values, and any new element needed for
		    successful DataFrame alignment, with this value before computation.
		    If data in both corresponding DataFrame locations is missing
		    the result will be missing
		level : int or name
		    Broadcast across a level, matching Index values on the
		    passed MultiIndex level
		
		Notes
		-----
		Mismatched indices will be unioned together
		
		Returns
		-------
		result : DataFrame
	**/
	public function __add__(other:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?fill_value:Dynamic):pandas.DataFrame;
	/**
		Binary operator __and__ with support to substitute a fill_value for missing data in
		one of the inputs
		
		Parameters
		----------
		other : Series, DataFrame, or constant
		axis : {0, 1, 'index', 'columns'}
		    For Series input, axis to match Series index on
		fill_value : None or float value, default None
		    Fill existing missing (NaN) values, and any new element needed for
		    successful DataFrame alignment, with this value before computation.
		    If data in both corresponding DataFrame locations is missing
		    the result will be missing
		level : int or name
		    Broadcast across a level, matching Index values on the
		    passed MultiIndex level
		
		Notes
		-----
		Mismatched indices will be unioned together
		
		Returns
		-------
		result : DataFrame
	**/
	public function __and__(other:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?fill_value:Dynamic):pandas.DataFrame;
	public function __array__(?dtype:Dynamic):Dynamic;
	public function __array_wrap__(result:Dynamic, ?context:Dynamic):Dynamic;
	public function __bool__():Dynamic;
	/**
		Return a string representation for a particular object.
		
		Invoked by bytes(obj) in py3 only.
		Yields a bytestring in both py2/py3.
	**/
	public function __bytes__():Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		True if the key is in the info axis
	**/
	public function __contains__(key:Dynamic):Dynamic;
	public function __copy__(?deep:Dynamic):Dynamic;
	public function __deepcopy__(?memo:Dynamic):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	/**
		Delete item
	**/
	public function __delitem__(key:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		Provide method name lookup and completion
		Only provide 'public' methods
	**/
	public function __dir__():Dynamic;
	/**
		Binary operator __truediv__ with support to substitute a fill_value for missing data in
		one of the inputs
		
		Parameters
		----------
		other : Series, DataFrame, or constant
		axis : {0, 1, 'index', 'columns'}
		    For Series input, axis to match Series index on
		fill_value : None or float value, default None
		    Fill existing missing (NaN) values, and any new element needed for
		    successful DataFrame alignment, with this value before computation.
		    If data in both corresponding DataFrame locations is missing
		    the result will be missing
		level : int or name
		    Broadcast across a level, matching Index values on the
		    passed MultiIndex level
		
		Notes
		-----
		Mismatched indices will be unioned together
		
		Returns
		-------
		result : DataFrame
	**/
	public function __div__(other:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?fill_value:Dynamic):pandas.DataFrame;
	static public var __doc__ : Dynamic;
	/**
		Wrapper for comparison method __eq__
	**/
	public function __eq__(other:Dynamic):Dynamic;
	/**
		Propagate metadata from other to self.
		
		Parameters
		----------
		other : the object from which to get the attributes that we are going
		    to propagate
		method : optional, a passed method name ; possibly to take different
		    types of propagation actions based on this
	**/
	public function __finalize__(other:Dynamic, ?method:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Binary operator __floordiv__ with support to substitute a fill_value for missing data in
		one of the inputs
		
		Parameters
		----------
		other : Series, DataFrame, or constant
		axis : {0, 1, 'index', 'columns'}
		    For Series input, axis to match Series index on
		fill_value : None or float value, default None
		    Fill existing missing (NaN) values, and any new element needed for
		    successful DataFrame alignment, with this value before computation.
		    If data in both corresponding DataFrame locations is missing
		    the result will be missing
		level : int or name
		    Broadcast across a level, matching Index values on the
		    passed MultiIndex level
		
		Notes
		-----
		Mismatched indices will be unioned together
		
		Returns
		-------
		result : DataFrame
	**/
	public function __floordiv__(other:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?fill_value:Dynamic):pandas.DataFrame;
	/**
		default object formatter
	**/
	public function __format__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Wrapper for comparison method __ge__
	**/
	public function __ge__(other:Dynamic):Dynamic;
	/**
		After regular attribute access, try looking up the name
		This allows simpler access to columns for interactive use.
	**/
	public function __getattr__(name:Dynamic):Dynamic;
	/**
		Return getattr(self, name).
	**/
	public function __getattribute__(name:Dynamic):Dynamic;
	public function __getitem__(key:Dynamic):Dynamic;
	public function __getstate__():Dynamic;
	/**
		Wrapper for comparison method __gt__
	**/
	public function __gt__(other:Dynamic):Dynamic;
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	public function __iadd__(other:Dynamic):Dynamic;
	public function __iand__(other:Dynamic):Dynamic;
	public function __ifloordiv__(other:Dynamic):Dynamic;
	public function __imod__(other:Dynamic):Dynamic;
	public function __imul__(other:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __invert__():Dynamic;
	public function __ior__(other:Dynamic):Dynamic;
	public function __ipow__(other:Dynamic):Dynamic;
	public function __isub__(other:Dynamic):Dynamic;
	/**
		Iterate over infor axis
	**/
	public function __iter__():Dynamic;
	public function __itruediv__(other:Dynamic):Dynamic;
	public function __ixor__(other:Dynamic):Dynamic;
	/**
		Wrapper for comparison method __le__
	**/
	public function __le__(other:Dynamic):Dynamic;
	/**
		Returns length of info axis, but here we use the index 
	**/
	public function __len__():Dynamic;
	/**
		Wrapper for comparison method __lt__
	**/
	public function __lt__(other:Dynamic):Dynamic;
	/**
		Matrix multiplication using binary `@` operator in Python>=3.5 
	**/
	public function __matmul__(other:Dynamic):Dynamic;
	/**
		Binary operator __mod__ with support to substitute a fill_value for missing data in
		one of the inputs
		
		Parameters
		----------
		other : Series, DataFrame, or constant
		axis : {0, 1, 'index', 'columns'}
		    For Series input, axis to match Series index on
		fill_value : None or float value, default None
		    Fill existing missing (NaN) values, and any new element needed for
		    successful DataFrame alignment, with this value before computation.
		    If data in both corresponding DataFrame locations is missing
		    the result will be missing
		level : int or name
		    Broadcast across a level, matching Index values on the
		    passed MultiIndex level
		
		Notes
		-----
		Mismatched indices will be unioned together
		
		Returns
		-------
		result : DataFrame
	**/
	public function __mod__(other:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?fill_value:Dynamic):pandas.DataFrame;
	static public var __module__ : Dynamic;
	/**
		Binary operator __mul__ with support to substitute a fill_value for missing data in
		one of the inputs
		
		Parameters
		----------
		other : Series, DataFrame, or constant
		axis : {0, 1, 'index', 'columns'}
		    For Series input, axis to match Series index on
		fill_value : None or float value, default None
		    Fill existing missing (NaN) values, and any new element needed for
		    successful DataFrame alignment, with this value before computation.
		    If data in both corresponding DataFrame locations is missing
		    the result will be missing
		level : int or name
		    Broadcast across a level, matching Index values on the
		    passed MultiIndex level
		
		Notes
		-----
		Mismatched indices will be unioned together
		
		Returns
		-------
		result : DataFrame
	**/
	public function __mul__(other:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?fill_value:Dynamic):pandas.DataFrame;
	/**
		Wrapper for comparison method __ne__
	**/
	public function __ne__(other:Dynamic):Dynamic;
	public function __neg__():Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function __nonzero__():Dynamic;
	/**
		Binary operator __or__ with support to substitute a fill_value for missing data in
		one of the inputs
		
		Parameters
		----------
		other : Series, DataFrame, or constant
		axis : {0, 1, 'index', 'columns'}
		    For Series input, axis to match Series index on
		fill_value : None or float value, default None
		    Fill existing missing (NaN) values, and any new element needed for
		    successful DataFrame alignment, with this value before computation.
		    If data in both corresponding DataFrame locations is missing
		    the result will be missing
		level : int or name
		    Broadcast across a level, matching Index values on the
		    passed MultiIndex level
		
		Notes
		-----
		Mismatched indices will be unioned together
		
		Returns
		-------
		result : DataFrame
	**/
	public function __or__(other:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?fill_value:Dynamic):pandas.DataFrame;
	public function __pos__():Dynamic;
	/**
		Binary operator __pow__ with support to substitute a fill_value for missing data in
		one of the inputs
		
		Parameters
		----------
		other : Series, DataFrame, or constant
		axis : {0, 1, 'index', 'columns'}
		    For Series input, axis to match Series index on
		fill_value : None or float value, default None
		    Fill existing missing (NaN) values, and any new element needed for
		    successful DataFrame alignment, with this value before computation.
		    If data in both corresponding DataFrame locations is missing
		    the result will be missing
		level : int or name
		    Broadcast across a level, matching Index values on the
		    passed MultiIndex level
		
		Notes
		-----
		Mismatched indices will be unioned together
		
		Returns
		-------
		result : DataFrame
	**/
	public function __pow__(other:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?fill_value:Dynamic):pandas.DataFrame;
	/**
		Binary operator __radd__ with support to substitute a fill_value for missing data in
		one of the inputs
		
		Parameters
		----------
		other : Series, DataFrame, or constant
		axis : {0, 1, 'index', 'columns'}
		    For Series input, axis to match Series index on
		fill_value : None or float value, default None
		    Fill existing missing (NaN) values, and any new element needed for
		    successful DataFrame alignment, with this value before computation.
		    If data in both corresponding DataFrame locations is missing
		    the result will be missing
		level : int or name
		    Broadcast across a level, matching Index values on the
		    passed MultiIndex level
		
		Notes
		-----
		Mismatched indices will be unioned together
		
		Returns
		-------
		result : DataFrame
	**/
	public function __radd__(other:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?fill_value:Dynamic):pandas.DataFrame;
	/**
		Binary operator __rand__ with support to substitute a fill_value for missing data in
		one of the inputs
		
		Parameters
		----------
		other : Series, DataFrame, or constant
		axis : {0, 1, 'index', 'columns'}
		    For Series input, axis to match Series index on
		fill_value : None or float value, default None
		    Fill existing missing (NaN) values, and any new element needed for
		    successful DataFrame alignment, with this value before computation.
		    If data in both corresponding DataFrame locations is missing
		    the result will be missing
		level : int or name
		    Broadcast across a level, matching Index values on the
		    passed MultiIndex level
		
		Notes
		-----
		Mismatched indices will be unioned together
		
		Returns
		-------
		result : DataFrame
	**/
	public function __rand__(other:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?fill_value:Dynamic):pandas.DataFrame;
	/**
		Binary operator __rtruediv__ with support to substitute a fill_value for missing data in
		one of the inputs
		
		Parameters
		----------
		other : Series, DataFrame, or constant
		axis : {0, 1, 'index', 'columns'}
		    For Series input, axis to match Series index on
		fill_value : None or float value, default None
		    Fill existing missing (NaN) values, and any new element needed for
		    successful DataFrame alignment, with this value before computation.
		    If data in both corresponding DataFrame locations is missing
		    the result will be missing
		level : int or name
		    Broadcast across a level, matching Index values on the
		    passed MultiIndex level
		
		Notes
		-----
		Mismatched indices will be unioned together
		
		Returns
		-------
		result : DataFrame
	**/
	public function __rdiv__(other:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?fill_value:Dynamic):pandas.DataFrame;
	/**
		helper for pickle
	**/
	public function __reduce__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce_ex__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return a string representation for a particular object.
		
		Yields Bytestring in Py2, Unicode String in py3.
	**/
	public function __repr__():Dynamic;
	/**
		Binary operator __rfloordiv__ with support to substitute a fill_value for missing data in
		one of the inputs
		
		Parameters
		----------
		other : Series, DataFrame, or constant
		axis : {0, 1, 'index', 'columns'}
		    For Series input, axis to match Series index on
		fill_value : None or float value, default None
		    Fill existing missing (NaN) values, and any new element needed for
		    successful DataFrame alignment, with this value before computation.
		    If data in both corresponding DataFrame locations is missing
		    the result will be missing
		level : int or name
		    Broadcast across a level, matching Index values on the
		    passed MultiIndex level
		
		Notes
		-----
		Mismatched indices will be unioned together
		
		Returns
		-------
		result : DataFrame
	**/
	public function __rfloordiv__(other:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?fill_value:Dynamic):pandas.DataFrame;
	/**
		Matrix multiplication using binary `@` operator in Python>=3.5 
	**/
	public function __rmatmul__(other:Dynamic):Dynamic;
	/**
		Binary operator __rmod__ with support to substitute a fill_value for missing data in
		one of the inputs
		
		Parameters
		----------
		other : Series, DataFrame, or constant
		axis : {0, 1, 'index', 'columns'}
		    For Series input, axis to match Series index on
		fill_value : None or float value, default None
		    Fill existing missing (NaN) values, and any new element needed for
		    successful DataFrame alignment, with this value before computation.
		    If data in both corresponding DataFrame locations is missing
		    the result will be missing
		level : int or name
		    Broadcast across a level, matching Index values on the
		    passed MultiIndex level
		
		Notes
		-----
		Mismatched indices will be unioned together
		
		Returns
		-------
		result : DataFrame
	**/
	public function __rmod__(other:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?fill_value:Dynamic):pandas.DataFrame;
	/**
		Binary operator __rmul__ with support to substitute a fill_value for missing data in
		one of the inputs
		
		Parameters
		----------
		other : Series, DataFrame, or constant
		axis : {0, 1, 'index', 'columns'}
		    For Series input, axis to match Series index on
		fill_value : None or float value, default None
		    Fill existing missing (NaN) values, and any new element needed for
		    successful DataFrame alignment, with this value before computation.
		    If data in both corresponding DataFrame locations is missing
		    the result will be missing
		level : int or name
		    Broadcast across a level, matching Index values on the
		    passed MultiIndex level
		
		Notes
		-----
		Mismatched indices will be unioned together
		
		Returns
		-------
		result : DataFrame
	**/
	public function __rmul__(other:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?fill_value:Dynamic):pandas.DataFrame;
	/**
		Binary operator __ror__ with support to substitute a fill_value for missing data in
		one of the inputs
		
		Parameters
		----------
		other : Series, DataFrame, or constant
		axis : {0, 1, 'index', 'columns'}
		    For Series input, axis to match Series index on
		fill_value : None or float value, default None
		    Fill existing missing (NaN) values, and any new element needed for
		    successful DataFrame alignment, with this value before computation.
		    If data in both corresponding DataFrame locations is missing
		    the result will be missing
		level : int or name
		    Broadcast across a level, matching Index values on the
		    passed MultiIndex level
		
		Notes
		-----
		Mismatched indices will be unioned together
		
		Returns
		-------
		result : DataFrame
	**/
	public function __ror__(other:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?fill_value:Dynamic):pandas.DataFrame;
	public function __round__(?decimals:Dynamic):Dynamic;
	/**
		Binary operator __rpow__ with support to substitute a fill_value for missing data in
		one of the inputs
		
		Parameters
		----------
		other : Series, DataFrame, or constant
		axis : {0, 1, 'index', 'columns'}
		    For Series input, axis to match Series index on
		fill_value : None or float value, default None
		    Fill existing missing (NaN) values, and any new element needed for
		    successful DataFrame alignment, with this value before computation.
		    If data in both corresponding DataFrame locations is missing
		    the result will be missing
		level : int or name
		    Broadcast across a level, matching Index values on the
		    passed MultiIndex level
		
		Notes
		-----
		Mismatched indices will be unioned together
		
		Returns
		-------
		result : DataFrame
	**/
	public function __rpow__(other:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?fill_value:Dynamic):pandas.DataFrame;
	/**
		Binary operator __rsub__ with support to substitute a fill_value for missing data in
		one of the inputs
		
		Parameters
		----------
		other : Series, DataFrame, or constant
		axis : {0, 1, 'index', 'columns'}
		    For Series input, axis to match Series index on
		fill_value : None or float value, default None
		    Fill existing missing (NaN) values, and any new element needed for
		    successful DataFrame alignment, with this value before computation.
		    If data in both corresponding DataFrame locations is missing
		    the result will be missing
		level : int or name
		    Broadcast across a level, matching Index values on the
		    passed MultiIndex level
		
		Notes
		-----
		Mismatched indices will be unioned together
		
		Returns
		-------
		result : DataFrame
	**/
	public function __rsub__(other:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?fill_value:Dynamic):pandas.DataFrame;
	/**
		Binary operator __rtruediv__ with support to substitute a fill_value for missing data in
		one of the inputs
		
		Parameters
		----------
		other : Series, DataFrame, or constant
		axis : {0, 1, 'index', 'columns'}
		    For Series input, axis to match Series index on
		fill_value : None or float value, default None
		    Fill existing missing (NaN) values, and any new element needed for
		    successful DataFrame alignment, with this value before computation.
		    If data in both corresponding DataFrame locations is missing
		    the result will be missing
		level : int or name
		    Broadcast across a level, matching Index values on the
		    passed MultiIndex level
		
		Notes
		-----
		Mismatched indices will be unioned together
		
		Returns
		-------
		result : DataFrame
	**/
	public function __rtruediv__(other:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?fill_value:Dynamic):pandas.DataFrame;
	/**
		Binary operator __rxor__ with support to substitute a fill_value for missing data in
		one of the inputs
		
		Parameters
		----------
		other : Series, DataFrame, or constant
		axis : {0, 1, 'index', 'columns'}
		    For Series input, axis to match Series index on
		fill_value : None or float value, default None
		    Fill existing missing (NaN) values, and any new element needed for
		    successful DataFrame alignment, with this value before computation.
		    If data in both corresponding DataFrame locations is missing
		    the result will be missing
		level : int or name
		    Broadcast across a level, matching Index values on the
		    passed MultiIndex level
		
		Notes
		-----
		Mismatched indices will be unioned together
		
		Returns
		-------
		result : DataFrame
	**/
	public function __rxor__(other:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?fill_value:Dynamic):pandas.DataFrame;
	/**
		After regular attribute access, try setting the name
		This allows simpler access to columns for interactive use.
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	public function __setitem__(key:Dynamic, value:Dynamic):Dynamic;
	public function __setstate__(state:Dynamic):Dynamic;
	/**
		Generates the total memory usage for an object that returns
		either a value or Series of values
	**/
	public function __sizeof__():Dynamic;
	/**
		Return a string representation for a particular Object
		
		Invoked by str(df) in both py2/py3.
		Yields Bytestring in Py2, Unicode String in py3.
	**/
	public function __str__():Dynamic;
	/**
		Binary operator __sub__ with support to substitute a fill_value for missing data in
		one of the inputs
		
		Parameters
		----------
		other : Series, DataFrame, or constant
		axis : {0, 1, 'index', 'columns'}
		    For Series input, axis to match Series index on
		fill_value : None or float value, default None
		    Fill existing missing (NaN) values, and any new element needed for
		    successful DataFrame alignment, with this value before computation.
		    If data in both corresponding DataFrame locations is missing
		    the result will be missing
		level : int or name
		    Broadcast across a level, matching Index values on the
		    passed MultiIndex level
		
		Notes
		-----
		Mismatched indices will be unioned together
		
		Returns
		-------
		result : DataFrame
	**/
	public function __sub__(other:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?fill_value:Dynamic):pandas.DataFrame;
	/**
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Binary operator __truediv__ with support to substitute a fill_value for missing data in
		one of the inputs
		
		Parameters
		----------
		other : Series, DataFrame, or constant
		axis : {0, 1, 'index', 'columns'}
		    For Series input, axis to match Series index on
		fill_value : None or float value, default None
		    Fill existing missing (NaN) values, and any new element needed for
		    successful DataFrame alignment, with this value before computation.
		    If data in both corresponding DataFrame locations is missing
		    the result will be missing
		level : int or name
		    Broadcast across a level, matching Index values on the
		    passed MultiIndex level
		
		Notes
		-----
		Mismatched indices will be unioned together
		
		Returns
		-------
		result : DataFrame
	**/
	public function __truediv__(other:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?fill_value:Dynamic):pandas.DataFrame;
	/**
		Return a string representation for a particular DataFrame
		
		Invoked by unicode(df) in py2 only. Yields a Unicode String in both
		py2/py3.
	**/
	public function __unicode__():Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	/**
		Binary operator __xor__ with support to substitute a fill_value for missing data in
		one of the inputs
		
		Parameters
		----------
		other : Series, DataFrame, or constant
		axis : {0, 1, 'index', 'columns'}
		    For Series input, axis to match Series index on
		fill_value : None or float value, default None
		    Fill existing missing (NaN) values, and any new element needed for
		    successful DataFrame alignment, with this value before computation.
		    If data in both corresponding DataFrame locations is missing
		    the result will be missing
		level : int or name
		    Broadcast across a level, matching Index values on the
		    passed MultiIndex level
		
		Notes
		-----
		Mismatched indices will be unioned together
		
		Returns
		-------
		result : DataFrame
	**/
	public function __xor__(other:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?fill_value:Dynamic):pandas.DataFrame;
	static public var _accessors : Dynamic;
	/**
		Add the operations to the cls; evaluate the doc strings again
	**/
	static public function _add_numeric_operations():Dynamic;
	/**
		Add the series only operations to the cls; evaluate the doc
		strings again.
	**/
	static public function _add_series_only_operations():Dynamic;
	/**
		Add the series or dataframe only operations to the cls; evaluate
		the doc strings again.
	**/
	static public function _add_series_or_dataframe_operations():Dynamic;
	public function _agg_by_level(name:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?skipna:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var _agg_doc : Dynamic;
	/**
		provide an implementation for the aggregators
		
		Parameters
		----------
		arg : string, dict, function
		*args : args to pass on to the function
		**kwargs : kwargs to pass on to the function
		
		Returns
		-------
		tuple of result, how
		
		Notes
		-----
		how can be a string describe the required post-processing, or
		None if not required
	**/
	public function _aggregate(arg:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function _aggregate_multiple_funcs(arg:Dynamic, _level:Dynamic, _axis:Dynamic):Dynamic;
	public function _align_frame(other:Dynamic, ?join:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?copy:Dynamic, ?fill_value:Dynamic, ?method:Dynamic, ?limit:Dynamic, ?fill_axis:Dynamic):Dynamic;
	public function _align_series(other:Dynamic, ?join:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?copy:Dynamic, ?fill_value:Dynamic, ?method:Dynamic, ?limit:Dynamic, ?fill_axis:Dynamic):Dynamic;
	/**
		provide boxed values for a column 
	**/
	public function _box_col_values(values:Dynamic, items:Dynamic):Dynamic;
	public function _box_item_values(key:Dynamic, values:Dynamic):Dynamic;
	static public var _builtin_table : Dynamic;
	/**
		check whether we allow in-place setting with this type of value 
	**/
	public function _check_inplace_setting(value:Dynamic):Dynamic;
	/**
		Check if we are a view, have a cacher, and are of mixed type.
		If so, then force a setitem_copy check.
		
		Should be called just near setting a value
		
		Will return a boolean if it we are a view and are cached, but a
		single-dtype meaning that the cacher should be updated following
		setting.
	**/
	public function _check_is_chained_assignment_possible():Dynamic;
	/**
		Check whether `key` matches both a level of the input `axis` and a
		label of the other axis and raise a ``FutureWarning`` if this is the
		case.
		
		Note: This method will be altered to raise an ambiguity exception in
		a future version.
		
		Parameters
		----------
		key: str or object
		    label or level name
		axis: int, default 0
		    Axis that levels are associated with (0 for index, 1 for columns)
		stacklevel: int, default 1
		    Stack level used when a FutureWarning is raised (see below).
		
		Returns
		-------
		ambiguous: bool
		
		Raises
		------
		FutureWarning
		    if `key` is ambiguous. This will become an ambiguity error in a
		    future version
	**/
	public function _check_label_or_level_ambiguity(key:Dynamic, ?axis:Dynamic, ?stacklevel:Dynamic):Bool;
	/**
		Validate percentiles (used by describe and quantile).
	**/
	public function _check_percentile(q:Dynamic):Dynamic;
	/**
		Parameters
		----------
		stacklevel : integer, default 4
		   the level to show of the stack when the error is output
		t : string, the type of setting error
		force : boolean, default False
		   if True, then force showing an error
		
		validate if we are doing a settitem on a chained copy.
		
		If you call this function, be sure to set the stacklevel such that the
		user will see the error *at the level of setting*
		
		It is technically possible to figure out that we are setting on
		a copy even WITH a multi-dtyped pandas object. In other words, some
		blocks may be views while other are not. Currently _is_view will ALWAYS
		return False for multi-blocks to avoid having to handle this case.
		
		df = DataFrame(np.arange(0,9), columns=['count'])
		df['group'] = 'b'
		
		# This technically need not raise SettingWithCopy if both are view
		# (which is not # generally guaranteed but is usually True.  However,
		# this is in general not a good practice and we recommend using .loc.
		df.iloc[0:5]['group'] = 'a'
	**/
	public function _check_setitem_copy(?stacklevel:Dynamic, ?t:Dynamic, ?force:Dynamic):Dynamic;
	public function _clear_item_cache(?i:Dynamic):Dynamic;
	public function _clip_with_one_bound(threshold:Dynamic, method:Dynamic, axis:Dynamic, inplace:Dynamic):Dynamic;
	public function _clip_with_scalar(lower:Dynamic, upper:Dynamic, ?inplace:Dynamic):Dynamic;
	public function _combine_const(other:Dynamic, func:Dynamic, ?errors:Dynamic, ?try_cast:Dynamic):Dynamic;
	public function _combine_frame(other:Dynamic, func:Dynamic, ?fill_value:Dynamic, ?level:Dynamic):Dynamic;
	public function _combine_match_columns(other:Dynamic, func:Dynamic, ?level:Dynamic, ?try_cast:Dynamic):Dynamic;
	public function _combine_match_index(other:Dynamic, func:Dynamic, ?level:Dynamic):Dynamic;
	public function _compare_frame(other:Dynamic, func:Dynamic, str_rep:Dynamic):Dynamic;
	/**
		Compute NDFrame with "consolidated" internals (data of each dtype
		grouped together in a single ndarray).
		
		Parameters
		----------
		inplace : boolean, default False
		    If False return new object, otherwise modify existing object
		
		Returns
		-------
		consolidated : type of caller
	**/
	public function _consolidate(?inplace:Dynamic):Dynamic;
	/**
		Consolidate data in place and return None
	**/
	public function _consolidate_inplace():Dynamic;
	/**
		Return an axes dictionary for myself.
	**/
	public function _construct_axes_dict(?axes:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return an axes dictionary for myself.
	**/
	public function _construct_axes_dict_for_slice(?axes:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return an axes dictionary for the passed axes.
	**/
	static public function _construct_axes_dict_from(self:Dynamic, axes:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Construct and returns axes if supplied in args/kwargs.
		
		If require_all, raise if all axis arguments are not supplied
		return a tuple of (axes, kwargs).
	**/
	public function _construct_axes_from_arguments(args:Dynamic, kwargs:Dynamic, ?require_all:Dynamic):Dynamic;
	/**
		Used when a manipulation result has the same dimensions as the
		original.
	**/
	public var _constructor : Dynamic;
	/**
		Used when a manipulation result has one higher dimension as the
		original, such as Series.to_frame() and DataFrame.to_panel()
	**/
	public var _constructor_expanddim : Dynamic;
	/**
		One-dimensional ndarray with axis labels (including time series).
		
		Labels need not be unique but must be a hashable type. The object
		supports both integer- and label-based indexing and provides a host of
		methods for performing operations involving the index. Statistical
		methods from ndarray have been overridden to automatically exclude
		missing data (currently represented as NaN).
		
		Operations between Series (+, -, /, *, **) align values based on their
		associated index values-- they need not be the same length. The result
		index will be the sorted union of the two indexes.
		
		Parameters
		----------
		data : array-like, dict, or scalar value
		    Contains data stored in Series
		
		    .. versionchanged :: 0.23.0
		       If data is a dict, argument order is maintained for Python 3.6
		       and later.
		
		index : array-like or Index (1d)
		    Values must be hashable and have the same length as `data`.
		    Non-unique index values are allowed. Will default to
		    RangeIndex (0, 1, 2, ..., n) if not provided. If both a dict and index
		    sequence are used, the index will override the keys found in the
		    dict.
		dtype : numpy.dtype or None
		    If None, dtype will be inferred
		copy : boolean, default False
		    Copy input data
	**/
	static public function _constructor_sliced(?data:Dynamic, ?index:Dynamic, ?dtype:Dynamic, ?name:Dynamic, ?copy:Dynamic, ?fastpath:Dynamic):Dynamic;
	/**
		Attempt to infer better dtype for object columns
		
		Parameters
		----------
		datetime : boolean, default False
		    If True, convert to date where possible.
		numeric : boolean, default False
		    If True, attempt to convert to numbers (including strings), with
		    unconvertible values becoming NaN.
		timedelta : boolean, default False
		    If True, convert to timedelta where possible.
		coerce : boolean, default False
		    If True, force conversion with unconvertible values converted to
		    nulls (NaN or NaT)
		copy : boolean, default True
		    If True, return a copy even if no copy is necessary (e.g. no
		    conversion was done). Note: This is meant for internal use, and
		    should not be confused with inplace.
		
		Returns
		-------
		converted : same as input object
	**/
	public function _convert(?datetime:Dynamic, ?numeric:Dynamic, ?timedelta:Dynamic, ?coerce:Dynamic, ?copy:Dynamic):Dynamic;
	public function _count_level(level:Dynamic, ?axis:Dynamic, ?numeric_only:Dynamic):Dynamic;
	/**
		Create an indexer like _name in the class.
	**/
	static public function _create_indexer(name:Dynamic, indexer:Dynamic):Dynamic;
	static public var _cython_table : Dynamic;
	static public var _deprecations : Dynamic;
	/**
		add the string-like attributes from the info_axis.
		If info_axis is a MultiIndex, it's first level values are used.
	**/
	public function _dir_additions():Dynamic;
	/**
		delete unwanted __dir__ for this object 
	**/
	public function _dir_deletions():Dynamic;
	/**
		Drop labels from specified axis. Used in the ``drop`` method
		internally.
		
		Parameters
		----------
		labels : single label or list-like
		axis : int or axis name
		level : int or level name, default None
		    For MultiIndex
		errors : {'ignore', 'raise'}, default 'raise'
		    If 'ignore', suppress error and existing labels are dropped.
	**/
	public function _drop_axis(labels:Dynamic, axis:Dynamic, ?level:Dynamic, ?errors:Dynamic):Dynamic;
	/**
		Drop labels and/or levels for the given `axis`.
		
		For each key in `keys`:
		  - (axis=0): If key matches a column label then drop the column.
		    Otherwise if key matches an index level then drop the level.
		  - (axis=1): If key matches an index label then drop the row.
		    Otherwise if key matches a column level then drop the level.
		
		Parameters
		----------
		keys: str or list of str
		    labels or levels to drop
		axis: int, default 0
		    Axis that levels are associated with (0 for index, 1 for columns)
		
		Returns
		-------
		dropped: DataFrame
		
		Raises
		------
		ValueError
		    if any `keys` match neither a label nor a level
	**/
	public function _drop_labels_or_levels(keys:Dynamic, ?axis:Dynamic):pandas.DataFrame;
	/**
		ensure that if we don't have an index, that we can create one from the
		passed value
	**/
	public function _ensure_valid_index(value:Dynamic):Dynamic;
	public function _expand_axes(key:Dynamic):Dynamic;
	/**
		Retrieves the index of the first valid value.
		
		Parameters
		----------
		how : {'first', 'last'}
		    Use this parameter to change between the first or last valid index.
		
		Returns
		-------
		idx_first_valid : type of index
	**/
	public function _find_valid_index(how:Dynamic):Dynamic;
	static public function _from_arrays(arrays:Dynamic, columns:Dynamic, index:Dynamic, ?dtype:Dynamic):Dynamic;
	static public function _from_axes(data:Dynamic, axes:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		let's be explicit about this 
	**/
	public function _get_agg_axis(axis_num:Dynamic):Dynamic;
	public function _get_axis(axis:Dynamic):Dynamic;
	public function _get_axis_name(axis:Dynamic):Dynamic;
	public function _get_axis_number(axis:Dynamic):Dynamic;
	public function _get_axis_resolvers(axis:Dynamic):Dynamic;
	/**
		Map the axis to the block_manager axis.
	**/
	public function _get_block_manager_axis(axis:Dynamic):Dynamic;
	public function _get_bool_data():Dynamic;
	/**
		return my cacher or None
	**/
	public function _get_cacher():Dynamic;
	public function _get_index_resolvers():Dynamic;
	/**
		Return the cached item, item represents a label indexer.
	**/
	public function _get_item_cache(item:Dynamic):Dynamic;
	/**
		Return a 1-D array of values associated with `key`, a label or level
		from the given `axis`.
		
		Retrieval logic:
		  - (axis=0): Return column values if `key` matches a column label.
		    Otherwise return index level values if `key` matches an index
		    level.
		  - (axis=1): Return row values if `key` matches an index label.
		    Otherwise return column level values if 'key' matches a column
		    level
		
		Parameters
		----------
		key: str
		    Label or level name.
		axis: int, default 0
		    Axis that levels are associated with (0 for index, 1 for columns)
		stacklevel: int, default 1
		    Stack level used when a FutureWarning is raised (see below).
		
		Returns
		-------
		values: np.ndarray
		
		Raises
		------
		KeyError
		    if `key` matches neither a label nor a level
		ValueError
		    if `key` matches multiple labels
		FutureWarning
		    if `key` is ambiguous. This will become an ambiguity error in a
		    future version
	**/
	public function _get_label_or_level_values(key:Dynamic, ?axis:Dynamic, ?stacklevel:Dynamic):Dynamic;
	public function _get_numeric_data():Dynamic;
	/**
		Quickly retrieve single value at passed column and index
		
		.. deprecated:: 0.21.0
		    Use .at[] or .iat[] accessors instead.
		
		Parameters
		----------
		index : row label
		col : column label
		takeable : interpret the index/col as indexers, default False
		
		Returns
		-------
		value : scalar value
	**/
	public function _get_value(index:Dynamic, col:Dynamic, ?takeable:Dynamic):Dynamic;
	public var _get_values : Dynamic;
	public function _getitem_array(key:Dynamic):Dynamic;
	/**
		return the actual column 
	**/
	public function _getitem_column(key:Dynamic):Dynamic;
	public function _getitem_frame(key:Dynamic):Dynamic;
	public function _getitem_multilevel(key:Dynamic):Dynamic;
	public function _getitem_slice(key:Dynamic):Dynamic;
	/**
		sub-classes to define
		return a sliced object
		
		Parameters
		----------
		key : string / list of selections
		ndim : 1,2
		    requested ndim of result
		subset : object, default None
		    subset to act on
	**/
	public function _gotitem(key:Dynamic, ndim:Dynamic, ?subset:Dynamic):Dynamic;
	/**
		Return the cached item, item represents a positional indexer.
	**/
	public function _iget_item_cache(item:Dynamic):Dynamic;
	public function _indexed_same(other:Dynamic):Dynamic;
	public var _info_axis : Dynamic;
	static public var _info_axis_name : Dynamic;
	static public var _info_axis_number : Dynamic;
	/**
		True if the repr should show the info view.
	**/
	public function _info_repr():Dynamic;
	/**
		Segregate Series based on type and coerce into matrices.
		Needs to handle a lot of exceptional cases.
	**/
	public function _init_dict(data:Dynamic, index:Dynamic, columns:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		passed a manager and a axes dict 
	**/
	public function _init_mgr(mgr:Dynamic, ?axes:Dynamic, ?dtype:Dynamic, ?copy:Dynamic):Dynamic;
	public function _init_ndarray(values:Dynamic, index:Dynamic, columns:Dynamic, ?dtype:Dynamic, ?copy:Dynamic):Dynamic;
	static public var _internal_names : Dynamic;
	static public var _internal_names_set : Dynamic;
	/**
		if we define an builtin function for this argument, return it,
		otherwise return the arg
	**/
	public function _is_builtin_func(arg:Dynamic):Dynamic;
	/**
		Return boolean indicating if self is cached or not.
	**/
	public var _is_cached : Dynamic;
	static public var _is_copy : Dynamic;
	/**
		if we define an internal function for this argument, return it 
	**/
	public function _is_cython_func(arg:Dynamic):Dynamic;
	public var _is_datelike_mixed_type : Dynamic;
	/**
		Test whether a key is a label or level reference for a given axis.
		
		To be considered either a label or a level reference, `key` must be a
		string that:
		  - (axis=0): Matches a column label or an index level
		  - (axis=1): Matches an index label or a column level
		
		Parameters
		----------
		key: str
		    Potential label or level name
		axis: int, default 0
		    Axis that levels are associated with (0 for index, 1 for columns)
		
		Returns
		-------
		is_label_or_level: bool
	**/
	public function _is_label_or_level_reference(key:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Test whether a key is a label reference for a given axis.
		
		To be considered a label reference, `key` must be a string that:
		  - (axis=0): Matches a column label
		  - (axis=1): Matches an index label
		
		Parameters
		----------
		key: str
		    Potential label name
		axis: int, default 0
		    Axis perpendicular to the axis that labels are associated with
		    (0 means search for column labels, 1 means search for index labels)
		
		Returns
		-------
		is_label: bool
	**/
	public function _is_label_reference(key:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Test whether a key is a level reference for a given axis.
		
		To be considered a level reference, `key` must be a string that:
		  - (axis=0): Matches the name of an index level and does NOT match
		    a column label.
		  - (axis=1): Matches the name of a column level and does NOT match
		    an index label.
		
		Parameters
		----------
		key: str
		    Potential level name for the given axis
		axis: int, default 0
		    Axis that levels are associated with (0 for index, 1 for columns)
		
		Returns
		-------
		is_level: bool
	**/
	public function _is_level_reference(key:Dynamic, ?axis:Dynamic):Dynamic;
	public var _is_mixed_type : Dynamic;
	public var _is_numeric_mixed_type : Dynamic;
	/**
		Return boolean indicating if self is view of another array 
	**/
	public var _is_view : Dynamic;
	static public var _ix : Dynamic;
	/**
		i : int, slice, or sequence of integers
		axis : int
	**/
	public function _ixs(i:Dynamic, ?axis:Dynamic):Dynamic;
	public function _join_compat(other:Dynamic, ?on:Dynamic, ?how:Dynamic, ?lsuffix:Dynamic, ?rsuffix:Dynamic, ?sort:Dynamic):Dynamic;
	/**
		The object has called back to us saying maybe it has changed.
		        
	**/
	public function _maybe_cache_changed(item:Dynamic, value:Dynamic):Dynamic;
	/**
		See if we need to update our parent cacher if clear, then clear our
		cache.
		
		Parameters
		----------
		clear : boolean, default False
		    clear the item cache
		verify_is_copy : boolean, default True
		    provide is_copy checks
	**/
	public function _maybe_update_cacher(?clear:Dynamic, ?verify_is_copy:Dynamic):Dynamic;
	static public var _metadata : Dynamic;
	/**
		Check if we do need a multi reindex.
	**/
	public function _needs_reindex_multi(axes:Dynamic, method:Dynamic, level:Dynamic):Dynamic;
	/**
		internal compat with SelectionMixin 
	**/
	public var _obj_with_exclusions : Dynamic;
	/**
		Consolidate _data -- if the blocks have changed, then clear the
		cache
	**/
	public function _protect_consolidate(f:Dynamic):Dynamic;
	public function _reduce(op:Dynamic, name:Dynamic, ?axis:Dynamic, ?skipna:Dynamic, ?numeric_only:Dynamic, ?filter_type:Dynamic, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Perform the reindex for all the axes.
	**/
	public function _reindex_axes(axes:Dynamic, level:Dynamic, limit:Dynamic, tolerance:Dynamic, method:Dynamic, fill_value:Dynamic, copy:Dynamic):Dynamic;
	public function _reindex_axis(new_index:Dynamic, fill_method:Dynamic, axis:Dynamic, copy:Dynamic):Dynamic;
	public function _reindex_columns(new_columns:Dynamic, method:Dynamic, copy:Dynamic, level:Dynamic, ?fill_value:Dynamic, ?limit:Dynamic, ?tolerance:Dynamic):Dynamic;
	public function _reindex_index(new_index:Dynamic, method:Dynamic, copy:Dynamic, level:Dynamic, ?fill_value:Dynamic, ?limit:Dynamic, ?tolerance:Dynamic):Dynamic;
	/**
		we are guaranteed non-Nones in the axes! 
	**/
	public function _reindex_multi(axes:Dynamic, copy:Dynamic, fill_value:Dynamic):Dynamic;
	/**
		allow_dups indicates an internal call here 
	**/
	public function _reindex_with_indexers(reindexers:Dynamic, ?fill_value:Dynamic, ?copy:Dynamic, ?allow_dups:Dynamic):Dynamic;
	/**
		Not a real Jupyter special repr method, but we use the same
		naming convention.
	**/
	public function _repr_data_resource_():Dynamic;
	/**
		Check if full repr fits in horizontal boundaries imposed by the display
		options width and max_columns. In case off non-interactive session, no
		boundaries apply.
		
		ignore_width is here so ipnb+HTML output can behave the way
		users expect. display.max_columns remains in effect.
		GH3541, GH3573
	**/
	public function _repr_fits_horizontal_(?ignore_width:Dynamic):Dynamic;
	/**
		Check length against max_rows.
	**/
	public function _repr_fits_vertical_():Dynamic;
	/**
		Return a html representation for a particular DataFrame.
		Mainly for IPython notebook.
	**/
	public function _repr_html_():Dynamic;
	/**
		Returns a LaTeX representation for a particular object.
		Mainly for use with nbconvert (jupyter notebook conversion to pdf).
	**/
	public function _repr_latex_():Dynamic;
	/**
		Reset cached properties. If ``key`` is passed, only clears that key.
	**/
	public function _reset_cache(?key:Dynamic):Dynamic;
	/**
		Reset the cacher.
	**/
	public function _reset_cacher():Dynamic;
	/**
		Ensures new columns (which go into the BlockManager as new blocks) are
		always copied and converted into an array.
		
		Parameters
		----------
		key : object
		value : scalar, Series, or array-like
		broadcast : bool, default True
		    If ``key`` matches multiple duplicate column names in the
		    DataFrame, this parameter indicates whether ``value`` should be
		    tiled so that the returned array contains a (duplicated) column for
		    each occurrence of the key. If False, ``value`` will not be tiled.
		
		Returns
		-------
		sanitized_column : numpy-array
	**/
	public function _sanitize_column(key:Dynamic, value:Dynamic, ?broadcast:Dynamic):Dynamic;
	/**
		internal compat with SelectionMixin 
	**/
	public var _selected_obj : Dynamic;
	static public var _selection : Dynamic;
	public var _selection_list : Dynamic;
	/**
		return a name for myself; this would ideally be called
		the 'name' property, but we cannot conflict with the
		Series.name property which can be set
	**/
	public var _selection_name : Dynamic;
	public var _series : Dynamic;
	/**
		Set the _cacher attribute on the calling object with a weakref to
		cacher.
	**/
	public function _set_as_cached(item:Dynamic, cacher:Dynamic):Dynamic;
	public function _set_axis(axis:Dynamic, labels:Dynamic):Dynamic;
	/**
		Alter the name or names of the axis.
		
		Parameters
		----------
		name : str or list of str
		    Name for the Index, or list of names for the MultiIndex
		axis : int or str
		   0 or 'index' for the index; 1 or 'columns' for the columns
		inplace : bool
		    whether to modify `self` directly or return a copy
		
		    .. versionadded:: 0.21.0
		
		Returns
		-------
		renamed : type of caller or None if inplace=True
		
		See Also
		--------
		pandas.DataFrame.rename
		pandas.Series.rename
		pandas.Index.rename
		
		Examples
		--------
		>>> df._set_axis_name("foo")
		     A
		foo
		0    1
		1    2
		2    3
		>>> df.index = pd.MultiIndex.from_product([['A'], ['a', 'b', 'c']])
		>>> df._set_axis_name(["bar", "baz"])
		         A
		bar baz
		A   a    1
		    b    2
		    c    3
	**/
	public function _set_axis_name(name:Dynamic, ?axis:Dynamic, ?inplace:Dynamic):Dynamic;
	public function _set_is_copy(?ref:Dynamic, ?copy:Dynamic):Dynamic;
	/**
		Add series to DataFrame in specified column.
		
		If series is a numpy-array (not a Series/TimeSeries), it must be the
		same length as the DataFrames index or an error will be thrown.
		
		Series/TimeSeries will be conformed to the DataFrames index to
		ensure homogeneity.
	**/
	public function _set_item(key:Dynamic, value:Dynamic):Dynamic;
	/**
		Put single value at passed column and index
		
		.. deprecated:: 0.21.0
		    Use .at[] or .iat[] accessors instead.
		
		Parameters
		----------
		index : row label
		col : column label
		value : scalar value
		takeable : interpret the index/col as indexers, default False
		
		Returns
		-------
		frame : DataFrame
		    If label pair is contained, will be reference to calling DataFrame,
		    otherwise a new object
	**/
	public function _set_value(index:Dynamic, col:Dynamic, value:Dynamic, ?takeable:Dynamic):pandas.DataFrame;
	public function _setitem_array(key:Dynamic, value:Dynamic):Dynamic;
	public function _setitem_frame(key:Dynamic, value:Dynamic):Dynamic;
	public function _setitem_slice(key:Dynamic, value:Dynamic):Dynamic;
	/**
		Provide axes setup for the major PandasObjects.
		
		Parameters
		----------
		axes : the names of the axes in order (lowest to highest)
		info_axis_num : the axis of the selector dimension (int)
		stat_axis_num : the number of axis for the default stats (int)
		aliases : other names for a single axis (dict)
		slicers : how axes slice to others (dict)
		axes_are_reversed : boolean whether to treat passed axes as
		    reversed (DataFrame)
		build_axes : setup the axis properties (default True)
	**/
	static public function _setup_axes(axes:Dynamic, ?info_axis:Dynamic, ?stat_axis:Dynamic, ?aliases:Dynamic, ?slicers:Dynamic, ?axes_are_reversed:Dynamic, ?build_axes:Dynamic, ?ns:Dynamic, ?docs:Dynamic):Dynamic;
	/**
		return a new object with the replacement attributes 
	**/
	public function _shallow_copy(?obj:Dynamic, ?obj_type:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Construct a slice of this container.
		
		kind parameter is maintained for compatibility with Series slicing.
	**/
	public function _slice(slobj:Dynamic, ?axis:Dynamic, ?kind:Dynamic):Dynamic;
	public var _stat_axis : Dynamic;
	static public var _stat_axis_name : Dynamic;
	static public var _stat_axis_number : Dynamic;
	/**
		Return the elements in the given *positional* indices along an axis.
		
		This means that we are not indexing according to actual values in
		the index attribute of the object. We are indexing according to the
		actual position of the element in the object.
		
		This is the internal version of ``.take()`` and will contain a wider
		selection of parameters useful for internal use but not as suitable
		for public usage.
		
		Parameters
		----------
		indices : array-like
		    An array of ints indicating which positions to take.
		axis : int, default 0
		    The axis on which to select elements. "0" means that we are
		    selecting rows, "1" means that we are selecting columns, etc.
		is_copy : bool, default True
		    Whether to return a copy of the original object or not.
		
		Returns
		-------
		taken : type of caller
		    An array-like containing the elements taken from the object.
		
		See Also
		--------
		numpy.ndarray.take
		numpy.take
	**/
	public function _take(indices:Dynamic, ?axis:Dynamic, ?is_copy:Dynamic):Dynamic;
	/**
		Return a dict of dtype -> Constructor Types that
		each is a homogeneous dtype.
		
		Internal ONLY
	**/
	public function _to_dict_of_blocks(?copy:Dynamic):Dynamic;
	/**
		if arg is a string, then try to operate on it:
		- try to find a function (or attribute) on ourselves
		- try to find a numpy function
		- raise
	**/
	public function _try_aggregate_string_function(arg:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var _typ : Dynamic;
	public function _unpickle_frame_compat(state:Dynamic):Dynamic;
	public function _unpickle_matrix_compat(state:Dynamic):Dynamic;
	/**
		Replace self internals with result.
		
		Parameters
		----------
		verify_is_copy : boolean, default True
		    provide is_copy checks
	**/
	public function _update_inplace(result:Dynamic, ?verify_is_copy:Dynamic):Dynamic;
	/**
		validate the passed dtype 
	**/
	public function _validate_dtype(dtype:Dynamic):Dynamic;
	/**
		internal implementation
	**/
	public var _values : Dynamic;
	/**
		Equivalent to public method `where`, except that `other` is not
		applied as a function even if callable. Used in __setitem__.
	**/
	public function _where(cond:Dynamic, ?other:Dynamic, ?inplace:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?errors:Dynamic, ?try_cast:Dynamic):Dynamic;
	/**
		Returns a cross-section (row(s) or column(s)) from the
		Series/DataFrame. Defaults to cross-section on the rows (axis=0).
		
		Parameters
		----------
		key : object
		    Some label contained in the index, or partially in a MultiIndex
		axis : int, default 0
		    Axis to retrieve cross-section on
		level : object, defaults to first n levels (n=1 or len(key))
		    In case of a key partially contained in a MultiIndex, indicate
		    which levels are used. Levels can be referred by label or position.
		drop_level : boolean, default True
		    If False, returns object with same levels as self.
		
		Examples
		--------
		>>> df
		   A  B  C
		a  4  5  2
		b  4  0  9
		c  9  7  3
		>>> df.xs('a')
		A    4
		B    5
		C    2
		Name: a
		>>> df.xs('C', axis=1)
		a    2
		b    9
		c    3
		Name: C
		
		>>> df
		                    A  B  C  D
		first second third
		bar   one    1      4  1  8  9
		      two    1      7  5  5  0
		baz   one    1      6  6  8  0
		      three  2      5  3  5  3
		>>> df.xs(('baz', 'three'))
		       A  B  C  D
		third
		2      5  3  5  3
		>>> df.xs('one', level=1)
		             A  B  C  D
		first third
		bar   1      4  1  8  9
		baz   1      6  6  8  0
		>>> df.xs(('baz', 2), level=[0, 'third'])
		        A  B  C  D
		second
		three   5  3  5  3
		
		Returns
		-------
		xs : Series or DataFrame
		
		Notes
		-----
		xs is only for getting, not setting values.
		
		MultiIndex Slicers is a generic way to get/set values on any level or
		levels.  It is a superset of xs functionality, see
		:ref:`MultiIndex Slicers <advanced.mi_slicers>`
	**/
	public function _xs(key:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?drop_level:Dynamic):Dynamic;
	/**
		Return a Series/DataFrame with absolute numeric value of each element.
		
		This function only applies to elements that are all numeric.
		
		Returns
		-------
		abs
		    Series/DataFrame containing the absolute value of each element.
		
		Notes
		-----
		For ``complex`` inputs, ``1.2 + 1j``, the absolute value is
		:math:`\sqrt{ a^2 + b^2 }`.
		
		Examples
		--------
		Absolute numeric values in a Series.
		
		>>> s = pd.Series([-1.10, 2, -3.33, 4])
		>>> s.abs()
		0    1.10
		1    2.00
		2    3.33
		3    4.00
		dtype: float64
		
		Absolute numeric values in a Series with complex numbers.
		
		>>> s = pd.Series([1.2 + 1j])
		>>> s.abs()
		0    1.56205
		dtype: float64
		
		Absolute numeric values in a Series with a Timedelta element.
		
		>>> s = pd.Series([pd.Timedelta('1 days')])
		>>> s.abs()
		0   1 days
		dtype: timedelta64[ns]
		
		Select rows with data closest to certain value using argsort (from
		`StackOverflow <https://stackoverflow.com/a/17758115>`__).
		
		>>> df = pd.DataFrame({
		...     'a': [4, 5, 6, 7],
		...     'b': [10, 20, 30, 40],
		...     'c': [100, 50, -30, -50]
		... })
		>>> df
		     a    b    c
		0    4   10  100
		1    5   20   50
		2    6   30  -30
		3    7   40  -50
		>>> df.loc[(df.c - 43).abs().argsort()]
		     a    b    c
		1    5   20   50
		0    4   10  100
		2    6   30  -30
		3    7   40  -50
		
		See Also
		--------
		numpy.absolute : calculate the absolute value element-wise.
	**/
	public function abs():Dynamic;
	/**
		Addition of dataframe and other, element-wise (binary operator `add`).
		
		Equivalent to ``dataframe + other``, but with support to substitute a fill_value for
		missing data in one of the inputs.
		
		Parameters
		----------
		other : Series, DataFrame, or constant
		axis : {0, 1, 'index', 'columns'}
		    For Series input, axis to match Series index on
		level : int or name
		    Broadcast across a level, matching Index values on the
		    passed MultiIndex level
		fill_value : None or float value, default None
		    Fill existing missing (NaN) values, and any new element needed for
		    successful DataFrame alignment, with this value before computation.
		    If data in both corresponding DataFrame locations is missing
		    the result will be missing
		
		Notes
		-----
		Mismatched indices will be unioned together
		
		Returns
		-------
		result : DataFrame
		
		Examples
		--------
		
		>>> a = pd.DataFrame([1, 1, 1, np.nan], index=['a', 'b', 'c', 'd'],
		...                  columns=['one'])
		>>> a
		   one
		a  1.0
		b  1.0
		c  1.0
		d  NaN
		>>> b = pd.DataFrame(dict(one=[1, np.nan, 1, np.nan],
		...                       two=[np.nan, 2, np.nan, 2]),
		...                  index=['a', 'b', 'd', 'e'])
		>>> b
		   one  two
		a  1.0  NaN
		b  NaN  2.0
		d  1.0  NaN
		e  NaN  2.0
		>>> a.add(b, fill_value=0)
		   one  two
		a  2.0  NaN
		b  1.0  2.0
		c  1.0  NaN
		d  1.0  NaN
		e  NaN  2.0
		
		
		See also
		--------
		DataFrame.radd
	**/
	public function add(other:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?fill_value:Dynamic):pandas.DataFrame;
	/**
		Prefix labels with string `prefix`.
		
		For Series, the row labels are prefixed.
		For DataFrame, the column labels are prefixed.
		
		Parameters
		----------
		prefix : str
		    The string to add before each label.
		
		Returns
		-------
		Series or DataFrame
		    New Series or DataFrame with updated labels.
		
		See Also
		--------
		Series.add_suffix: Suffix row labels with string `suffix`.
		DataFrame.add_suffix: Suffix column labels with string `suffix`.
		
		Examples
		--------
		>>> s = pd.Series([1, 2, 3, 4])
		>>> s
		0    1
		1    2
		2    3
		3    4
		dtype: int64
		
		>>> s.add_prefix('item_')
		item_0    1
		item_1    2
		item_2    3
		item_3    4
		dtype: int64
		
		>>> df = pd.DataFrame({'A': [1, 2, 3, 4],  'B': [3, 4, 5, 6]})
		>>> df
		   A  B
		0  1  3
		1  2  4
		2  3  5
		3  4  6
		
		>>> df.add_prefix('col_')
		     col_A  col_B
		0       1       3
		1       2       4
		2       3       5
		3       4       6
	**/
	public function add_prefix(prefix:Dynamic):Dynamic;
	/**
		Suffix labels with string `suffix`.
		
		For Series, the row labels are suffixed.
		For DataFrame, the column labels are suffixed.
		
		Parameters
		----------
		suffix : str
		    The string to add after each label.
		
		Returns
		-------
		Series or DataFrame
		    New Series or DataFrame with updated labels.
		
		See Also
		--------
		Series.add_prefix: Prefix row labels with string `prefix`.
		DataFrame.add_prefix: Prefix column labels with string `prefix`.
		
		Examples
		--------
		>>> s = pd.Series([1, 2, 3, 4])
		>>> s
		0    1
		1    2
		2    3
		3    4
		dtype: int64
		
		>>> s.add_suffix('_item')
		0_item    1
		1_item    2
		2_item    3
		3_item    4
		dtype: int64
		
		>>> df = pd.DataFrame({'A': [1, 2, 3, 4],  'B': [3, 4, 5, 6]})
		>>> df
		   A  B
		0  1  3
		1  2  4
		2  3  5
		3  4  6
		
		>>> df.add_suffix('_col')
		     A_col  B_col
		0       1       3
		1       2       4
		2       3       5
		3       4       6
	**/
	public function add_suffix(suffix:Dynamic):Dynamic;
	/**
		Aggregate using one or more operations over the specified axis.
		
		.. versionadded:: 0.20.0
		
		Parameters
		----------
		func : function, string, dictionary, or list of string/functions
		    Function to use for aggregating the data. If a function, must either
		    work when passed a DataFrame or when passed to DataFrame.apply. For
		    a DataFrame, can pass a dict, if the keys are DataFrame column names.
		
		    Accepted combinations are:
		
		    - string function name.
		    - function.
		    - list of functions.
		    - dict of column names -> functions (or list of functions).
		
		
		axis : {0 or 'index', 1 or 'columns'}, default 0
		    - 0 or 'index': apply function to each column.
		    - 1 or 'columns': apply function to each row.
		*args
		    Positional arguments to pass to `func`.
		**kwargs
		    Keyword arguments to pass to `func`.
		
		Returns
		-------
		aggregated : DataFrame
		
		Notes
		-----
		`agg` is an alias for `aggregate`. Use the alias.
		
		A passed user-defined-function will be passed a Series for evaluation.
		
		The aggregation operations are always performed over an axis, either the
		index (default) or the column axis. This behavior is different from
		`numpy` aggregation functions (`mean`, `median`, `prod`, `sum`, `std`,
		`var`), where the default is to compute the aggregation of the flattened
		array, e.g., ``numpy.mean(arr_2d)`` as opposed to ``numpy.mean(arr_2d,
		axis=0)``.
		
		`agg` is an alias for `aggregate`. Use the alias.
		
		Examples
		--------
		>>> df = pd.DataFrame([[1, 2, 3],
		...                    [4, 5, 6],
		...                    [7, 8, 9],
		...                    [np.nan, np.nan, np.nan]],
		...                   columns=['A', 'B', 'C'])
		
		Aggregate these functions over the rows.
		
		>>> df.agg(['sum', 'min'])
		        A     B     C
		sum  12.0  15.0  18.0
		min   1.0   2.0   3.0
		
		Different aggregations per column.
		
		>>> df.agg({'A' : ['sum', 'min'], 'B' : ['min', 'max']})
		        A    B
		max   NaN  8.0
		min   1.0  2.0
		sum  12.0  NaN
		
		Aggregate over the columns.
		
		>>> df.agg("mean", axis="columns")
		0    2.0
		1    5.0
		2    8.0
		3    NaN
		dtype: float64
		
		See also
		--------
		DataFrame.apply : Perform any type of operations.
		DataFrame.transform : Perform transformation type operations.
		pandas.core.groupby.GroupBy : Perform operations over groups.
		pandas.core.resample.Resampler : Perform operations over resampled bins.
		pandas.core.window.Rolling : Perform operations over rolling window.
		pandas.core.window.Expanding : Perform operations over expanding window.
		pandas.core.window.EWM : Perform operation over exponential weighted
		    window.
	**/
	public function agg(func:Dynamic, ?axis:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):pandas.DataFrame;
	/**
		Aggregate using one or more operations over the specified axis.
		
		.. versionadded:: 0.20.0
		
		Parameters
		----------
		func : function, string, dictionary, or list of string/functions
		    Function to use for aggregating the data. If a function, must either
		    work when passed a DataFrame or when passed to DataFrame.apply. For
		    a DataFrame, can pass a dict, if the keys are DataFrame column names.
		
		    Accepted combinations are:
		
		    - string function name.
		    - function.
		    - list of functions.
		    - dict of column names -> functions (or list of functions).
		
		
		axis : {0 or 'index', 1 or 'columns'}, default 0
		    - 0 or 'index': apply function to each column.
		    - 1 or 'columns': apply function to each row.
		*args
		    Positional arguments to pass to `func`.
		**kwargs
		    Keyword arguments to pass to `func`.
		
		Returns
		-------
		aggregated : DataFrame
		
		Notes
		-----
		`agg` is an alias for `aggregate`. Use the alias.
		
		A passed user-defined-function will be passed a Series for evaluation.
		
		The aggregation operations are always performed over an axis, either the
		index (default) or the column axis. This behavior is different from
		`numpy` aggregation functions (`mean`, `median`, `prod`, `sum`, `std`,
		`var`), where the default is to compute the aggregation of the flattened
		array, e.g., ``numpy.mean(arr_2d)`` as opposed to ``numpy.mean(arr_2d,
		axis=0)``.
		
		`agg` is an alias for `aggregate`. Use the alias.
		
		Examples
		--------
		>>> df = pd.DataFrame([[1, 2, 3],
		...                    [4, 5, 6],
		...                    [7, 8, 9],
		...                    [np.nan, np.nan, np.nan]],
		...                   columns=['A', 'B', 'C'])
		
		Aggregate these functions over the rows.
		
		>>> df.agg(['sum', 'min'])
		        A     B     C
		sum  12.0  15.0  18.0
		min   1.0   2.0   3.0
		
		Different aggregations per column.
		
		>>> df.agg({'A' : ['sum', 'min'], 'B' : ['min', 'max']})
		        A    B
		max   NaN  8.0
		min   1.0  2.0
		sum  12.0  NaN
		
		Aggregate over the columns.
		
		>>> df.agg("mean", axis="columns")
		0    2.0
		1    5.0
		2    8.0
		3    NaN
		dtype: float64
		
		See also
		--------
		DataFrame.apply : Perform any type of operations.
		DataFrame.transform : Perform transformation type operations.
		pandas.core.groupby.GroupBy : Perform operations over groups.
		pandas.core.resample.Resampler : Perform operations over resampled bins.
		pandas.core.window.Rolling : Perform operations over rolling window.
		pandas.core.window.Expanding : Perform operations over expanding window.
		pandas.core.window.EWM : Perform operation over exponential weighted
		    window.
	**/
	public function aggregate(func:Dynamic, ?axis:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):pandas.DataFrame;
	/**
		Align two objects on their axes with the
		specified join method for each axis Index
		
		Parameters
		----------
		other : DataFrame or Series
		join : {'outer', 'inner', 'left', 'right'}, default 'outer'
		axis : allowed axis of the other object, default None
		    Align on index (0), columns (1), or both (None)
		level : int or level name, default None
		    Broadcast across a level, matching Index values on the
		    passed MultiIndex level
		copy : boolean, default True
		    Always returns new objects. If copy=False and no reindexing is
		    required then original objects are returned.
		fill_value : scalar, default np.NaN
		    Value to use for missing values. Defaults to NaN, but can be any
		    "compatible" value
		method : str, default None
		limit : int, default None
		fill_axis : {0 or 'index', 1 or 'columns'}, default 0
		    Filling axis, method and limit
		broadcast_axis : {0 or 'index', 1 or 'columns'}, default None
		    Broadcast values along this axis, if aligning two objects of
		    different dimensions
		
		Returns
		-------
		(left, right) : (DataFrame, type of other)
		    Aligned objects
	**/
	public function align(other:Dynamic, ?join:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?copy:Dynamic, ?fill_value:Dynamic, ?method:Dynamic, ?limit:Dynamic, ?fill_axis:Dynamic, ?broadcast_axis:Dynamic):Dynamic;
	/**
		Return whether all elements are True, potentially over an axis.
		
		Returns True if all elements within a series or along a Dataframe
		axis are non-zero, not-empty or not-False.
		
		Parameters
		----------
		axis : {0 or 'index', 1 or 'columns', None}, default 0
		    Indicate which axis or axes should be reduced.
		
		    * 0 / 'index' : reduce the index, return a Series whose index is the
		      original column labels.
		    * 1 / 'columns' : reduce the columns, return a Series whose index is the
		      original index.
		    * None : reduce all axes, return a scalar.
		
		skipna : boolean, default True
		    Exclude NA/null values. If an entire row/column is NA, the result
		    will be NA.
		level : int or level name, default None
		    If the axis is a MultiIndex (hierarchical), count along a
		    particular level, collapsing into a Series.
		bool_only : boolean, default None
		    Include only boolean columns. If None, will attempt to use everything,
		    then use only boolean data. Not implemented for Series.
		**kwargs : any, default None
		    Additional keywords have no effect but might be accepted for
		    compatibility with NumPy.
		
		Returns
		-------
		all : Series or DataFrame (if level specified)
		
		See also
		--------
		pandas.Series.all : Return True if all elements are True
		pandas.DataFrame.any : Return True if one (or more) elements are True
		
		Examples
		--------
		Series
		
		>>> pd.Series([True, True]).all()
		True
		>>> pd.Series([True, False]).all()
		False
		
		DataFrames
		
		Create a dataframe from a dictionary.
		
		>>> df = pd.DataFrame({'col1': [True, True], 'col2': [True, False]})
		>>> df
		   col1   col2
		0  True   True
		1  True  False
		
		Default behaviour checks if column-wise values all return True.
		
		>>> df.all()
		col1     True
		col2    False
		dtype: bool
		
		Specify ``axis='columns'`` to check if row-wise values all return True.
		
		>>> df.all(axis='columns')
		0     True
		1    False
		dtype: bool
		
		Or ``axis=None`` for whether every value is True.
		
		>>> df.all(axis=None)
		False
	**/
	public function all(?axis:Dynamic, ?bool_only:Dynamic, ?skipna:Dynamic, ?level:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return whether any element is True over requested axis.
		
		Unlike :meth:`DataFrame.all`, this performs an *or* operation. If any of the
		values along the specified axis is True, this will return True.
		
		Parameters
		----------
		axis : {0 or 'index', 1 or 'columns', None}, default 0
		    Indicate which axis or axes should be reduced.
		
		    * 0 / 'index' : reduce the index, return a Series whose index is the
		      original column labels.
		    * 1 / 'columns' : reduce the columns, return a Series whose index is the
		      original index.
		    * None : reduce all axes, return a scalar.
		
		skipna : boolean, default True
		    Exclude NA/null values. If an entire row/column is NA, the result
		    will be NA.
		level : int or level name, default None
		    If the axis is a MultiIndex (hierarchical), count along a
		    particular level, collapsing into a Series.
		bool_only : boolean, default None
		    Include only boolean columns. If None, will attempt to use everything,
		    then use only boolean data. Not implemented for Series.
		**kwargs : any, default None
		    Additional keywords have no effect but might be accepted for
		    compatibility with NumPy.
		
		Returns
		-------
		any : Series or DataFrame (if level specified)
		
		See Also
		--------
		pandas.DataFrame.all : Return whether all elements are True.
		
		Examples
		--------
		**Series**
		
		For Series input, the output is a scalar indicating whether any element
		is True.
		
		>>> pd.Series([True, False]).any()
		True
		
		**DataFrame**
		
		Whether each column contains at least one True element (the default).
		
		>>> df = pd.DataFrame({"A": [1, 2], "B": [0, 2], "C": [0, 0]})
		>>> df
		   A  B  C
		0  1  0  0
		1  2  2  0
		
		>>> df.any()
		A     True
		B     True
		C    False
		dtype: bool
		
		Aggregating over the columns.
		
		>>> df = pd.DataFrame({"A": [True, False], "B": [1, 2]})
		>>> df
		       A  B
		0   True  1
		1  False  2
		
		>>> df.any(axis='columns')
		0    True
		1    True
		dtype: bool
		
		>>> df = pd.DataFrame({"A": [True, False], "B": [1, 0]})
		>>> df
		       A  B
		0   True  1
		1  False  0
		
		>>> df.any(axis='columns')
		0    True
		1    False
		dtype: bool
		
		Aggregating over the entire DataFrame with ``axis=None``.
		
		>>> df.any(axis=None)
		True
		
		`any` for an empty DataFrame is an empty Series.
		
		>>> pd.DataFrame([]).any()
		Series([], dtype: bool)
	**/
	public function any(?axis:Dynamic, ?bool_only:Dynamic, ?skipna:Dynamic, ?level:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Append rows of `other` to the end of this frame, returning a new
		object. Columns not in this frame are added as new columns.
		
		Parameters
		----------
		other : DataFrame or Series/dict-like object, or list of these
		    The data to append.
		ignore_index : boolean, default False
		    If True, do not use the index labels.
		verify_integrity : boolean, default False
		    If True, raise ValueError on creating index with duplicates.
		sort : boolean, default None
		    Sort columns if the columns of `self` and `other` are not aligned.
		    The default sorting is deprecated and will change to not-sorting
		    in a future version of pandas. Explicitly pass ``sort=True`` to
		    silence the warning and sort. Explicitly pass ``sort=False`` to
		    silence the warning and not sort.
		
		    .. versionadded:: 0.23.0
		
		Returns
		-------
		appended : DataFrame
		
		Notes
		-----
		If a list of dict/series is passed and the keys are all contained in
		the DataFrame's index, the order of the columns in the resulting
		DataFrame will be unchanged.
		
		Iteratively appending rows to a DataFrame can be more computationally
		intensive than a single concatenate. A better solution is to append
		those rows to a list and then concatenate the list with the original
		DataFrame all at once.
		
		See also
		--------
		pandas.concat : General function to concatenate DataFrame, Series
		    or Panel objects
		
		Examples
		--------
		
		>>> df = pd.DataFrame([[1, 2], [3, 4]], columns=list('AB'))
		>>> df
		   A  B
		0  1  2
		1  3  4
		>>> df2 = pd.DataFrame([[5, 6], [7, 8]], columns=list('AB'))
		>>> df.append(df2)
		   A  B
		0  1  2
		1  3  4
		0  5  6
		1  7  8
		
		With `ignore_index` set to True:
		
		>>> df.append(df2, ignore_index=True)
		   A  B
		0  1  2
		1  3  4
		2  5  6
		3  7  8
		
		The following, while not recommended methods for generating DataFrames,
		show two ways to generate a DataFrame from multiple data sources.
		
		Less efficient:
		
		>>> df = pd.DataFrame(columns=['A'])
		>>> for i in range(5):
		...     df = df.append({'A': i}, ignore_index=True)
		>>> df
		   A
		0  0
		1  1
		2  2
		3  3
		4  4
		
		More efficient:
		
		>>> pd.concat([pd.DataFrame([i], columns=['A']) for i in range(5)],
		...           ignore_index=True)
		   A
		0  0
		1  1
		2  2
		3  3
		4  4
	**/
	public function append(other:Dynamic, ?ignore_index:Dynamic, ?verify_integrity:Dynamic, ?sort:Dynamic):pandas.DataFrame;
	/**
		Apply a function along an axis of the DataFrame.
		
		Objects passed to the function are Series objects whose index is
		either the DataFrame's index (``axis=0``) or the DataFrame's columns
		(``axis=1``). By default (``result_type=None``), the final return type
		is inferred from the return type of the applied function. Otherwise,
		it depends on the `result_type` argument.
		
		Parameters
		----------
		func : function
		    Function to apply to each column or row.
		axis : {0 or 'index', 1 or 'columns'}, default 0
		    Axis along which the function is applied:
		
		    * 0 or 'index': apply function to each column.
		    * 1 or 'columns': apply function to each row.
		broadcast : bool, optional
		    Only relevant for aggregation functions:
		
		    * ``False`` or ``None`` : returns a Series whose length is the
		      length of the index or the number of columns (based on the
		      `axis` parameter)
		    * ``True`` : results will be broadcast to the original shape
		      of the frame, the original index and columns will be retained.
		
		    .. deprecated:: 0.23.0
		       This argument will be removed in a future version, replaced
		       by result_type='broadcast'.
		
		raw : bool, default False
		    * ``False`` : passes each row or column as a Series to the
		      function.
		    * ``True`` : the passed function will receive ndarray objects
		      instead.
		      If you are just applying a NumPy reduction function this will
		      achieve much better performance.
		reduce : bool or None, default None
		    Try to apply reduction procedures. If the DataFrame is empty,
		    `apply` will use `reduce` to determine whether the result
		    should be a Series or a DataFrame. If ``reduce=None`` (the
		    default), `apply`'s return value will be guessed by calling
		    `func` on an empty Series
		    (note: while guessing, exceptions raised by `func` will be
		    ignored).
		    If ``reduce=True`` a Series will always be returned, and if
		    ``reduce=False`` a DataFrame will always be returned.
		
		    .. deprecated:: 0.23.0
		       This argument will be removed in a future version, replaced
		       by ``result_type='reduce'``.
		
		result_type : {'expand', 'reduce', 'broadcast', None}, default None
		    These only act when ``axis=1`` (columns):
		
		    * 'expand' : list-like results will be turned into columns.
		    * 'reduce' : returns a Series if possible rather than expanding
		      list-like results. This is the opposite of 'expand'.
		    * 'broadcast' : results will be broadcast to the original shape
		      of the DataFrame, the original index and columns will be
		      retained.
		
		    The default behaviour (None) depends on the return value of the
		    applied function: list-like results will be returned as a Series
		    of those. However if the apply function returns a Series these
		    are expanded to columns.
		
		    .. versionadded:: 0.23.0
		
		args : tuple
		    Positional arguments to pass to `func` in addition to the
		    array/series.
		**kwds
		    Additional keyword arguments to pass as keywords arguments to
		    `func`.
		
		Notes
		-----
		In the current implementation apply calls `func` twice on the
		first column/row to decide whether it can take a fast or slow
		code path. This can lead to unexpected behavior if `func` has
		side-effects, as they will take effect twice for the first
		column/row.
		
		See also
		--------
		DataFrame.applymap: For elementwise operations
		DataFrame.aggregate: only perform aggregating type operations
		DataFrame.transform: only perform transformating type operations
		
		Examples
		--------
		
		>>> df = pd.DataFrame([[4, 9],] * 3, columns=['A', 'B'])
		>>> df
		   A  B
		0  4  9
		1  4  9
		2  4  9
		
		Using a numpy universal function (in this case the same as
		``np.sqrt(df)``):
		
		>>> df.apply(np.sqrt)
		     A    B
		0  2.0  3.0
		1  2.0  3.0
		2  2.0  3.0
		
		Using a reducing function on either axis
		
		>>> df.apply(np.sum, axis=0)
		A    12
		B    27
		dtype: int64
		
		>>> df.apply(np.sum, axis=1)
		0    13
		1    13
		2    13
		dtype: int64
		
		Retuning a list-like will result in a Series
		
		>>> df.apply(lambda x: [1, 2], axis=1)
		0    [1, 2]
		1    [1, 2]
		2    [1, 2]
		dtype: object
		
		Passing result_type='expand' will expand list-like results
		to columns of a Dataframe
		
		>>> df.apply(lambda x: [1, 2], axis=1, result_type='expand')
		   0  1
		0  1  2
		1  1  2
		2  1  2
		
		Returning a Series inside the function is similar to passing
		``result_type='expand'``. The resulting column names
		will be the Series index.
		
		>>> df.apply(lambda x: pd.Series([1, 2], index=['foo', 'bar']), axis=1)
		   foo  bar
		0    1    2
		1    1    2
		2    1    2
		
		Passing ``result_type='broadcast'`` will ensure the same shape
		result, whether list-like or scalar is returned by the function,
		and broadcast it along the axis. The resulting column names will
		be the originals.
		
		>>> df.apply(lambda x: [1, 2], axis=1, result_type='broadcast')
		   A  B
		0  1  2
		1  1  2
		2  1  2
		
		Returns
		-------
		applied : Series or DataFrame
	**/
	public function apply(func:Dynamic, ?axis:Dynamic, ?broadcast:Dynamic, ?raw:Dynamic, ?reduce:Dynamic, ?result_type:Dynamic, ?args:Dynamic, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Apply a function to a Dataframe elementwise.
		
		This method applies a function that accepts and returns a scalar
		to every element of a DataFrame.
		
		Parameters
		----------
		func : callable
		    Python function, returns a single value from a single value.
		
		Returns
		-------
		DataFrame
		    Transformed DataFrame.
		
		See also
		--------
		DataFrame.apply : Apply a function along input axis of DataFrame
		
		Examples
		--------
		>>> df = pd.DataFrame([[1, 2.12], [3.356, 4.567]])
		>>> df
		       0      1
		0  1.000  2.120
		1  3.356  4.567
		
		>>> df.applymap(lambda x: len(str(x)))
		   0  1
		0  3  4
		1  5  5
		
		Note that a vectorized version of `func` often exists, which will
		be much faster. You could square each number elementwise.
		
		>>> df.applymap(lambda x: x**2)
		           0          1
		0   1.000000   4.494400
		1  11.262736  20.857489
		
		But it's better to avoid applymap in that case.
		
		>>> df ** 2
		           0          1
		0   1.000000   4.494400
		1  11.262736  20.857489
	**/
	public function applymap(func:Dynamic):Dynamic;
	/**
		Convert the frame to a dict of dtype -> Constructor Types that each has
		a homogeneous dtype.
		
		.. deprecated:: 0.21.0
		
		NOTE: the dtypes of the blocks WILL BE PRESERVED HERE (unlike in
		      as_matrix)
		
		Parameters
		----------
		copy : boolean, default True
		
		Returns
		-------
		values : a dict of dtype -> Constructor Types
	**/
	public function as_blocks(?copy:Dynamic):Dynamic;
	/**
		Convert the frame to its Numpy-array representation.
		
		.. deprecated:: 0.23.0
		    Use :meth:`DataFrame.values` instead.
		
		Parameters
		----------
		columns: list, optional, default:None
		    If None, return all columns, otherwise, returns specified columns.
		
		Returns
		-------
		values : ndarray
		    If the caller is heterogeneous and contains booleans or objects,
		    the result will be of dtype=object. See Notes.
		
		
		Notes
		-----
		Return is NOT a Numpy-matrix, rather, a Numpy-array.
		
		The dtype will be a lower-common-denominator dtype (implicit
		upcasting); that is to say if the dtypes (even of numeric types)
		are mixed, the one that accommodates all will be chosen. Use this
		with care if you are not dealing with the blocks.
		
		e.g. If the dtypes are float16 and float32, dtype will be upcast to
		float32.  If dtypes are int32 and uint8, dtype will be upcase to
		int32. By numpy.find_common_type convention, mixing int64 and uint64
		will result in a flot64 dtype.
		
		This method is provided for backwards compatibility. Generally,
		it is recommended to use '.values'.
		
		See Also
		--------
		pandas.DataFrame.values
	**/
	public function as_matrix(?columns:Dynamic):numpy.Ndarray;
	/**
		Convert TimeSeries to specified frequency.
		
		Optionally provide filling method to pad/backfill missing values.
		
		Returns the original data conformed to a new index with the specified
		frequency. ``resample`` is more appropriate if an operation, such as
		summarization, is necessary to represent the data at the new frequency.
		
		Parameters
		----------
		freq : DateOffset object, or string
		method : {'backfill'/'bfill', 'pad'/'ffill'}, default None
		    Method to use for filling holes in reindexed Series (note this
		    does not fill NaNs that already were present):
		
		    * 'pad' / 'ffill': propagate last valid observation forward to next
		      valid
		    * 'backfill' / 'bfill': use NEXT valid observation to fill
		how : {'start', 'end'}, default end
		    For PeriodIndex only, see PeriodIndex.asfreq
		normalize : bool, default False
		    Whether to reset output index to midnight
		fill_value: scalar, optional
		    Value to use for missing values, applied during upsampling (note
		    this does not fill NaNs that already were present).
		
		    .. versionadded:: 0.20.0
		
		Returns
		-------
		converted : type of caller
		
		Examples
		--------
		
		Start by creating a series with 4 one minute timestamps.
		
		>>> index = pd.date_range('1/1/2000', periods=4, freq='T')
		>>> series = pd.Series([0.0, None, 2.0, 3.0], index=index)
		>>> df = pd.DataFrame({'s':series})
		>>> df
		                       s
		2000-01-01 00:00:00    0.0
		2000-01-01 00:01:00    NaN
		2000-01-01 00:02:00    2.0
		2000-01-01 00:03:00    3.0
		
		Upsample the series into 30 second bins.
		
		>>> df.asfreq(freq='30S')
		                       s
		2000-01-01 00:00:00    0.0
		2000-01-01 00:00:30    NaN
		2000-01-01 00:01:00    NaN
		2000-01-01 00:01:30    NaN
		2000-01-01 00:02:00    2.0
		2000-01-01 00:02:30    NaN
		2000-01-01 00:03:00    3.0
		
		Upsample again, providing a ``fill value``.
		
		>>> df.asfreq(freq='30S', fill_value=9.0)
		                       s
		2000-01-01 00:00:00    0.0
		2000-01-01 00:00:30    9.0
		2000-01-01 00:01:00    NaN
		2000-01-01 00:01:30    9.0
		2000-01-01 00:02:00    2.0
		2000-01-01 00:02:30    9.0
		2000-01-01 00:03:00    3.0
		
		Upsample again, providing a ``method``.
		
		>>> df.asfreq(freq='30S', method='bfill')
		                       s
		2000-01-01 00:00:00    0.0
		2000-01-01 00:00:30    NaN
		2000-01-01 00:01:00    NaN
		2000-01-01 00:01:30    2.0
		2000-01-01 00:02:00    2.0
		2000-01-01 00:02:30    3.0
		2000-01-01 00:03:00    3.0
		
		See Also
		--------
		reindex
		
		Notes
		-----
		To learn more about the frequency strings, please see `this link
		<http://pandas.pydata.org/pandas-docs/stable/timeseries.html#offset-aliases>`__.
	**/
	public function asfreq(freq:Dynamic, ?method:Dynamic, ?how:Dynamic, ?normalize:Dynamic, ?fill_value:Dynamic):Dynamic;
	/**
		The last row without any NaN is taken (or the last row without
		NaN considering only the subset of columns in the case of a DataFrame)
		
		.. versionadded:: 0.19.0 For DataFrame
		
		If there is no good value, NaN is returned for a Series
		a Series of NaN values for a DataFrame
		
		Parameters
		----------
		where : date or array of dates
		subset : string or list of strings, default None
		   if not None use these columns for NaN propagation
		
		Notes
		-----
		Dates are assumed to be sorted
		Raises if this is not the case
		
		Returns
		-------
		where is scalar
		
		  - value or NaN if input is Series
		  - Series if input is DataFrame
		
		where is Index: same shape object as input
		
		See Also
		--------
		merge_asof
	**/
	public function asof(where:Dynamic, ?subset:Dynamic):Dynamic;
	/**
		Assign new columns to a DataFrame, returning a new object
		(a copy) with the new columns added to the original ones.
		Existing columns that are re-assigned will be overwritten.
		
		Parameters
		----------
		kwargs : keyword, value pairs
		    keywords are the column names. If the values are
		    callable, they are computed on the DataFrame and
		    assigned to the new columns. The callable must not
		    change input DataFrame (though pandas doesn't check it).
		    If the values are not callable, (e.g. a Series, scalar, or array),
		    they are simply assigned.
		
		Returns
		-------
		df : DataFrame
		    A new DataFrame with the new columns in addition to
		    all the existing columns.
		
		Notes
		-----
		Assigning multiple columns within the same ``assign`` is possible.
		For Python 3.6 and above, later items in '\*\*kwargs' may refer to
		newly created or modified columns in 'df'; items are computed and
		assigned into 'df' in order.  For Python 3.5 and below, the order of
		keyword arguments is not specified, you cannot refer to newly created
		or modified columns. All items are computed first, and then assigned
		in alphabetical order.
		
		.. versionchanged :: 0.23.0
		
		    Keyword argument order is maintained for Python 3.6 and later.
		
		Examples
		--------
		>>> df = pd.DataFrame({'A': range(1, 11), 'B': np.random.randn(10)})
		
		Where the value is a callable, evaluated on `df`:
		
		>>> df.assign(ln_A = lambda x: np.log(x.A))
		    A         B      ln_A
		0   1  0.426905  0.000000
		1   2 -0.780949  0.693147
		2   3 -0.418711  1.098612
		3   4 -0.269708  1.386294
		4   5 -0.274002  1.609438
		5   6 -0.500792  1.791759
		6   7  1.649697  1.945910
		7   8 -1.495604  2.079442
		8   9  0.549296  2.197225
		9  10 -0.758542  2.302585
		
		Where the value already exists and is inserted:
		
		>>> newcol = np.log(df['A'])
		>>> df.assign(ln_A=newcol)
		    A         B      ln_A
		0   1  0.426905  0.000000
		1   2 -0.780949  0.693147
		2   3 -0.418711  1.098612
		3   4 -0.269708  1.386294
		4   5 -0.274002  1.609438
		5   6 -0.500792  1.791759
		6   7  1.649697  1.945910
		7   8 -1.495604  2.079442
		8   9  0.549296  2.197225
		9  10 -0.758542  2.302585
		
		Where the keyword arguments depend on each other
		
		>>> df = pd.DataFrame({'A': [1, 2, 3]})
		
		>>> df.assign(B=df.A, C=lambda x:x['A']+ x['B'])
		    A  B  C
		 0  1  1  2
		 1  2  2  4
		 2  3  3  6
	**/
	public function assign(?kwargs:python.KwArgs<Dynamic>):pandas.DataFrame;
	/**
		Cast a pandas object to a specified dtype ``dtype``.
		
		Parameters
		----------
		dtype : data type, or dict of column name -> data type
		    Use a numpy.dtype or Python type to cast entire pandas object to
		    the same type. Alternatively, use {col: dtype, ...}, where col is a
		    column label and dtype is a numpy.dtype or Python type to cast one
		    or more of the DataFrame's columns to column-specific types.
		copy : bool, default True.
		    Return a copy when ``copy=True`` (be very careful setting
		    ``copy=False`` as changes to values then may propagate to other
		    pandas objects).
		errors : {'raise', 'ignore'}, default 'raise'.
		    Control raising of exceptions on invalid data for provided dtype.
		
		    - ``raise`` : allow exceptions to be raised
		    - ``ignore`` : suppress exceptions. On error return original object
		
		    .. versionadded:: 0.20.0
		
		raise_on_error : raise on invalid input
		    .. deprecated:: 0.20.0
		       Use ``errors`` instead
		kwargs : keyword arguments to pass on to the constructor
		
		Returns
		-------
		casted : type of caller
		
		Examples
		--------
		>>> ser = pd.Series([1, 2], dtype='int32')
		>>> ser
		0    1
		1    2
		dtype: int32
		>>> ser.astype('int64')
		0    1
		1    2
		dtype: int64
		
		Convert to categorical type:
		
		>>> ser.astype('category')
		0    1
		1    2
		dtype: category
		Categories (2, int64): [1, 2]
		
		Convert to ordered categorical type with custom ordering:
		
		>>> ser.astype('category', ordered=True, categories=[2, 1])
		0    1
		1    2
		dtype: category
		Categories (2, int64): [2 < 1]
		
		Note that using ``copy=False`` and changing data on a new
		pandas object may propagate changes:
		
		>>> s1 = pd.Series([1,2])
		>>> s2 = s1.astype('int64', copy=False)
		>>> s2[0] = 10
		>>> s1  # note that s1[0] has changed too
		0    10
		1     2
		dtype: int64
		
		See also
		--------
		pandas.to_datetime : Convert argument to datetime.
		pandas.to_timedelta : Convert argument to timedelta.
		pandas.to_numeric : Convert argument to a numeric type.
		numpy.ndarray.astype : Cast a numpy array to a specified type.
	**/
	public function astype(dtype:Dynamic, ?copy:Dynamic, ?errors:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Access a single value for a row/column label pair.
		
		Similar to ``loc``, in that both provide label-based lookups. Use
		``at`` if you only need to get or set a single value in a DataFrame
		or Series.
		
		See Also
		--------
		DataFrame.iat : Access a single value for a row/column pair by integer
		    position
		DataFrame.loc : Access a group of rows and columns by label(s)
		Series.at : Access a single value using a label
		
		Examples
		--------
		>>> df = pd.DataFrame([[0, 2, 3], [0, 4, 1], [10, 20, 30]],
		...                   index=[4, 5, 6], columns=['A', 'B', 'C'])
		>>> df
		    A   B   C
		4   0   2   3
		5   0   4   1
		6  10  20  30
		
		Get value at specified row/column pair
		
		>>> df.at[4, 'B']
		2
		
		Set value at specified row/column pair
		
		>>> df.at[4, 'B'] = 10
		>>> df.at[4, 'B']
		10
		
		Get value within a Series
		
		>>> df.loc[5].at['B']
		4
		
		Raises
		------
		KeyError
		    When label does not exist in DataFrame
	**/
	public var at : Dynamic;
	/**
		Select values at particular time of day (e.g. 9:30AM).
		
		Raises
		------
		TypeError
		    If the index is not  a :class:`DatetimeIndex`
		
		Parameters
		----------
		time : datetime.time or string
		
		Returns
		-------
		values_at_time : type of caller
		
		Examples
		--------
		>>> i = pd.date_range('2018-04-09', periods=4, freq='12H')
		>>> ts = pd.DataFrame({'A': [1,2,3,4]}, index=i)
		>>> ts
		                     A
		2018-04-09 00:00:00  1
		2018-04-09 12:00:00  2
		2018-04-10 00:00:00  3
		2018-04-10 12:00:00  4
		
		>>> ts.at_time('12:00')
		                     A
		2018-04-09 12:00:00  2
		2018-04-10 12:00:00  4
		
		See Also
		--------
		between_time : Select values between particular times of the day
		first : Select initial periods of time series based on a date offset
		last : Select final periods of time series based on a date offset
		DatetimeIndex.indexer_at_time : Get just the index locations for
		    values at particular time of the day
	**/
	public function at_time(time:Dynamic, ?asof:Dynamic):Dynamic;
	/**
		Return a list representing the axes of the DataFrame.
		
		It has the row axis labels and column axis labels as the only members.
		They are returned in that order.
		
		Examples
		--------
		>>> df = pd.DataFrame({'col1': [1, 2], 'col2': [3, 4]})
		>>> df.axes
		[RangeIndex(start=0, stop=2, step=1), Index(['coll', 'col2'],
		dtype='object')]
	**/
	public var axes : Dynamic;
	/**
		Select values between particular times of the day (e.g., 9:00-9:30 AM).
		
		By setting ``start_time`` to be later than ``end_time``,
		you can get the times that are *not* between the two times.
		
		Raises
		------
		TypeError
		    If the index is not  a :class:`DatetimeIndex`
		
		Parameters
		----------
		start_time : datetime.time or string
		end_time : datetime.time or string
		include_start : boolean, default True
		include_end : boolean, default True
		
		Returns
		-------
		values_between_time : type of caller
		
		Examples
		--------
		>>> i = pd.date_range('2018-04-09', periods=4, freq='1D20min')
		>>> ts = pd.DataFrame({'A': [1,2,3,4]}, index=i)
		>>> ts
		                     A
		2018-04-09 00:00:00  1
		2018-04-10 00:20:00  2
		2018-04-11 00:40:00  3
		2018-04-12 01:00:00  4
		
		>>> ts.between_time('0:15', '0:45')
		                     A
		2018-04-10 00:20:00  2
		2018-04-11 00:40:00  3
		
		You get the times that are *not* between two times by setting
		``start_time`` later than ``end_time``:
		
		>>> ts.between_time('0:45', '0:15')
		                     A
		2018-04-09 00:00:00  1
		2018-04-12 01:00:00  4
		
		See Also
		--------
		at_time : Select values at a particular time of the day
		first : Select initial periods of time series based on a date offset
		last : Select final periods of time series based on a date offset
		DatetimeIndex.indexer_between_time : Get just the index locations for
		    values between particular times of the day
	**/
	public function between_time(start_time:Dynamic, end_time:Dynamic, ?include_start:Dynamic, ?include_end:Dynamic):Dynamic;
	/**
		Synonym for :meth:`DataFrame.fillna(method='bfill') <DataFrame.fillna>`
	**/
	public function bfill(?axis:Dynamic, ?inplace:Dynamic, ?limit:Dynamic, ?downcast:Dynamic):Dynamic;
	/**
		Internal property, property synonym for as_blocks()
		
		.. deprecated:: 0.21.0
	**/
	public var blocks : Dynamic;
	/**
		Return the bool of a single element PandasObject.
		
		This must be a boolean scalar value, either True or False.  Raise a
		ValueError if the PandasObject does not have exactly 1 element, or that
		element is not boolean
	**/
	public function bool():Dynamic;
	/**
		Make a box plot from DataFrame columns.
		
		Make a box-and-whisker plot from DataFrame columns, optionally grouped
		by some other columns. A box plot is a method for graphically depicting
		groups of numerical data through their quartiles.
		The box extends from the Q1 to Q3 quartile values of the data,
		with a line at the median (Q2). The whiskers extend from the edges
		of box to show the range of the data. The position of the whiskers
		is set by default to `1.5 * IQR (IQR = Q3 - Q1)` from the edges of the box.
		Outlier points are those past the end of the whiskers.
		
		For further details see
		Wikipedia's entry for `boxplot <https://en.wikipedia.org/wiki/Box_plot>`_.
		
		Parameters
		----------
		column : str or list of str, optional
		    Column name or list of names, or vector.
		    Can be any valid input to :meth:`pandas.DataFrame.groupby`.
		by : str or array-like, optional
		    Column in the DataFrame to :meth:`pandas.DataFrame.groupby`.
		    One box-plot will be done per value of columns in `by`.
		ax : object of class matplotlib.axes.Axes, optional
		    The matplotlib axes to be used by boxplot.
		fontsize : float or str
		    Tick label font size in points or as a string (e.g., `large`).
		rot : int or float, default 0
		    The rotation angle of labels (in degrees)
		    with respect to the screen coordinate sytem.
		grid : boolean, default True
		    Setting this to True will show the grid.
		figsize : A tuple (width, height) in inches
		    The size of the figure to create in matplotlib.
		layout : tuple (rows, columns), optional
		    For example, (3, 5) will display the subplots
		    using 3 columns and 5 rows, starting from the top-left.
		return_type : {'axes', 'dict', 'both'} or None, default 'axes'
		    The kind of object to return. The default is ``axes``.
		
		    * 'axes' returns the matplotlib axes the boxplot is drawn on.
		    * 'dict' returns a dictionary whose values are the matplotlib
		      Lines of the boxplot.
		    * 'both' returns a namedtuple with the axes and dict.
		    * when grouping with ``by``, a Series mapping columns to
		      ``return_type`` is returned.
		
		      If ``return_type`` is `None`, a NumPy array
		      of axes with the same shape as ``layout`` is returned.
		**kwds
		    All other plotting keyword arguments to be passed to
		    :func:`matplotlib.pyplot.boxplot`.
		
		Returns
		-------
		result :
		
		    The return type depends on the `return_type` parameter:
		
		    * 'axes' : object of class matplotlib.axes.Axes
		    * 'dict' : dict of matplotlib.lines.Line2D objects
		    * 'both' : a nametuple with strucure (ax, lines)
		
		    For data grouped with ``by``:
		
		    * :class:`~pandas.Series`
		    * :class:`~numpy.array` (for ``return_type = None``)
		
		See Also
		--------
		Series.plot.hist: Make a histogram.
		matplotlib.pyplot.boxplot : Matplotlib equivalent plot.
		
		Notes
		-----
		Use ``return_type='dict'`` when you want to tweak the appearance
		of the lines after plotting. In this case a dict containing the Lines
		making up the boxes, caps, fliers, medians, and whiskers is returned.
		
		Examples
		--------
		
		Boxplots can be created for every column in the dataframe
		by ``df.boxplot()`` or indicating the columns to be used:
		
		.. plot::
		    :context: close-figs
		
		    >>> np.random.seed(1234)
		    >>> df = pd.DataFrame(np.random.randn(10,4),
		    ...                   columns=['Col1', 'Col2', 'Col3', 'Col4'])
		    >>> boxplot = df.boxplot(column=['Col1', 'Col2', 'Col3'])
		
		Boxplots of variables distributions grouped by the values of a third
		variable can be created using the option ``by``. For instance:
		
		.. plot::
		    :context: close-figs
		
		    >>> df = pd.DataFrame(np.random.randn(10, 2),
		    ...                   columns=['Col1', 'Col2'])
		    >>> df['X'] = pd.Series(['A', 'A', 'A', 'A', 'A',
		    ...                      'B', 'B', 'B', 'B', 'B'])
		    >>> boxplot = df.boxplot(by='X')
		
		A list of strings (i.e. ``['X', 'Y']``) can be passed to boxplot
		in order to group the data by combination of the variables in the x-axis:
		
		.. plot::
		    :context: close-figs
		
		    >>> df = pd.DataFrame(np.random.randn(10,3),
		    ...                   columns=['Col1', 'Col2', 'Col3'])
		    >>> df['X'] = pd.Series(['A', 'A', 'A', 'A', 'A',
		    ...                      'B', 'B', 'B', 'B', 'B'])
		    >>> df['Y'] = pd.Series(['A', 'B', 'A', 'B', 'A',
		    ...                      'B', 'A', 'B', 'A', 'B'])
		    >>> boxplot = df.boxplot(column=['Col1', 'Col2'], by=['X', 'Y'])
		
		The layout of boxplot can be adjusted giving a tuple to ``layout``:
		
		.. plot::
		    :context: close-figs
		
		    >>> boxplot = df.boxplot(column=['Col1', 'Col2'], by='X',
		    ...                      layout=(2, 1))
		
		Additional formatting can be done to the boxplot, like suppressing the grid
		(``grid=False``), rotating the labels in the x-axis (i.e. ``rot=45``)
		or changing the fontsize (i.e. ``fontsize=15``):
		
		.. plot::
		    :context: close-figs
		
		    >>> boxplot = df.boxplot(grid=False, rot=45, fontsize=15)
		
		The parameter ``return_type`` can be used to select the type of element
		returned by `boxplot`.  When ``return_type='axes'`` is selected,
		the matplotlib axes on which the boxplot is drawn are returned:
		
		    >>> boxplot = df.boxplot(column=['Col1','Col2'], return_type='axes')
		    >>> type(boxplot)
		    <class 'matplotlib.axes._subplots.AxesSubplot'>
		
		When grouping with ``by``, a Series mapping columns to ``return_type``
		is returned:
		
		    >>> boxplot = df.boxplot(column=['Col1', 'Col2'], by='X',
		    ...                      return_type='axes')
		    >>> type(boxplot)
		    <class 'pandas.core.series.Series'>
		
		If ``return_type`` is `None`, a NumPy array of axes with the same shape
		as ``layout`` is returned:
		
		    >>> boxplot =  df.boxplot(column=['Col1', 'Col2'], by='X',
		    ...                       return_type=None)
		    >>> type(boxplot)
		    <class 'numpy.ndarray'>
	**/
	public function boxplot(?column:Dynamic, ?by:Dynamic, ?ax:Dynamic, ?fontsize:Dynamic, ?rot:Dynamic, ?grid:Dynamic, ?figsize:Dynamic, ?layout:Dynamic, ?return_type:Dynamic, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Trim values at input threshold(s).
		
		Assigns values outside boundary to boundary values. Thresholds
		can be singular values or array like, and in the latter case
		the clipping is performed element-wise in the specified axis.
		
		Parameters
		----------
		lower : float or array_like, default None
		    Minimum threshold value. All values below this
		    threshold will be set to it.
		upper : float or array_like, default None
		    Maximum threshold value. All values above this
		    threshold will be set to it.
		axis : int or string axis name, optional
		    Align object with lower and upper along the given axis.
		inplace : boolean, default False
		    Whether to perform the operation in place on the data.
		
		    .. versionadded:: 0.21.0
		*args, **kwargs
		    Additional keywords have no effect but might be accepted
		    for compatibility with numpy.
		
		See Also
		--------
		clip_lower : Clip values below specified threshold(s).
		clip_upper : Clip values above specified threshold(s).
		
		Returns
		-------
		Series or DataFrame
		    Same type as calling object with the values outside the
		    clip boundaries replaced
		
		Examples
		--------
		>>> data = {'col_0': [9, -3, 0, -1, 5], 'col_1': [-2, -7, 6, 8, -5]}
		>>> df = pd.DataFrame(data)
		>>> df
		   col_0  col_1
		0      9     -2
		1     -3     -7
		2      0      6
		3     -1      8
		4      5     -5
		
		Clips per column using lower and upper thresholds:
		
		>>> df.clip(-4, 6)
		   col_0  col_1
		0      6     -2
		1     -3     -4
		2      0      6
		3     -1      6
		4      5     -4
		
		Clips using specific lower and upper thresholds per column element:
		
		>>> t = pd.Series([2, -4, -1, 6, 3])
		>>> t
		0    2
		1   -4
		2   -1
		3    6
		4    3
		dtype: int64
		
		>>> df.clip(t, t + 4, axis=0)
		   col_0  col_1
		0      6      2
		1     -3     -4
		2      0      3
		3      6      8
		4      5      3
	**/
	public function clip(?lower:Dynamic, ?upper:Dynamic, ?axis:Dynamic, ?inplace:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return copy of the input with values below a threshold truncated.
		
		Parameters
		----------
		threshold : numeric or array-like
		    Minimum value allowed. All values below threshold will be set to
		    this value.
		
		    * float : every value is compared to `threshold`.
		    * array-like : The shape of `threshold` should match the object
		      it's compared to. When `self` is a Series, `threshold` should be
		      the length. When `self` is a DataFrame, `threshold` should 2-D
		      and the same shape as `self` for ``axis=None``, or 1-D and the
		      same length as the axis being compared.
		
		axis : {0 or 'index', 1 or 'columns'}, default 0
		    Align `self` with `threshold` along the given axis.
		
		inplace : boolean, default False
		    Whether to perform the operation in place on the data.
		
		    .. versionadded:: 0.21.0
		
		See Also
		--------
		Series.clip : Return copy of input with values below and above
		    thresholds truncated.
		Series.clip_upper : Return copy of input with values above
		    threshold truncated.
		
		Returns
		-------
		clipped : same type as input
		
		Examples
		--------
		Series single threshold clipping:
		
		>>> s = pd.Series([5, 6, 7, 8, 9])
		>>> s.clip_lower(8)
		0    8
		1    8
		2    8
		3    8
		4    9
		dtype: int64
		
		Series clipping element-wise using an array of thresholds. `threshold`
		should be the same length as the Series.
		
		>>> elemwise_thresholds = [4, 8, 7, 2, 5]
		>>> s.clip_lower(elemwise_thresholds)
		0    5
		1    8
		2    7
		3    8
		4    9
		dtype: int64
		
		DataFrames can be compared to a scalar.
		
		>>> df = pd.DataFrame({"A": [1, 3, 5], "B": [2, 4, 6]})
		>>> df
		   A  B
		0  1  2
		1  3  4
		2  5  6
		
		>>> df.clip_lower(3)
		   A  B
		0  3  3
		1  3  4
		2  5  6
		
		Or to an array of values. By default, `threshold` should be the same
		shape as the DataFrame.
		
		>>> df.clip_lower(np.array([[3, 4], [2, 2], [6, 2]]))
		   A  B
		0  3  4
		1  3  4
		2  6  6
		
		Control how `threshold` is broadcast with `axis`. In this case
		`threshold` should be the same length as the axis specified by
		`axis`.
		
		>>> df.clip_lower(np.array([3, 3, 5]), axis='index')
		   A  B
		0  3  3
		1  3  4
		2  5  6
		
		>>> df.clip_lower(np.array([4, 5]), axis='columns')
		   A  B
		0  4  5
		1  4  5
		2  5  6
	**/
	public function clip_lower(threshold:Dynamic, ?axis:Dynamic, ?inplace:Dynamic):Dynamic;
	/**
		Return copy of input with values above given value(s) truncated.
		
		Parameters
		----------
		threshold : float or array_like
		axis : int or string axis name, optional
		    Align object with threshold along the given axis.
		inplace : boolean, default False
		    Whether to perform the operation in place on the data
		
		    .. versionadded:: 0.21.0
		
		See Also
		--------
		clip
		
		Returns
		-------
		clipped : same type as input
	**/
	public function clip_upper(threshold:Dynamic, ?axis:Dynamic, ?inplace:Dynamic):Dynamic;
	/**
		The column labels of the DataFrame.
	**/
	public var columns : Dynamic;
	/**
		Add two DataFrame objects and do not propagate NaN values, so if for a
		(column, time) one frame is missing a value, it will default to the
		other frame's value (which might be NaN as well)
		
		Parameters
		----------
		other : DataFrame
		func : function
		    Function that takes two series as inputs and return a Series or a
		    scalar
		fill_value : scalar value
		overwrite : boolean, default True
		    If True then overwrite values for common keys in the calling frame
		
		Returns
		-------
		result : DataFrame
		
		Examples
		--------
		>>> df1 = DataFrame({'A': [0, 0], 'B': [4, 4]})
		>>> df2 = DataFrame({'A': [1, 1], 'B': [3, 3]})
		>>> df1.combine(df2, lambda s1, s2: s1 if s1.sum() < s2.sum() else s2)
		   A  B
		0  0  3
		1  0  3
		
		See Also
		--------
		DataFrame.combine_first : Combine two DataFrame objects and default to
		    non-null values in frame calling the method
	**/
	public function combine(other:Dynamic, func:Dynamic, ?fill_value:Dynamic, ?overwrite:Dynamic):pandas.DataFrame;
	/**
		Combine two DataFrame objects and default to non-null values in frame
		calling the method. Result index columns will be the union of the
		respective indexes and columns
		
		Parameters
		----------
		other : DataFrame
		
		Returns
		-------
		combined : DataFrame
		
		Examples
		--------
		df1's values prioritized, use values from df2 to fill holes:
		
		>>> df1 = pd.DataFrame([[1, np.nan]])
		>>> df2 = pd.DataFrame([[3, 4]])
		>>> df1.combine_first(df2)
		   0    1
		0  1  4.0
		
		See Also
		--------
		DataFrame.combine : Perform series-wise operation on two DataFrames
		    using a given function
	**/
	public function combine_first(other:Dynamic):pandas.DataFrame;
	/**
		Return the compound percentage of the values for the requested axis
		
		Parameters
		----------
		axis : {index (0), columns (1)}
		skipna : boolean, default True
		    Exclude NA/null values when computing the result.
		level : int or level name, default None
		    If the axis is a MultiIndex (hierarchical), count along a
		    particular level, collapsing into a Series
		numeric_only : boolean, default None
		    Include only float, int, boolean columns. If None, will attempt to use
		    everything, then use only numeric data. Not implemented for Series.
		
		Returns
		-------
		compounded : Series or DataFrame (if level specified)
	**/
	public function compound(?axis:Dynamic, ?skipna:Dynamic, ?level:Dynamic):Dynamic;
	/**
		Compute NDFrame with "consolidated" internals (data of each dtype
		grouped together in a single ndarray).
		
		.. deprecated:: 0.20.0
		    Consolidate will be an internal implementation only.
	**/
	public function consolidate(?inplace:Dynamic):Dynamic;
	/**
		Attempt to infer better dtype for object columns.
		
		.. deprecated:: 0.21.0
		
		Parameters
		----------
		convert_dates : boolean, default True
		    If True, convert to date where possible. If 'coerce', force
		    conversion, with unconvertible values becoming NaT.
		convert_numeric : boolean, default False
		    If True, attempt to coerce to numbers (including strings), with
		    unconvertible values becoming NaN.
		convert_timedeltas : boolean, default True
		    If True, convert to timedelta where possible. If 'coerce', force
		    conversion, with unconvertible values becoming NaT.
		copy : boolean, default True
		    If True, return a copy even if no copy is necessary (e.g. no
		    conversion was done). Note: This is meant for internal use, and
		    should not be confused with inplace.
		
		See Also
		--------
		pandas.to_datetime : Convert argument to datetime.
		pandas.to_timedelta : Convert argument to timedelta.
		pandas.to_numeric : Return a fixed frequency timedelta index,
		    with day as the default.
		
		Returns
		-------
		converted : same as input object
	**/
	public function convert_objects(?convert_dates:Dynamic, ?convert_numeric:Dynamic, ?convert_timedeltas:Dynamic, ?copy:Dynamic):Dynamic;
	/**
		Make a copy of this object's indices and data.
		
		When ``deep=True`` (default), a new object will be created with a
		copy of the calling object's data and indices. Modifications to
		the data or indices of the copy will not be reflected in the
		original object (see notes below).
		
		When ``deep=False``, a new object will be created without copying
		the calling object's data or index (only references to the data
		and index are copied). Any changes to the data of the original
		will be reflected in the shallow copy (and vice versa).
		
		Parameters
		----------
		deep : bool, default True
		    Make a deep copy, including a copy of the data and the indices.
		    With ``deep=False`` neither the indices nor the data are copied.
		
		Returns
		-------
		copy : Series, DataFrame or Panel
		    Object type matches caller.
		
		Notes
		-----
		When ``deep=True``, data is copied but actual Python objects
		will not be copied recursively, only the reference to the object.
		This is in contrast to `copy.deepcopy` in the Standard Library,
		which recursively copies object data (see examples below).
		
		While ``Index`` objects are copied when ``deep=True``, the underlying
		numpy array is not copied for performance reasons. Since ``Index`` is
		immutable, the underlying data can be safely shared and a copy
		is not needed.
		
		Examples
		--------
		>>> s = pd.Series([1, 2], index=["a", "b"])
		>>> s
		a    1
		b    2
		dtype: int64
		
		>>> s_copy = s.copy()
		>>> s_copy
		a    1
		b    2
		dtype: int64
		
		**Shallow copy versus default (deep) copy:**
		
		>>> s = pd.Series([1, 2], index=["a", "b"])
		>>> deep = s.copy()
		>>> shallow = s.copy(deep=False)
		
		Shallow copy shares data and index with original.
		
		>>> s is shallow
		False
		>>> s.values is shallow.values and s.index is shallow.index
		True
		
		Deep copy has own copy of data and index.
		
		>>> s is deep
		False
		>>> s.values is deep.values or s.index is deep.index
		False
		
		Updates to the data shared by shallow copy and original is reflected
		in both; deep copy remains unchanged.
		
		>>> s[0] = 3
		>>> shallow[1] = 4
		>>> s
		a    3
		b    4
		dtype: int64
		>>> shallow
		a    3
		b    4
		dtype: int64
		>>> deep
		a    1
		b    2
		dtype: int64
		
		Note that when copying an object containing Python objects, a deep copy
		will copy the data, but will not do so recursively. Updating a nested
		data object will be reflected in the deep copy.
		
		>>> s = pd.Series([[1, 2], [3, 4]])
		>>> deep = s.copy()
		>>> s[0][0] = 10
		>>> s
		0    [10, 2]
		1     [3, 4]
		dtype: object
		>>> deep
		0    [10, 2]
		1     [3, 4]
		dtype: object
	**/
	public function copy(?deep:Dynamic):Dynamic;
	/**
		Compute pairwise correlation of columns, excluding NA/null values
		
		Parameters
		----------
		method : {'pearson', 'kendall', 'spearman'}
		    * pearson : standard correlation coefficient
		    * kendall : Kendall Tau correlation coefficient
		    * spearman : Spearman rank correlation
		min_periods : int, optional
		    Minimum number of observations required per pair of columns
		    to have a valid result. Currently only available for pearson
		    and spearman correlation
		
		Returns
		-------
		y : DataFrame
	**/
	public function corr(?method:Dynamic, ?min_periods:Dynamic):pandas.DataFrame;
	/**
		Compute pairwise correlation between rows or columns of two DataFrame
		objects.
		
		Parameters
		----------
		other : DataFrame, Series
		axis : {0 or 'index', 1 or 'columns'}, default 0
		    0 or 'index' to compute column-wise, 1 or 'columns' for row-wise
		drop : boolean, default False
		    Drop missing indices from result, default returns union of all
		
		Returns
		-------
		correls : Series
	**/
	public function corrwith(other:Dynamic, ?axis:Dynamic, ?drop:Dynamic):pandas.Series;
	/**
		Count non-NA cells for each column or row.
		
		The values `None`, `NaN`, `NaT`, and optionally `numpy.inf` (depending
		on `pandas.options.mode.use_inf_as_na`) are considered NA.
		
		Parameters
		----------
		axis : {0 or 'index', 1 or 'columns'}, default 0
		    If 0 or 'index' counts are generated for each column.
		    If 1 or 'columns' counts are generated for each **row**.
		level : int or str, optional
		    If the axis is a `MultiIndex` (hierarchical), count along a
		    particular `level`, collapsing into a `DataFrame`.
		    A `str` specifies the level name.
		numeric_only : boolean, default False
		    Include only `float`, `int` or `boolean` data.
		
		Returns
		-------
		Series or DataFrame
		    For each column/row the number of non-NA/null entries.
		    If `level` is specified returns a `DataFrame`.
		
		See Also
		--------
		Series.count: number of non-NA elements in a Series
		DataFrame.shape: number of DataFrame rows and columns (including NA
		    elements)
		DataFrame.isna: boolean same-sized DataFrame showing places of NA
		    elements
		
		Examples
		--------
		Constructing DataFrame from a dictionary:
		
		>>> df = pd.DataFrame({"Person":
		...                    ["John", "Myla", None, "John", "Myla"],
		...                    "Age": [24., np.nan, 21., 33, 26],
		...                    "Single": [False, True, True, True, False]})
		>>> df
		   Person   Age  Single
		0    John  24.0   False
		1    Myla   NaN    True
		2    None  21.0    True
		3    John  33.0    True
		4    Myla  26.0   False
		
		Notice the uncounted NA values:
		
		>>> df.count()
		Person    4
		Age       4
		Single    5
		dtype: int64
		
		Counts for each **row**:
		
		>>> df.count(axis='columns')
		0    3
		1    2
		2    2
		3    3
		4    3
		dtype: int64
		
		Counts for one level of a `MultiIndex`:
		
		>>> df.set_index(["Person", "Single"]).count(level="Person")
		        Age
		Person
		John      2
		Myla      1
	**/
	public function count(?axis:Dynamic, ?level:Dynamic, ?numeric_only:Dynamic):Dynamic;
	/**
		Compute pairwise covariance of columns, excluding NA/null values.
		
		Compute the pairwise covariance among the series of a DataFrame.
		The returned data frame is the `covariance matrix
		<https://en.wikipedia.org/wiki/Covariance_matrix>`__ of the columns
		of the DataFrame.
		
		Both NA and null values are automatically excluded from the
		calculation. (See the note below about bias from missing values.)
		A threshold can be set for the minimum number of
		observations for each value created. Comparisons with observations
		below this threshold will be returned as ``NaN``.
		
		This method is generally used for the analysis of time series data to
		understand the relationship between different measures
		across time.
		
		Parameters
		----------
		min_periods : int, optional
		    Minimum number of observations required per pair of columns
		    to have a valid result.
		
		Returns
		-------
		DataFrame
		    The covariance matrix of the series of the DataFrame.
		
		See Also
		--------
		pandas.Series.cov : compute covariance with another Series
		pandas.core.window.EWM.cov: expoential weighted sample covariance
		pandas.core.window.Expanding.cov : expanding sample covariance
		pandas.core.window.Rolling.cov : rolling sample covariance
		
		Notes
		-----
		Returns the covariance matrix of the DataFrame's time series.
		The covariance is normalized by N-1.
		
		For DataFrames that have Series that are missing data (assuming that
		data is `missing at random
		<https://en.wikipedia.org/wiki/Missing_data#Missing_at_random>`__)
		the returned covariance matrix will be an unbiased estimate
		of the variance and covariance between the member Series.
		
		However, for many applications this estimate may not be acceptable
		because the estimate covariance matrix is not guaranteed to be positive
		semi-definite. This could lead to estimate correlations having
		absolute values which are greater than one, and/or a non-invertible
		covariance matrix. See `Estimation of covariance matrices
		<http://en.wikipedia.org/w/index.php?title=Estimation_of_covariance_
		matrices>`__ for more details.
		
		Examples
		--------
		>>> df = pd.DataFrame([(1, 2), (0, 3), (2, 0), (1, 1)],
		...                   columns=['dogs', 'cats'])
		>>> df.cov()
		          dogs      cats
		dogs  0.666667 -1.000000
		cats -1.000000  1.666667
		
		>>> np.random.seed(42)
		>>> df = pd.DataFrame(np.random.randn(1000, 5),
		...                   columns=['a', 'b', 'c', 'd', 'e'])
		>>> df.cov()
		          a         b         c         d         e
		a  0.998438 -0.020161  0.059277 -0.008943  0.014144
		b -0.020161  1.059352 -0.008543 -0.024738  0.009826
		c  0.059277 -0.008543  1.010670 -0.001486 -0.000271
		d -0.008943 -0.024738 -0.001486  0.921297 -0.013692
		e  0.014144  0.009826 -0.000271 -0.013692  0.977795
		
		**Minimum number of periods**
		
		This method also supports an optional ``min_periods`` keyword
		that specifies the required minimum number of non-NA observations for
		each column pair in order to have a valid result:
		
		>>> np.random.seed(42)
		>>> df = pd.DataFrame(np.random.randn(20, 3),
		...                   columns=['a', 'b', 'c'])
		>>> df.loc[df.index[:5], 'a'] = np.nan
		>>> df.loc[df.index[5:10], 'b'] = np.nan
		>>> df.cov(min_periods=12)
		          a         b         c
		a  0.316741       NaN -0.150812
		b       NaN  1.248003  0.191417
		c -0.150812  0.191417  0.895202
	**/
	public function cov(?min_periods:Dynamic):Dynamic;
	/**
		Return cumulative maximum over a DataFrame or Series axis.
		
		Returns a DataFrame or Series of the same size containing the cumulative
		maximum.
		
		Parameters
		----------
		axis : {0 or 'index', 1 or 'columns'}, default 0
		    The index or the name of the axis. 0 is equivalent to None or 'index'.
		skipna : boolean, default True
		    Exclude NA/null values. If an entire row/column is NA, the result
		    will be NA.
		*args, **kwargs :
		    Additional keywords have no effect but might be accepted for
		    compatibility with NumPy.
		
		Returns
		-------
		cummax : Series or DataFrame
		
		Examples
		--------
		**Series**
		
		>>> s = pd.Series([2, np.nan, 5, -1, 0])
		>>> s
		0    2.0
		1    NaN
		2    5.0
		3   -1.0
		4    0.0
		dtype: float64
		
		By default, NA values are ignored.
		
		>>> s.cummax()
		0    2.0
		1    NaN
		2    5.0
		3    5.0
		4    5.0
		dtype: float64
		
		To include NA values in the operation, use ``skipna=False``
		
		>>> s.cummax(skipna=False)
		0    2.0
		1    NaN
		2    NaN
		3    NaN
		4    NaN
		dtype: float64
		
		**DataFrame**
		
		>>> df = pd.DataFrame([[2.0, 1.0],
		...                    [3.0, np.nan],
		...                    [1.0, 0.0]],
		...                    columns=list('AB'))
		>>> df
		     A    B
		0  2.0  1.0
		1  3.0  NaN
		2  1.0  0.0
		
		By default, iterates over rows and finds the maximum
		in each column. This is equivalent to ``axis=None`` or ``axis='index'``.
		
		>>> df.cummax()
		     A    B
		0  2.0  1.0
		1  3.0  NaN
		2  3.0  1.0
		
		To iterate over columns and find the maximum in each row,
		use ``axis=1``
		
		>>> df.cummax(axis=1)
		     A    B
		0  2.0  2.0
		1  3.0  NaN
		2  1.0  1.0
		
		See also
		--------
		pandas.core.window.Expanding.max : Similar functionality
		    but ignores ``NaN`` values.
		DataFrame.max : Return the maximum over
		    DataFrame axis.
		DataFrame.cummax : Return cumulative maximum over DataFrame axis.
		DataFrame.cummin : Return cumulative minimum over DataFrame axis.
		DataFrame.cumsum : Return cumulative sum over DataFrame axis.
		DataFrame.cumprod : Return cumulative product over DataFrame axis.
	**/
	public function cummax(?axis:Dynamic, ?skipna:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return cumulative minimum over a DataFrame or Series axis.
		
		Returns a DataFrame or Series of the same size containing the cumulative
		minimum.
		
		Parameters
		----------
		axis : {0 or 'index', 1 or 'columns'}, default 0
		    The index or the name of the axis. 0 is equivalent to None or 'index'.
		skipna : boolean, default True
		    Exclude NA/null values. If an entire row/column is NA, the result
		    will be NA.
		*args, **kwargs :
		    Additional keywords have no effect but might be accepted for
		    compatibility with NumPy.
		
		Returns
		-------
		cummin : Series or DataFrame
		
		Examples
		--------
		**Series**
		
		>>> s = pd.Series([2, np.nan, 5, -1, 0])
		>>> s
		0    2.0
		1    NaN
		2    5.0
		3   -1.0
		4    0.0
		dtype: float64
		
		By default, NA values are ignored.
		
		>>> s.cummin()
		0    2.0
		1    NaN
		2    2.0
		3   -1.0
		4   -1.0
		dtype: float64
		
		To include NA values in the operation, use ``skipna=False``
		
		>>> s.cummin(skipna=False)
		0    2.0
		1    NaN
		2    NaN
		3    NaN
		4    NaN
		dtype: float64
		
		**DataFrame**
		
		>>> df = pd.DataFrame([[2.0, 1.0],
		...                    [3.0, np.nan],
		...                    [1.0, 0.0]],
		...                    columns=list('AB'))
		>>> df
		     A    B
		0  2.0  1.0
		1  3.0  NaN
		2  1.0  0.0
		
		By default, iterates over rows and finds the minimum
		in each column. This is equivalent to ``axis=None`` or ``axis='index'``.
		
		>>> df.cummin()
		     A    B
		0  2.0  1.0
		1  2.0  NaN
		2  1.0  0.0
		
		To iterate over columns and find the minimum in each row,
		use ``axis=1``
		
		>>> df.cummin(axis=1)
		     A    B
		0  2.0  1.0
		1  3.0  NaN
		2  1.0  0.0
		
		See also
		--------
		pandas.core.window.Expanding.min : Similar functionality
		    but ignores ``NaN`` values.
		DataFrame.min : Return the minimum over
		    DataFrame axis.
		DataFrame.cummax : Return cumulative maximum over DataFrame axis.
		DataFrame.cummin : Return cumulative minimum over DataFrame axis.
		DataFrame.cumsum : Return cumulative sum over DataFrame axis.
		DataFrame.cumprod : Return cumulative product over DataFrame axis.
	**/
	public function cummin(?axis:Dynamic, ?skipna:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return cumulative product over a DataFrame or Series axis.
		
		Returns a DataFrame or Series of the same size containing the cumulative
		product.
		
		Parameters
		----------
		axis : {0 or 'index', 1 or 'columns'}, default 0
		    The index or the name of the axis. 0 is equivalent to None or 'index'.
		skipna : boolean, default True
		    Exclude NA/null values. If an entire row/column is NA, the result
		    will be NA.
		*args, **kwargs :
		    Additional keywords have no effect but might be accepted for
		    compatibility with NumPy.
		
		Returns
		-------
		cumprod : Series or DataFrame
		
		Examples
		--------
		**Series**
		
		>>> s = pd.Series([2, np.nan, 5, -1, 0])
		>>> s
		0    2.0
		1    NaN
		2    5.0
		3   -1.0
		4    0.0
		dtype: float64
		
		By default, NA values are ignored.
		
		>>> s.cumprod()
		0     2.0
		1     NaN
		2    10.0
		3   -10.0
		4    -0.0
		dtype: float64
		
		To include NA values in the operation, use ``skipna=False``
		
		>>> s.cumprod(skipna=False)
		0    2.0
		1    NaN
		2    NaN
		3    NaN
		4    NaN
		dtype: float64
		
		**DataFrame**
		
		>>> df = pd.DataFrame([[2.0, 1.0],
		...                    [3.0, np.nan],
		...                    [1.0, 0.0]],
		...                    columns=list('AB'))
		>>> df
		     A    B
		0  2.0  1.0
		1  3.0  NaN
		2  1.0  0.0
		
		By default, iterates over rows and finds the product
		in each column. This is equivalent to ``axis=None`` or ``axis='index'``.
		
		>>> df.cumprod()
		     A    B
		0  2.0  1.0
		1  6.0  NaN
		2  6.0  0.0
		
		To iterate over columns and find the product in each row,
		use ``axis=1``
		
		>>> df.cumprod(axis=1)
		     A    B
		0  2.0  2.0
		1  3.0  NaN
		2  1.0  0.0
		
		See also
		--------
		pandas.core.window.Expanding.prod : Similar functionality
		    but ignores ``NaN`` values.
		DataFrame.prod : Return the product over
		    DataFrame axis.
		DataFrame.cummax : Return cumulative maximum over DataFrame axis.
		DataFrame.cummin : Return cumulative minimum over DataFrame axis.
		DataFrame.cumsum : Return cumulative sum over DataFrame axis.
		DataFrame.cumprod : Return cumulative product over DataFrame axis.
	**/
	public function cumprod(?axis:Dynamic, ?skipna:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return cumulative sum over a DataFrame or Series axis.
		
		Returns a DataFrame or Series of the same size containing the cumulative
		sum.
		
		Parameters
		----------
		axis : {0 or 'index', 1 or 'columns'}, default 0
		    The index or the name of the axis. 0 is equivalent to None or 'index'.
		skipna : boolean, default True
		    Exclude NA/null values. If an entire row/column is NA, the result
		    will be NA.
		*args, **kwargs :
		    Additional keywords have no effect but might be accepted for
		    compatibility with NumPy.
		
		Returns
		-------
		cumsum : Series or DataFrame
		
		Examples
		--------
		**Series**
		
		>>> s = pd.Series([2, np.nan, 5, -1, 0])
		>>> s
		0    2.0
		1    NaN
		2    5.0
		3   -1.0
		4    0.0
		dtype: float64
		
		By default, NA values are ignored.
		
		>>> s.cumsum()
		0    2.0
		1    NaN
		2    7.0
		3    6.0
		4    6.0
		dtype: float64
		
		To include NA values in the operation, use ``skipna=False``
		
		>>> s.cumsum(skipna=False)
		0    2.0
		1    NaN
		2    NaN
		3    NaN
		4    NaN
		dtype: float64
		
		**DataFrame**
		
		>>> df = pd.DataFrame([[2.0, 1.0],
		...                    [3.0, np.nan],
		...                    [1.0, 0.0]],
		...                    columns=list('AB'))
		>>> df
		     A    B
		0  2.0  1.0
		1  3.0  NaN
		2  1.0  0.0
		
		By default, iterates over rows and finds the sum
		in each column. This is equivalent to ``axis=None`` or ``axis='index'``.
		
		>>> df.cumsum()
		     A    B
		0  2.0  1.0
		1  5.0  NaN
		2  6.0  1.0
		
		To iterate over columns and find the sum in each row,
		use ``axis=1``
		
		>>> df.cumsum(axis=1)
		     A    B
		0  2.0  3.0
		1  3.0  NaN
		2  1.0  1.0
		
		See also
		--------
		pandas.core.window.Expanding.sum : Similar functionality
		    but ignores ``NaN`` values.
		DataFrame.sum : Return the sum over
		    DataFrame axis.
		DataFrame.cummax : Return cumulative maximum over DataFrame axis.
		DataFrame.cummin : Return cumulative minimum over DataFrame axis.
		DataFrame.cumsum : Return cumulative sum over DataFrame axis.
		DataFrame.cumprod : Return cumulative product over DataFrame axis.
	**/
	public function cumsum(?axis:Dynamic, ?skipna:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Generates descriptive statistics that summarize the central tendency,
		dispersion and shape of a dataset's distribution, excluding
		``NaN`` values.
		
		Analyzes both numeric and object series, as well
		as ``DataFrame`` column sets of mixed data types. The output
		will vary depending on what is provided. Refer to the notes
		below for more detail.
		
		Parameters
		----------
		percentiles : list-like of numbers, optional
		    The percentiles to include in the output. All should
		    fall between 0 and 1. The default is
		    ``[.25, .5, .75]``, which returns the 25th, 50th, and
		    75th percentiles.
		include : 'all', list-like of dtypes or None (default), optional
		    A white list of data types to include in the result. Ignored
		    for ``Series``. Here are the options:
		
		    - 'all' : All columns of the input will be included in the output.
		    - A list-like of dtypes : Limits the results to the
		      provided data types.
		      To limit the result to numeric types submit
		      ``numpy.number``. To limit it instead to object columns submit
		      the ``numpy.object`` data type. Strings
		      can also be used in the style of
		      ``select_dtypes`` (e.g. ``df.describe(include=['O'])``). To
		      select pandas categorical columns, use ``'category'``
		    - None (default) : The result will include all numeric columns.
		exclude : list-like of dtypes or None (default), optional,
		    A black list of data types to omit from the result. Ignored
		    for ``Series``. Here are the options:
		
		    - A list-like of dtypes : Excludes the provided data types
		      from the result. To exclude numeric types submit
		      ``numpy.number``. To exclude object columns submit the data
		      type ``numpy.object``. Strings can also be used in the style of
		      ``select_dtypes`` (e.g. ``df.describe(include=['O'])``). To
		      exclude pandas categorical columns, use ``'category'``
		    - None (default) : The result will exclude nothing.
		
		Returns
		-------
		summary:  Series/DataFrame of summary statistics
		
		Notes
		-----
		For numeric data, the result's index will include ``count``,
		``mean``, ``std``, ``min``, ``max`` as well as lower, ``50`` and
		upper percentiles. By default the lower percentile is ``25`` and the
		upper percentile is ``75``. The ``50`` percentile is the
		same as the median.
		
		For object data (e.g. strings or timestamps), the result's index
		will include ``count``, ``unique``, ``top``, and ``freq``. The ``top``
		is the most common value. The ``freq`` is the most common value's
		frequency. Timestamps also include the ``first`` and ``last`` items.
		
		If multiple object values have the highest count, then the
		``count`` and ``top`` results will be arbitrarily chosen from
		among those with the highest count.
		
		For mixed data types provided via a ``DataFrame``, the default is to
		return only an analysis of numeric columns. If the dataframe consists
		only of object and categorical data without any numeric columns, the
		default is to return an analysis of both the object and categorical
		columns. If ``include='all'`` is provided as an option, the result
		will include a union of attributes of each type.
		
		The `include` and `exclude` parameters can be used to limit
		which columns in a ``DataFrame`` are analyzed for the output.
		The parameters are ignored when analyzing a ``Series``.
		
		Examples
		--------
		Describing a numeric ``Series``.
		
		>>> s = pd.Series([1, 2, 3])
		>>> s.describe()
		count    3.0
		mean     2.0
		std      1.0
		min      1.0
		25%      1.5
		50%      2.0
		75%      2.5
		max      3.0
		
		Describing a categorical ``Series``.
		
		>>> s = pd.Series(['a', 'a', 'b', 'c'])
		>>> s.describe()
		count     4
		unique    3
		top       a
		freq      2
		dtype: object
		
		Describing a timestamp ``Series``.
		
		>>> s = pd.Series([
		...   np.datetime64("2000-01-01"),
		...   np.datetime64("2010-01-01"),
		...   np.datetime64("2010-01-01")
		... ])
		>>> s.describe()
		count                       3
		unique                      2
		top       2010-01-01 00:00:00
		freq                        2
		first     2000-01-01 00:00:00
		last      2010-01-01 00:00:00
		dtype: object
		
		Describing a ``DataFrame``. By default only numeric fields
		are returned.
		
		>>> df = pd.DataFrame({ 'object': ['a', 'b', 'c'],
		...                     'numeric': [1, 2, 3],
		...                     'categorical': pd.Categorical(['d','e','f'])
		...                   })
		>>> df.describe()
		       numeric
		count      3.0
		mean       2.0
		std        1.0
		min        1.0
		25%        1.5
		50%        2.0
		75%        2.5
		max        3.0
		
		Describing all columns of a ``DataFrame`` regardless of data type.
		
		>>> df.describe(include='all')
		        categorical  numeric object
		count            3      3.0      3
		unique           3      NaN      3
		top              f      NaN      c
		freq             1      NaN      1
		mean           NaN      2.0    NaN
		std            NaN      1.0    NaN
		min            NaN      1.0    NaN
		25%            NaN      1.5    NaN
		50%            NaN      2.0    NaN
		75%            NaN      2.5    NaN
		max            NaN      3.0    NaN
		
		Describing a column from a ``DataFrame`` by accessing it as
		an attribute.
		
		>>> df.numeric.describe()
		count    3.0
		mean     2.0
		std      1.0
		min      1.0
		25%      1.5
		50%      2.0
		75%      2.5
		max      3.0
		Name: numeric, dtype: float64
		
		Including only numeric columns in a ``DataFrame`` description.
		
		>>> df.describe(include=[np.number])
		       numeric
		count      3.0
		mean       2.0
		std        1.0
		min        1.0
		25%        1.5
		50%        2.0
		75%        2.5
		max        3.0
		
		Including only string columns in a ``DataFrame`` description.
		
		>>> df.describe(include=[np.object])
		       object
		count       3
		unique      3
		top         c
		freq        1
		
		Including only categorical columns from a ``DataFrame`` description.
		
		>>> df.describe(include=['category'])
		       categorical
		count            3
		unique           3
		top              f
		freq             1
		
		Excluding numeric columns from a ``DataFrame`` description.
		
		>>> df.describe(exclude=[np.number])
		       categorical object
		count            3      3
		unique           3      3
		top              f      c
		freq             1      1
		
		Excluding object columns from a ``DataFrame`` description.
		
		>>> df.describe(exclude=[np.object])
		        categorical  numeric
		count            3      3.0
		unique           3      NaN
		top              f      NaN
		freq             1      NaN
		mean           NaN      2.0
		std            NaN      1.0
		min            NaN      1.0
		25%            NaN      1.5
		50%            NaN      2.0
		75%            NaN      2.5
		max            NaN      3.0
		
		See Also
		--------
		DataFrame.count
		DataFrame.max
		DataFrame.min
		DataFrame.mean
		DataFrame.std
		DataFrame.select_dtypes
	**/
	public function describe(?percentiles:Dynamic, ?include:Dynamic, ?exclude:Dynamic):Dynamic;
	/**
		First discrete difference of element.
		
		Calculates the difference of a DataFrame element compared with another
		element in the DataFrame (default is the element in the same column
		of the previous row).
		
		Parameters
		----------
		periods : int, default 1
		    Periods to shift for calculating difference, accepts negative
		    values.
		axis : {0 or 'index', 1 or 'columns'}, default 0
		    Take difference over rows (0) or columns (1).
		
		    .. versionadded:: 0.16.1.
		
		Returns
		-------
		diffed : DataFrame
		
		See Also
		--------
		Series.diff: First discrete difference for a Series.
		DataFrame.pct_change: Percent change over given number of periods.
		DataFrame.shift: Shift index by desired number of periods with an
		    optional time freq.
		
		Examples
		--------
		Difference with previous row
		
		>>> df = pd.DataFrame({'a': [1, 2, 3, 4, 5, 6],
		...                    'b': [1, 1, 2, 3, 5, 8],
		...                    'c': [1, 4, 9, 16, 25, 36]})
		>>> df
		   a  b   c
		0  1  1   1
		1  2  1   4
		2  3  2   9
		3  4  3  16
		4  5  5  25
		5  6  8  36
		
		>>> df.diff()
		     a    b     c
		0  NaN  NaN   NaN
		1  1.0  0.0   3.0
		2  1.0  1.0   5.0
		3  1.0  1.0   7.0
		4  1.0  2.0   9.0
		5  1.0  3.0  11.0
		
		Difference with previous column
		
		>>> df.diff(axis=1)
		    a    b     c
		0 NaN  0.0   0.0
		1 NaN -1.0   3.0
		2 NaN -1.0   7.0
		3 NaN -1.0  13.0
		4 NaN  0.0  20.0
		5 NaN  2.0  28.0
		
		Difference with 3rd previous row
		
		>>> df.diff(periods=3)
		     a    b     c
		0  NaN  NaN   NaN
		1  NaN  NaN   NaN
		2  NaN  NaN   NaN
		3  3.0  2.0  15.0
		4  3.0  4.0  21.0
		5  3.0  6.0  27.0
		
		Difference with following row
		
		>>> df.diff(periods=-1)
		     a    b     c
		0 -1.0  0.0  -3.0
		1 -1.0 -1.0  -5.0
		2 -1.0 -1.0  -7.0
		3 -1.0 -2.0  -9.0
		4 -1.0 -3.0 -11.0
		5  NaN  NaN   NaN
	**/
	public function diff(?periods:Dynamic, ?axis:Dynamic):pandas.DataFrame;
	/**
		Floating division of dataframe and other, element-wise (binary operator `truediv`).
		
		Equivalent to ``dataframe / other``, but with support to substitute a fill_value for
		missing data in one of the inputs.
		
		Parameters
		----------
		other : Series, DataFrame, or constant
		axis : {0, 1, 'index', 'columns'}
		    For Series input, axis to match Series index on
		level : int or name
		    Broadcast across a level, matching Index values on the
		    passed MultiIndex level
		fill_value : None or float value, default None
		    Fill existing missing (NaN) values, and any new element needed for
		    successful DataFrame alignment, with this value before computation.
		    If data in both corresponding DataFrame locations is missing
		    the result will be missing
		
		Notes
		-----
		Mismatched indices will be unioned together
		
		Returns
		-------
		result : DataFrame
		
		Examples
		--------
		None
		
		See also
		--------
		DataFrame.rtruediv
	**/
	public function div(other:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?fill_value:Dynamic):pandas.DataFrame;
	/**
		Floating division of dataframe and other, element-wise (binary operator `truediv`).
		
		Equivalent to ``dataframe / other``, but with support to substitute a fill_value for
		missing data in one of the inputs.
		
		Parameters
		----------
		other : Series, DataFrame, or constant
		axis : {0, 1, 'index', 'columns'}
		    For Series input, axis to match Series index on
		level : int or name
		    Broadcast across a level, matching Index values on the
		    passed MultiIndex level
		fill_value : None or float value, default None
		    Fill existing missing (NaN) values, and any new element needed for
		    successful DataFrame alignment, with this value before computation.
		    If data in both corresponding DataFrame locations is missing
		    the result will be missing
		
		Notes
		-----
		Mismatched indices will be unioned together
		
		Returns
		-------
		result : DataFrame
		
		Examples
		--------
		None
		
		See also
		--------
		DataFrame.rtruediv
	**/
	public function divide(other:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?fill_value:Dynamic):pandas.DataFrame;
	/**
		Matrix multiplication with DataFrame or Series objects.  Can also be
		called using `self @ other` in Python >= 3.5.
		
		Parameters
		----------
		other : DataFrame or Series
		
		Returns
		-------
		dot_product : DataFrame or Series
	**/
	public function dot(other:Dynamic):Dynamic;
	/**
		Drop specified labels from rows or columns.
		
		Remove rows or columns by specifying label names and corresponding
		axis, or by specifying directly index or column names. When using a
		multi-index, labels on different levels can be removed by specifying
		the level.
		
		Parameters
		----------
		labels : single label or list-like
		    Index or column labels to drop.
		axis : {0 or 'index', 1 or 'columns'}, default 0
		    Whether to drop labels from the index (0 or 'index') or
		    columns (1 or 'columns').
		index, columns : single label or list-like
		    Alternative to specifying axis (``labels, axis=1``
		    is equivalent to ``columns=labels``).
		
		    .. versionadded:: 0.21.0
		level : int or level name, optional
		    For MultiIndex, level from which the labels will be removed.
		inplace : bool, default False
		    If True, do operation inplace and return None.
		errors : {'ignore', 'raise'}, default 'raise'
		    If 'ignore', suppress error and only existing labels are
		    dropped.
		
		Returns
		-------
		dropped : pandas.DataFrame
		
		See Also
		--------
		DataFrame.loc : Label-location based indexer for selection by label.
		DataFrame.dropna : Return DataFrame with labels on given axis omitted
		    where (all or any) data are missing
		DataFrame.drop_duplicates : Return DataFrame with duplicate rows
		    removed, optionally only considering certain columns
		Series.drop : Return Series with specified index labels removed.
		
		Raises
		------
		KeyError
		    If none of the labels are found in the selected axis
		
		Examples
		--------
		>>> df = pd.DataFrame(np.arange(12).reshape(3,4),
		...                   columns=['A', 'B', 'C', 'D'])
		>>> df
		   A  B   C   D
		0  0  1   2   3
		1  4  5   6   7
		2  8  9  10  11
		
		Drop columns
		
		>>> df.drop(['B', 'C'], axis=1)
		   A   D
		0  0   3
		1  4   7
		2  8  11
		
		>>> df.drop(columns=['B', 'C'])
		   A   D
		0  0   3
		1  4   7
		2  8  11
		
		Drop a row by index
		
		>>> df.drop([0, 1])
		   A  B   C   D
		2  8  9  10  11
		
		Drop columns and/or rows of MultiIndex DataFrame
		
		>>> midx = pd.MultiIndex(levels=[['lama', 'cow', 'falcon'],
		...                              ['speed', 'weight', 'length']],
		...                      labels=[[0, 0, 0, 1, 1, 1, 2, 2, 2],
		...                              [0, 1, 2, 0, 1, 2, 0, 1, 2]])
		>>> df = pd.DataFrame(index=midx, columns=['big', 'small'],
		...                   data=[[45, 30], [200, 100], [1.5, 1], [30, 20],
		...                         [250, 150], [1.5, 0.8], [320, 250],
		...                         [1, 0.8], [0.3,0.2]])
		>>> df
		                big     small
		lama    speed   45.0    30.0
		        weight  200.0   100.0
		        length  1.5     1.0
		cow     speed   30.0    20.0
		        weight  250.0   150.0
		        length  1.5     0.8
		falcon  speed   320.0   250.0
		        weight  1.0     0.8
		        length  0.3     0.2
		
		>>> df.drop(index='cow', columns='small')
		                big
		lama    speed   45.0
		        weight  200.0
		        length  1.5
		falcon  speed   320.0
		        weight  1.0
		        length  0.3
		
		>>> df.drop(index='length', level=1)
		                big     small
		lama    speed   45.0    30.0
		        weight  200.0   100.0
		cow     speed   30.0    20.0
		        weight  250.0   150.0
		falcon  speed   320.0   250.0
		        weight  1.0     0.8
	**/
	public function drop(?labels:Dynamic, ?axis:Dynamic, ?index:Dynamic, ?columns:Dynamic, ?level:Dynamic, ?inplace:Dynamic, ?errors:Dynamic):Dynamic;
	/**
		Return DataFrame with duplicate rows removed, optionally only
		considering certain columns
		
		Parameters
		----------
		subset : column label or sequence of labels, optional
		    Only consider certain columns for identifying duplicates, by
		    default use all of the columns
		keep : {'first', 'last', False}, default 'first'
		    - ``first`` : Drop duplicates except for the first occurrence.
		    - ``last`` : Drop duplicates except for the last occurrence.
		    - False : Drop all duplicates.
		inplace : boolean, default False
		    Whether to drop duplicates in place or to return a copy
		
		Returns
		-------
		deduplicated : DataFrame
	**/
	public function drop_duplicates(?subset:Dynamic, ?keep:Dynamic, ?inplace:Dynamic):pandas.DataFrame;
	/**
		Remove missing values.
		
		See the :ref:`User Guide <missing_data>` for more on which values are
		considered missing, and how to work with missing data.
		
		Parameters
		----------
		axis : {0 or 'index', 1 or 'columns'}, default 0
		    Determine if rows or columns which contain missing values are
		    removed.
		
		    * 0, or 'index' : Drop rows which contain missing values.
		    * 1, or 'columns' : Drop columns which contain missing value.
		
		    .. deprecated:: 0.23.0: Pass tuple or list to drop on multiple
		    axes.
		how : {'any', 'all'}, default 'any'
		    Determine if row or column is removed from DataFrame, when we have
		    at least one NA or all NA.
		
		    * 'any' : If any NA values are present, drop that row or column.
		    * 'all' : If all values are NA, drop that row or column.
		thresh : int, optional
		    Require that many non-NA values.
		subset : array-like, optional
		    Labels along other axis to consider, e.g. if you are dropping rows
		    these would be a list of columns to include.
		inplace : bool, default False
		    If True, do operation inplace and return None.
		
		Returns
		-------
		DataFrame
		    DataFrame with NA entries dropped from it.
		
		See Also
		--------
		DataFrame.isna: Indicate missing values.
		DataFrame.notna : Indicate existing (non-missing) values.
		DataFrame.fillna : Replace missing values.
		Series.dropna : Drop missing values.
		Index.dropna : Drop missing indices.
		
		Examples
		--------
		>>> df = pd.DataFrame({"name": ['Alfred', 'Batman', 'Catwoman'],
		...                    "toy": [np.nan, 'Batmobile', 'Bullwhip'],
		...                    "born": [pd.NaT, pd.Timestamp("1940-04-25"),
		...                             pd.NaT]})
		>>> df
		       name        toy       born
		0    Alfred        NaN        NaT
		1    Batman  Batmobile 1940-04-25
		2  Catwoman   Bullwhip        NaT
		
		Drop the rows where at least one element is missing.
		
		>>> df.dropna()
		     name        toy       born
		1  Batman  Batmobile 1940-04-25
		
		Drop the columns where at least one element is missing.
		
		>>> df.dropna(axis='columns')
		       name
		0    Alfred
		1    Batman
		2  Catwoman
		
		Drop the rows where all elements are missing.
		
		>>> df.dropna(how='all')
		       name        toy       born
		0    Alfred        NaN        NaT
		1    Batman  Batmobile 1940-04-25
		2  Catwoman   Bullwhip        NaT
		
		Keep only the rows with at least 2 non-NA values.
		
		>>> df.dropna(thresh=2)
		       name        toy       born
		1    Batman  Batmobile 1940-04-25
		2  Catwoman   Bullwhip        NaT
		
		Define in which columns to look for missing values.
		
		>>> df.dropna(subset=['name', 'born'])
		       name        toy       born
		1    Batman  Batmobile 1940-04-25
		
		Keep the DataFrame with valid entries in the same variable.
		
		>>> df.dropna(inplace=True)
		>>> df
		     name        toy       born
		1  Batman  Batmobile 1940-04-25
	**/
	public function dropna(?axis:Dynamic, ?how:Dynamic, ?thresh:Dynamic, ?subset:Dynamic, ?inplace:Dynamic):Dynamic;
	/**
		Return the dtypes in the DataFrame.
		
		This returns a Series with the data type of each column.
		The result's index is the original DataFrame's columns. Columns
		with mixed types are stored with the ``object`` dtype. See
		:ref:`the User Guide <basics.dtypes>` for more.
		
		Returns
		-------
		pandas.Series
		    The data type of each column.
		
		See Also
		--------
		pandas.DataFrame.ftypes : dtype and sparsity information.
		
		Examples
		--------
		>>> df = pd.DataFrame({'float': [1.0],
		...                    'int': [1],
		...                    'datetime': [pd.Timestamp('20180310')],
		...                    'string': ['foo']})
		>>> df.dtypes
		float              float64
		int                  int64
		datetime    datetime64[ns]
		string              object
		dtype: object
	**/
	public var dtypes : Dynamic;
	/**
		Return boolean Series denoting duplicate rows, optionally only
		considering certain columns
		
		Parameters
		----------
		subset : column label or sequence of labels, optional
		    Only consider certain columns for identifying duplicates, by
		    default use all of the columns
		keep : {'first', 'last', False}, default 'first'
		    - ``first`` : Mark duplicates as ``True`` except for the
		      first occurrence.
		    - ``last`` : Mark duplicates as ``True`` except for the
		      last occurrence.
		    - False : Mark all duplicates as ``True``.
		
		Returns
		-------
		duplicated : Series
	**/
	public function duplicated(?subset:Dynamic, ?keep:Dynamic):pandas.Series;
	/**
		Indicator whether DataFrame is empty.
		
		True if DataFrame is entirely empty (no items), meaning any of the
		axes are of length 0.
		
		Returns
		-------
		bool
		    If DataFrame is empty, return True, if not return False.
		
		Notes
		-----
		If DataFrame contains only NaNs, it is still not considered empty. See
		the example below.
		
		Examples
		--------
		An example of an actual empty DataFrame. Notice the index is empty:
		
		>>> df_empty = pd.DataFrame({'A' : []})
		>>> df_empty
		Empty DataFrame
		Columns: [A]
		Index: []
		>>> df_empty.empty
		True
		
		If we only have NaNs in our DataFrame, it is not considered empty! We
		will need to drop the NaNs to make the DataFrame empty:
		
		>>> df = pd.DataFrame({'A' : [np.nan]})
		>>> df
		    A
		0 NaN
		>>> df.empty
		False
		>>> df.dropna().empty
		True
		
		See also
		--------
		pandas.Series.dropna
		pandas.DataFrame.dropna
	**/
	public var empty : Dynamic;
	/**
		Wrapper for flexible comparison methods eq
	**/
	public function eq(other:Dynamic, ?axis:Dynamic, ?level:Dynamic):Dynamic;
	/**
		Determines if two NDFrame objects contain the same elements. NaNs in
		the same location are considered equal.
	**/
	public function equals(other:Dynamic):Dynamic;
	/**
		Evaluate a string describing operations on DataFrame columns.
		
		Operates on columns only, not specific rows or elements.  This allows
		`eval` to run arbitrary code, which can make you vulnerable to code
		injection if you pass user input to this function.
		
		Parameters
		----------
		expr : str
		    The expression string to evaluate.
		inplace : bool, default False
		    If the expression contains an assignment, whether to perform the
		    operation inplace and mutate the existing DataFrame. Otherwise,
		    a new DataFrame is returned.
		
		    .. versionadded:: 0.18.0.
		kwargs : dict
		    See the documentation for :func:`~pandas.eval` for complete details
		    on the keyword arguments accepted by
		    :meth:`~pandas.DataFrame.query`.
		
		Returns
		-------
		ndarray, scalar, or pandas object
		    The result of the evaluation.
		
		See Also
		--------
		DataFrame.query : Evaluates a boolean expression to query the columns
		    of a frame.
		DataFrame.assign : Can evaluate an expression or function to create new
		    values for a column.
		pandas.eval : Evaluate a Python expression as a string using various
		    backends.
		
		Notes
		-----
		For more details see the API documentation for :func:`~pandas.eval`.
		For detailed examples see :ref:`enhancing performance with eval
		<enhancingperf.eval>`.
		
		Examples
		--------
		>>> df = pd.DataFrame({'A': range(1, 6), 'B': range(10, 0, -2)})
		>>> df
		   A   B
		0  1  10
		1  2   8
		2  3   6
		3  4   4
		4  5   2
		>>> df.eval('A + B')
		0    11
		1    10
		2     9
		3     8
		4     7
		dtype: int64
		
		Assignment is allowed though by default the original DataFrame is not
		modified.
		
		>>> df.eval('C = A + B')
		   A   B   C
		0  1  10  11
		1  2   8  10
		2  3   6   9
		3  4   4   8
		4  5   2   7
		>>> df
		   A   B
		0  1  10
		1  2   8
		2  3   6
		3  4   4
		4  5   2
		
		Use ``inplace=True`` to modify the original DataFrame.
		
		>>> df.eval('C = A + B', inplace=True)
		>>> df
		   A   B   C
		0  1  10  11
		1  2   8  10
		2  3   6   9
		3  4   4   8
		4  5   2   7
	**/
	public function eval(expr:Dynamic, ?inplace:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Provides exponential weighted functions
		
		.. versionadded:: 0.18.0
		
		Parameters
		----------
		com : float, optional
		    Specify decay in terms of center of mass,
		    :math:`\alpha = 1 / (1 + com),\text{ for } com \geq 0`
		span : float, optional
		    Specify decay in terms of span,
		    :math:`\alpha = 2 / (span + 1),\text{ for } span \geq 1`
		halflife : float, optional
		    Specify decay in terms of half-life,
		    :math:`\alpha = 1 - exp(log(0.5) / halflife),\text{ for } halflife > 0`
		alpha : float, optional
		    Specify smoothing factor :math:`\alpha` directly,
		    :math:`0 < \alpha \leq 1`
		
		    .. versionadded:: 0.18.0
		
		min_periods : int, default 0
		    Minimum number of observations in window required to have a value
		    (otherwise result is NA).
		adjust : boolean, default True
		    Divide by decaying adjustment factor in beginning periods to account
		    for imbalance in relative weightings (viewing EWMA as a moving average)
		ignore_na : boolean, default False
		    Ignore missing values when calculating weights;
		    specify True to reproduce pre-0.15.0 behavior
		
		Returns
		-------
		a Window sub-classed for the particular operation
		
		Examples
		--------
		
		>>> df = DataFrame({'B': [0, 1, 2, np.nan, 4]})
		     B
		0  0.0
		1  1.0
		2  2.0
		3  NaN
		4  4.0
		
		>>> df.ewm(com=0.5).mean()
		          B
		0  0.000000
		1  0.750000
		2  1.615385
		3  1.615385
		4  3.670213
		
		Notes
		-----
		Exactly one of center of mass, span, half-life, and alpha must be provided.
		Allowed values and relationship between the parameters are specified in the
		parameter descriptions above; see the link at the end of this section for
		a detailed explanation.
		
		When adjust is True (default), weighted averages are calculated using
		weights (1-alpha)**(n-1), (1-alpha)**(n-2), ..., 1-alpha, 1.
		
		When adjust is False, weighted averages are calculated recursively as:
		   weighted_average[0] = arg[0];
		   weighted_average[i] = (1-alpha)*weighted_average[i-1] + alpha*arg[i].
		
		When ignore_na is False (default), weights are based on absolute positions.
		For example, the weights of x and y used in calculating the final weighted
		average of [x, None, y] are (1-alpha)**2 and 1 (if adjust is True), and
		(1-alpha)**2 and alpha (if adjust is False).
		
		When ignore_na is True (reproducing pre-0.15.0 behavior), weights are based
		on relative positions. For example, the weights of x and y used in
		calculating the final weighted average of [x, None, y] are 1-alpha and 1
		(if adjust is True), and 1-alpha and alpha (if adjust is False).
		
		More details can be found at
		http://pandas.pydata.org/pandas-docs/stable/computation.html#exponentially-weighted-windows
		
		See Also
		--------
		rolling : Provides rolling window calculations
		expanding : Provides expanding transformations.
	**/
	public function ewm(?com:Dynamic, ?span:Dynamic, ?halflife:Dynamic, ?alpha:Dynamic, ?min_periods:Dynamic, ?adjust:Dynamic, ?ignore_na:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Provides expanding transformations.
		
		.. versionadded:: 0.18.0
		
		Parameters
		----------
		min_periods : int, default 1
		    Minimum number of observations in window required to have a value
		    (otherwise result is NA).
		center : boolean, default False
		    Set the labels at the center of the window.
		axis : int or string, default 0
		
		Returns
		-------
		a Window sub-classed for the particular operation
		
		Examples
		--------
		
		>>> df = DataFrame({'B': [0, 1, 2, np.nan, 4]})
		     B
		0  0.0
		1  1.0
		2  2.0
		3  NaN
		4  4.0
		
		>>> df.expanding(2).sum()
		     B
		0  NaN
		1  1.0
		2  3.0
		3  3.0
		4  7.0
		
		Notes
		-----
		By default, the result is set to the right edge of the window. This can be
		changed to the center of the window by setting ``center=True``.
		
		See Also
		--------
		rolling : Provides rolling window calculations
		ewm : Provides exponential weighted functions
	**/
	public function expanding(?min_periods:Dynamic, ?center:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Synonym for :meth:`DataFrame.fillna(method='ffill') <DataFrame.fillna>`
	**/
	public function ffill(?axis:Dynamic, ?inplace:Dynamic, ?limit:Dynamic, ?downcast:Dynamic):Dynamic;
	/**
		Fill NA/NaN values using the specified method
		
		Parameters
		----------
		value : scalar, dict, Series, or DataFrame
		    Value to use to fill holes (e.g. 0), alternately a
		    dict/Series/DataFrame of values specifying which value to use for
		    each index (for a Series) or column (for a DataFrame). (values not
		    in the dict/Series/DataFrame will not be filled). This value cannot
		    be a list.
		method : {'backfill', 'bfill', 'pad', 'ffill', None}, default None
		    Method to use for filling holes in reindexed Series
		    pad / ffill: propagate last valid observation forward to next valid
		    backfill / bfill: use NEXT valid observation to fill gap
		axis : {0 or 'index', 1 or 'columns'}
		inplace : boolean, default False
		    If True, fill in place. Note: this will modify any
		    other views on this object, (e.g. a no-copy slice for a column in a
		    DataFrame).
		limit : int, default None
		    If method is specified, this is the maximum number of consecutive
		    NaN values to forward/backward fill. In other words, if there is
		    a gap with more than this number of consecutive NaNs, it will only
		    be partially filled. If method is not specified, this is the
		    maximum number of entries along the entire axis where NaNs will be
		    filled. Must be greater than 0 if not None.
		downcast : dict, default is None
		    a dict of item->dtype of what to downcast if possible,
		    or the string 'infer' which will try to downcast to an appropriate
		    equal type (e.g. float64 to int64 if possible)
		
		See Also
		--------
		interpolate : Fill NaN values using interpolation.
		reindex, asfreq
		
		Returns
		-------
		filled : DataFrame
		
		Examples
		--------
		>>> df = pd.DataFrame([[np.nan, 2, np.nan, 0],
		...                    [3, 4, np.nan, 1],
		...                    [np.nan, np.nan, np.nan, 5],
		...                    [np.nan, 3, np.nan, 4]],
		...                    columns=list('ABCD'))
		>>> df
		     A    B   C  D
		0  NaN  2.0 NaN  0
		1  3.0  4.0 NaN  1
		2  NaN  NaN NaN  5
		3  NaN  3.0 NaN  4
		
		Replace all NaN elements with 0s.
		
		>>> df.fillna(0)
		    A   B   C   D
		0   0.0 2.0 0.0 0
		1   3.0 4.0 0.0 1
		2   0.0 0.0 0.0 5
		3   0.0 3.0 0.0 4
		
		We can also propagate non-null values forward or backward.
		
		>>> df.fillna(method='ffill')
		    A   B   C   D
		0   NaN 2.0 NaN 0
		1   3.0 4.0 NaN 1
		2   3.0 4.0 NaN 5
		3   3.0 3.0 NaN 4
		
		Replace all NaN elements in column 'A', 'B', 'C', and 'D', with 0, 1,
		2, and 3 respectively.
		
		>>> values = {'A': 0, 'B': 1, 'C': 2, 'D': 3}
		>>> df.fillna(value=values)
		    A   B   C   D
		0   0.0 2.0 2.0 0
		1   3.0 4.0 2.0 1
		2   0.0 1.0 2.0 5
		3   0.0 3.0 2.0 4
		
		Only replace the first NaN element.
		
		>>> df.fillna(value=values, limit=1)
		    A   B   C   D
		0   0.0 2.0 2.0 0
		1   3.0 4.0 NaN 1
		2   NaN 1.0 NaN 5
		3   NaN 3.0 NaN 4
	**/
	public function fillna(?value:Dynamic, ?method:Dynamic, ?axis:Dynamic, ?inplace:Dynamic, ?limit:Dynamic, ?downcast:Dynamic, ?kwargs:python.KwArgs<Dynamic>):pandas.DataFrame;
	/**
		Subset rows or columns of dataframe according to labels in
		the specified index.
		
		Note that this routine does not filter a dataframe on its
		contents. The filter is applied to the labels of the index.
		
		Parameters
		----------
		items : list-like
		    List of info axis to restrict to (must not all be present)
		like : string
		    Keep info axis where "arg in col == True"
		regex : string (regular expression)
		    Keep info axis with re.search(regex, col) == True
		axis : int or string axis name
		    The axis to filter on.  By default this is the info axis,
		    'index' for Series, 'columns' for DataFrame
		
		Returns
		-------
		same type as input object
		
		Examples
		--------
		>>> df
		one  two  three
		mouse     1    2      3
		rabbit    4    5      6
		
		>>> # select columns by name
		>>> df.filter(items=['one', 'three'])
		one  three
		mouse     1      3
		rabbit    4      6
		
		>>> # select columns by regular expression
		>>> df.filter(regex='e$', axis=1)
		one  three
		mouse     1      3
		rabbit    4      6
		
		>>> # select rows containing 'bbi'
		>>> df.filter(like='bbi', axis=0)
		one  two  three
		rabbit    4    5      6
		
		See Also
		--------
		pandas.DataFrame.loc
		
		Notes
		-----
		The ``items``, ``like``, and ``regex`` parameters are
		enforced to be mutually exclusive.
		
		``axis`` defaults to the info axis that is used when indexing
		with ``[]``.
	**/
	public function filter(?items:Dynamic, ?like:Dynamic, ?regex:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Convenience method for subsetting initial periods of time series data
		based on a date offset.
		
		Raises
		------
		TypeError
		    If the index is not  a :class:`DatetimeIndex`
		
		Parameters
		----------
		offset : string, DateOffset, dateutil.relativedelta
		
		Examples
		--------
		>>> i = pd.date_range('2018-04-09', periods=4, freq='2D')
		>>> ts = pd.DataFrame({'A': [1,2,3,4]}, index=i)
		>>> ts
		            A
		2018-04-09  1
		2018-04-11  2
		2018-04-13  3
		2018-04-15  4
		
		Get the rows for the first 3 days:
		
		>>> ts.first('3D')
		            A
		2018-04-09  1
		2018-04-11  2
		
		Notice the data for 3 first calender days were returned, not the first
		3 days observed in the dataset, and therefore data for 2018-04-13 was
		not returned.
		
		Returns
		-------
		subset : type of caller
		
		See Also
		--------
		last : Select final periods of time series based on a date offset
		at_time : Select values at a particular time of the day
		between_time : Select values between particular times of the day
	**/
	public function first(offset:Dynamic):Dynamic;
	/**
		Return index for first non-NA/null value.
		
		Notes
		--------
		If all elements are non-NA/null, returns None.
		Also returns None for empty NDFrame.
		
		Returns
		--------
		scalar : type of index
	**/
	public function first_valid_index():Dynamic;
	/**
		Integer division of dataframe and other, element-wise (binary operator `floordiv`).
		
		Equivalent to ``dataframe // other``, but with support to substitute a fill_value for
		missing data in one of the inputs.
		
		Parameters
		----------
		other : Series, DataFrame, or constant
		axis : {0, 1, 'index', 'columns'}
		    For Series input, axis to match Series index on
		level : int or name
		    Broadcast across a level, matching Index values on the
		    passed MultiIndex level
		fill_value : None or float value, default None
		    Fill existing missing (NaN) values, and any new element needed for
		    successful DataFrame alignment, with this value before computation.
		    If data in both corresponding DataFrame locations is missing
		    the result will be missing
		
		Notes
		-----
		Mismatched indices will be unioned together
		
		Returns
		-------
		result : DataFrame
		
		Examples
		--------
		None
		
		See also
		--------
		DataFrame.rfloordiv
	**/
	public function floordiv(other:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?fill_value:Dynamic):pandas.DataFrame;
	/**
		Read CSV file.
		
		.. deprecated:: 0.21.0
		    Use :func:`pandas.read_csv` instead.
		
		It is preferable to use the more powerful :func:`pandas.read_csv`
		for most general purposes, but ``from_csv`` makes for an easy
		roundtrip to and from a file (the exact counterpart of
		``to_csv``), especially with a DataFrame of time series data.
		
		This method only differs from the preferred :func:`pandas.read_csv`
		in some defaults:
		
		- `index_col` is ``0`` instead of ``None`` (take first column as index
		  by default)
		- `parse_dates` is ``True`` instead of ``False`` (try parsing the index
		  as datetime by default)
		
		So a ``pd.DataFrame.from_csv(path)`` can be replaced by
		``pd.read_csv(path, index_col=0, parse_dates=True)``.
		
		Parameters
		----------
		path : string file path or file handle / StringIO
		header : int, default 0
		    Row to use as header (skip prior rows)
		sep : string, default ','
		    Field delimiter
		index_col : int or sequence, default 0
		    Column to use for index. If a sequence is given, a MultiIndex
		    is used. Different default from read_table
		parse_dates : boolean, default True
		    Parse dates. Different default from read_table
		tupleize_cols : boolean, default False
		    write multi_index columns as a list of tuples (if True)
		    or new (expanded format) if False)
		infer_datetime_format: boolean, default False
		    If True and `parse_dates` is True for a column, try to infer the
		    datetime format based on the first datetime string. If the format
		    can be inferred, there often will be a large parsing speed-up.
		
		See also
		--------
		pandas.read_csv
		
		Returns
		-------
		y : DataFrame
	**/
	static public function from_csv(path:Dynamic, ?header:Dynamic, ?sep:Dynamic, ?index_col:Dynamic, ?parse_dates:Dynamic, ?encoding:Dynamic, ?tupleize_cols:Dynamic, ?infer_datetime_format:Dynamic):pandas.DataFrame;
	/**
		Construct DataFrame from dict of array-like or dicts.
		
		Creates DataFrame object from dictionary by columns or by index
		allowing dtype specification.
		
		Parameters
		----------
		data : dict
		    Of the form {field : array-like} or {field : dict}.
		orient : {'columns', 'index'}, default 'columns'
		    The "orientation" of the data. If the keys of the passed dict
		    should be the columns of the resulting DataFrame, pass 'columns'
		    (default). Otherwise if the keys should be rows, pass 'index'.
		dtype : dtype, default None
		    Data type to force, otherwise infer.
		columns : list, default None
		    Column labels to use when ``orient='index'``. Raises a ValueError
		    if used with ``orient='columns'``.
		
		    .. versionadded:: 0.23.0
		
		Returns
		-------
		pandas.DataFrame
		
		See Also
		--------
		DataFrame.from_records : DataFrame from ndarray (structured
		    dtype), list of tuples, dict, or DataFrame
		DataFrame : DataFrame object creation using constructor
		
		Examples
		--------
		By default the keys of the dict become the DataFrame columns:
		
		>>> data = {'col_1': [3, 2, 1, 0], 'col_2': ['a', 'b', 'c', 'd']}
		>>> pd.DataFrame.from_dict(data)
		   col_1 col_2
		0      3     a
		1      2     b
		2      1     c
		3      0     d
		
		Specify ``orient='index'`` to create the DataFrame using dictionary
		keys as rows:
		
		>>> data = {'row_1': [3, 2, 1, 0], 'row_2': ['a', 'b', 'c', 'd']}
		>>> pd.DataFrame.from_dict(data, orient='index')
		       0  1  2  3
		row_1  3  2  1  0
		row_2  a  b  c  d
		
		When using the 'index' orientation, the column names can be
		specified manually:
		
		>>> pd.DataFrame.from_dict(data, orient='index',
		...                        columns=['A', 'B', 'C', 'D'])
		       A  B  C  D
		row_1  3  2  1  0
		row_2  a  b  c  d
	**/
	static public function from_dict(data:Dynamic, ?orient:Dynamic, ?dtype:Dynamic, ?columns:Dynamic):Dynamic;
	/**
		Construct a dataframe from a list of tuples
		
		.. deprecated:: 0.23.0
		  `from_items` is deprecated and will be removed in a future version.
		  Use :meth:`DataFrame.from_dict(dict(items)) <DataFrame.from_dict>`
		  instead.
		  :meth:`DataFrame.from_dict(OrderedDict(items)) <DataFrame.from_dict>`
		  may be used to preserve the key order.
		
		Convert (key, value) pairs to DataFrame. The keys will be the axis
		index (usually the columns, but depends on the specified
		orientation). The values should be arrays or Series.
		
		Parameters
		----------
		items : sequence of (key, value) pairs
		    Values should be arrays or Series.
		columns : sequence of column labels, optional
		    Must be passed if orient='index'.
		orient : {'columns', 'index'}, default 'columns'
		    The "orientation" of the data. If the keys of the
		    input correspond to column labels, pass 'columns'
		    (default). Otherwise if the keys correspond to the index,
		    pass 'index'.
		
		Returns
		-------
		frame : DataFrame
	**/
	static public function from_items(items:Dynamic, ?columns:Dynamic, ?orient:Dynamic):pandas.DataFrame;
	/**
		Convert structured or record ndarray to DataFrame
		
		Parameters
		----------
		data : ndarray (structured dtype), list of tuples, dict, or DataFrame
		index : string, list of fields, array-like
		    Field of array to use as the index, alternately a specific set of
		    input labels to use
		exclude : sequence, default None
		    Columns or fields to exclude
		columns : sequence, default None
		    Column names to use. If the passed data do not have names
		    associated with them, this argument provides names for the
		    columns. Otherwise this argument indicates the order of the columns
		    in the result (any names not found in the data will become all-NA
		    columns)
		coerce_float : boolean, default False
		    Attempt to convert values of non-string, non-numeric objects (like
		    decimal.Decimal) to floating point, useful for SQL result sets
		
		Returns
		-------
		df : DataFrame
	**/
	static public function from_records(data:Dynamic, ?index:Dynamic, ?exclude:Dynamic, ?columns:Dynamic, ?coerce_float:Dynamic, ?nrows:Dynamic):pandas.DataFrame;
	/**
		Return the ftypes (indication of sparse/dense and dtype) in DataFrame.
		
		This returns a Series with the data type of each column.
		The result's index is the original DataFrame's columns. Columns
		with mixed types are stored with the ``object`` dtype.  See
		:ref:`the User Guide <basics.dtypes>` for more.
		
		Returns
		-------
		pandas.Series
		    The data type and indication of sparse/dense of each column.
		
		See Also
		--------
		pandas.DataFrame.dtypes: Series with just dtype information.
		pandas.SparseDataFrame : Container for sparse tabular data.
		
		Notes
		-----
		Sparse data should have the same dtypes as its dense representation.
		
		Examples
		--------
		>>> import numpy as np
		>>> arr = np.random.RandomState(0).randn(100, 4)
		>>> arr[arr < .8] = np.nan
		>>> pd.DataFrame(arr).ftypes
		0    float64:dense
		1    float64:dense
		2    float64:dense
		3    float64:dense
		dtype: object
		
		>>> pd.SparseDataFrame(arr).ftypes
		0    float64:sparse
		1    float64:sparse
		2    float64:sparse
		3    float64:sparse
		dtype: object
	**/
	public var ftypes : Dynamic;
	/**
		Wrapper for flexible comparison methods ge
	**/
	public function ge(other:Dynamic, ?axis:Dynamic, ?level:Dynamic):Dynamic;
	/**
		Get item from object for given key (DataFrame column, Panel slice,
		etc.). Returns default value if not found.
		
		Parameters
		----------
		key : object
		
		Returns
		-------
		value : type of items contained in object
	**/
	public function get(key:Dynamic, ?_default:Dynamic):Dynamic;
	/**
		Return counts of unique dtypes in this object.
		
		Returns
		-------
		dtype : Series
		    Series with the count of columns with each dtype.
		
		See Also
		--------
		dtypes : Return the dtypes in this object.
		
		Examples
		--------
		>>> a = [['a', 1, 1.0], ['b', 2, 2.0], ['c', 3, 3.0]]
		>>> df = pd.DataFrame(a, columns=['str', 'int', 'float'])
		>>> df
		  str  int  float
		0   a    1    1.0
		1   b    2    2.0
		2   c    3    3.0
		
		>>> df.get_dtype_counts()
		float64    1
		int64      1
		object     1
		dtype: int64
	**/
	public function get_dtype_counts():pandas.Series;
	/**
		Return counts of unique ftypes in this object.
		
		.. deprecated:: 0.23.0
		
		This is useful for SparseDataFrame or for DataFrames containing
		sparse arrays.
		
		Returns
		-------
		dtype : Series
		    Series with the count of columns with each type and
		    sparsity (dense/sparse)
		
		See Also
		--------
		ftypes : Return ftypes (indication of sparse/dense and dtype) in
		    this object.
		
		Examples
		--------
		>>> a = [['a', 1, 1.0], ['b', 2, 2.0], ['c', 3, 3.0]]
		>>> df = pd.DataFrame(a, columns=['str', 'int', 'float'])
		>>> df
		  str  int  float
		0   a    1    1.0
		1   b    2    2.0
		2   c    3    3.0
		
		>>> df.get_ftype_counts()
		float64:dense    1
		int64:dense      1
		object:dense     1
		dtype: int64
	**/
	public function get_ftype_counts():pandas.Series;
	/**
		Quickly retrieve single value at passed column and index
		
		.. deprecated:: 0.21.0
		    Use .at[] or .iat[] accessors instead.
		
		Parameters
		----------
		index : row label
		col : column label
		takeable : interpret the index/col as indexers, default False
		
		Returns
		-------
		value : scalar value
	**/
	public function get_value(index:Dynamic, col:Dynamic, ?takeable:Dynamic):Dynamic;
	/**
		Return an ndarray after converting sparse values to dense.
		
		This is the same as ``.values`` for non-sparse data. For sparse
		data contained in a `pandas.SparseArray`, the data are first
		converted to a dense representation.
		
		Returns
		-------
		numpy.ndarray
		    Numpy representation of DataFrame
		
		See Also
		--------
		values : Numpy representation of DataFrame.
		pandas.SparseArray : Container for sparse data.
		
		Examples
		--------
		>>> df = pd.DataFrame({'a': [1, 2], 'b': [True, False],
		...                    'c': [1.0, 2.0]})
		>>> df
		   a      b    c
		0  1   True  1.0
		1  2  False  2.0
		
		>>> df.get_values()
		array([[1, True, 1.0], [2, False, 2.0]], dtype=object)
		
		>>> df = pd.DataFrame({"a": pd.SparseArray([1, None, None]),
		...                    "c": [1.0, 2.0, 3.0]})
		>>> df
		     a    c
		0  1.0  1.0
		1  NaN  2.0
		2  NaN  3.0
		
		>>> df.get_values()
		array([[ 1.,  1.],
		       [nan,  2.],
		       [nan,  3.]])
	**/
	public function get_values():Dynamic;
	/**
		Group series using mapper (dict or key function, apply given function
		to group, return result as series) or by a series of columns.
		
		Parameters
		----------
		by : mapping, function, label, or list of labels
		    Used to determine the groups for the groupby.
		    If ``by`` is a function, it's called on each value of the object's
		    index. If a dict or Series is passed, the Series or dict VALUES
		    will be used to determine the groups (the Series' values are first
		    aligned; see ``.align()`` method). If an ndarray is passed, the
		    values are used as-is determine the groups. A label or list of
		    labels may be passed to group by the columns in ``self``. Notice
		    that a tuple is interpreted a (single) key.
		axis : int, default 0
		level : int, level name, or sequence of such, default None
		    If the axis is a MultiIndex (hierarchical), group by a particular
		    level or levels
		as_index : boolean, default True
		    For aggregated output, return object with group labels as the
		    index. Only relevant for DataFrame input. as_index=False is
		    effectively "SQL-style" grouped output
		sort : boolean, default True
		    Sort group keys. Get better performance by turning this off.
		    Note this does not influence the order of observations within each
		    group.  groupby preserves the order of rows within each group.
		group_keys : boolean, default True
		    When calling apply, add group keys to index to identify pieces
		squeeze : boolean, default False
		    reduce the dimensionality of the return type if possible,
		    otherwise return a consistent type
		observed : boolean, default False
		    This only applies if any of the groupers are Categoricals
		    If True: only show observed values for categorical groupers.
		    If False: show all values for categorical groupers.
		
		    .. versionadded:: 0.23.0
		
		Returns
		-------
		GroupBy object
		
		Examples
		--------
		DataFrame results
		
		>>> data.groupby(func, axis=0).mean()
		>>> data.groupby(['col1', 'col2'])['col3'].mean()
		
		DataFrame with hierarchical index
		
		>>> data.groupby(['col1', 'col2']).mean()
		
		Notes
		-----
		See the `user guide
		<http://pandas.pydata.org/pandas-docs/stable/groupby.html>`_ for more.
		
		See also
		--------
		resample : Convenience method for frequency conversion and resampling
		    of time series.
	**/
	public function groupby(?by:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?as_index:Dynamic, ?sort:Dynamic, ?group_keys:Dynamic, ?squeeze:Dynamic, ?observed:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Wrapper for flexible comparison methods gt
	**/
	public function gt(other:Dynamic, ?axis:Dynamic, ?level:Dynamic):Dynamic;
	/**
		Return the first `n` rows.
		
		This function returns the first `n` rows for the object based
		on position. It is useful for quickly testing if your object
		has the right type of data in it.
		
		Parameters
		----------
		n : int, default 5
		    Number of rows to select.
		
		Returns
		-------
		obj_head : type of caller
		    The first `n` rows of the caller object.
		
		See Also
		--------
		pandas.DataFrame.tail: Returns the last `n` rows.
		
		Examples
		--------
		>>> df = pd.DataFrame({'animal':['alligator', 'bee', 'falcon', 'lion',
		...                    'monkey', 'parrot', 'shark', 'whale', 'zebra']})
		>>> df
		      animal
		0  alligator
		1        bee
		2     falcon
		3       lion
		4     monkey
		5     parrot
		6      shark
		7      whale
		8      zebra
		
		Viewing the first 5 lines
		
		>>> df.head()
		      animal
		0  alligator
		1        bee
		2     falcon
		3       lion
		4     monkey
		
		Viewing the first `n` lines (three in this case)
		
		>>> df.head(3)
		      animal
		0  alligator
		1        bee
		2     falcon
	**/
	public function head(?n:Dynamic):Dynamic;
	/**
		Make a histogram of the DataFrame's.
		
		A `histogram`_ is a representation of the distribution of data.
		This function calls :meth:`matplotlib.pyplot.hist`, on each series in
		the DataFrame, resulting in one histogram per column.
		
		.. _histogram: https://en.wikipedia.org/wiki/Histogram
		
		Parameters
		----------
		data : DataFrame
		    The pandas object holding the data.
		column : string or sequence
		    If passed, will be used to limit data to a subset of columns.
		by : object, optional
		    If passed, then used to form histograms for separate groups.
		grid : boolean, default True
		    Whether to show axis grid lines.
		xlabelsize : int, default None
		    If specified changes the x-axis label size.
		xrot : float, default None
		    Rotation of x axis labels. For example, a value of 90 displays the
		    x labels rotated 90 degrees clockwise.
		ylabelsize : int, default None
		    If specified changes the y-axis label size.
		yrot : float, default None
		    Rotation of y axis labels. For example, a value of 90 displays the
		    y labels rotated 90 degrees clockwise.
		ax : Matplotlib axes object, default None
		    The axes to plot the histogram on.
		sharex : boolean, default True if ax is None else False
		    In case subplots=True, share x axis and set some x axis labels to
		    invisible; defaults to True if ax is None otherwise False if an ax
		    is passed in.
		    Note that passing in both an ax and sharex=True will alter all x axis
		    labels for all subplots in a figure.
		sharey : boolean, default False
		    In case subplots=True, share y axis and set some y axis labels to
		    invisible.
		figsize : tuple
		    The size in inches of the figure to create. Uses the value in
		    `matplotlib.rcParams` by default.
		layout : tuple, optional
		    Tuple of (rows, columns) for the layout of the histograms.
		bins : integer or sequence, default 10
		    Number of histogram bins to be used. If an integer is given, bins + 1
		    bin edges are calculated and returned. If bins is a sequence, gives
		    bin edges, including left edge of first bin and right edge of last
		    bin. In this case, bins is returned unmodified.
		**kwds
		    All other plotting keyword arguments to be passed to
		    :meth:`matplotlib.pyplot.hist`.
		
		Returns
		-------
		axes : matplotlib.AxesSubplot or numpy.ndarray of them
		
		See Also
		--------
		matplotlib.pyplot.hist : Plot a histogram using matplotlib.
		
		Examples
		--------
		
		.. plot::
		    :context: close-figs
		
		    This example draws a histogram based on the length and width of
		    some animals, displayed in three bins
		
		    >>> df = pd.DataFrame({
		    ...     'length': [1.5, 0.5, 1.2, 0.9, 3],
		    ...     'width': [0.7, 0.2, 0.15, 0.2, 1.1]
		    ...     }, index= ['pig', 'rabbit', 'duck', 'chicken', 'horse'])
		    >>> hist = df.hist(bins=3)
	**/
	static public function hist(data:Dynamic, ?column:Dynamic, ?by:Dynamic, ?grid:Dynamic, ?xlabelsize:Dynamic, ?xrot:Dynamic, ?ylabelsize:Dynamic, ?yrot:Dynamic, ?ax:Dynamic, ?sharex:Dynamic, ?sharey:Dynamic, ?figsize:Dynamic, ?layout:Dynamic, ?bins:Dynamic, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Access a single value for a row/column pair by integer position.
		
		Similar to ``iloc``, in that both provide integer-based lookups. Use
		``iat`` if you only need to get or set a single value in a DataFrame
		or Series.
		
		See Also
		--------
		DataFrame.at : Access a single value for a row/column label pair
		DataFrame.loc : Access a group of rows and columns by label(s)
		DataFrame.iloc : Access a group of rows and columns by integer position(s)
		
		Examples
		--------
		>>> df = pd.DataFrame([[0, 2, 3], [0, 4, 1], [10, 20, 30]],
		...                   columns=['A', 'B', 'C'])
		>>> df
		    A   B   C
		0   0   2   3
		1   0   4   1
		2  10  20  30
		
		Get value at specified row/column pair
		
		>>> df.iat[1, 2]
		1
		
		Set value at specified row/column pair
		
		>>> df.iat[1, 2] = 10
		>>> df.iat[1, 2]
		10
		
		Get value within a series
		
		>>> df.loc[0].iat[1]
		2
		
		Raises
		------
		IndexError
		    When integer position is out of bounds
	**/
	public var iat : Dynamic;
	/**
		Return index of first occurrence of maximum over requested axis.
		NA/null values are excluded.
		
		Parameters
		----------
		axis : {0 or 'index', 1 or 'columns'}, default 0
		    0 or 'index' for row-wise, 1 or 'columns' for column-wise
		skipna : boolean, default True
		    Exclude NA/null values. If an entire row/column is NA, the result
		    will be NA.
		
		Raises
		------
		ValueError
		    * If the row/column is empty
		
		Returns
		-------
		idxmax : Series
		
		Notes
		-----
		This method is the DataFrame version of ``ndarray.argmax``.
		
		See Also
		--------
		Series.idxmax
	**/
	public function idxmax(?axis:Dynamic, ?skipna:Dynamic):pandas.Series;
	/**
		Return index of first occurrence of minimum over requested axis.
		NA/null values are excluded.
		
		Parameters
		----------
		axis : {0 or 'index', 1 or 'columns'}, default 0
		    0 or 'index' for row-wise, 1 or 'columns' for column-wise
		skipna : boolean, default True
		    Exclude NA/null values. If an entire row/column is NA, the result
		    will be NA.
		
		Raises
		------
		ValueError
		    * If the row/column is empty
		
		Returns
		-------
		idxmin : Series
		
		Notes
		-----
		This method is the DataFrame version of ``ndarray.argmin``.
		
		See Also
		--------
		Series.idxmin
	**/
	public function idxmin(?axis:Dynamic, ?skipna:Dynamic):pandas.Series;
	/**
		Purely integer-location based indexing for selection by position.
		
		``.iloc[]`` is primarily integer position based (from ``0`` to
		``length-1`` of the axis), but may also be used with a boolean
		array.
		
		Allowed inputs are:
		
		- An integer, e.g. ``5``.
		- A list or array of integers, e.g. ``[4, 3, 0]``.
		- A slice object with ints, e.g. ``1:7``.
		- A boolean array.
		- A ``callable`` function with one argument (the calling Series, DataFrame
		  or Panel) and that returns valid output for indexing (one of the above)
		
		``.iloc`` will raise ``IndexError`` if a requested indexer is
		out-of-bounds, except *slice* indexers which allow out-of-bounds
		indexing (this conforms with python/numpy *slice* semantics).
		
		See more at :ref:`Selection by Position <indexing.integer>`
	**/
	public var iloc : Dynamic;
	/**
		The index (row labels) of the DataFrame.
	**/
	public var index : Dynamic;
	/**
		Attempt to infer better dtypes for object columns.
		
		Attempts soft conversion of object-dtyped
		columns, leaving non-object and unconvertible
		columns unchanged. The inference rules are the
		same as during normal Series/DataFrame construction.
		
		.. versionadded:: 0.21.0
		
		See Also
		--------
		pandas.to_datetime : Convert argument to datetime.
		pandas.to_timedelta : Convert argument to timedelta.
		pandas.to_numeric : Convert argument to numeric typeR
		
		Returns
		-------
		converted : same type as input object
		
		Examples
		--------
		>>> df = pd.DataFrame({"A": ["a", 1, 2, 3]})
		>>> df = df.iloc[1:]
		>>> df
		   A
		1  1
		2  2
		3  3
		
		>>> df.dtypes
		A    object
		dtype: object
		
		>>> df.infer_objects().dtypes
		A    int64
		dtype: object
	**/
	public function infer_objects():Dynamic;
	/**
		Print a concise summary of a DataFrame.
		
		This method prints information about a DataFrame including
		the index dtype and column dtypes, non-null values and memory usage.
		
		Parameters
		----------
		verbose : bool, optional
		    Whether to print the full summary. By default, the setting in
		    ``pandas.options.display.max_info_columns`` is followed.
		buf : writable buffer, defaults to sys.stdout
		    Where to send the output. By default, the output is printed to
		    sys.stdout. Pass a writable buffer if you need to further process
		    the output.
		max_cols : int, optional
		    When to switch from the verbose to the truncated output. If the
		    DataFrame has more than `max_cols` columns, the truncated output
		    is used. By default, the setting in
		    ``pandas.options.display.max_info_columns`` is used.
		memory_usage : bool, str, optional
		    Specifies whether total memory usage of the DataFrame
		    elements (including the index) should be displayed. By default,
		    this follows the ``pandas.options.display.memory_usage`` setting.
		
		    True always show memory usage. False never shows memory usage.
		    A value of 'deep' is equivalent to "True with deep introspection".
		    Memory usage is shown in human-readable units (base-2
		    representation). Without deep introspection a memory estimation is
		    made based in column dtype and number of rows assuming values
		    consume the same memory amount for corresponding dtypes. With deep
		    memory introspection, a real memory usage calculation is performed
		    at the cost of computational resources.
		null_counts : bool, optional
		    Whether to show the non-null counts. By default, this is shown
		    only if the frame is smaller than
		    ``pandas.options.display.max_info_rows`` and
		    ``pandas.options.display.max_info_columns``. A value of True always
		    shows the counts, and False never shows the counts.
		
		Returns
		-------
		None
		    This method prints a summary of a DataFrame and returns None.
		
		See Also
		--------
		DataFrame.describe: Generate descriptive statistics of DataFrame
		    columns.
		DataFrame.memory_usage: Memory usage of DataFrame columns.
		
		Examples
		--------
		>>> int_values = [1, 2, 3, 4, 5]
		>>> text_values = ['alpha', 'beta', 'gamma', 'delta', 'epsilon']
		>>> float_values = [0.0, 0.25, 0.5, 0.75, 1.0]
		>>> df = pd.DataFrame({"int_col": int_values, "text_col": text_values,
		...                   "float_col": float_values})
		>>> df
		   int_col text_col  float_col
		0        1    alpha       0.00
		1        2     beta       0.25
		2        3    gamma       0.50
		3        4    delta       0.75
		4        5  epsilon       1.00
		
		Prints information of all columns:
		
		>>> df.info(verbose=True)
		<class 'pandas.core.frame.DataFrame'>
		RangeIndex: 5 entries, 0 to 4
		Data columns (total 3 columns):
		int_col      5 non-null int64
		text_col     5 non-null object
		float_col    5 non-null float64
		dtypes: float64(1), int64(1), object(1)
		memory usage: 200.0+ bytes
		
		Prints a summary of columns count and its dtypes but not per column
		information:
		
		>>> df.info(verbose=False)
		<class 'pandas.core.frame.DataFrame'>
		RangeIndex: 5 entries, 0 to 4
		Columns: 3 entries, int_col to float_col
		dtypes: float64(1), int64(1), object(1)
		memory usage: 200.0+ bytes
		
		Pipe output of DataFrame.info to buffer instead of sys.stdout, get
		buffer content and writes to a text file:
		
		>>> import io
		>>> buffer = io.StringIO()
		>>> df.info(buf=buffer)
		>>> s = buffer.getvalue()
		>>> with open("df_info.txt", "w", encoding="utf-8") as f:
		...     f.write(s)
		260
		
		The `memory_usage` parameter allows deep introspection mode, specially
		useful for big DataFrames and fine-tune memory optimization:
		
		>>> random_strings_array = np.random.choice(['a', 'b', 'c'], 10 ** 6)
		>>> df = pd.DataFrame({
		...     'column_1': np.random.choice(['a', 'b', 'c'], 10 ** 6),
		...     'column_2': np.random.choice(['a', 'b', 'c'], 10 ** 6),
		...     'column_3': np.random.choice(['a', 'b', 'c'], 10 ** 6)
		... })
		>>> df.info()
		<class 'pandas.core.frame.DataFrame'>
		RangeIndex: 1000000 entries, 0 to 999999
		Data columns (total 3 columns):
		column_1    1000000 non-null object
		column_2    1000000 non-null object
		column_3    1000000 non-null object
		dtypes: object(3)
		memory usage: 22.9+ MB
		
		>>> df.info(memory_usage='deep')
		<class 'pandas.core.frame.DataFrame'>
		RangeIndex: 1000000 entries, 0 to 999999
		Data columns (total 3 columns):
		column_1    1000000 non-null object
		column_2    1000000 non-null object
		column_3    1000000 non-null object
		dtypes: object(3)
		memory usage: 188.8 MB
	**/
	public function info(?verbose:Dynamic, ?buf:Dynamic, ?max_cols:Dynamic, ?memory_usage:Dynamic, ?null_counts:Dynamic):Dynamic;
	/**
		Insert column into DataFrame at specified location.
		
		Raises a ValueError if `column` is already contained in the DataFrame,
		unless `allow_duplicates` is set to True.
		
		Parameters
		----------
		loc : int
		    Insertion index. Must verify 0 <= loc <= len(columns)
		column : string, number, or hashable object
		    label of the inserted column
		value : int, Series, or array-like
		allow_duplicates : bool, optional
	**/
	public function insert(loc:Dynamic, column:Dynamic, value:Dynamic, ?allow_duplicates:Dynamic):Dynamic;
	/**
		Interpolate values according to different methods.
		
		Please note that only ``method='linear'`` is supported for
		DataFrames/Series with a MultiIndex.
		
		Parameters
		----------
		method : {'linear', 'time', 'index', 'values', 'nearest', 'zero',
		          'slinear', 'quadratic', 'cubic', 'barycentric', 'krogh',
		          'polynomial', 'spline', 'piecewise_polynomial',
		          'from_derivatives', 'pchip', 'akima'}
		
		    * 'linear': ignore the index and treat the values as equally
		      spaced. This is the only method supported on MultiIndexes.
		      default
		    * 'time': interpolation works on daily and higher resolution
		      data to interpolate given length of interval
		    * 'index', 'values': use the actual numerical values of the index
		    * 'nearest', 'zero', 'slinear', 'quadratic', 'cubic',
		      'barycentric', 'polynomial' is passed to
		      ``scipy.interpolate.interp1d``. Both 'polynomial' and 'spline'
		      require that you also specify an `order` (int),
		      e.g. df.interpolate(method='polynomial', order=4).
		      These use the actual numerical values of the index.
		    * 'krogh', 'piecewise_polynomial', 'spline', 'pchip' and 'akima'
		      are all wrappers around the scipy interpolation methods of
		      similar names. These use the actual numerical values of the
		      index. For more information on their behavior, see the
		      `scipy documentation
		      <http://docs.scipy.org/doc/scipy/reference/interpolate.html#univariate-interpolation>`__
		      and `tutorial documentation
		      <http://docs.scipy.org/doc/scipy/reference/tutorial/interpolate.html>`__
		    * 'from_derivatives' refers to BPoly.from_derivatives which
		      replaces 'piecewise_polynomial' interpolation method in
		      scipy 0.18
		
		    .. versionadded:: 0.18.1
		
		       Added support for the 'akima' method
		       Added interpolate method 'from_derivatives' which replaces
		       'piecewise_polynomial' in scipy 0.18; backwards-compatible with
		       scipy < 0.18
		
		axis : {0, 1}, default 0
		    * 0: fill column-by-column
		    * 1: fill row-by-row
		limit : int, default None.
		    Maximum number of consecutive NaNs to fill. Must be greater than 0.
		limit_direction : {'forward', 'backward', 'both'}, default 'forward'
		limit_area : {'inside', 'outside'}, default None
		    * None: (default) no fill restriction
		    * 'inside' Only fill NaNs surrounded by valid values (interpolate).
		    * 'outside' Only fill NaNs outside valid values (extrapolate).
		
		    If limit is specified, consecutive NaNs will be filled in this
		    direction.
		
		    .. versionadded:: 0.21.0
		inplace : bool, default False
		    Update the NDFrame in place if possible.
		downcast : optional, 'infer' or None, defaults to None
		    Downcast dtypes if possible.
		kwargs : keyword arguments to pass on to the interpolating function.
		
		Returns
		-------
		Series or DataFrame of same shape interpolated at the NaNs
		
		See Also
		--------
		reindex, replace, fillna
		
		Examples
		--------
		
		Filling in NaNs
		
		>>> s = pd.Series([0, 1, np.nan, 3])
		>>> s.interpolate()
		0    0
		1    1
		2    2
		3    3
		dtype: float64
	**/
	public function interpolate(?method:Dynamic, ?axis:Dynamic, ?limit:Dynamic, ?inplace:Dynamic, ?limit_direction:Dynamic, ?limit_area:Dynamic, ?downcast:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var is_copy : Dynamic;
	/**
		Return boolean DataFrame showing whether each element in the
		DataFrame is contained in values.
		
		Parameters
		----------
		values : iterable, Series, DataFrame or dictionary
		    The result will only be true at a location if all the
		    labels match. If `values` is a Series, that's the index. If
		    `values` is a dictionary, the keys must be the column names,
		    which must match. If `values` is a DataFrame,
		    then both the index and column labels must match.
		
		Returns
		-------
		
		DataFrame of booleans
		
		Examples
		--------
		When ``values`` is a list:
		
		>>> df = pd.DataFrame({'A': [1, 2, 3], 'B': ['a', 'b', 'f']})
		>>> df.isin([1, 3, 12, 'a'])
		       A      B
		0   True   True
		1  False  False
		2   True  False
		
		When ``values`` is a dict:
		
		>>> df = pd.DataFrame({'A': [1, 2, 3], 'B': [1, 4, 7]})
		>>> df.isin({'A': [1, 3], 'B': [4, 7, 12]})
		       A      B
		0   True  False  # Note that B didn't match the 1 here.
		1  False   True
		2   True   True
		
		When ``values`` is a Series or DataFrame:
		
		>>> df = pd.DataFrame({'A': [1, 2, 3], 'B': ['a', 'b', 'f']})
		>>> other = DataFrame({'A': [1, 3, 3, 2], 'B': ['e', 'f', 'f', 'e']})
		>>> df.isin(other)
		       A      B
		0   True  False
		1  False  False  # Column A in `other` has a 3, but not at index 1.
		2   True   True
	**/
	public function isin(values:Dynamic):Dynamic;
	/**
		Detect missing values.
		
		Return a boolean same-sized object indicating if the values are NA.
		NA values, such as None or :attr:`numpy.NaN`, gets mapped to True
		values.
		Everything else gets mapped to False values. Characters such as empty
		strings ``''`` or :attr:`numpy.inf` are not considered NA values
		(unless you set ``pandas.options.mode.use_inf_as_na = True``).
		
		Returns
		-------
		DataFrame
		    Mask of bool values for each element in DataFrame that
		    indicates whether an element is not an NA value.
		
		See Also
		--------
		DataFrame.isnull : alias of isna
		DataFrame.notna : boolean inverse of isna
		DataFrame.dropna : omit axes labels with missing values
		isna : top-level isna
		
		Examples
		--------
		Show which entries in a DataFrame are NA.
		
		>>> df = pd.DataFrame({'age': [5, 6, np.NaN],
		...                    'born': [pd.NaT, pd.Timestamp('1939-05-27'),
		...                             pd.Timestamp('1940-04-25')],
		...                    'name': ['Alfred', 'Batman', ''],
		...                    'toy': [None, 'Batmobile', 'Joker']})
		>>> df
		   age       born    name        toy
		0  5.0        NaT  Alfred       None
		1  6.0 1939-05-27  Batman  Batmobile
		2  NaN 1940-04-25              Joker
		
		>>> df.isna()
		     age   born   name    toy
		0  False   True  False   True
		1  False  False  False  False
		2   True  False  False  False
		
		Show which entries in a Series are NA.
		
		>>> ser = pd.Series([5, 6, np.NaN])
		>>> ser
		0    5.0
		1    6.0
		2    NaN
		dtype: float64
		
		>>> ser.isna()
		0    False
		1    False
		2     True
		dtype: bool
	**/
	public function isna():Dynamic;
	/**
		Detect missing values.
		
		Return a boolean same-sized object indicating if the values are NA.
		NA values, such as None or :attr:`numpy.NaN`, gets mapped to True
		values.
		Everything else gets mapped to False values. Characters such as empty
		strings ``''`` or :attr:`numpy.inf` are not considered NA values
		(unless you set ``pandas.options.mode.use_inf_as_na = True``).
		
		Returns
		-------
		DataFrame
		    Mask of bool values for each element in DataFrame that
		    indicates whether an element is not an NA value.
		
		See Also
		--------
		DataFrame.isnull : alias of isna
		DataFrame.notna : boolean inverse of isna
		DataFrame.dropna : omit axes labels with missing values
		isna : top-level isna
		
		Examples
		--------
		Show which entries in a DataFrame are NA.
		
		>>> df = pd.DataFrame({'age': [5, 6, np.NaN],
		...                    'born': [pd.NaT, pd.Timestamp('1939-05-27'),
		...                             pd.Timestamp('1940-04-25')],
		...                    'name': ['Alfred', 'Batman', ''],
		...                    'toy': [None, 'Batmobile', 'Joker']})
		>>> df
		   age       born    name        toy
		0  5.0        NaT  Alfred       None
		1  6.0 1939-05-27  Batman  Batmobile
		2  NaN 1940-04-25              Joker
		
		>>> df.isna()
		     age   born   name    toy
		0  False   True  False   True
		1  False  False  False  False
		2   True  False  False  False
		
		Show which entries in a Series are NA.
		
		>>> ser = pd.Series([5, 6, np.NaN])
		>>> ser
		0    5.0
		1    6.0
		2    NaN
		dtype: float64
		
		>>> ser.isna()
		0    False
		1    False
		2     True
		dtype: bool
	**/
	public function isnull():Dynamic;
	/**
		Iterator over (column name, Series) pairs.
		
		See also
		--------
		iterrows : Iterate over DataFrame rows as (index, Series) pairs.
		itertuples : Iterate over DataFrame rows as namedtuples of the values.
	**/
	public function items():Dynamic;
	/**
		Iterator over (column name, Series) pairs.
		
		See also
		--------
		iterrows : Iterate over DataFrame rows as (index, Series) pairs.
		itertuples : Iterate over DataFrame rows as namedtuples of the values.
	**/
	public function iteritems():Dynamic;
	/**
		Iterate over DataFrame rows as (index, Series) pairs.
		
		Notes
		-----
		
		1. Because ``iterrows`` returns a Series for each row,
		   it does **not** preserve dtypes across the rows (dtypes are
		   preserved across columns for DataFrames). For example,
		
		   >>> df = pd.DataFrame([[1, 1.5]], columns=['int', 'float'])
		   >>> row = next(df.iterrows())[1]
		   >>> row
		   int      1.0
		   float    1.5
		   Name: 0, dtype: float64
		   >>> print(row['int'].dtype)
		   float64
		   >>> print(df['int'].dtype)
		   int64
		
		   To preserve dtypes while iterating over the rows, it is better
		   to use :meth:`itertuples` which returns namedtuples of the values
		   and which is generally faster than ``iterrows``.
		
		2. You should **never modify** something you are iterating over.
		   This is not guaranteed to work in all cases. Depending on the
		   data types, the iterator returns a copy and not a view, and writing
		   to it will have no effect.
		
		Returns
		-------
		it : generator
		    A generator that iterates over the rows of the frame.
		
		See also
		--------
		itertuples : Iterate over DataFrame rows as namedtuples of the values.
		iteritems : Iterate over (column name, Series) pairs.
	**/
	public function iterrows():python.NativeIterable<Dynamic>;
	/**
		Iterate over DataFrame rows as namedtuples, with index value as first
		element of the tuple.
		
		Parameters
		----------
		index : boolean, default True
		    If True, return the index as the first element of the tuple.
		name : string, default "Pandas"
		    The name of the returned namedtuples or None to return regular
		    tuples.
		
		Notes
		-----
		The column names will be renamed to positional names if they are
		invalid Python identifiers, repeated, or start with an underscore.
		With a large number of columns (>255), regular tuples are returned.
		
		See also
		--------
		iterrows : Iterate over DataFrame rows as (index, Series) pairs.
		iteritems : Iterate over (column name, Series) pairs.
		
		Examples
		--------
		
		>>> df = pd.DataFrame({'col1': [1, 2], 'col2': [0.1, 0.2]},
		                      index=['a', 'b'])
		>>> df
		   col1  col2
		a     1   0.1
		b     2   0.2
		>>> for row in df.itertuples():
		...     print(row)
		...
		Pandas(Index='a', col1=1, col2=0.10000000000000001)
		Pandas(Index='b', col1=2, col2=0.20000000000000001)
	**/
	public function itertuples(?index:Dynamic, ?name:Dynamic):Dynamic;
	/**
		A primarily label-location based indexer, with integer position
		fallback.
		
		Warning: Starting in 0.20.0, the .ix indexer is deprecated, in
		favor of the more strict .iloc and .loc indexers.
		
		``.ix[]`` supports mixed integer and label based access. It is
		primarily label based, but will fall back to integer positional
		access unless the corresponding axis is of integer type.
		
		``.ix`` is the most general indexer and will support any of the
		inputs in ``.loc`` and ``.iloc``. ``.ix`` also supports floating
		point label schemes. ``.ix`` is exceptionally useful when dealing
		with mixed positional and label based hierarchical indexes.
		
		However, when an axis is integer based, ONLY label based access
		and not positional access is supported. Thus, in such cases, it's
		usually better to be explicit and use ``.iloc`` or ``.loc``.
		
		See more at :ref:`Advanced Indexing <advanced>`.
	**/
	public var ix : Dynamic;
	/**
		Join columns with other DataFrame either on index or on a key
		column. Efficiently Join multiple DataFrame objects by index at once by
		passing a list.
		
		Parameters
		----------
		other : DataFrame, Series with name field set, or list of DataFrame
		    Index should be similar to one of the columns in this one. If a
		    Series is passed, its name attribute must be set, and that will be
		    used as the column name in the resulting joined DataFrame
		on : name, tuple/list of names, or array-like
		    Column or index level name(s) in the caller to join on the index
		    in `other`, otherwise joins index-on-index. If multiple
		    values given, the `other` DataFrame must have a MultiIndex. Can
		    pass an array as the join key if it is not already contained in
		    the calling DataFrame. Like an Excel VLOOKUP operation
		how : {'left', 'right', 'outer', 'inner'}, default: 'left'
		    How to handle the operation of the two objects.
		
		    * left: use calling frame's index (or column if on is specified)
		    * right: use other frame's index
		    * outer: form union of calling frame's index (or column if on is
		      specified) with other frame's index, and sort it
		      lexicographically
		    * inner: form intersection of calling frame's index (or column if
		      on is specified) with other frame's index, preserving the order
		      of the calling's one
		lsuffix : string
		    Suffix to use from left frame's overlapping columns
		rsuffix : string
		    Suffix to use from right frame's overlapping columns
		sort : boolean, default False
		    Order result DataFrame lexicographically by the join key. If False,
		    the order of the join key depends on the join type (how keyword)
		
		Notes
		-----
		on, lsuffix, and rsuffix options are not supported when passing a list
		of DataFrame objects
		
		Support for specifying index levels as the `on` parameter was added
		in version 0.23.0
		
		Examples
		--------
		>>> caller = pd.DataFrame({'key': ['K0', 'K1', 'K2', 'K3', 'K4', 'K5'],
		...                        'A': ['A0', 'A1', 'A2', 'A3', 'A4', 'A5']})
		
		>>> caller
		    A key
		0  A0  K0
		1  A1  K1
		2  A2  K2
		3  A3  K3
		4  A4  K4
		5  A5  K5
		
		>>> other = pd.DataFrame({'key': ['K0', 'K1', 'K2'],
		...                       'B': ['B0', 'B1', 'B2']})
		
		>>> other
		    B key
		0  B0  K0
		1  B1  K1
		2  B2  K2
		
		Join DataFrames using their indexes.
		
		>>> caller.join(other, lsuffix='_caller', rsuffix='_other')
		
		>>>     A key_caller    B key_other
		    0  A0         K0   B0        K0
		    1  A1         K1   B1        K1
		    2  A2         K2   B2        K2
		    3  A3         K3  NaN       NaN
		    4  A4         K4  NaN       NaN
		    5  A5         K5  NaN       NaN
		
		
		If we want to join using the key columns, we need to set key to be
		the index in both caller and other. The joined DataFrame will have
		key as its index.
		
		>>> caller.set_index('key').join(other.set_index('key'))
		
		>>>      A    B
		    key
		    K0   A0   B0
		    K1   A1   B1
		    K2   A2   B2
		    K3   A3  NaN
		    K4   A4  NaN
		    K5   A5  NaN
		
		Another option to join using the key columns is to use the on
		parameter. DataFrame.join always uses other's index but we can use any
		column in the caller. This method preserves the original caller's
		index in the result.
		
		>>> caller.join(other.set_index('key'), on='key')
		
		>>>     A key    B
		    0  A0  K0   B0
		    1  A1  K1   B1
		    2  A2  K2   B2
		    3  A3  K3  NaN
		    4  A4  K4  NaN
		    5  A5  K5  NaN
		
		
		See also
		--------
		DataFrame.merge : For column(s)-on-columns(s) operations
		
		Returns
		-------
		joined : DataFrame
	**/
	public function join(other:Dynamic, ?on:Dynamic, ?how:Dynamic, ?lsuffix:Dynamic, ?rsuffix:Dynamic, ?sort:Dynamic):pandas.DataFrame;
	/**
		Get the 'info axis' (see Indexing for more)
		
		This is index for Series, columns for DataFrame and major_axis for
		Panel.
	**/
	public function keys():Dynamic;
	/**
		Return unbiased kurtosis over requested axis using Fisher's definition of
		kurtosis (kurtosis of normal == 0.0). Normalized by N-1
		
		
		Parameters
		----------
		axis : {index (0), columns (1)}
		skipna : boolean, default True
		    Exclude NA/null values when computing the result.
		level : int or level name, default None
		    If the axis is a MultiIndex (hierarchical), count along a
		    particular level, collapsing into a Series
		numeric_only : boolean, default None
		    Include only float, int, boolean columns. If None, will attempt to use
		    everything, then use only numeric data. Not implemented for Series.
		
		Returns
		-------
		kurt : Series or DataFrame (if level specified)
	**/
	public function kurt(?axis:Dynamic, ?skipna:Dynamic, ?level:Dynamic, ?numeric_only:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return unbiased kurtosis over requested axis using Fisher's definition of
		kurtosis (kurtosis of normal == 0.0). Normalized by N-1
		
		
		Parameters
		----------
		axis : {index (0), columns (1)}
		skipna : boolean, default True
		    Exclude NA/null values when computing the result.
		level : int or level name, default None
		    If the axis is a MultiIndex (hierarchical), count along a
		    particular level, collapsing into a Series
		numeric_only : boolean, default None
		    Include only float, int, boolean columns. If None, will attempt to use
		    everything, then use only numeric data. Not implemented for Series.
		
		Returns
		-------
		kurt : Series or DataFrame (if level specified)
	**/
	public function kurtosis(?axis:Dynamic, ?skipna:Dynamic, ?level:Dynamic, ?numeric_only:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Convenience method for subsetting final periods of time series data
		based on a date offset.
		
		Raises
		------
		TypeError
		    If the index is not  a :class:`DatetimeIndex`
		
		Parameters
		----------
		offset : string, DateOffset, dateutil.relativedelta
		
		Examples
		--------
		>>> i = pd.date_range('2018-04-09', periods=4, freq='2D')
		>>> ts = pd.DataFrame({'A': [1,2,3,4]}, index=i)
		>>> ts
		            A
		2018-04-09  1
		2018-04-11  2
		2018-04-13  3
		2018-04-15  4
		
		Get the rows for the last 3 days:
		
		>>> ts.last('3D')
		            A
		2018-04-13  3
		2018-04-15  4
		
		Notice the data for 3 last calender days were returned, not the last
		3 observed days in the dataset, and therefore data for 2018-04-11 was
		not returned.
		
		Returns
		-------
		subset : type of caller
		
		See Also
		--------
		first : Select initial periods of time series based on a date offset
		at_time : Select values at a particular time of the day
		between_time : Select values between particular times of the day
	**/
	public function last(offset:Dynamic):Dynamic;
	/**
		Return index for last non-NA/null value.
		
		Notes
		--------
		If all elements are non-NA/null, returns None.
		Also returns None for empty NDFrame.
		
		Returns
		--------
		scalar : type of index
	**/
	public function last_valid_index():Dynamic;
	/**
		Wrapper for flexible comparison methods le
	**/
	public function le(other:Dynamic, ?axis:Dynamic, ?level:Dynamic):Dynamic;
	/**
		Access a group of rows and columns by label(s) or a boolean array.
		
		``.loc[]`` is primarily label based, but may also be used with a
		boolean array.
		
		Allowed inputs are:
		
		- A single label, e.g. ``5`` or ``'a'``, (note that ``5`` is
		  interpreted as a *label* of the index, and **never** as an
		  integer position along the index).
		- A list or array of labels, e.g. ``['a', 'b', 'c']``.
		- A slice object with labels, e.g. ``'a':'f'``.
		
		  .. warning:: Note that contrary to usual python slices, **both** the
		      start and the stop are included
		
		- A boolean array of the same length as the axis being sliced,
		  e.g. ``[True, False, True]``.
		- A ``callable`` function with one argument (the calling Series, DataFrame
		  or Panel) and that returns valid output for indexing (one of the above)
		
		See more at :ref:`Selection by Label <indexing.label>`
		
		See Also
		--------
		DataFrame.at : Access a single value for a row/column label pair
		DataFrame.iloc : Access group of rows and columns by integer position(s)
		DataFrame.xs : Returns a cross-section (row(s) or column(s)) from the
		    Series/DataFrame.
		Series.loc : Access group of values using labels
		
		Examples
		--------
		**Getting values**
		
		>>> df = pd.DataFrame([[1, 2], [4, 5], [7, 8]],
		...      index=['cobra', 'viper', 'sidewinder'],
		...      columns=['max_speed', 'shield'])
		>>> df
		            max_speed  shield
		cobra               1       2
		viper               4       5
		sidewinder          7       8
		
		Single label. Note this returns the row as a Series.
		
		>>> df.loc['viper']
		max_speed    4
		shield       5
		Name: viper, dtype: int64
		
		List of labels. Note using ``[[]]`` returns a DataFrame.
		
		>>> df.loc[['viper', 'sidewinder']]
		            max_speed  shield
		viper               4       5
		sidewinder          7       8
		
		Single label for row and column
		
		>>> df.loc['cobra', 'shield']
		2
		
		Slice with labels for row and single label for column. As mentioned
		above, note that both the start and stop of the slice are included.
		
		>>> df.loc['cobra':'viper', 'max_speed']
		cobra    1
		viper    4
		Name: max_speed, dtype: int64
		
		Boolean list with the same length as the row axis
		
		>>> df.loc[[False, False, True]]
		            max_speed  shield
		sidewinder          7       8
		
		Conditional that returns a boolean Series
		
		>>> df.loc[df['shield'] > 6]
		            max_speed  shield
		sidewinder          7       8
		
		Conditional that returns a boolean Series with column labels specified
		
		>>> df.loc[df['shield'] > 6, ['max_speed']]
		            max_speed
		sidewinder          7
		
		Callable that returns a boolean Series
		
		>>> df.loc[lambda df: df['shield'] == 8]
		            max_speed  shield
		sidewinder          7       8
		
		**Setting values**
		
		Set value for all items matching the list of labels
		
		>>> df.loc[['viper', 'sidewinder'], ['shield']] = 50
		>>> df
		            max_speed  shield
		cobra               1       2
		viper               4      50
		sidewinder          7      50
		
		Set value for an entire row
		
		>>> df.loc['cobra'] = 10
		>>> df
		            max_speed  shield
		cobra              10      10
		viper               4      50
		sidewinder          7      50
		
		Set value for an entire column
		
		>>> df.loc[:, 'max_speed'] = 30
		>>> df
		            max_speed  shield
		cobra              30      10
		viper              30      50
		sidewinder         30      50
		
		Set value for rows matching callable condition
		
		>>> df.loc[df['shield'] > 35] = 0
		>>> df
		            max_speed  shield
		cobra              30      10
		viper               0       0
		sidewinder          0       0
		
		**Getting values on a DataFrame with an index that has integer labels**
		
		Another example using integers for the index
		
		>>> df = pd.DataFrame([[1, 2], [4, 5], [7, 8]],
		...      index=[7, 8, 9], columns=['max_speed', 'shield'])
		>>> df
		   max_speed  shield
		7          1       2
		8          4       5
		9          7       8
		
		Slice with integer labels for rows. As mentioned above, note that both
		the start and stop of the slice are included.
		
		>>> df.loc[7:9]
		   max_speed  shield
		7          1       2
		8          4       5
		9          7       8
		
		**Getting values with a MultiIndex**
		
		A number of examples using a DataFrame with a MultiIndex
		
		>>> tuples = [
		...    ('cobra', 'mark i'), ('cobra', 'mark ii'),
		...    ('sidewinder', 'mark i'), ('sidewinder', 'mark ii'),
		...    ('viper', 'mark ii'), ('viper', 'mark iii')
		... ]
		>>> index = pd.MultiIndex.from_tuples(tuples)
		>>> values = [[12, 2], [0, 4], [10, 20],
		...         [1, 4], [7, 1], [16, 36]]
		>>> df = pd.DataFrame(values, columns=['max_speed', 'shield'], index=index)
		>>> df
		                     max_speed  shield
		cobra      mark i           12       2
		           mark ii           0       4
		sidewinder mark i           10      20
		           mark ii           1       4
		viper      mark ii           7       1
		           mark iii         16      36
		
		Single label. Note this returns a DataFrame with a single index.
		
		>>> df.loc['cobra']
		         max_speed  shield
		mark i          12       2
		mark ii          0       4
		
		Single index tuple. Note this returns a Series.
		
		>>> df.loc[('cobra', 'mark ii')]
		max_speed    0
		shield       4
		Name: (cobra, mark ii), dtype: int64
		
		Single label for row and column. Similar to passing in a tuple, this
		returns a Series.
		
		>>> df.loc['cobra', 'mark i']
		max_speed    12
		shield        2
		Name: (cobra, mark i), dtype: int64
		
		Single tuple. Note using ``[[]]`` returns a DataFrame.
		
		>>> df.loc[[('cobra', 'mark ii')]]
		               max_speed  shield
		cobra mark ii          0       4
		
		Single tuple for the index with a single label for the column
		
		>>> df.loc[('cobra', 'mark i'), 'shield']
		2
		
		Slice from index tuple to single label
		
		>>> df.loc[('cobra', 'mark i'):'viper']
		                     max_speed  shield
		cobra      mark i           12       2
		           mark ii           0       4
		sidewinder mark i           10      20
		           mark ii           1       4
		viper      mark ii           7       1
		           mark iii         16      36
		
		Slice from index tuple to index tuple
		
		>>> df.loc[('cobra', 'mark i'):('viper', 'mark ii')]
		                    max_speed  shield
		cobra      mark i          12       2
		           mark ii          0       4
		sidewinder mark i          10      20
		           mark ii          1       4
		viper      mark ii          7       1
		
		Raises
		------
		KeyError:
		    when any items are not found
	**/
	public var loc : Dynamic;
	/**
		Label-based "fancy indexing" function for DataFrame.
		Given equal-length arrays of row and column labels, return an
		array of the values corresponding to each (row, col) pair.
		
		Parameters
		----------
		row_labels : sequence
		    The row labels to use for lookup
		col_labels : sequence
		    The column labels to use for lookup
		
		Notes
		-----
		Akin to::
		
		    result = []
		    for row, col in zip(row_labels, col_labels):
		        result.append(df.get_value(row, col))
		
		Examples
		--------
		values : ndarray
		    The found values
	**/
	public function lookup(row_labels:Dynamic, col_labels:Dynamic):Dynamic;
	/**
		Wrapper for flexible comparison methods lt
	**/
	public function lt(other:Dynamic, ?axis:Dynamic, ?level:Dynamic):Dynamic;
	/**
		Return the mean absolute deviation of the values for the requested axis
		
		Parameters
		----------
		axis : {index (0), columns (1)}
		skipna : boolean, default True
		    Exclude NA/null values when computing the result.
		level : int or level name, default None
		    If the axis is a MultiIndex (hierarchical), count along a
		    particular level, collapsing into a Series
		numeric_only : boolean, default None
		    Include only float, int, boolean columns. If None, will attempt to use
		    everything, then use only numeric data. Not implemented for Series.
		
		Returns
		-------
		mad : Series or DataFrame (if level specified)
	**/
	public function mad(?axis:Dynamic, ?skipna:Dynamic, ?level:Dynamic):Dynamic;
	/**
		Return an object of same shape as self and whose corresponding
		entries are from self where `cond` is False and otherwise are from
		`other`.
		
		Parameters
		----------
		cond : boolean NDFrame, array-like, or callable
		    Where `cond` is False, keep the original value. Where
		    True, replace with corresponding value from `other`.
		    If `cond` is callable, it is computed on the NDFrame and
		    should return boolean NDFrame or array. The callable must
		    not change input NDFrame (though pandas doesn't check it).
		
		    .. versionadded:: 0.18.1
		        A callable can be used as cond.
		
		other : scalar, NDFrame, or callable
		    Entries where `cond` is True are replaced with
		    corresponding value from `other`.
		    If other is callable, it is computed on the NDFrame and
		    should return scalar or NDFrame. The callable must not
		    change input NDFrame (though pandas doesn't check it).
		
		    .. versionadded:: 0.18.1
		        A callable can be used as other.
		
		inplace : boolean, default False
		    Whether to perform the operation in place on the data
		axis : alignment axis if needed, default None
		level : alignment level if needed, default None
		errors : str, {'raise', 'ignore'}, default 'raise'
		    - ``raise`` : allow exceptions to be raised
		    - ``ignore`` : suppress exceptions. On error return original object
		
		    Note that currently this parameter won't affect
		    the results and will always coerce to a suitable dtype.
		
		try_cast : boolean, default False
		    try to cast the result back to the input type (if possible),
		raise_on_error : boolean, default True
		    Whether to raise on invalid data types (e.g. trying to where on
		    strings)
		
		    .. deprecated:: 0.21.0
		
		Returns
		-------
		wh : same type as caller
		
		Notes
		-----
		The mask method is an application of the if-then idiom. For each
		element in the calling DataFrame, if ``cond`` is ``False`` the
		element is used; otherwise the corresponding element from the DataFrame
		``other`` is used.
		
		The signature for :func:`DataFrame.where` differs from
		:func:`numpy.where`. Roughly ``df1.where(m, df2)`` is equivalent to
		``np.where(m, df1, df2)``.
		
		For further details and examples see the ``mask`` documentation in
		:ref:`indexing <indexing.where_mask>`.
		
		Examples
		--------
		>>> s = pd.Series(range(5))
		>>> s.where(s > 0)
		0    NaN
		1    1.0
		2    2.0
		3    3.0
		4    4.0
		
		>>> s.mask(s > 0)
		0    0.0
		1    NaN
		2    NaN
		3    NaN
		4    NaN
		
		>>> s.where(s > 1, 10)
		0    10.0
		1    10.0
		2    2.0
		3    3.0
		4    4.0
		
		>>> df = pd.DataFrame(np.arange(10).reshape(-1, 2), columns=['A', 'B'])
		>>> m = df % 3 == 0
		>>> df.where(m, -df)
		   A  B
		0  0 -1
		1 -2  3
		2 -4 -5
		3  6 -7
		4 -8  9
		>>> df.where(m, -df) == np.where(m, df, -df)
		      A     B
		0  True  True
		1  True  True
		2  True  True
		3  True  True
		4  True  True
		>>> df.where(m, -df) == df.mask(~m, -df)
		      A     B
		0  True  True
		1  True  True
		2  True  True
		3  True  True
		4  True  True
		
		See Also
		--------
		:func:`DataFrame.where`
	**/
	public function mask(cond:Dynamic, ?other:Dynamic, ?inplace:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?errors:Dynamic, ?try_cast:Dynamic, ?raise_on_error:Dynamic):Dynamic;
	/**
		This method returns the maximum of the values in the object.
		            If you want the *index* of the maximum, use ``idxmax``. This is
		            the equivalent of the ``numpy.ndarray`` method ``argmax``.
		
		Parameters
		----------
		axis : {index (0), columns (1)}
		skipna : boolean, default True
		    Exclude NA/null values when computing the result.
		level : int or level name, default None
		    If the axis is a MultiIndex (hierarchical), count along a
		    particular level, collapsing into a Series
		numeric_only : boolean, default None
		    Include only float, int, boolean columns. If None, will attempt to use
		    everything, then use only numeric data. Not implemented for Series.
		
		Returns
		-------
		max : Series or DataFrame (if level specified)
	**/
	public function max(?axis:Dynamic, ?skipna:Dynamic, ?level:Dynamic, ?numeric_only:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return the mean of the values for the requested axis
		
		Parameters
		----------
		axis : {index (0), columns (1)}
		skipna : boolean, default True
		    Exclude NA/null values when computing the result.
		level : int or level name, default None
		    If the axis is a MultiIndex (hierarchical), count along a
		    particular level, collapsing into a Series
		numeric_only : boolean, default None
		    Include only float, int, boolean columns. If None, will attempt to use
		    everything, then use only numeric data. Not implemented for Series.
		
		Returns
		-------
		mean : Series or DataFrame (if level specified)
	**/
	public function mean(?axis:Dynamic, ?skipna:Dynamic, ?level:Dynamic, ?numeric_only:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return the median of the values for the requested axis
		
		Parameters
		----------
		axis : {index (0), columns (1)}
		skipna : boolean, default True
		    Exclude NA/null values when computing the result.
		level : int or level name, default None
		    If the axis is a MultiIndex (hierarchical), count along a
		    particular level, collapsing into a Series
		numeric_only : boolean, default None
		    Include only float, int, boolean columns. If None, will attempt to use
		    everything, then use only numeric data. Not implemented for Series.
		
		Returns
		-------
		median : Series or DataFrame (if level specified)
	**/
	public function median(?axis:Dynamic, ?skipna:Dynamic, ?level:Dynamic, ?numeric_only:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		"Unpivots" a DataFrame from wide format to long format, optionally
		leaving identifier variables set.
		
		This function is useful to massage a DataFrame into a format where one
		or more columns are identifier variables (`id_vars`), while all other
		columns, considered measured variables (`value_vars`), are "unpivoted" to
		the row axis, leaving just two non-identifier columns, 'variable' and
		'value'.
		
		.. versionadded:: 0.20.0
		
		Parameters
		----------
		frame : DataFrame
		id_vars : tuple, list, or ndarray, optional
		    Column(s) to use as identifier variables.
		value_vars : tuple, list, or ndarray, optional
		    Column(s) to unpivot. If not specified, uses all columns that
		    are not set as `id_vars`.
		var_name : scalar
		    Name to use for the 'variable' column. If None it uses
		    ``frame.columns.name`` or 'variable'.
		value_name : scalar, default 'value'
		    Name to use for the 'value' column.
		col_level : int or string, optional
		    If columns are a MultiIndex then use this level to melt.
		
		See also
		--------
		melt
		pivot_table
		DataFrame.pivot
		
		Examples
		--------
		>>> import pandas as pd
		>>> df = pd.DataFrame({'A': {0: 'a', 1: 'b', 2: 'c'},
		...                    'B': {0: 1, 1: 3, 2: 5},
		...                    'C': {0: 2, 1: 4, 2: 6}})
		>>> df
		   A  B  C
		0  a  1  2
		1  b  3  4
		2  c  5  6
		
		>>> df.melt(id_vars=['A'], value_vars=['B'])
		   A variable  value
		0  a        B      1
		1  b        B      3
		2  c        B      5
		
		>>> df.melt(id_vars=['A'], value_vars=['B', 'C'])
		   A variable  value
		0  a        B      1
		1  b        B      3
		2  c        B      5
		3  a        C      2
		4  b        C      4
		5  c        C      6
		
		The names of 'variable' and 'value' columns can be customized:
		
		>>> df.melt(id_vars=['A'], value_vars=['B'],
		...         var_name='myVarname', value_name='myValname')
		   A myVarname  myValname
		0  a         B          1
		1  b         B          3
		2  c         B          5
		
		If you have multi-index columns:
		
		>>> df.columns = [list('ABC'), list('DEF')]
		>>> df
		   A  B  C
		   D  E  F
		0  a  1  2
		1  b  3  4
		2  c  5  6
		
		>>> df.melt(col_level=0, id_vars=['A'], value_vars=['B'])
		   A variable  value
		0  a        B      1
		1  b        B      3
		2  c        B      5
		
		>>> df.melt(id_vars=[('A', 'D')], value_vars=[('B', 'E')])
		  (A, D) variable_0 variable_1  value
		0      a          B          E      1
		1      b          B          E      3
		2      c          B          E      5
	**/
	public function melt(?id_vars:Dynamic, ?value_vars:Dynamic, ?var_name:Dynamic, ?value_name:Dynamic, ?col_level:Dynamic):Dynamic;
	/**
		Return the memory usage of each column in bytes.
		
		The memory usage can optionally include the contribution of
		the index and elements of `object` dtype.
		
		This value is displayed in `DataFrame.info` by default. This can be
		suppressed by setting ``pandas.options.display.memory_usage`` to False.
		
		Parameters
		----------
		index : bool, default True
		    Specifies whether to include the memory usage of the DataFrame's
		    index in returned Series. If ``index=True`` the memory usage of the
		    index the first item in the output.
		deep : bool, default False
		    If True, introspect the data deeply by interrogating
		    `object` dtypes for system-level memory consumption, and include
		    it in the returned values.
		
		Returns
		-------
		sizes : Series
		    A Series whose index is the original column names and whose values
		    is the memory usage of each column in bytes.
		
		See Also
		--------
		numpy.ndarray.nbytes : Total bytes consumed by the elements of an
		    ndarray.
		Series.memory_usage : Bytes consumed by a Series.
		pandas.Categorical : Memory-efficient array for string values with
		    many repeated values.
		DataFrame.info : Concise summary of a DataFrame.
		
		Examples
		--------
		>>> dtypes = ['int64', 'float64', 'complex128', 'object', 'bool']
		>>> data = dict([(t, np.ones(shape=5000).astype(t))
		...              for t in dtypes])
		>>> df = pd.DataFrame(data)
		>>> df.head()
		   int64  float64  complex128 object  bool
		0      1      1.0      (1+0j)      1  True
		1      1      1.0      (1+0j)      1  True
		2      1      1.0      (1+0j)      1  True
		3      1      1.0      (1+0j)      1  True
		4      1      1.0      (1+0j)      1  True
		
		>>> df.memory_usage()
		Index            80
		int64         40000
		float64       40000
		complex128    80000
		object        40000
		bool           5000
		dtype: int64
		
		>>> df.memory_usage(index=False)
		int64         40000
		float64       40000
		complex128    80000
		object        40000
		bool           5000
		dtype: int64
		
		The memory footprint of `object` dtype columns is ignored by default:
		
		>>> df.memory_usage(deep=True)
		Index             80
		int64          40000
		float64        40000
		complex128     80000
		object        160000
		bool            5000
		dtype: int64
		
		Use a Categorical for efficient storage of an object-dtype column with
		many repeated values.
		
		>>> df['object'].astype('category').memory_usage(deep=True)
		5168
	**/
	public function memory_usage(?index:Dynamic, ?deep:Dynamic):pandas.Series;
	/**
		Merge DataFrame objects by performing a database-style join operation by
		columns or indexes.
		
		If joining columns on columns, the DataFrame indexes *will be
		ignored*. Otherwise if joining indexes on indexes or indexes on a column or
		columns, the index will be passed on.
		
		Parameters
		----------
		right : DataFrame
		how : {'left', 'right', 'outer', 'inner'}, default 'inner'
		    * left: use only keys from left frame, similar to a SQL left outer join;
		      preserve key order
		    * right: use only keys from right frame, similar to a SQL right outer join;
		      preserve key order
		    * outer: use union of keys from both frames, similar to a SQL full outer
		      join; sort keys lexicographically
		    * inner: use intersection of keys from both frames, similar to a SQL inner
		      join; preserve the order of the left keys
		on : label or list
		    Column or index level names to join on. These must be found in both
		    DataFrames. If `on` is None and not merging on indexes then this defaults
		    to the intersection of the columns in both DataFrames.
		left_on : label or list, or array-like
		    Column or index level names to join on in the left DataFrame. Can also
		    be an array or list of arrays of the length of the left DataFrame.
		    These arrays are treated as if they are columns.
		right_on : label or list, or array-like
		    Column or index level names to join on in the right DataFrame. Can also
		    be an array or list of arrays of the length of the right DataFrame.
		    These arrays are treated as if they are columns.
		left_index : boolean, default False
		    Use the index from the left DataFrame as the join key(s). If it is a
		    MultiIndex, the number of keys in the other DataFrame (either the index
		    or a number of columns) must match the number of levels
		right_index : boolean, default False
		    Use the index from the right DataFrame as the join key. Same caveats as
		    left_index
		sort : boolean, default False
		    Sort the join keys lexicographically in the result DataFrame. If False,
		    the order of the join keys depends on the join type (how keyword)
		suffixes : 2-length sequence (tuple, list, ...)
		    Suffix to apply to overlapping column names in the left and right
		    side, respectively
		copy : boolean, default True
		    If False, do not copy data unnecessarily
		indicator : boolean or string, default False
		    If True, adds a column to output DataFrame called "_merge" with
		    information on the source of each row.
		    If string, column with information on source of each row will be added to
		    output DataFrame, and column will be named value of string.
		    Information column is Categorical-type and takes on a value of "left_only"
		    for observations whose merge key only appears in 'left' DataFrame,
		    "right_only" for observations whose merge key only appears in 'right'
		    DataFrame, and "both" if the observation's merge key is found in both.
		
		validate : string, default None
		    If specified, checks if merge is of specified type.
		
		    * "one_to_one" or "1:1": check if merge keys are unique in both
		      left and right datasets.
		    * "one_to_many" or "1:m": check if merge keys are unique in left
		      dataset.
		    * "many_to_one" or "m:1": check if merge keys are unique in right
		      dataset.
		    * "many_to_many" or "m:m": allowed, but does not result in checks.
		
		    .. versionadded:: 0.21.0
		
		Notes
		-----
		Support for specifying index levels as the `on`, `left_on`, and
		`right_on` parameters was added in version 0.23.0
		
		Examples
		--------
		
		>>> A              >>> B
		    lkey value         rkey value
		0   foo  1         0   foo  5
		1   bar  2         1   bar  6
		2   baz  3         2   qux  7
		3   foo  4         3   bar  8
		
		>>> A.merge(B, left_on='lkey', right_on='rkey', how='outer')
		   lkey  value_x  rkey  value_y
		0  foo   1        foo   5
		1  foo   4        foo   5
		2  bar   2        bar   6
		3  bar   2        bar   8
		4  baz   3        NaN   NaN
		5  NaN   NaN      qux   7
		
		Returns
		-------
		merged : DataFrame
		    The output type will the be same as 'left', if it is a subclass
		    of DataFrame.
		
		See also
		--------
		merge_ordered
		merge_asof
		DataFrame.join
	**/
	public function merge(right:Dynamic, ?how:Dynamic, ?on:Dynamic, ?left_on:Dynamic, ?right_on:Dynamic, ?left_index:Dynamic, ?right_index:Dynamic, ?sort:Dynamic, ?suffixes:Dynamic, ?copy:Dynamic, ?indicator:Dynamic, ?validate:Dynamic):pandas.DataFrame;
	/**
		This method returns the minimum of the values in the object.
		            If you want the *index* of the minimum, use ``idxmin``. This is
		            the equivalent of the ``numpy.ndarray`` method ``argmin``.
		
		Parameters
		----------
		axis : {index (0), columns (1)}
		skipna : boolean, default True
		    Exclude NA/null values when computing the result.
		level : int or level name, default None
		    If the axis is a MultiIndex (hierarchical), count along a
		    particular level, collapsing into a Series
		numeric_only : boolean, default None
		    Include only float, int, boolean columns. If None, will attempt to use
		    everything, then use only numeric data. Not implemented for Series.
		
		Returns
		-------
		min : Series or DataFrame (if level specified)
	**/
	public function min(?axis:Dynamic, ?skipna:Dynamic, ?level:Dynamic, ?numeric_only:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Modulo of dataframe and other, element-wise (binary operator `mod`).
		
		Equivalent to ``dataframe % other``, but with support to substitute a fill_value for
		missing data in one of the inputs.
		
		Parameters
		----------
		other : Series, DataFrame, or constant
		axis : {0, 1, 'index', 'columns'}
		    For Series input, axis to match Series index on
		level : int or name
		    Broadcast across a level, matching Index values on the
		    passed MultiIndex level
		fill_value : None or float value, default None
		    Fill existing missing (NaN) values, and any new element needed for
		    successful DataFrame alignment, with this value before computation.
		    If data in both corresponding DataFrame locations is missing
		    the result will be missing
		
		Notes
		-----
		Mismatched indices will be unioned together
		
		Returns
		-------
		result : DataFrame
		
		Examples
		--------
		None
		
		See also
		--------
		DataFrame.rmod
	**/
	public function mod(other:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?fill_value:Dynamic):pandas.DataFrame;
	/**
		Gets the mode(s) of each element along the axis selected. Adds a row
		for each mode per label, fills in gaps with nan.
		
		Note that there could be multiple values returned for the selected
		axis (when more than one item share the maximum frequency), which is
		the reason why a dataframe is returned. If you want to impute missing
		values with the mode in a dataframe ``df``, you can just do this:
		``df.fillna(df.mode().iloc[0])``
		
		Parameters
		----------
		axis : {0 or 'index', 1 or 'columns'}, default 0
		    * 0 or 'index' : get mode of each column
		    * 1 or 'columns' : get mode of each row
		numeric_only : boolean, default False
		    if True, only apply to numeric columns
		
		Returns
		-------
		modes : DataFrame (sorted)
		
		Examples
		--------
		>>> df = pd.DataFrame({'A': [1, 2, 1, 2, 1, 2, 3]})
		>>> df.mode()
		   A
		0  1
		1  2
	**/
	public function mode(?axis:Dynamic, ?numeric_only:Dynamic):Dynamic;
	/**
		Multiplication of dataframe and other, element-wise (binary operator `mul`).
		
		Equivalent to ``dataframe * other``, but with support to substitute a fill_value for
		missing data in one of the inputs.
		
		Parameters
		----------
		other : Series, DataFrame, or constant
		axis : {0, 1, 'index', 'columns'}
		    For Series input, axis to match Series index on
		level : int or name
		    Broadcast across a level, matching Index values on the
		    passed MultiIndex level
		fill_value : None or float value, default None
		    Fill existing missing (NaN) values, and any new element needed for
		    successful DataFrame alignment, with this value before computation.
		    If data in both corresponding DataFrame locations is missing
		    the result will be missing
		
		Notes
		-----
		Mismatched indices will be unioned together
		
		Returns
		-------
		result : DataFrame
		
		Examples
		--------
		None
		
		See also
		--------
		DataFrame.rmul
	**/
	public function mul(other:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?fill_value:Dynamic):pandas.DataFrame;
	/**
		Multiplication of dataframe and other, element-wise (binary operator `mul`).
		
		Equivalent to ``dataframe * other``, but with support to substitute a fill_value for
		missing data in one of the inputs.
		
		Parameters
		----------
		other : Series, DataFrame, or constant
		axis : {0, 1, 'index', 'columns'}
		    For Series input, axis to match Series index on
		level : int or name
		    Broadcast across a level, matching Index values on the
		    passed MultiIndex level
		fill_value : None or float value, default None
		    Fill existing missing (NaN) values, and any new element needed for
		    successful DataFrame alignment, with this value before computation.
		    If data in both corresponding DataFrame locations is missing
		    the result will be missing
		
		Notes
		-----
		Mismatched indices will be unioned together
		
		Returns
		-------
		result : DataFrame
		
		Examples
		--------
		None
		
		See also
		--------
		DataFrame.rmul
	**/
	public function multiply(other:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?fill_value:Dynamic):pandas.DataFrame;
	/**
		Return an int representing the number of axes / array dimensions.
		
		Return 1 if Series. Otherwise return 2 if DataFrame.
		
		See Also
		--------
		ndarray.ndim
		
		Examples
		--------
		>>> s = pd.Series({'a': 1, 'b': 2, 'c': 3})
		>>> s.ndim
		1
		
		>>> df = pd.DataFrame({'col1': [1, 2], 'col2': [3, 4]})
		>>> df.ndim
		2
	**/
	public var ndim : Dynamic;
	/**
		Wrapper for flexible comparison methods ne
	**/
	public function ne(other:Dynamic, ?axis:Dynamic, ?level:Dynamic):Dynamic;
	/**
		Return the first `n` rows ordered by `columns` in descending order.
		
		Return the first `n` rows with the largest values in `columns`, in
		descending order. The columns that are not specified are returned as
		well, but not used for ordering.
		
		This method is equivalent to
		``df.sort_values(columns, ascending=False).head(n)``, but more
		performant.
		
		Parameters
		----------
		n : int
		    Number of rows to return.
		columns : label or list of labels
		    Column label(s) to order by.
		keep : {'first', 'last'}, default 'first'
		    Where there are duplicate values:
		
		    - `first` : prioritize the first occurrence(s)
		    - `last` : prioritize the last occurrence(s)
		
		Returns
		-------
		DataFrame
		    The first `n` rows ordered by the given columns in descending
		    order.
		
		See Also
		--------
		DataFrame.nsmallest : Return the first `n` rows ordered by `columns` in
		    ascending order.
		DataFrame.sort_values : Sort DataFrame by the values
		DataFrame.head : Return the first `n` rows without re-ordering.
		
		Notes
		-----
		This function cannot be used with all column types. For example, when
		specifying columns with `object` or `category` dtypes, ``TypeError`` is
		raised.
		
		Examples
		--------
		>>> df = pd.DataFrame({'a': [1, 10, 8, 10, -1],
		...                    'b': list('abdce'),
		...                    'c': [1.0, 2.0, np.nan, 3.0, 4.0]})
		>>> df
		    a  b    c
		0   1  a  1.0
		1  10  b  2.0
		2   8  d  NaN
		3  10  c  3.0
		4  -1  e  4.0
		
		In the following example, we will use ``nlargest`` to select the three
		rows having the largest values in column "a".
		
		>>> df.nlargest(3, 'a')
		    a  b    c
		1  10  b  2.0
		3  10  c  3.0
		2   8  d  NaN
		
		When using ``keep='last'``, ties are resolved in reverse order:
		
		>>> df.nlargest(3, 'a', keep='last')
		    a  b    c
		3  10  c  3.0
		1  10  b  2.0
		2   8  d  NaN
		
		To order by the largest values in column "a" and then "c", we can
		specify multiple columns like in the next example.
		
		>>> df.nlargest(3, ['a', 'c'])
		    a  b    c
		3  10  c  3.0
		1  10  b  2.0
		2   8  d  NaN
		
		Attempting to use ``nlargest`` on non-numeric dtypes will raise a
		``TypeError``:
		
		>>> df.nlargest(3, 'b')
		Traceback (most recent call last):
		TypeError: Column 'b' has dtype object, cannot use method 'nlargest'
	**/
	public function nlargest(n:Dynamic, columns:Dynamic, ?keep:Dynamic):Dynamic;
	/**
		Detect existing (non-missing) values.
		
		Return a boolean same-sized object indicating if the values are not NA.
		Non-missing values get mapped to True. Characters such as empty
		strings ``''`` or :attr:`numpy.inf` are not considered NA values
		(unless you set ``pandas.options.mode.use_inf_as_na = True``).
		NA values, such as None or :attr:`numpy.NaN`, get mapped to False
		values.
		
		Returns
		-------
		DataFrame
		    Mask of bool values for each element in DataFrame that
		    indicates whether an element is not an NA value.
		
		See Also
		--------
		DataFrame.notnull : alias of notna
		DataFrame.isna : boolean inverse of notna
		DataFrame.dropna : omit axes labels with missing values
		notna : top-level notna
		
		Examples
		--------
		Show which entries in a DataFrame are not NA.
		
		>>> df = pd.DataFrame({'age': [5, 6, np.NaN],
		...                    'born': [pd.NaT, pd.Timestamp('1939-05-27'),
		...                             pd.Timestamp('1940-04-25')],
		...                    'name': ['Alfred', 'Batman', ''],
		...                    'toy': [None, 'Batmobile', 'Joker']})
		>>> df
		   age       born    name        toy
		0  5.0        NaT  Alfred       None
		1  6.0 1939-05-27  Batman  Batmobile
		2  NaN 1940-04-25              Joker
		
		>>> df.notna()
		     age   born  name    toy
		0   True  False  True  False
		1   True   True  True   True
		2  False   True  True   True
		
		Show which entries in a Series are not NA.
		
		>>> ser = pd.Series([5, 6, np.NaN])
		>>> ser
		0    5.0
		1    6.0
		2    NaN
		dtype: float64
		
		>>> ser.notna()
		0     True
		1     True
		2    False
		dtype: bool
	**/
	public function notna():Dynamic;
	/**
		Detect existing (non-missing) values.
		
		Return a boolean same-sized object indicating if the values are not NA.
		Non-missing values get mapped to True. Characters such as empty
		strings ``''`` or :attr:`numpy.inf` are not considered NA values
		(unless you set ``pandas.options.mode.use_inf_as_na = True``).
		NA values, such as None or :attr:`numpy.NaN`, get mapped to False
		values.
		
		Returns
		-------
		DataFrame
		    Mask of bool values for each element in DataFrame that
		    indicates whether an element is not an NA value.
		
		See Also
		--------
		DataFrame.notnull : alias of notna
		DataFrame.isna : boolean inverse of notna
		DataFrame.dropna : omit axes labels with missing values
		notna : top-level notna
		
		Examples
		--------
		Show which entries in a DataFrame are not NA.
		
		>>> df = pd.DataFrame({'age': [5, 6, np.NaN],
		...                    'born': [pd.NaT, pd.Timestamp('1939-05-27'),
		...                             pd.Timestamp('1940-04-25')],
		...                    'name': ['Alfred', 'Batman', ''],
		...                    'toy': [None, 'Batmobile', 'Joker']})
		>>> df
		   age       born    name        toy
		0  5.0        NaT  Alfred       None
		1  6.0 1939-05-27  Batman  Batmobile
		2  NaN 1940-04-25              Joker
		
		>>> df.notna()
		     age   born  name    toy
		0   True  False  True  False
		1   True   True  True   True
		2  False   True  True   True
		
		Show which entries in a Series are not NA.
		
		>>> ser = pd.Series([5, 6, np.NaN])
		>>> ser
		0    5.0
		1    6.0
		2    NaN
		dtype: float64
		
		>>> ser.notna()
		0     True
		1     True
		2    False
		dtype: bool
	**/
	public function notnull():Dynamic;
	/**
		Get the rows of a DataFrame sorted by the `n` smallest
		values of `columns`.
		
		Parameters
		----------
		n : int
		    Number of items to retrieve
		columns : list or str
		    Column name or names to order by
		keep : {'first', 'last'}, default 'first'
		    Where there are duplicate values:
		    - ``first`` : take the first occurrence.
		    - ``last`` : take the last occurrence.
		
		Returns
		-------
		DataFrame
		
		Examples
		--------
		>>> df = pd.DataFrame({'a': [1, 10, 8, 11, -1],
		...                    'b': list('abdce'),
		...                    'c': [1.0, 2.0, np.nan, 3.0, 4.0]})
		>>> df.nsmallest(3, 'a')
		   a  b   c
		4 -1  e   4
		0  1  a   1
		2  8  d NaN
	**/
	public function nsmallest(n:Dynamic, columns:Dynamic, ?keep:Dynamic):Dynamic;
	/**
		Return Series with number of distinct observations over requested
		axis.
		
		.. versionadded:: 0.20.0
		
		Parameters
		----------
		axis : {0 or 'index', 1 or 'columns'}, default 0
		dropna : boolean, default True
		    Don't include NaN in the counts.
		
		Returns
		-------
		nunique : Series
		
		Examples
		--------
		>>> df = pd.DataFrame({'A': [1, 2, 3], 'B': [1, 1, 1]})
		>>> df.nunique()
		A    3
		B    1
		
		>>> df.nunique(axis=1)
		0    1
		1    2
		2    2
	**/
	public function nunique(?axis:Dynamic, ?dropna:Dynamic):pandas.Series;
	/**
		Percentage change between the current and a prior element.
		
		Computes the percentage change from the immediately previous row by
		default. This is useful in comparing the percentage of change in a time
		series of elements.
		
		Parameters
		----------
		periods : int, default 1
		    Periods to shift for forming percent change.
		fill_method : str, default 'pad'
		    How to handle NAs before computing percent changes.
		limit : int, default None
		    The number of consecutive NAs to fill before stopping.
		freq : DateOffset, timedelta, or offset alias string, optional
		    Increment to use from time series API (e.g. 'M' or BDay()).
		**kwargs
		    Additional keyword arguments are passed into
		    `DataFrame.shift` or `Series.shift`.
		
		Returns
		-------
		chg : Series or DataFrame
		    The same type as the calling object.
		
		See Also
		--------
		Series.diff : Compute the difference of two elements in a Series.
		DataFrame.diff : Compute the difference of two elements in a DataFrame.
		Series.shift : Shift the index by some number of periods.
		DataFrame.shift : Shift the index by some number of periods.
		
		Examples
		--------
		**Series**
		
		>>> s = pd.Series([90, 91, 85])
		>>> s
		0    90
		1    91
		2    85
		dtype: int64
		
		>>> s.pct_change()
		0         NaN
		1    0.011111
		2   -0.065934
		dtype: float64
		
		>>> s.pct_change(periods=2)
		0         NaN
		1         NaN
		2   -0.055556
		dtype: float64
		
		See the percentage change in a Series where filling NAs with last
		valid observation forward to next valid.
		
		>>> s = pd.Series([90, 91, None, 85])
		>>> s
		0    90.0
		1    91.0
		2     NaN
		3    85.0
		dtype: float64
		
		>>> s.pct_change(fill_method='ffill')
		0         NaN
		1    0.011111
		2    0.000000
		3   -0.065934
		dtype: float64
		
		**DataFrame**
		
		Percentage change in French franc, Deutsche Mark, and Italian lira from
		1980-01-01 to 1980-03-01.
		
		>>> df = pd.DataFrame({
		...     'FR': [4.0405, 4.0963, 4.3149],
		...     'GR': [1.7246, 1.7482, 1.8519],
		...     'IT': [804.74, 810.01, 860.13]},
		...     index=['1980-01-01', '1980-02-01', '1980-03-01'])
		>>> df
		                FR      GR      IT
		1980-01-01  4.0405  1.7246  804.74
		1980-02-01  4.0963  1.7482  810.01
		1980-03-01  4.3149  1.8519  860.13
		
		>>> df.pct_change()
		                  FR        GR        IT
		1980-01-01       NaN       NaN       NaN
		1980-02-01  0.013810  0.013684  0.006549
		1980-03-01  0.053365  0.059318  0.061876
		
		Percentage of change in GOOG and APPL stock volume. Shows computing
		the percentage change between columns.
		
		>>> df = pd.DataFrame({
		...     '2016': [1769950, 30586265],
		...     '2015': [1500923, 40912316],
		...     '2014': [1371819, 41403351]},
		...     index=['GOOG', 'APPL'])
		>>> df
		          2016      2015      2014
		GOOG   1769950   1500923   1371819
		APPL  30586265  40912316  41403351
		
		>>> df.pct_change(axis='columns')
		      2016      2015      2014
		GOOG   NaN -0.151997 -0.086016
		APPL   NaN  0.337604  0.012002
	**/
	public function pct_change(?periods:Dynamic, ?fill_method:Dynamic, ?limit:Dynamic, ?freq:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Apply func(self, \*args, \*\*kwargs)
		
		Parameters
		----------
		func : function
		    function to apply to the NDFrame.
		    ``args``, and ``kwargs`` are passed into ``func``.
		    Alternatively a ``(callable, data_keyword)`` tuple where
		    ``data_keyword`` is a string indicating the keyword of
		    ``callable`` that expects the NDFrame.
		args : iterable, optional
		    positional arguments passed into ``func``.
		kwargs : mapping, optional
		    a dictionary of keyword arguments passed into ``func``.
		
		Returns
		-------
		object : the return type of ``func``.
		
		Notes
		-----
		
		Use ``.pipe`` when chaining together functions that expect
		Series, DataFrames or GroupBy objects. Instead of writing
		
		>>> f(g(h(df), arg1=a), arg2=b, arg3=c)
		
		You can write
		
		>>> (df.pipe(h)
		...    .pipe(g, arg1=a)
		...    .pipe(f, arg2=b, arg3=c)
		... )
		
		If you have a function that takes the data as (say) the second
		argument, pass a tuple indicating which keyword expects the
		data. For example, suppose ``f`` takes its data as ``arg2``:
		
		>>> (df.pipe(h)
		...    .pipe(g, arg1=a)
		...    .pipe((f, 'arg2'), arg1=a, arg3=c)
		...  )
		
		See Also
		--------
		pandas.DataFrame.apply
		pandas.DataFrame.applymap
		pandas.Series.map
	**/
	public function pipe(func:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return reshaped DataFrame organized by given index / column values.
		
		Reshape data (produce a "pivot" table) based on column values. Uses
		unique values from specified `index` / `columns` to form axes of the
		resulting DataFrame. This function does not support data
		aggregation, multiple values will result in a MultiIndex in the
		columns. See the :ref:`User Guide <reshaping>` for more on reshaping.
		
		Parameters
		----------
		index : string or object, optional
		    Column to use to make new frame's index. If None, uses
		    existing index.
		columns : string or object
		    Column to use to make new frame's columns.
		values : string, object or a list of the previous, optional
		    Column(s) to use for populating new frame's values. If not
		    specified, all remaining columns will be used and the result will
		    have hierarchically indexed columns.
		
		    .. versionchanged :: 0.23.0
		       Also accept list of column names.
		
		Returns
		-------
		DataFrame
		    Returns reshaped DataFrame.
		
		Raises
		------
		ValueError:
		    When there are any `index`, `columns` combinations with multiple
		    values. `DataFrame.pivot_table` when you need to aggregate.
		
		See Also
		--------
		DataFrame.pivot_table : generalization of pivot that can handle
		    duplicate values for one index/column pair.
		DataFrame.unstack : pivot based on the index values instead of a
		    column.
		
		Notes
		-----
		For finer-tuned control, see hierarchical indexing documentation along
		with the related stack/unstack methods.
		
		Examples
		--------
		>>> df = pd.DataFrame({'foo': ['one', 'one', 'one', 'two', 'two',
		...                            'two'],
		...                    'bar': ['A', 'B', 'C', 'A', 'B', 'C'],
		...                    'baz': [1, 2, 3, 4, 5, 6],
		...                    'zoo': ['x', 'y', 'z', 'q', 'w', 't']})
		>>> df
		    foo   bar  baz  zoo
		0   one   A    1    x
		1   one   B    2    y
		2   one   C    3    z
		3   two   A    4    q
		4   two   B    5    w
		5   two   C    6    t
		
		>>> df.pivot(index='foo', columns='bar', values='baz')
		bar  A   B   C
		foo
		one  1   2   3
		two  4   5   6
		
		>>> df.pivot(index='foo', columns='bar')['baz']
		bar  A   B   C
		foo
		one  1   2   3
		two  4   5   6
		
		>>> df.pivot(index='foo', columns='bar', values=['baz', 'zoo'])
		      baz       zoo
		bar   A  B  C   A  B  C
		foo
		one   1  2  3   x  y  z
		two   4  5  6   q  w  t
		
		A ValueError is raised if there are any duplicates.
		
		>>> df = pd.DataFrame({"foo": ['one', 'one', 'two', 'two'],
		...                    "bar": ['A', 'A', 'B', 'C'],
		...                    "baz": [1, 2, 3, 4]})
		>>> df
		   foo bar  baz
		0  one   A    1
		1  one   A    2
		2  two   B    3
		3  two   C    4
		
		Notice that the first two rows are the same for our `index`
		and `columns` arguments.
		
		>>> df.pivot(index='foo', columns='bar', values='baz')
		Traceback (most recent call last):
		   ...
		ValueError: Index contains duplicate entries, cannot reshape
	**/
	public function pivot(?index:Dynamic, ?columns:Dynamic, ?values:Dynamic):Dynamic;
	/**
		Create a spreadsheet-style pivot table as a DataFrame. The levels in
		the pivot table will be stored in MultiIndex objects (hierarchical
		indexes) on the index and columns of the result DataFrame
		
		Parameters
		----------
		values : column to aggregate, optional
		index : column, Grouper, array, or list of the previous
		    If an array is passed, it must be the same length as the data. The
		    list can contain any of the other types (except list).
		    Keys to group by on the pivot table index.  If an array is passed,
		    it is being used as the same manner as column values.
		columns : column, Grouper, array, or list of the previous
		    If an array is passed, it must be the same length as the data. The
		    list can contain any of the other types (except list).
		    Keys to group by on the pivot table column.  If an array is passed,
		    it is being used as the same manner as column values.
		aggfunc : function, list of functions, dict, default numpy.mean
		    If list of functions passed, the resulting pivot table will have
		    hierarchical columns whose top level are the function names
		    (inferred from the function objects themselves)
		    If dict is passed, the key is column to aggregate and value
		    is function or list of functions
		fill_value : scalar, default None
		    Value to replace missing values with
		margins : boolean, default False
		    Add all row / columns (e.g. for subtotal / grand totals)
		dropna : boolean, default True
		    Do not include columns whose entries are all NaN
		margins_name : string, default 'All'
		    Name of the row / column that will contain the totals
		    when margins is True.
		
		Examples
		--------
		>>> df = pd.DataFrame({"A": ["foo", "foo", "foo", "foo", "foo",
		...                          "bar", "bar", "bar", "bar"],
		...                    "B": ["one", "one", "one", "two", "two",
		...                          "one", "one", "two", "two"],
		...                    "C": ["small", "large", "large", "small",
		...                          "small", "large", "small", "small",
		...                          "large"],
		...                    "D": [1, 2, 2, 3, 3, 4, 5, 6, 7]})
		>>> df
		     A    B      C  D
		0  foo  one  small  1
		1  foo  one  large  2
		2  foo  one  large  2
		3  foo  two  small  3
		4  foo  two  small  3
		5  bar  one  large  4
		6  bar  one  small  5
		7  bar  two  small  6
		8  bar  two  large  7
		
		>>> table = pivot_table(df, values='D', index=['A', 'B'],
		...                     columns=['C'], aggfunc=np.sum)
		>>> table
		C        large  small
		A   B
		bar one    4.0    5.0
		    two    7.0    6.0
		foo one    4.0    1.0
		    two    NaN    6.0
		
		>>> table = pivot_table(df, values='D', index=['A', 'B'],
		...                     columns=['C'], aggfunc=np.sum)
		>>> table
		C        large  small
		A   B
		bar one    4.0    5.0
		    two    7.0    6.0
		foo one    4.0    1.0
		    two    NaN    6.0
		
		>>> table = pivot_table(df, values=['D', 'E'], index=['A', 'C'],
		...                     aggfunc={'D': np.mean,
		...                              'E': [min, max, np.mean]})
		>>> table
		                  D   E
		               mean max median min
		A   C
		bar large  5.500000  16   14.5  13
		    small  5.500000  15   14.5  14
		foo large  2.000000  10    9.5   9
		    small  2.333333  12   11.0   8
		
		Returns
		-------
		table : DataFrame
		
		See also
		--------
		DataFrame.pivot : pivot without aggregation that can handle
		    non-numeric data
	**/
	public function pivot_table(?values:Dynamic, ?index:Dynamic, ?columns:Dynamic, ?aggfunc:Dynamic, ?fill_value:Dynamic, ?margins:Dynamic, ?dropna:Dynamic, ?margins_name:Dynamic):pandas.DataFrame;
	/**
		DataFrame plotting accessor and method
		
		Examples
		--------
		>>> df.plot.line()
		>>> df.plot.scatter('x', 'y')
		>>> df.plot.hexbin()
		
		These plotting methods can also be accessed by calling the accessor as a
		method with the ``kind`` argument:
		``df.plot(kind='line')`` is equivalent to ``df.plot.line()``
	**/
	static public function plot(data:Dynamic):Dynamic;
	/**
		Return item and drop from frame. Raise KeyError if not found.
		
		Parameters
		----------
		item : str
		    Column label to be popped
		
		Returns
		-------
		popped : Series
		
		Examples
		--------
		>>> df = pd.DataFrame([('falcon', 'bird',    389.0),
		...                    ('parrot', 'bird',     24.0),
		...                    ('lion',   'mammal',   80.5),
		...                    ('monkey', 'mammal', np.nan)],
		...                   columns=('name', 'class', 'max_speed'))
		>>> df
		     name   class  max_speed
		0  falcon    bird      389.0
		1  parrot    bird       24.0
		2    lion  mammal       80.5
		3  monkey  mammal        NaN
		
		>>> df.pop('class')
		0      bird
		1      bird
		2    mammal
		3    mammal
		Name: class, dtype: object
		
		>>> df
		     name  max_speed
		0  falcon      389.0
		1  parrot       24.0
		2    lion       80.5
		3  monkey        NaN
	**/
	public function pop(item:Dynamic):pandas.Series;
	/**
		Exponential power of dataframe and other, element-wise (binary operator `pow`).
		
		Equivalent to ``dataframe ** other``, but with support to substitute a fill_value for
		missing data in one of the inputs.
		
		Parameters
		----------
		other : Series, DataFrame, or constant
		axis : {0, 1, 'index', 'columns'}
		    For Series input, axis to match Series index on
		level : int or name
		    Broadcast across a level, matching Index values on the
		    passed MultiIndex level
		fill_value : None or float value, default None
		    Fill existing missing (NaN) values, and any new element needed for
		    successful DataFrame alignment, with this value before computation.
		    If data in both corresponding DataFrame locations is missing
		    the result will be missing
		
		Notes
		-----
		Mismatched indices will be unioned together
		
		Returns
		-------
		result : DataFrame
		
		Examples
		--------
		None
		
		See also
		--------
		DataFrame.rpow
	**/
	public function pow(other:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?fill_value:Dynamic):pandas.DataFrame;
	/**
		Return the product of the values for the requested axis
		
		Parameters
		----------
		axis : {index (0), columns (1)}
		skipna : boolean, default True
		    Exclude NA/null values when computing the result.
		level : int or level name, default None
		    If the axis is a MultiIndex (hierarchical), count along a
		    particular level, collapsing into a Series
		numeric_only : boolean, default None
		    Include only float, int, boolean columns. If None, will attempt to use
		    everything, then use only numeric data. Not implemented for Series.
		min_count : int, default 0
		    The required number of valid values to perform the operation. If fewer than
		    ``min_count`` non-NA values are present the result will be NA.
		
		    .. versionadded :: 0.22.0
		
		       Added with the default being 0. This means the sum of an all-NA
		       or empty Series is 0, and the product of an all-NA or empty
		       Series is 1.
		
		Returns
		-------
		prod : Series or DataFrame (if level specified)
		
		Examples
		--------
		By default, the product of an empty or all-NA Series is ``1``
		
		>>> pd.Series([]).prod()
		1.0
		
		This can be controlled with the ``min_count`` parameter
		
		>>> pd.Series([]).prod(min_count=1)
		nan
		
		Thanks to the ``skipna`` parameter, ``min_count`` handles all-NA and
		empty series identically.
		
		>>> pd.Series([np.nan]).prod()
		1.0
		
		>>> pd.Series([np.nan]).prod(min_count=1)
		nan
	**/
	public function prod(?axis:Dynamic, ?skipna:Dynamic, ?level:Dynamic, ?numeric_only:Dynamic, ?min_count:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return the product of the values for the requested axis
		
		Parameters
		----------
		axis : {index (0), columns (1)}
		skipna : boolean, default True
		    Exclude NA/null values when computing the result.
		level : int or level name, default None
		    If the axis is a MultiIndex (hierarchical), count along a
		    particular level, collapsing into a Series
		numeric_only : boolean, default None
		    Include only float, int, boolean columns. If None, will attempt to use
		    everything, then use only numeric data. Not implemented for Series.
		min_count : int, default 0
		    The required number of valid values to perform the operation. If fewer than
		    ``min_count`` non-NA values are present the result will be NA.
		
		    .. versionadded :: 0.22.0
		
		       Added with the default being 0. This means the sum of an all-NA
		       or empty Series is 0, and the product of an all-NA or empty
		       Series is 1.
		
		Returns
		-------
		prod : Series or DataFrame (if level specified)
		
		Examples
		--------
		By default, the product of an empty or all-NA Series is ``1``
		
		>>> pd.Series([]).prod()
		1.0
		
		This can be controlled with the ``min_count`` parameter
		
		>>> pd.Series([]).prod(min_count=1)
		nan
		
		Thanks to the ``skipna`` parameter, ``min_count`` handles all-NA and
		empty series identically.
		
		>>> pd.Series([np.nan]).prod()
		1.0
		
		>>> pd.Series([np.nan]).prod(min_count=1)
		nan
	**/
	public function product(?axis:Dynamic, ?skipna:Dynamic, ?level:Dynamic, ?numeric_only:Dynamic, ?min_count:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return values at the given quantile over requested axis, a la
		numpy.percentile.
		
		Parameters
		----------
		q : float or array-like, default 0.5 (50% quantile)
		    0 <= q <= 1, the quantile(s) to compute
		axis : {0, 1, 'index', 'columns'} (default 0)
		    0 or 'index' for row-wise, 1 or 'columns' for column-wise
		numeric_only : boolean, default True
		    If False, the quantile of datetime and timedelta data will be
		    computed as well
		interpolation : {'linear', 'lower', 'higher', 'midpoint', 'nearest'}
		    .. versionadded:: 0.18.0
		
		    This optional parameter specifies the interpolation method to use,
		    when the desired quantile lies between two data points `i` and `j`:
		
		    * linear: `i + (j - i) * fraction`, where `fraction` is the
		      fractional part of the index surrounded by `i` and `j`.
		    * lower: `i`.
		    * higher: `j`.
		    * nearest: `i` or `j` whichever is nearest.
		    * midpoint: (`i` + `j`) / 2.
		
		Returns
		-------
		quantiles : Series or DataFrame
		
		    - If ``q`` is an array, a DataFrame will be returned where the
		      index is ``q``, the columns are the columns of self, and the
		      values are the quantiles.
		    - If ``q`` is a float, a Series will be returned where the
		      index is the columns of self and the values are the quantiles.
		
		Examples
		--------
		
		>>> df = pd.DataFrame(np.array([[1, 1], [2, 10], [3, 100], [4, 100]]),
		                      columns=['a', 'b'])
		>>> df.quantile(.1)
		a    1.3
		b    3.7
		dtype: float64
		>>> df.quantile([.1, .5])
		       a     b
		0.1  1.3   3.7
		0.5  2.5  55.0
		
		Specifying `numeric_only=False` will also compute the quantile of
		datetime and timedelta data.
		
		>>> df = pd.DataFrame({'A': [1, 2],
		                       'B': [pd.Timestamp('2010'),
		                             pd.Timestamp('2011')],
		                       'C': [pd.Timedelta('1 days'),
		                             pd.Timedelta('2 days')]})
		>>> df.quantile(0.5, numeric_only=False)
		A                    1.5
		B    2010-07-02 12:00:00
		C        1 days 12:00:00
		Name: 0.5, dtype: object
		
		See Also
		--------
		pandas.core.window.Rolling.quantile
	**/
	public function quantile(?q:Dynamic, ?axis:Dynamic, ?numeric_only:Dynamic, ?interpolation:Dynamic):Dynamic;
	/**
		Query the columns of a frame with a boolean expression.
		
		Parameters
		----------
		expr : string
		    The query string to evaluate.  You can refer to variables
		    in the environment by prefixing them with an '@' character like
		    ``@a + b``.
		inplace : bool
		    Whether the query should modify the data in place or return
		    a modified copy
		
		    .. versionadded:: 0.18.0
		
		kwargs : dict
		    See the documentation for :func:`pandas.eval` for complete details
		    on the keyword arguments accepted by :meth:`DataFrame.query`.
		
		Returns
		-------
		q : DataFrame
		
		Notes
		-----
		The result of the evaluation of this expression is first passed to
		:attr:`DataFrame.loc` and if that fails because of a
		multidimensional key (e.g., a DataFrame) then the result will be passed
		to :meth:`DataFrame.__getitem__`.
		
		This method uses the top-level :func:`pandas.eval` function to
		evaluate the passed query.
		
		The :meth:`~pandas.DataFrame.query` method uses a slightly
		modified Python syntax by default. For example, the ``&`` and ``|``
		(bitwise) operators have the precedence of their boolean cousins,
		:keyword:`and` and :keyword:`or`. This *is* syntactically valid Python,
		however the semantics are different.
		
		You can change the semantics of the expression by passing the keyword
		argument ``parser='python'``. This enforces the same semantics as
		evaluation in Python space. Likewise, you can pass ``engine='python'``
		to evaluate an expression using Python itself as a backend. This is not
		recommended as it is inefficient compared to using ``numexpr`` as the
		engine.
		
		The :attr:`DataFrame.index` and
		:attr:`DataFrame.columns` attributes of the
		:class:`~pandas.DataFrame` instance are placed in the query namespace
		by default, which allows you to treat both the index and columns of the
		frame as a column in the frame.
		The identifier ``index`` is used for the frame index; you can also
		use the name of the index to identify it in a query. Please note that
		Python keywords may not be used as identifiers.
		
		For further details and examples see the ``query`` documentation in
		:ref:`indexing <indexing.query>`.
		
		See Also
		--------
		pandas.eval
		DataFrame.eval
		
		Examples
		--------
		>>> from numpy.random import randn
		>>> from pandas import DataFrame
		>>> df = pd.DataFrame(randn(10, 2), columns=list('ab'))
		>>> df.query('a > b')
		>>> df[df.a > df.b]  # same result as the previous expression
	**/
	public function query(expr:Dynamic, ?inplace:Dynamic, ?kwargs:python.KwArgs<Dynamic>):pandas.DataFrame;
	/**
		Addition of dataframe and other, element-wise (binary operator `radd`).
		
		Equivalent to ``other + dataframe``, but with support to substitute a fill_value for
		missing data in one of the inputs.
		
		Parameters
		----------
		other : Series, DataFrame, or constant
		axis : {0, 1, 'index', 'columns'}
		    For Series input, axis to match Series index on
		level : int or name
		    Broadcast across a level, matching Index values on the
		    passed MultiIndex level
		fill_value : None or float value, default None
		    Fill existing missing (NaN) values, and any new element needed for
		    successful DataFrame alignment, with this value before computation.
		    If data in both corresponding DataFrame locations is missing
		    the result will be missing
		
		Notes
		-----
		Mismatched indices will be unioned together
		
		Returns
		-------
		result : DataFrame
		
		Examples
		--------
		
		>>> a = pd.DataFrame([1, 1, 1, np.nan], index=['a', 'b', 'c', 'd'],
		...                  columns=['one'])
		>>> a
		   one
		a  1.0
		b  1.0
		c  1.0
		d  NaN
		>>> b = pd.DataFrame(dict(one=[1, np.nan, 1, np.nan],
		...                       two=[np.nan, 2, np.nan, 2]),
		...                  index=['a', 'b', 'd', 'e'])
		>>> b
		   one  two
		a  1.0  NaN
		b  NaN  2.0
		d  1.0  NaN
		e  NaN  2.0
		>>> a.add(b, fill_value=0)
		   one  two
		a  2.0  NaN
		b  1.0  2.0
		c  1.0  NaN
		d  1.0  NaN
		e  NaN  2.0
		
		
		See also
		--------
		DataFrame.add
	**/
	public function radd(other:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?fill_value:Dynamic):pandas.DataFrame;
	/**
		Compute numerical data ranks (1 through n) along axis. Equal values are
		assigned a rank that is the average of the ranks of those values
		
		Parameters
		----------
		axis : {0 or 'index', 1 or 'columns'}, default 0
		    index to direct ranking
		method : {'average', 'min', 'max', 'first', 'dense'}
		    * average: average rank of group
		    * min: lowest rank in group
		    * max: highest rank in group
		    * first: ranks assigned in order they appear in the array
		    * dense: like 'min', but rank always increases by 1 between groups
		numeric_only : boolean, default None
		    Include only float, int, boolean data. Valid only for DataFrame or
		    Panel objects
		na_option : {'keep', 'top', 'bottom'}
		    * keep: leave NA values where they are
		    * top: smallest rank if ascending
		    * bottom: smallest rank if descending
		ascending : boolean, default True
		    False for ranks by high (1) to low (N)
		pct : boolean, default False
		    Computes percentage rank of data
		
		Returns
		-------
		ranks : same type as caller
	**/
	public function rank(?axis:Dynamic, ?method:Dynamic, ?numeric_only:Dynamic, ?na_option:Dynamic, ?ascending:Dynamic, ?pct:Dynamic):Dynamic;
	/**
		Floating division of dataframe and other, element-wise (binary operator `rtruediv`).
		
		Equivalent to ``other / dataframe``, but with support to substitute a fill_value for
		missing data in one of the inputs.
		
		Parameters
		----------
		other : Series, DataFrame, or constant
		axis : {0, 1, 'index', 'columns'}
		    For Series input, axis to match Series index on
		level : int or name
		    Broadcast across a level, matching Index values on the
		    passed MultiIndex level
		fill_value : None or float value, default None
		    Fill existing missing (NaN) values, and any new element needed for
		    successful DataFrame alignment, with this value before computation.
		    If data in both corresponding DataFrame locations is missing
		    the result will be missing
		
		Notes
		-----
		Mismatched indices will be unioned together
		
		Returns
		-------
		result : DataFrame
		
		Examples
		--------
		None
		
		See also
		--------
		DataFrame.truediv
	**/
	public function rdiv(other:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?fill_value:Dynamic):pandas.DataFrame;
	/**
		Conform DataFrame to new index with optional filling logic, placing
		NA/NaN in locations having no value in the previous index. A new object
		is produced unless the new index is equivalent to the current one and
		copy=False
		
		Parameters
		----------
		labels : array-like, optional
		    New labels / index to conform the axis specified by 'axis' to.
		index, columns : array-like, optional (should be specified using keywords)
		    New labels / index to conform to. Preferably an Index object to
		    avoid duplicating data
		axis : int or str, optional
		    Axis to target. Can be either the axis name ('index', 'columns')
		    or number (0, 1).
		method : {None, 'backfill'/'bfill', 'pad'/'ffill', 'nearest'}, optional
		    method to use for filling holes in reindexed DataFrame.
		    Please note: this is only applicable to DataFrames/Series with a
		    monotonically increasing/decreasing index.
		
		    * default: don't fill gaps
		    * pad / ffill: propagate last valid observation forward to next
		      valid
		    * backfill / bfill: use next valid observation to fill gap
		    * nearest: use nearest valid observations to fill gap
		
		copy : boolean, default True
		    Return a new object, even if the passed indexes are the same
		level : int or name
		    Broadcast across a level, matching Index values on the
		    passed MultiIndex level
		fill_value : scalar, default np.NaN
		    Value to use for missing values. Defaults to NaN, but can be any
		    "compatible" value
		limit : int, default None
		    Maximum number of consecutive elements to forward or backward fill
		tolerance : optional
		    Maximum distance between original and new labels for inexact
		    matches. The values of the index at the matching locations most
		    satisfy the equation ``abs(index[indexer] - target) <= tolerance``.
		
		    Tolerance may be a scalar value, which applies the same tolerance
		    to all values, or list-like, which applies variable tolerance per
		    element. List-like includes list, tuple, array, Series, and must be
		    the same size as the index and its dtype must exactly match the
		    index's type.
		
		    .. versionadded:: 0.21.0 (list-like tolerance)
		
		Examples
		--------
		
		``DataFrame.reindex`` supports two calling conventions
		
		* ``(index=index_labels, columns=column_labels, ...)``
		* ``(labels, axis={'index', 'columns'}, ...)``
		
		We *highly* recommend using keyword arguments to clarify your
		intent.
		
		Create a dataframe with some fictional data.
		
		>>> index = ['Firefox', 'Chrome', 'Safari', 'IE10', 'Konqueror']
		>>> df = pd.DataFrame({
		...      'http_status': [200,200,404,404,301],
		...      'response_time': [0.04, 0.02, 0.07, 0.08, 1.0]},
		...       index=index)
		>>> df
		           http_status  response_time
		Firefox            200           0.04
		Chrome             200           0.02
		Safari             404           0.07
		IE10               404           0.08
		Konqueror          301           1.00
		
		Create a new index and reindex the dataframe. By default
		values in the new index that do not have corresponding
		records in the dataframe are assigned ``NaN``.
		
		>>> new_index= ['Safari', 'Iceweasel', 'Comodo Dragon', 'IE10',
		...             'Chrome']
		>>> df.reindex(new_index)
		               http_status  response_time
		Safari               404.0           0.07
		Iceweasel              NaN            NaN
		Comodo Dragon          NaN            NaN
		IE10                 404.0           0.08
		Chrome               200.0           0.02
		
		We can fill in the missing values by passing a value to
		the keyword ``fill_value``. Because the index is not monotonically
		increasing or decreasing, we cannot use arguments to the keyword
		``method`` to fill the ``NaN`` values.
		
		>>> df.reindex(new_index, fill_value=0)
		               http_status  response_time
		Safari                 404           0.07
		Iceweasel                0           0.00
		Comodo Dragon            0           0.00
		IE10                   404           0.08
		Chrome                 200           0.02
		
		>>> df.reindex(new_index, fill_value='missing')
		              http_status response_time
		Safari                404          0.07
		Iceweasel         missing       missing
		Comodo Dragon     missing       missing
		IE10                  404          0.08
		Chrome                200          0.02
		
		We can also reindex the columns.
		
		>>> df.reindex(columns=['http_status', 'user_agent'])
		           http_status  user_agent
		Firefox            200         NaN
		Chrome             200         NaN
		Safari             404         NaN
		IE10               404         NaN
		Konqueror          301         NaN
		
		Or we can use "axis-style" keyword arguments
		
		>>> df.reindex(['http_status', 'user_agent'], axis="columns")
		           http_status  user_agent
		Firefox            200         NaN
		Chrome             200         NaN
		Safari             404         NaN
		IE10               404         NaN
		Konqueror          301         NaN
		
		To further illustrate the filling functionality in
		``reindex``, we will create a dataframe with a
		monotonically increasing index (for example, a sequence
		of dates).
		
		>>> date_index = pd.date_range('1/1/2010', periods=6, freq='D')
		>>> df2 = pd.DataFrame({"prices": [100, 101, np.nan, 100, 89, 88]},
		...                    index=date_index)
		>>> df2
		            prices
		2010-01-01     100
		2010-01-02     101
		2010-01-03     NaN
		2010-01-04     100
		2010-01-05      89
		2010-01-06      88
		
		Suppose we decide to expand the dataframe to cover a wider
		date range.
		
		>>> date_index2 = pd.date_range('12/29/2009', periods=10, freq='D')
		>>> df2.reindex(date_index2)
		            prices
		2009-12-29     NaN
		2009-12-30     NaN
		2009-12-31     NaN
		2010-01-01     100
		2010-01-02     101
		2010-01-03     NaN
		2010-01-04     100
		2010-01-05      89
		2010-01-06      88
		2010-01-07     NaN
		
		The index entries that did not have a value in the original data frame
		(for example, '2009-12-29') are by default filled with ``NaN``.
		If desired, we can fill in the missing values using one of several
		options.
		
		For example, to backpropagate the last valid value to fill the ``NaN``
		values, pass ``bfill`` as an argument to the ``method`` keyword.
		
		>>> df2.reindex(date_index2, method='bfill')
		            prices
		2009-12-29     100
		2009-12-30     100
		2009-12-31     100
		2010-01-01     100
		2010-01-02     101
		2010-01-03     NaN
		2010-01-04     100
		2010-01-05      89
		2010-01-06      88
		2010-01-07     NaN
		
		Please note that the ``NaN`` value present in the original dataframe
		(at index value 2010-01-03) will not be filled by any of the
		value propagation schemes. This is because filling while reindexing
		does not look at dataframe values, but only compares the original and
		desired indexes. If you do want to fill in the ``NaN`` values present
		in the original dataframe, use the ``fillna()`` method.
		
		See the :ref:`user guide <basics.reindexing>` for more.
		
		Returns
		-------
		reindexed : DataFrame
	**/
	public function reindex(?labels:Dynamic, ?index:Dynamic, ?columns:Dynamic, ?axis:Dynamic, ?method:Dynamic, ?copy:Dynamic, ?level:Dynamic, ?fill_value:Dynamic, ?limit:Dynamic, ?tolerance:Dynamic):pandas.DataFrame;
	/**
		Conform input object to new index with optional
		filling logic, placing NA/NaN in locations having no value in the
		previous index. A new object is produced unless the new index is
		equivalent to the current one and copy=False
		
		Parameters
		----------
		labels : array-like
		    New labels / index to conform to. Preferably an Index object to
		    avoid duplicating data
		axis : {0 or 'index', 1 or 'columns'}
		method : {None, 'backfill'/'bfill', 'pad'/'ffill', 'nearest'}, optional
		    Method to use for filling holes in reindexed DataFrame:
		
		    * default: don't fill gaps
		    * pad / ffill: propagate last valid observation forward to next
		      valid
		    * backfill / bfill: use next valid observation to fill gap
		    * nearest: use nearest valid observations to fill gap
		
		copy : boolean, default True
		    Return a new object, even if the passed indexes are the same
		level : int or name
		    Broadcast across a level, matching Index values on the
		    passed MultiIndex level
		limit : int, default None
		    Maximum number of consecutive elements to forward or backward fill
		tolerance : optional
		    Maximum distance between original and new labels for inexact
		    matches. The values of the index at the matching locations most
		    satisfy the equation ``abs(index[indexer] - target) <= tolerance``.
		
		    Tolerance may be a scalar value, which applies the same tolerance
		    to all values, or list-like, which applies variable tolerance per
		    element. List-like includes list, tuple, array, Series, and must be
		    the same size as the index and its dtype must exactly match the
		    index's type.
		
		    .. versionadded:: 0.21.0 (list-like tolerance)
		
		Examples
		--------
		>>> df.reindex_axis(['A', 'B', 'C'], axis=1)
		
		See Also
		--------
		reindex, reindex_like
		
		Returns
		-------
		reindexed : DataFrame
	**/
	public function reindex_axis(labels:Dynamic, ?axis:Dynamic, ?method:Dynamic, ?level:Dynamic, ?copy:Dynamic, ?limit:Dynamic, ?fill_value:Dynamic):pandas.DataFrame;
	/**
		Return an object with matching indices to myself.
		
		Parameters
		----------
		other : Object
		method : string or None
		copy : boolean, default True
		limit : int, default None
		    Maximum number of consecutive labels to fill for inexact matches.
		tolerance : optional
		    Maximum distance between labels of the other object and this
		    object for inexact matches. Can be list-like.
		
		    .. versionadded:: 0.21.0 (list-like tolerance)
		
		Notes
		-----
		Like calling s.reindex(index=other.index, columns=other.columns,
		                       method=...)
		
		Returns
		-------
		reindexed : same as input
	**/
	public function reindex_like(other:Dynamic, ?method:Dynamic, ?copy:Dynamic, ?limit:Dynamic, ?tolerance:Dynamic):Dynamic;
	/**
		Alter axes labels.
		
		Function / dict values must be unique (1-to-1). Labels not contained in
		a dict / Series will be left as-is. Extra labels listed don't throw an
		error.
		
		See the :ref:`user guide <basics.rename>` for more.
		
		Parameters
		----------
		mapper, index, columns : dict-like or function, optional
		    dict-like or functions transformations to apply to
		    that axis' values. Use either ``mapper`` and ``axis`` to
		    specify the axis to target with ``mapper``, or ``index`` and
		    ``columns``.
		axis : int or str, optional
		    Axis to target with ``mapper``. Can be either the axis name
		    ('index', 'columns') or number (0, 1). The default is 'index'.
		copy : boolean, default True
		    Also copy underlying data
		inplace : boolean, default False
		    Whether to return a new DataFrame. If True then value of copy is
		    ignored.
		level : int or level name, default None
		    In case of a MultiIndex, only rename labels in the specified
		    level.
		
		Returns
		-------
		renamed : DataFrame
		
		See Also
		--------
		pandas.DataFrame.rename_axis
		
		Examples
		--------
		
		``DataFrame.rename`` supports two calling conventions
		
		* ``(index=index_mapper, columns=columns_mapper, ...)``
		* ``(mapper, axis={'index', 'columns'}, ...)``
		
		We *highly* recommend using keyword arguments to clarify your
		intent.
		
		>>> df = pd.DataFrame({"A": [1, 2, 3], "B": [4, 5, 6]})
		>>> df.rename(index=str, columns={"A": "a", "B": "c"})
		   a  c
		0  1  4
		1  2  5
		2  3  6
		
		>>> df.rename(index=str, columns={"A": "a", "C": "c"})
		   a  B
		0  1  4
		1  2  5
		2  3  6
		
		Using axis-style parameters
		
		>>> df.rename(str.lower, axis='columns')
		   a  b
		0  1  4
		1  2  5
		2  3  6
		
		>>> df.rename({1: 2, 2: 4}, axis='index')
		   A  B
		0  1  4
		2  2  5
		4  3  6
	**/
	public function rename(?mapper:Dynamic, ?index:Dynamic, ?columns:Dynamic, ?axis:Dynamic, ?copy:Dynamic, ?inplace:Dynamic, ?level:Dynamic):pandas.DataFrame;
	/**
		Alter the name of the index or columns.
		
		Parameters
		----------
		mapper : scalar, list-like, optional
		    Value to set as the axis name attribute.
		axis : {0 or 'index', 1 or 'columns'}, default 0
		    The index or the name of the axis.
		copy : boolean, default True
		    Also copy underlying data.
		inplace : boolean, default False
		    Modifies the object directly, instead of creating a new Series
		    or DataFrame.
		
		Returns
		-------
		renamed : Series, DataFrame, or None
		    The same type as the caller or None if `inplace` is True.
		
		Notes
		-----
		Prior to version 0.21.0, ``rename_axis`` could also be used to change
		the axis *labels* by passing a mapping or scalar. This behavior is
		deprecated and will be removed in a future version. Use ``rename``
		instead.
		
		See Also
		--------
		pandas.Series.rename : Alter Series index labels or name
		pandas.DataFrame.rename : Alter DataFrame index labels or name
		pandas.Index.rename : Set new names on index
		
		Examples
		--------
		**Series**
		
		>>> s = pd.Series([1, 2, 3])
		>>> s.rename_axis("foo")
		foo
		0    1
		1    2
		2    3
		dtype: int64
		
		**DataFrame**
		
		>>> df = pd.DataFrame({"A": [1, 2, 3], "B": [4, 5, 6]})
		>>> df.rename_axis("foo")
		     A  B
		foo
		0    1  4
		1    2  5
		2    3  6
		
		>>> df.rename_axis("bar", axis="columns")
		bar  A  B
		0    1  4
		1    2  5
		2    3  6
	**/
	public function rename_axis(mapper:Dynamic, ?axis:Dynamic, ?copy:Dynamic, ?inplace:Dynamic):Dynamic;
	/**
		Rearrange index levels using input order.
		May not drop or duplicate levels
		
		Parameters
		----------
		order : list of int or list of str
		    List representing new level order. Reference level by number
		    (position) or by key (label).
		axis : int
		    Where to reorder levels.
		
		Returns
		-------
		type of caller (new object)
	**/
	public function reorder_levels(order:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Replace values given in `to_replace` with `value`.
		
		Values of the DataFrame are replaced with other values dynamically.
		This differs from updating with ``.loc`` or ``.iloc``, which require
		you to specify a location to update with some value.
		
		Parameters
		----------
		to_replace : str, regex, list, dict, Series, int, float, or None
		    How to find the values that will be replaced.
		
		    * numeric, str or regex:
		
		        - numeric: numeric values equal to `to_replace` will be
		          replaced with `value`
		        - str: string exactly matching `to_replace` will be replaced
		          with `value`
		        - regex: regexs matching `to_replace` will be replaced with
		          `value`
		
		    * list of str, regex, or numeric:
		
		        - First, if `to_replace` and `value` are both lists, they
		          **must** be the same length.
		        - Second, if ``regex=True`` then all of the strings in **both**
		          lists will be interpreted as regexs otherwise they will match
		          directly. This doesn't matter much for `value` since there
		          are only a few possible substitution regexes you can use.
		        - str, regex and numeric rules apply as above.
		
		    * dict:
		
		        - Dicts can be used to specify different replacement values
		          for different existing values. For example,
		          ``{'a': 'b', 'y': 'z'}`` replaces the value 'a' with 'b' and
		          'y' with 'z'. To use a dict in this way the `value`
		          parameter should be `None`.
		        - For a DataFrame a dict can specify that different values
		          should be replaced in different columns. For example,
		          ``{'a': 1, 'b': 'z'}`` looks for the value 1 in column 'a'
		          and the value 'z' in column 'b' and replaces these values
		          with whatever is specified in `value`. The `value` parameter
		          should not be ``None`` in this case. You can treat this as a
		          special case of passing two lists except that you are
		          specifying the column to search in.
		        - For a DataFrame nested dictionaries, e.g.,
		          ``{'a': {'b': np.nan}}``, are read as follows: look in column
		          'a' for the value 'b' and replace it with NaN. The `value`
		          parameter should be ``None`` to use a nested dict in this
		          way. You can nest regular expressions as well. Note that
		          column names (the top-level dictionary keys in a nested
		          dictionary) **cannot** be regular expressions.
		
		    * None:
		
		        - This means that the `regex` argument must be a string,
		          compiled regular expression, or list, dict, ndarray or
		          Series of such elements. If `value` is also ``None`` then
		          this **must** be a nested dictionary or Series.
		
		    See the examples section for examples of each of these.
		value : scalar, dict, list, str, regex, default None
		    Value to replace any values matching `to_replace` with.
		    For a DataFrame a dict of values can be used to specify which
		    value to use for each column (columns not in the dict will not be
		    filled). Regular expressions, strings and lists or dicts of such
		    objects are also allowed.
		inplace : boolean, default False
		    If True, in place. Note: this will modify any
		    other views on this object (e.g. a column from a DataFrame).
		    Returns the caller if this is True.
		limit : int, default None
		    Maximum size gap to forward or backward fill.
		regex : bool or same types as `to_replace`, default False
		    Whether to interpret `to_replace` and/or `value` as regular
		    expressions. If this is ``True`` then `to_replace` *must* be a
		    string. Alternatively, this could be a regular expression or a
		    list, dict, or array of regular expressions in which case
		    `to_replace` must be ``None``.
		method : {'pad', 'ffill', 'bfill', `None`}
		    The method to use when for replacement, when `to_replace` is a
		    scalar, list or tuple and `value` is ``None``.
		
		    .. versionchanged:: 0.23.0
		        Added to DataFrame.
		
		See Also
		--------
		DataFrame.fillna : Fill NA values
		DataFrame.where : Replace values based on boolean condition
		Series.str.replace : Simple string replacement.
		
		Returns
		-------
		DataFrame
		    Object after replacement.
		
		Raises
		------
		AssertionError
		    * If `regex` is not a ``bool`` and `to_replace` is not
		      ``None``.
		TypeError
		    * If `to_replace` is a ``dict`` and `value` is not a ``list``,
		      ``dict``, ``ndarray``, or ``Series``
		    * If `to_replace` is ``None`` and `regex` is not compilable
		      into a regular expression or is a list, dict, ndarray, or
		      Series.
		    * When replacing multiple ``bool`` or ``datetime64`` objects and
		      the arguments to `to_replace` does not match the type of the
		      value being replaced
		ValueError
		    * If a ``list`` or an ``ndarray`` is passed to `to_replace` and
		      `value` but they are not the same length.
		
		Notes
		-----
		* Regex substitution is performed under the hood with ``re.sub``. The
		  rules for substitution for ``re.sub`` are the same.
		* Regular expressions will only substitute on strings, meaning you
		  cannot provide, for example, a regular expression matching floating
		  point numbers and expect the columns in your frame that have a
		  numeric dtype to be matched. However, if those floating point
		  numbers *are* strings, then you can do this.
		* This method has *a lot* of options. You are encouraged to experiment
		  and play with this method to gain intuition about how it works.
		* When dict is used as the `to_replace` value, it is like
		  key(s) in the dict are the to_replace part and
		  value(s) in the dict are the value parameter.
		
		Examples
		--------
		
		**Scalar `to_replace` and `value`**
		
		>>> s = pd.Series([0, 1, 2, 3, 4])
		>>> s.replace(0, 5)
		0    5
		1    1
		2    2
		3    3
		4    4
		dtype: int64
		
		>>> df = pd.DataFrame({'A': [0, 1, 2, 3, 4],
		...                    'B': [5, 6, 7, 8, 9],
		...                    'C': ['a', 'b', 'c', 'd', 'e']})
		>>> df.replace(0, 5)
		   A  B  C
		0  5  5  a
		1  1  6  b
		2  2  7  c
		3  3  8  d
		4  4  9  e
		
		**List-like `to_replace`**
		
		>>> df.replace([0, 1, 2, 3], 4)
		   A  B  C
		0  4  5  a
		1  4  6  b
		2  4  7  c
		3  4  8  d
		4  4  9  e
		
		>>> df.replace([0, 1, 2, 3], [4, 3, 2, 1])
		   A  B  C
		0  4  5  a
		1  3  6  b
		2  2  7  c
		3  1  8  d
		4  4  9  e
		
		>>> s.replace([1, 2], method='bfill')
		0    0
		1    3
		2    3
		3    3
		4    4
		dtype: int64
		
		**dict-like `to_replace`**
		
		>>> df.replace({0: 10, 1: 100})
		     A  B  C
		0   10  5  a
		1  100  6  b
		2    2  7  c
		3    3  8  d
		4    4  9  e
		
		>>> df.replace({'A': 0, 'B': 5}, 100)
		     A    B  C
		0  100  100  a
		1    1    6  b
		2    2    7  c
		3    3    8  d
		4    4    9  e
		
		>>> df.replace({'A': {0: 100, 4: 400}})
		     A  B  C
		0  100  5  a
		1    1  6  b
		2    2  7  c
		3    3  8  d
		4  400  9  e
		
		**Regular expression `to_replace`**
		
		>>> df = pd.DataFrame({'A': ['bat', 'foo', 'bait'],
		...                    'B': ['abc', 'bar', 'xyz']})
		>>> df.replace(to_replace=r'^ba.$', value='new', regex=True)
		      A    B
		0   new  abc
		1   foo  new
		2  bait  xyz
		
		>>> df.replace({'A': r'^ba.$'}, {'A': 'new'}, regex=True)
		      A    B
		0   new  abc
		1   foo  bar
		2  bait  xyz
		
		>>> df.replace(regex=r'^ba.$', value='new')
		      A    B
		0   new  abc
		1   foo  new
		2  bait  xyz
		
		>>> df.replace(regex={r'^ba.$':'new', 'foo':'xyz'})
		      A    B
		0   new  abc
		1   xyz  new
		2  bait  xyz
		
		>>> df.replace(regex=[r'^ba.$', 'foo'], value='new')
		      A    B
		0   new  abc
		1   new  new
		2  bait  xyz
		
		Note that when replacing multiple ``bool`` or ``datetime64`` objects,
		the data types in the `to_replace` parameter must match the data
		type of the value being replaced:
		
		>>> df = pd.DataFrame({'A': [True, False, True],
		...                    'B': [False, True, False]})
		>>> df.replace({'a string': 'new value', True: False})  # raises
		Traceback (most recent call last):
		    ...
		TypeError: Cannot compare types 'ndarray(dtype=bool)' and 'str'
		
		This raises a ``TypeError`` because one of the ``dict`` keys is not of
		the correct type for replacement.
		
		Compare the behavior of ``s.replace({'a': None})`` and
		``s.replace('a', None)`` to understand the pecularities
		of the `to_replace` parameter:
		
		>>> s = pd.Series([10, 'a', 'a', 'b', 'a'])
		
		When one uses a dict as the `to_replace` value, it is like the
		value(s) in the dict are equal to the `value` parameter.
		``s.replace({'a': None})`` is equivalent to
		``s.replace(to_replace={'a': None}, value=None, method=None)``:
		
		>>> s.replace({'a': None})
		0      10
		1    None
		2    None
		3       b
		4    None
		dtype: object
		
		When ``value=None`` and `to_replace` is a scalar, list or
		tuple, `replace` uses the method parameter (default 'pad') to do the
		replacement. So this is why the 'a' values are being replaced by 10
		in rows 1 and 2 and 'b' in row 4 in this case.
		The command ``s.replace('a', None)`` is actually equivalent to
		``s.replace(to_replace='a', value=None, method='pad')``:
		
		>>> s.replace('a', None)
		0    10
		1    10
		2    10
		3     b
		4     b
		dtype: object
	**/
	public function replace(?to_replace:Dynamic, ?value:Dynamic, ?inplace:Dynamic, ?limit:Dynamic, ?regex:Dynamic, ?method:Dynamic):Dynamic;
	/**
		Convenience method for frequency conversion and resampling of time
		series.  Object must have a datetime-like index (DatetimeIndex,
		PeriodIndex, or TimedeltaIndex), or pass datetime-like values
		to the on or level keyword.
		
		Parameters
		----------
		rule : string
		    the offset string or object representing target conversion
		axis : int, optional, default 0
		closed : {'right', 'left'}
		    Which side of bin interval is closed. The default is 'left'
		    for all frequency offsets except for 'M', 'A', 'Q', 'BM',
		    'BA', 'BQ', and 'W' which all have a default of 'right'.
		label : {'right', 'left'}
		    Which bin edge label to label bucket with. The default is 'left'
		    for all frequency offsets except for 'M', 'A', 'Q', 'BM',
		    'BA', 'BQ', and 'W' which all have a default of 'right'.
		convention : {'start', 'end', 's', 'e'}
		    For PeriodIndex only, controls whether to use the start or end of
		    `rule`
		kind: {'timestamp', 'period'}, optional
		    Pass 'timestamp' to convert the resulting index to a
		    ``DateTimeIndex`` or 'period' to convert it to a ``PeriodIndex``.
		    By default the input representation is retained.
		loffset : timedelta
		    Adjust the resampled time labels
		base : int, default 0
		    For frequencies that evenly subdivide 1 day, the "origin" of the
		    aggregated intervals. For example, for '5min' frequency, base could
		    range from 0 through 4. Defaults to 0
		on : string, optional
		    For a DataFrame, column to use instead of index for resampling.
		    Column must be datetime-like.
		
		    .. versionadded:: 0.19.0
		
		level : string or int, optional
		    For a MultiIndex, level (name or number) to use for
		    resampling.  Level must be datetime-like.
		
		    .. versionadded:: 0.19.0
		
		Returns
		-------
		Resampler object
		
		Notes
		-----
		See the `user guide
		<http://pandas.pydata.org/pandas-docs/stable/timeseries.html#resampling>`_
		for more.
		
		To learn more about the offset strings, please see `this link
		<http://pandas.pydata.org/pandas-docs/stable/timeseries.html#offset-aliases>`__.
		
		Examples
		--------
		
		Start by creating a series with 9 one minute timestamps.
		
		>>> index = pd.date_range('1/1/2000', periods=9, freq='T')
		>>> series = pd.Series(range(9), index=index)
		>>> series
		2000-01-01 00:00:00    0
		2000-01-01 00:01:00    1
		2000-01-01 00:02:00    2
		2000-01-01 00:03:00    3
		2000-01-01 00:04:00    4
		2000-01-01 00:05:00    5
		2000-01-01 00:06:00    6
		2000-01-01 00:07:00    7
		2000-01-01 00:08:00    8
		Freq: T, dtype: int64
		
		Downsample the series into 3 minute bins and sum the values
		of the timestamps falling into a bin.
		
		>>> series.resample('3T').sum()
		2000-01-01 00:00:00     3
		2000-01-01 00:03:00    12
		2000-01-01 00:06:00    21
		Freq: 3T, dtype: int64
		
		Downsample the series into 3 minute bins as above, but label each
		bin using the right edge instead of the left. Please note that the
		value in the bucket used as the label is not included in the bucket,
		which it labels. For example, in the original series the
		bucket ``2000-01-01 00:03:00`` contains the value 3, but the summed
		value in the resampled bucket with the label ``2000-01-01 00:03:00``
		does not include 3 (if it did, the summed value would be 6, not 3).
		To include this value close the right side of the bin interval as
		illustrated in the example below this one.
		
		>>> series.resample('3T', label='right').sum()
		2000-01-01 00:03:00     3
		2000-01-01 00:06:00    12
		2000-01-01 00:09:00    21
		Freq: 3T, dtype: int64
		
		Downsample the series into 3 minute bins as above, but close the right
		side of the bin interval.
		
		>>> series.resample('3T', label='right', closed='right').sum()
		2000-01-01 00:00:00     0
		2000-01-01 00:03:00     6
		2000-01-01 00:06:00    15
		2000-01-01 00:09:00    15
		Freq: 3T, dtype: int64
		
		Upsample the series into 30 second bins.
		
		>>> series.resample('30S').asfreq()[0:5] #select first 5 rows
		2000-01-01 00:00:00   0.0
		2000-01-01 00:00:30   NaN
		2000-01-01 00:01:00   1.0
		2000-01-01 00:01:30   NaN
		2000-01-01 00:02:00   2.0
		Freq: 30S, dtype: float64
		
		Upsample the series into 30 second bins and fill the ``NaN``
		values using the ``pad`` method.
		
		>>> series.resample('30S').pad()[0:5]
		2000-01-01 00:00:00    0
		2000-01-01 00:00:30    0
		2000-01-01 00:01:00    1
		2000-01-01 00:01:30    1
		2000-01-01 00:02:00    2
		Freq: 30S, dtype: int64
		
		Upsample the series into 30 second bins and fill the
		``NaN`` values using the ``bfill`` method.
		
		>>> series.resample('30S').bfill()[0:5]
		2000-01-01 00:00:00    0
		2000-01-01 00:00:30    1
		2000-01-01 00:01:00    1
		2000-01-01 00:01:30    2
		2000-01-01 00:02:00    2
		Freq: 30S, dtype: int64
		
		Pass a custom function via ``apply``
		
		>>> def custom_resampler(array_like):
		...     return np.sum(array_like)+5
		
		>>> series.resample('3T').apply(custom_resampler)
		2000-01-01 00:00:00     8
		2000-01-01 00:03:00    17
		2000-01-01 00:06:00    26
		Freq: 3T, dtype: int64
		
		For a Series with a PeriodIndex, the keyword `convention` can be
		used to control whether to use the start or end of `rule`.
		
		>>> s = pd.Series([1, 2], index=pd.period_range('2012-01-01',
		                                                freq='A',
		                                                periods=2))
		>>> s
		2012    1
		2013    2
		Freq: A-DEC, dtype: int64
		
		Resample by month using 'start' `convention`. Values are assigned to
		the first month of the period.
		
		>>> s.resample('M', convention='start').asfreq().head()
		2012-01    1.0
		2012-02    NaN
		2012-03    NaN
		2012-04    NaN
		2012-05    NaN
		Freq: M, dtype: float64
		
		Resample by month using 'end' `convention`. Values are assigned to
		the last month of the period.
		
		>>> s.resample('M', convention='end').asfreq()
		2012-12    1.0
		2013-01    NaN
		2013-02    NaN
		2013-03    NaN
		2013-04    NaN
		2013-05    NaN
		2013-06    NaN
		2013-07    NaN
		2013-08    NaN
		2013-09    NaN
		2013-10    NaN
		2013-11    NaN
		2013-12    2.0
		Freq: M, dtype: float64
		
		For DataFrame objects, the keyword ``on`` can be used to specify the
		column instead of the index for resampling.
		
		>>> df = pd.DataFrame(data=9*[range(4)], columns=['a', 'b', 'c', 'd'])
		>>> df['time'] = pd.date_range('1/1/2000', periods=9, freq='T')
		>>> df.resample('3T', on='time').sum()
		                     a  b  c  d
		time
		2000-01-01 00:00:00  0  3  6  9
		2000-01-01 00:03:00  0  3  6  9
		2000-01-01 00:06:00  0  3  6  9
		
		For a DataFrame with MultiIndex, the keyword ``level`` can be used to
		specify on level the resampling needs to take place.
		
		>>> time = pd.date_range('1/1/2000', periods=5, freq='T')
		>>> df2 = pd.DataFrame(data=10*[range(4)],
		                       columns=['a', 'b', 'c', 'd'],
		                       index=pd.MultiIndex.from_product([time, [1, 2]])
		                       )
		>>> df2.resample('3T', level=0).sum()
		                     a  b   c   d
		2000-01-01 00:00:00  0  6  12  18
		2000-01-01 00:03:00  0  4   8  12
		
		See also
		--------
		groupby : Group by mapping, function, label, or list of labels.
	**/
	public function resample(rule:Dynamic, ?how:Dynamic, ?axis:Dynamic, ?fill_method:Dynamic, ?closed:Dynamic, ?label:Dynamic, ?convention:Dynamic, ?kind:Dynamic, ?loffset:Dynamic, ?limit:Dynamic, ?base:Dynamic, ?on:Dynamic, ?level:Dynamic):Dynamic;
	/**
		For DataFrame with multi-level index, return new DataFrame with
		labeling information in the columns under the index names, defaulting
		to 'level_0', 'level_1', etc. if any are None. For a standard index,
		the index name will be used (if set), otherwise a default 'index' or
		'level_0' (if 'index' is already taken) will be used.
		
		Parameters
		----------
		level : int, str, tuple, or list, default None
		    Only remove the given levels from the index. Removes all levels by
		    default
		drop : boolean, default False
		    Do not try to insert index into dataframe columns. This resets
		    the index to the default integer index.
		inplace : boolean, default False
		    Modify the DataFrame in place (do not create a new object)
		col_level : int or str, default 0
		    If the columns have multiple levels, determines which level the
		    labels are inserted into. By default it is inserted into the first
		    level.
		col_fill : object, default ''
		    If the columns have multiple levels, determines how the other
		    levels are named. If None then the index name is repeated.
		
		Returns
		-------
		resetted : DataFrame
		
		Examples
		--------
		>>> df = pd.DataFrame([('bird',    389.0),
		...                    ('bird',     24.0),
		...                    ('mammal',   80.5),
		...                    ('mammal', np.nan)],
		...                   index=['falcon', 'parrot', 'lion', 'monkey'],
		...                   columns=('class', 'max_speed'))
		>>> df
		         class  max_speed
		falcon    bird      389.0
		parrot    bird       24.0
		lion    mammal       80.5
		monkey  mammal        NaN
		
		When we reset the index, the old index is added as a column, and a
		new sequential index is used:
		
		>>> df.reset_index()
		    index   class  max_speed
		0  falcon    bird      389.0
		1  parrot    bird       24.0
		2    lion  mammal       80.5
		3  monkey  mammal        NaN
		
		We can use the `drop` parameter to avoid the old index being added as
		a column:
		
		>>> df.reset_index(drop=True)
		    class  max_speed
		0    bird      389.0
		1    bird       24.0
		2  mammal       80.5
		3  mammal        NaN
		
		You can also use `reset_index` with `MultiIndex`.
		
		>>> index = pd.MultiIndex.from_tuples([('bird', 'falcon'),
		...                                    ('bird', 'parrot'),
		...                                    ('mammal', 'lion'),
		...                                    ('mammal', 'monkey')],
		...                                   names=['class', 'name'])
		>>> columns = pd.MultiIndex.from_tuples([('speed', 'max'),
		...                                      ('species', 'type')])
		>>> df = pd.DataFrame([(389.0, 'fly'),
		...                    ( 24.0, 'fly'),
		...                    ( 80.5, 'run'),
		...                    (np.nan, 'jump')],
		...                   index=index,
		...                   columns=columns)
		>>> df
		               speed species
		                 max    type
		class  name
		bird   falcon  389.0     fly
		       parrot   24.0     fly
		mammal lion     80.5     run
		       monkey    NaN    jump
		
		If the index has multiple levels, we can reset a subset of them:
		
		>>> df.reset_index(level='class')
		         class  speed species
		                  max    type
		name
		falcon    bird  389.0     fly
		parrot    bird   24.0     fly
		lion    mammal   80.5     run
		monkey  mammal    NaN    jump
		
		If we are not dropping the index, by default, it is placed in the top
		level. We can place it in another level:
		
		>>> df.reset_index(level='class', col_level=1)
		                speed species
		         class    max    type
		name
		falcon    bird  389.0     fly
		parrot    bird   24.0     fly
		lion    mammal   80.5     run
		monkey  mammal    NaN    jump
		
		When the index is inserted under another level, we can specify under
		which one with the parameter `col_fill`:
		
		>>> df.reset_index(level='class', col_level=1, col_fill='species')
		              species  speed species
		                class    max    type
		name
		falcon           bird  389.0     fly
		parrot           bird   24.0     fly
		lion           mammal   80.5     run
		monkey         mammal    NaN    jump
		
		If we specify a nonexistent level for `col_fill`, it is created:
		
		>>> df.reset_index(level='class', col_level=1, col_fill='genus')
		                genus  speed species
		                class    max    type
		name
		falcon           bird  389.0     fly
		parrot           bird   24.0     fly
		lion           mammal   80.5     run
		monkey         mammal    NaN    jump
	**/
	public function reset_index(?level:Dynamic, ?drop:Dynamic, ?inplace:Dynamic, ?col_level:Dynamic, ?col_fill:Dynamic):pandas.DataFrame;
	/**
		Integer division of dataframe and other, element-wise (binary operator `rfloordiv`).
		
		Equivalent to ``other // dataframe``, but with support to substitute a fill_value for
		missing data in one of the inputs.
		
		Parameters
		----------
		other : Series, DataFrame, or constant
		axis : {0, 1, 'index', 'columns'}
		    For Series input, axis to match Series index on
		level : int or name
		    Broadcast across a level, matching Index values on the
		    passed MultiIndex level
		fill_value : None or float value, default None
		    Fill existing missing (NaN) values, and any new element needed for
		    successful DataFrame alignment, with this value before computation.
		    If data in both corresponding DataFrame locations is missing
		    the result will be missing
		
		Notes
		-----
		Mismatched indices will be unioned together
		
		Returns
		-------
		result : DataFrame
		
		Examples
		--------
		None
		
		See also
		--------
		DataFrame.floordiv
	**/
	public function rfloordiv(other:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?fill_value:Dynamic):pandas.DataFrame;
	/**
		Modulo of dataframe and other, element-wise (binary operator `rmod`).
		
		Equivalent to ``other % dataframe``, but with support to substitute a fill_value for
		missing data in one of the inputs.
		
		Parameters
		----------
		other : Series, DataFrame, or constant
		axis : {0, 1, 'index', 'columns'}
		    For Series input, axis to match Series index on
		level : int or name
		    Broadcast across a level, matching Index values on the
		    passed MultiIndex level
		fill_value : None or float value, default None
		    Fill existing missing (NaN) values, and any new element needed for
		    successful DataFrame alignment, with this value before computation.
		    If data in both corresponding DataFrame locations is missing
		    the result will be missing
		
		Notes
		-----
		Mismatched indices will be unioned together
		
		Returns
		-------
		result : DataFrame
		
		Examples
		--------
		None
		
		See also
		--------
		DataFrame.mod
	**/
	public function rmod(other:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?fill_value:Dynamic):pandas.DataFrame;
	/**
		Multiplication of dataframe and other, element-wise (binary operator `rmul`).
		
		Equivalent to ``other * dataframe``, but with support to substitute a fill_value for
		missing data in one of the inputs.
		
		Parameters
		----------
		other : Series, DataFrame, or constant
		axis : {0, 1, 'index', 'columns'}
		    For Series input, axis to match Series index on
		level : int or name
		    Broadcast across a level, matching Index values on the
		    passed MultiIndex level
		fill_value : None or float value, default None
		    Fill existing missing (NaN) values, and any new element needed for
		    successful DataFrame alignment, with this value before computation.
		    If data in both corresponding DataFrame locations is missing
		    the result will be missing
		
		Notes
		-----
		Mismatched indices will be unioned together
		
		Returns
		-------
		result : DataFrame
		
		Examples
		--------
		None
		
		See also
		--------
		DataFrame.mul
	**/
	public function rmul(other:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?fill_value:Dynamic):pandas.DataFrame;
	/**
		Provides rolling window calculations.
		
		.. versionadded:: 0.18.0
		
		Parameters
		----------
		window : int, or offset
		    Size of the moving window. This is the number of observations used for
		    calculating the statistic. Each window will be a fixed size.
		
		    If its an offset then this will be the time period of each window. Each
		    window will be a variable sized based on the observations included in
		    the time-period. This is only valid for datetimelike indexes. This is
		    new in 0.19.0
		min_periods : int, default None
		    Minimum number of observations in window required to have a value
		    (otherwise result is NA). For a window that is specified by an offset,
		    this will default to 1.
		center : boolean, default False
		    Set the labels at the center of the window.
		win_type : string, default None
		    Provide a window type. If ``None``, all points are evenly weighted.
		    See the notes below for further information.
		on : string, optional
		    For a DataFrame, column on which to calculate
		    the rolling window, rather than the index
		closed : string, default None
		    Make the interval closed on the 'right', 'left', 'both' or
		    'neither' endpoints.
		    For offset-based windows, it defaults to 'right'.
		    For fixed windows, defaults to 'both'. Remaining cases not implemented
		    for fixed windows.
		
		    .. versionadded:: 0.20.0
		
		axis : int or string, default 0
		
		Returns
		-------
		a Window or Rolling sub-classed for the particular operation
		
		Examples
		--------
		
		>>> df = pd.DataFrame({'B': [0, 1, 2, np.nan, 4]})
		>>> df
		     B
		0  0.0
		1  1.0
		2  2.0
		3  NaN
		4  4.0
		
		Rolling sum with a window length of 2, using the 'triang'
		window type.
		
		>>> df.rolling(2, win_type='triang').sum()
		     B
		0  NaN
		1  1.0
		2  2.5
		3  NaN
		4  NaN
		
		Rolling sum with a window length of 2, min_periods defaults
		to the window length.
		
		>>> df.rolling(2).sum()
		     B
		0  NaN
		1  1.0
		2  3.0
		3  NaN
		4  NaN
		
		Same as above, but explicitly set the min_periods
		
		>>> df.rolling(2, min_periods=1).sum()
		     B
		0  0.0
		1  1.0
		2  3.0
		3  2.0
		4  4.0
		
		A ragged (meaning not-a-regular frequency), time-indexed DataFrame
		
		>>> df = pd.DataFrame({'B': [0, 1, 2, np.nan, 4]},
		...                   index = [pd.Timestamp('20130101 09:00:00'),
		...                            pd.Timestamp('20130101 09:00:02'),
		...                            pd.Timestamp('20130101 09:00:03'),
		...                            pd.Timestamp('20130101 09:00:05'),
		...                            pd.Timestamp('20130101 09:00:06')])
		
		>>> df
		                       B
		2013-01-01 09:00:00  0.0
		2013-01-01 09:00:02  1.0
		2013-01-01 09:00:03  2.0
		2013-01-01 09:00:05  NaN
		2013-01-01 09:00:06  4.0
		
		
		Contrasting to an integer rolling window, this will roll a variable
		length window corresponding to the time period.
		The default for min_periods is 1.
		
		>>> df.rolling('2s').sum()
		                       B
		2013-01-01 09:00:00  0.0
		2013-01-01 09:00:02  1.0
		2013-01-01 09:00:03  3.0
		2013-01-01 09:00:05  NaN
		2013-01-01 09:00:06  4.0
		
		Notes
		-----
		By default, the result is set to the right edge of the window. This can be
		changed to the center of the window by setting ``center=True``.
		
		To learn more about the offsets & frequency strings, please see `this link
		<http://pandas.pydata.org/pandas-docs/stable/timeseries.html#offset-aliases>`__.
		
		The recognized win_types are:
		
		* ``boxcar``
		* ``triang``
		* ``blackman``
		* ``hamming``
		* ``bartlett``
		* ``parzen``
		* ``bohman``
		* ``blackmanharris``
		* ``nuttall``
		* ``barthann``
		* ``kaiser`` (needs beta)
		* ``gaussian`` (needs std)
		* ``general_gaussian`` (needs power, width)
		* ``slepian`` (needs width).
		
		If ``win_type=None`` all points are evenly weighted. To learn more about
		different window types see `scipy.signal window functions
		<https://docs.scipy.org/doc/scipy/reference/signal.html#window-functions>`__.
		
		See Also
		--------
		expanding : Provides expanding transformations.
		ewm : Provides exponential weighted functions
	**/
	public function rolling(window:Dynamic, ?min_periods:Dynamic, ?center:Dynamic, ?win_type:Dynamic, ?on:Dynamic, ?axis:Dynamic, ?closed:Dynamic):Dynamic;
	/**
		Round a DataFrame to a variable number of decimal places.
		
		Parameters
		----------
		decimals : int, dict, Series
		    Number of decimal places to round each column to. If an int is
		    given, round each column to the same number of places.
		    Otherwise dict and Series round to variable numbers of places.
		    Column names should be in the keys if `decimals` is a
		    dict-like, or in the index if `decimals` is a Series. Any
		    columns not included in `decimals` will be left as is. Elements
		    of `decimals` which are not columns of the input will be
		    ignored.
		
		Examples
		--------
		>>> df = pd.DataFrame(np.random.random([3, 3]),
		...     columns=['A', 'B', 'C'], index=['first', 'second', 'third'])
		>>> df
		               A         B         C
		first   0.028208  0.992815  0.173891
		second  0.038683  0.645646  0.577595
		third   0.877076  0.149370  0.491027
		>>> df.round(2)
		           A     B     C
		first   0.03  0.99  0.17
		second  0.04  0.65  0.58
		third   0.88  0.15  0.49
		>>> df.round({'A': 1, 'C': 2})
		          A         B     C
		first   0.0  0.992815  0.17
		second  0.0  0.645646  0.58
		third   0.9  0.149370  0.49
		>>> decimals = pd.Series([1, 0, 2], index=['A', 'B', 'C'])
		>>> df.round(decimals)
		          A  B     C
		first   0.0  1  0.17
		second  0.0  1  0.58
		third   0.9  0  0.49
		
		Returns
		-------
		DataFrame object
		
		See Also
		--------
		numpy.around
		Series.round
	**/
	public function round(?decimals:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Exponential power of dataframe and other, element-wise (binary operator `rpow`).
		
		Equivalent to ``other ** dataframe``, but with support to substitute a fill_value for
		missing data in one of the inputs.
		
		Parameters
		----------
		other : Series, DataFrame, or constant
		axis : {0, 1, 'index', 'columns'}
		    For Series input, axis to match Series index on
		level : int or name
		    Broadcast across a level, matching Index values on the
		    passed MultiIndex level
		fill_value : None or float value, default None
		    Fill existing missing (NaN) values, and any new element needed for
		    successful DataFrame alignment, with this value before computation.
		    If data in both corresponding DataFrame locations is missing
		    the result will be missing
		
		Notes
		-----
		Mismatched indices will be unioned together
		
		Returns
		-------
		result : DataFrame
		
		Examples
		--------
		None
		
		See also
		--------
		DataFrame.pow
	**/
	public function rpow(other:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?fill_value:Dynamic):pandas.DataFrame;
	/**
		Subtraction of dataframe and other, element-wise (binary operator `rsub`).
		
		Equivalent to ``other - dataframe``, but with support to substitute a fill_value for
		missing data in one of the inputs.
		
		Parameters
		----------
		other : Series, DataFrame, or constant
		axis : {0, 1, 'index', 'columns'}
		    For Series input, axis to match Series index on
		level : int or name
		    Broadcast across a level, matching Index values on the
		    passed MultiIndex level
		fill_value : None or float value, default None
		    Fill existing missing (NaN) values, and any new element needed for
		    successful DataFrame alignment, with this value before computation.
		    If data in both corresponding DataFrame locations is missing
		    the result will be missing
		
		Notes
		-----
		Mismatched indices will be unioned together
		
		Returns
		-------
		result : DataFrame
		
		Examples
		--------
		
		>>> a = pd.DataFrame([2, 1, 1, np.nan], index=['a', 'b', 'c', 'd'],
		...                  columns=['one'])
		>>> a
		   one
		a  2.0
		b  1.0
		c  1.0
		d  NaN
		>>> b = pd.DataFrame(dict(one=[1, np.nan, 1, np.nan],
		...                       two=[3, 2, np.nan, 2]),
		...                  index=['a', 'b', 'd', 'e'])
		>>> b
		   one  two
		a  1.0  3.0
		b  NaN  2.0
		d  1.0  NaN
		e  NaN  2.0
		>>> a.sub(b, fill_value=0)
		   one  two
		a  1.0  -3.0
		b  1.0  -2.0
		c  1.0  NaN
		d  -1.0  NaN
		e  NaN  -2.0
		
		
		See also
		--------
		DataFrame.sub
	**/
	public function rsub(other:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?fill_value:Dynamic):pandas.DataFrame;
	/**
		Floating division of dataframe and other, element-wise (binary operator `rtruediv`).
		
		Equivalent to ``other / dataframe``, but with support to substitute a fill_value for
		missing data in one of the inputs.
		
		Parameters
		----------
		other : Series, DataFrame, or constant
		axis : {0, 1, 'index', 'columns'}
		    For Series input, axis to match Series index on
		level : int or name
		    Broadcast across a level, matching Index values on the
		    passed MultiIndex level
		fill_value : None or float value, default None
		    Fill existing missing (NaN) values, and any new element needed for
		    successful DataFrame alignment, with this value before computation.
		    If data in both corresponding DataFrame locations is missing
		    the result will be missing
		
		Notes
		-----
		Mismatched indices will be unioned together
		
		Returns
		-------
		result : DataFrame
		
		Examples
		--------
		None
		
		See also
		--------
		DataFrame.truediv
	**/
	public function rtruediv(other:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?fill_value:Dynamic):pandas.DataFrame;
	/**
		Return a random sample of items from an axis of object.
		
		You can use `random_state` for reproducibility.
		
		Parameters
		----------
		n : int, optional
		    Number of items from axis to return. Cannot be used with `frac`.
		    Default = 1 if `frac` = None.
		frac : float, optional
		    Fraction of axis items to return. Cannot be used with `n`.
		replace : boolean, optional
		    Sample with or without replacement. Default = False.
		weights : str or ndarray-like, optional
		    Default 'None' results in equal probability weighting.
		    If passed a Series, will align with target object on index. Index
		    values in weights not found in sampled object will be ignored and
		    index values in sampled object not in weights will be assigned
		    weights of zero.
		    If called on a DataFrame, will accept the name of a column
		    when axis = 0.
		    Unless weights are a Series, weights must be same length as axis
		    being sampled.
		    If weights do not sum to 1, they will be normalized to sum to 1.
		    Missing values in the weights column will be treated as zero.
		    inf and -inf values not allowed.
		random_state : int or numpy.random.RandomState, optional
		    Seed for the random number generator (if int), or numpy RandomState
		    object.
		axis : int or string, optional
		    Axis to sample. Accepts axis number or name. Default is stat axis
		    for given data type (0 for Series and DataFrames, 1 for Panels).
		
		Returns
		-------
		A new object of same type as caller.
		
		Examples
		--------
		Generate an example ``Series`` and ``DataFrame``:
		
		>>> s = pd.Series(np.random.randn(50))
		>>> s.head()
		0   -0.038497
		1    1.820773
		2   -0.972766
		3   -1.598270
		4   -1.095526
		dtype: float64
		>>> df = pd.DataFrame(np.random.randn(50, 4), columns=list('ABCD'))
		>>> df.head()
		          A         B         C         D
		0  0.016443 -2.318952 -0.566372 -1.028078
		1 -1.051921  0.438836  0.658280 -0.175797
		2 -1.243569 -0.364626 -0.215065  0.057736
		3  1.768216  0.404512 -0.385604 -1.457834
		4  1.072446 -1.137172  0.314194 -0.046661
		
		Next extract a random sample from both of these objects...
		
		3 random elements from the ``Series``:
		
		>>> s.sample(n=3)
		27   -0.994689
		55   -1.049016
		67   -0.224565
		dtype: float64
		
		And a random 10% of the ``DataFrame`` with replacement:
		
		>>> df.sample(frac=0.1, replace=True)
		           A         B         C         D
		35  1.981780  0.142106  1.817165 -0.290805
		49 -1.336199 -0.448634 -0.789640  0.217116
		40  0.823173 -0.078816  1.009536  1.015108
		15  1.421154 -0.055301 -1.922594 -0.019696
		6  -0.148339  0.832938  1.787600 -1.383767
		
		You can use `random state` for reproducibility:
		
		>>> df.sample(random_state=1)
		A         B         C         D
		37 -2.027662  0.103611  0.237496 -0.165867
		43 -0.259323 -0.583426  1.516140 -0.479118
		12 -1.686325 -0.579510  0.985195 -0.460286
		8   1.167946  0.429082  1.215742 -1.636041
		9   1.197475 -0.864188  1.554031 -1.505264
	**/
	public function sample(?n:Dynamic, ?frac:Dynamic, ?replace:Dynamic, ?weights:Dynamic, ?random_state:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Return data corresponding to axis labels matching criteria
		
		.. deprecated:: 0.21.0
		    Use df.loc[df.index.map(crit)] to select via labels
		
		Parameters
		----------
		crit : function
		    To be called on each index (label). Should return True or False
		axis : int
		
		Returns
		-------
		selection : type of caller
	**/
	public function select(crit:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Return a subset of the DataFrame's columns based on the column dtypes.
		
		Parameters
		----------
		include, exclude : scalar or list-like
		    A selection of dtypes or strings to be included/excluded. At least
		    one of these parameters must be supplied.
		
		Raises
		------
		ValueError
		    * If both of ``include`` and ``exclude`` are empty
		    * If ``include`` and ``exclude`` have overlapping elements
		    * If any kind of string dtype is passed in.
		
		Returns
		-------
		subset : DataFrame
		    The subset of the frame including the dtypes in ``include`` and
		    excluding the dtypes in ``exclude``.
		
		Notes
		-----
		* To select all *numeric* types, use ``np.number`` or ``'number'``
		* To select strings you must use the ``object`` dtype, but note that
		  this will return *all* object dtype columns
		* See the `numpy dtype hierarchy
		  <http://docs.scipy.org/doc/numpy/reference/arrays.scalars.html>`__
		* To select datetimes, use ``np.datetime64``, ``'datetime'`` or
		  ``'datetime64'``
		* To select timedeltas, use ``np.timedelta64``, ``'timedelta'`` or
		  ``'timedelta64'``
		* To select Pandas categorical dtypes, use ``'category'``
		* To select Pandas datetimetz dtypes, use ``'datetimetz'`` (new in
		  0.20.0) or ``'datetime64[ns, tz]'``
		
		Examples
		--------
		>>> df = pd.DataFrame({'a': [1, 2] * 3,
		...                    'b': [True, False] * 3,
		...                    'c': [1.0, 2.0] * 3})
		>>> df
		        a      b  c
		0       1   True  1.0
		1       2  False  2.0
		2       1   True  1.0
		3       2  False  2.0
		4       1   True  1.0
		5       2  False  2.0
		
		>>> df.select_dtypes(include='bool')
		   b
		0  True
		1  False
		2  True
		3  False
		4  True
		5  False
		
		>>> df.select_dtypes(include=['float64'])
		   c
		0  1.0
		1  2.0
		2  1.0
		3  2.0
		4  1.0
		5  2.0
		
		>>> df.select_dtypes(exclude=['int'])
		       b    c
		0   True  1.0
		1  False  2.0
		2   True  1.0
		3  False  2.0
		4   True  1.0
		5  False  2.0
	**/
	public function select_dtypes(?include:Dynamic, ?exclude:Dynamic):pandas.DataFrame;
	/**
		Return unbiased standard error of the mean over requested axis.
		
		Normalized by N-1 by default. This can be changed using the ddof argument
		
		Parameters
		----------
		axis : {index (0), columns (1)}
		skipna : boolean, default True
		    Exclude NA/null values. If an entire row/column is NA, the result
		    will be NA
		level : int or level name, default None
		    If the axis is a MultiIndex (hierarchical), count along a
		    particular level, collapsing into a Series
		ddof : int, default 1
		    Delta Degrees of Freedom. The divisor used in calculations is N - ddof,
		    where N represents the number of elements.
		numeric_only : boolean, default None
		    Include only float, int, boolean columns. If None, will attempt to use
		    everything, then use only numeric data. Not implemented for Series.
		
		Returns
		-------
		sem : Series or DataFrame (if level specified)
	**/
	public function sem(?axis:Dynamic, ?skipna:Dynamic, ?level:Dynamic, ?ddof:Dynamic, ?numeric_only:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Assign desired index to given axis.
		
		Indexes for column or row labels can be changed by assigning
		a list-like or Index.
		
		.. versionchanged:: 0.21.0
		
		   The signature is now `labels` and `axis`, consistent with
		   the rest of pandas API. Previously, the `axis` and `labels`
		   arguments were respectively the first and second positional
		   arguments.
		
		Parameters
		----------
		labels : list-like, Index
		    The values for the new index.
		
		axis : {0 or 'index', 1 or 'columns'}, default 0
		    The axis to update. The value 0 identifies the rows, and 1
		    identifies the columns.
		
		inplace : boolean, default None
		    Whether to return a new %(klass)s instance.
		
		    .. warning::
		
		       ``inplace=None`` currently falls back to to True, but in a
		       future version, will default to False. Use inplace=True
		       explicitly rather than relying on the default.
		
		Returns
		-------
		renamed : %(klass)s or None
		    An object of same type as caller if inplace=False, None otherwise.
		
		See Also
		--------
		pandas.DataFrame.rename_axis : Alter the name of the index or columns.
		
		Examples
		--------
		**Series**
		
		>>> s = pd.Series([1, 2, 3])
		>>> s
		0    1
		1    2
		2    3
		dtype: int64
		
		>>> s.set_axis(['a', 'b', 'c'], axis=0, inplace=False)
		a    1
		b    2
		c    3
		dtype: int64
		
		The original object is not modified.
		
		>>> s
		0    1
		1    2
		2    3
		dtype: int64
		
		**DataFrame**
		
		>>> df = pd.DataFrame({"A": [1, 2, 3], "B": [4, 5, 6]})
		
		Change the row labels.
		
		>>> df.set_axis(['a', 'b', 'c'], axis='index', inplace=False)
		   A  B
		a  1  4
		b  2  5
		c  3  6
		
		Change the column labels.
		
		>>> df.set_axis(['I', 'II'], axis='columns', inplace=False)
		   I  II
		0  1   4
		1  2   5
		2  3   6
		
		Now, update the labels inplace.
		
		>>> df.set_axis(['i', 'ii'], axis='columns', inplace=True)
		>>> df
		   i  ii
		0  1   4
		1  2   5
		2  3   6
	**/
	public function set_axis(labels:Dynamic, ?axis:Dynamic, ?inplace:Dynamic):Dynamic;
	/**
		Set the DataFrame index (row labels) using one or more existing
		columns. By default yields a new object.
		
		Parameters
		----------
		keys : column label or list of column labels / arrays
		drop : boolean, default True
		    Delete columns to be used as the new index
		append : boolean, default False
		    Whether to append columns to existing index
		inplace : boolean, default False
		    Modify the DataFrame in place (do not create a new object)
		verify_integrity : boolean, default False
		    Check the new index for duplicates. Otherwise defer the check until
		    necessary. Setting to False will improve the performance of this
		    method
		
		Examples
		--------
		>>> df = pd.DataFrame({'month': [1, 4, 7, 10],
		...                    'year': [2012, 2014, 2013, 2014],
		...                    'sale':[55, 40, 84, 31]})
		   month  sale  year
		0  1      55    2012
		1  4      40    2014
		2  7      84    2013
		3  10     31    2014
		
		Set the index to become the 'month' column:
		
		>>> df.set_index('month')
		       sale  year
		month
		1      55    2012
		4      40    2014
		7      84    2013
		10     31    2014
		
		Create a multi-index using columns 'year' and 'month':
		
		>>> df.set_index(['year', 'month'])
		            sale
		year  month
		2012  1     55
		2014  4     40
		2013  7     84
		2014  10    31
		
		Create a multi-index using a set of values and a column:
		
		>>> df.set_index([[1, 2, 3, 4], 'year'])
		         month  sale
		   year
		1  2012  1      55
		2  2014  4      40
		3  2013  7      84
		4  2014  10     31
		
		Returns
		-------
		dataframe : DataFrame
	**/
	public function set_index(keys:Dynamic, ?drop:Dynamic, ?append:Dynamic, ?inplace:Dynamic, ?verify_integrity:Dynamic):pandas.DataFrame;
	/**
		Put single value at passed column and index
		
		.. deprecated:: 0.21.0
		    Use .at[] or .iat[] accessors instead.
		
		Parameters
		----------
		index : row label
		col : column label
		value : scalar value
		takeable : interpret the index/col as indexers, default False
		
		Returns
		-------
		frame : DataFrame
		    If label pair is contained, will be reference to calling DataFrame,
		    otherwise a new object
	**/
	public function set_value(index:Dynamic, col:Dynamic, value:Dynamic, ?takeable:Dynamic):pandas.DataFrame;
	/**
		Return a tuple representing the dimensionality of the DataFrame.
		
		See Also
		--------
		ndarray.shape
		
		Examples
		--------
		>>> df = pd.DataFrame({'col1': [1, 2], 'col2': [3, 4]})
		>>> df.shape
		(2, 2)
		
		>>> df = pd.DataFrame({'col1': [1, 2], 'col2': [3, 4],
		...                    'col3': [5, 6]})
		>>> df.shape
		(2, 3)
	**/
	public var shape : Dynamic;
	/**
		Shift index by desired number of periods with an optional time freq
		
		Parameters
		----------
		periods : int
		    Number of periods to move, can be positive or negative
		freq : DateOffset, timedelta, or time rule string, optional
		    Increment to use from the tseries module or time rule (e.g. 'EOM').
		    See Notes.
		axis : {0 or 'index', 1 or 'columns'}
		
		Notes
		-----
		If freq is specified then the index values are shifted but the data
		is not realigned. That is, use freq if you would like to extend the
		index when shifting and preserve the original data.
		
		Returns
		-------
		shifted : DataFrame
	**/
	public function shift(?periods:Dynamic, ?freq:Dynamic, ?axis:Dynamic):pandas.DataFrame;
	/**
		Return an int representing the number of elements in this object.
		
		Return the number of rows if Series. Otherwise return the number of
		rows times number of columns if DataFrame.
		
		See Also
		--------
		ndarray.size
		
		Examples
		--------
		>>> s = pd.Series({'a': 1, 'b': 2, 'c': 3})
		>>> s.size
		3
		
		>>> df = pd.DataFrame({'col1': [1, 2], 'col2': [3, 4]})
		>>> df.size
		4
	**/
	public var size : Dynamic;
	/**
		Return unbiased skew over requested axis
		Normalized by N-1
		
		Parameters
		----------
		axis : {index (0), columns (1)}
		skipna : boolean, default True
		    Exclude NA/null values when computing the result.
		level : int or level name, default None
		    If the axis is a MultiIndex (hierarchical), count along a
		    particular level, collapsing into a Series
		numeric_only : boolean, default None
		    Include only float, int, boolean columns. If None, will attempt to use
		    everything, then use only numeric data. Not implemented for Series.
		
		Returns
		-------
		skew : Series or DataFrame (if level specified)
	**/
	public function skew(?axis:Dynamic, ?skipna:Dynamic, ?level:Dynamic, ?numeric_only:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Equivalent to `shift` without copying data. The shifted data will
		not include the dropped periods and the shifted axis will be smaller
		than the original.
		
		Parameters
		----------
		periods : int
		    Number of periods to move, can be positive or negative
		
		Notes
		-----
		While the `slice_shift` is faster than `shift`, you may pay for it
		later during alignment.
		
		Returns
		-------
		shifted : same type as caller
	**/
	public function slice_shift(?periods:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Sort object by labels (along an axis)
		
		Parameters
		----------
		axis : index, columns to direct sorting
		level : int or level name or list of ints or list of level names
		    if not None, sort on values in specified index level(s)
		ascending : boolean, default True
		    Sort ascending vs. descending
		inplace : bool, default False
		    if True, perform operation in-place
		kind : {'quicksort', 'mergesort', 'heapsort'}, default 'quicksort'
		     Choice of sorting algorithm. See also ndarray.np.sort for more
		     information.  `mergesort` is the only stable algorithm. For
		     DataFrames, this option is only applied when sorting on a single
		     column or label.
		na_position : {'first', 'last'}, default 'last'
		     `first` puts NaNs at the beginning, `last` puts NaNs at the end.
		     Not implemented for MultiIndex.
		sort_remaining : bool, default True
		    if true and sorting by level and index is multilevel, sort by other
		    levels too (in order) after sorting by specified level
		
		Returns
		-------
		sorted_obj : DataFrame
	**/
	public function sort_index(?axis:Dynamic, ?level:Dynamic, ?ascending:Dynamic, ?inplace:Dynamic, ?kind:Dynamic, ?na_position:Dynamic, ?sort_remaining:Dynamic, ?by:Dynamic):Dynamic;
	/**
		Sort by the values along either axis
		
		Parameters
		----------
		by : str or list of str
		    Name or list of names to sort by.
		
		    - if `axis` is 0 or `'index'` then `by` may contain index
		      levels and/or column labels
		    - if `axis` is 1 or `'columns'` then `by` may contain column
		      levels and/or index labels
		
		    .. versionchanged:: 0.23.0
		       Allow specifying index or column level names.
		axis : {0 or 'index', 1 or 'columns'}, default 0
		     Axis to be sorted
		ascending : bool or list of bool, default True
		     Sort ascending vs. descending. Specify list for multiple sort
		     orders.  If this is a list of bools, must match the length of
		     the by.
		inplace : bool, default False
		     if True, perform operation in-place
		kind : {'quicksort', 'mergesort', 'heapsort'}, default 'quicksort'
		     Choice of sorting algorithm. See also ndarray.np.sort for more
		     information.  `mergesort` is the only stable algorithm. For
		     DataFrames, this option is only applied when sorting on a single
		     column or label.
		na_position : {'first', 'last'}, default 'last'
		     `first` puts NaNs at the beginning, `last` puts NaNs at the end
		
		Returns
		-------
		sorted_obj : DataFrame
		
		Examples
		--------
		>>> df = pd.DataFrame({
		...     'col1' : ['A', 'A', 'B', np.nan, 'D', 'C'],
		...     'col2' : [2, 1, 9, 8, 7, 4],
		...     'col3': [0, 1, 9, 4, 2, 3],
		... })
		>>> df
		    col1 col2 col3
		0   A    2    0
		1   A    1    1
		2   B    9    9
		3   NaN  8    4
		4   D    7    2
		5   C    4    3
		
		Sort by col1
		
		>>> df.sort_values(by=['col1'])
		    col1 col2 col3
		0   A    2    0
		1   A    1    1
		2   B    9    9
		5   C    4    3
		4   D    7    2
		3   NaN  8    4
		
		Sort by multiple columns
		
		>>> df.sort_values(by=['col1', 'col2'])
		    col1 col2 col3
		1   A    1    1
		0   A    2    0
		2   B    9    9
		5   C    4    3
		4   D    7    2
		3   NaN  8    4
		
		Sort Descending
		
		>>> df.sort_values(by='col1', ascending=False)
		    col1 col2 col3
		4   D    7    2
		5   C    4    3
		2   B    9    9
		0   A    2    0
		1   A    1    1
		3   NaN  8    4
		
		Putting NAs first
		
		>>> df.sort_values(by='col1', ascending=False, na_position='first')
		    col1 col2 col3
		3   NaN  8    4
		4   D    7    2
		5   C    4    3
		2   B    9    9
		0   A    2    0
		1   A    1    1
	**/
	public function sort_values(by:Dynamic, ?axis:Dynamic, ?ascending:Dynamic, ?inplace:Dynamic, ?kind:Dynamic, ?na_position:Dynamic):Dynamic;
	/**
		Sort multilevel index by chosen axis and primary level. Data will be
		lexicographically sorted by the chosen level followed by the other
		levels (in order).
		
		.. deprecated:: 0.20.0
		    Use :meth:`DataFrame.sort_index`
		
		
		Parameters
		----------
		level : int
		axis : {0 or 'index', 1 or 'columns'}, default 0
		ascending : boolean, default True
		inplace : boolean, default False
		    Sort the DataFrame without creating a new instance
		sort_remaining : boolean, default True
		    Sort by the other levels too.
		
		Returns
		-------
		sorted : DataFrame
		
		See Also
		--------
		DataFrame.sort_index(level=...)
	**/
	public function sortlevel(?level:Dynamic, ?axis:Dynamic, ?ascending:Dynamic, ?inplace:Dynamic, ?sort_remaining:Dynamic):pandas.DataFrame;
	/**
		Squeeze length 1 dimensions.
		
		Parameters
		----------
		axis : None, integer or string axis name, optional
		    The axis to squeeze if 1-sized.
		
		    .. versionadded:: 0.20.0
		
		Returns
		-------
		scalar if 1-sized, else original object
	**/
	public function squeeze(?axis:Dynamic):Dynamic;
	/**
		Stack the prescribed level(s) from columns to index.
		
		Return a reshaped DataFrame or Series having a multi-level
		index with one or more new inner-most levels compared to the current
		DataFrame. The new inner-most levels are created by pivoting the
		columns of the current dataframe:
		
		  - if the columns have a single level, the output is a Series;
		  - if the columns have multiple levels, the new index
		    level(s) is (are) taken from the prescribed level(s) and
		    the output is a DataFrame.
		
		The new index levels are sorted.
		
		Parameters
		----------
		level : int, str, list, default -1
		    Level(s) to stack from the column axis onto the index
		    axis, defined as one index or label, or a list of indices
		    or labels.
		dropna : bool, default True
		    Whether to drop rows in the resulting Frame/Series with
		    missing values. Stacking a column level onto the index
		    axis can create combinations of index and column values
		    that are missing from the original dataframe. See Examples
		    section.
		
		Returns
		-------
		DataFrame or Series
		    Stacked dataframe or series.
		
		See Also
		--------
		DataFrame.unstack : Unstack prescribed level(s) from index axis
		     onto column axis.
		DataFrame.pivot : Reshape dataframe from long format to wide
		     format.
		DataFrame.pivot_table : Create a spreadsheet-style pivot table
		     as a DataFrame.
		
		Notes
		-----
		The function is named by analogy with a collection of books
		being re-organised from being side by side on a horizontal
		position (the columns of the dataframe) to being stacked
		vertically on top of of each other (in the index of the
		dataframe).
		
		Examples
		--------
		**Single level columns**
		
		>>> df_single_level_cols = pd.DataFrame([[0, 1], [2, 3]],
		...                                     index=['cat', 'dog'],
		...                                     columns=['weight', 'height'])
		
		Stacking a dataframe with a single level column axis returns a Series:
		
		>>> df_single_level_cols
		     weight height
		cat       0      1
		dog       2      3
		>>> df_single_level_cols.stack()
		cat  weight    0
		     height    1
		dog  weight    2
		     height    3
		dtype: int64
		
		**Multi level columns: simple case**
		
		>>> multicol1 = pd.MultiIndex.from_tuples([('weight', 'kg'),
		...                                        ('weight', 'pounds')])
		>>> df_multi_level_cols1 = pd.DataFrame([[1, 2], [2, 4]],
		...                                     index=['cat', 'dog'],
		...                                     columns=multicol1)
		
		Stacking a dataframe with a multi-level column axis:
		
		>>> df_multi_level_cols1
		     weight
		         kg    pounds
		cat       1        2
		dog       2        4
		>>> df_multi_level_cols1.stack()
		            weight
		cat kg           1
		    pounds       2
		dog kg           2
		    pounds       4
		
		**Missing values**
		
		>>> multicol2 = pd.MultiIndex.from_tuples([('weight', 'kg'),
		...                                        ('height', 'm')])
		>>> df_multi_level_cols2 = pd.DataFrame([[1.0, 2.0], [3.0, 4.0]],
		...                                     index=['cat', 'dog'],
		...                                     columns=multicol2)
		
		It is common to have missing values when stacking a dataframe
		with multi-level columns, as the stacked dataframe typically
		has more values than the original dataframe. Missing values
		are filled with NaNs:
		
		>>> df_multi_level_cols2
		    weight height
		        kg      m
		cat    1.0    2.0
		dog    3.0    4.0
		>>> df_multi_level_cols2.stack()
		        height  weight
		cat kg     NaN     1.0
		    m      2.0     NaN
		dog kg     NaN     3.0
		    m      4.0     NaN
		
		**Prescribing the level(s) to be stacked**
		
		The first parameter controls which level or levels are stacked:
		
		>>> df_multi_level_cols2.stack(0)
		             kg    m
		cat height  NaN  2.0
		    weight  1.0  NaN
		dog height  NaN  4.0
		    weight  3.0  NaN
		>>> df_multi_level_cols2.stack([0, 1])
		cat  height  m     2.0
		     weight  kg    1.0
		dog  height  m     4.0
		     weight  kg    3.0
		dtype: float64
		
		**Dropping missing values**
		
		>>> df_multi_level_cols3 = pd.DataFrame([[None, 1.0], [2.0, 3.0]],
		...                                     index=['cat', 'dog'],
		...                                     columns=multicol2)
		
		Note that rows where all values are missing are dropped by
		default but this behaviour can be controlled via the dropna
		keyword parameter:
		
		>>> df_multi_level_cols3
		    weight height
		        kg      m
		cat    NaN    1.0
		dog    2.0    3.0
		>>> df_multi_level_cols3.stack(dropna=False)
		        height  weight
		cat kg     NaN     NaN
		    m      1.0     NaN
		dog kg     NaN     2.0
		    m      3.0     NaN
		>>> df_multi_level_cols3.stack(dropna=True)
		        height  weight
		cat m      1.0     NaN
		dog kg     NaN     2.0
		    m      3.0     NaN
	**/
	public function stack(?level:Dynamic, ?dropna:Dynamic):Dynamic;
	/**
		Return sample standard deviation over requested axis.
		
		Normalized by N-1 by default. This can be changed using the ddof argument
		
		Parameters
		----------
		axis : {index (0), columns (1)}
		skipna : boolean, default True
		    Exclude NA/null values. If an entire row/column is NA, the result
		    will be NA
		level : int or level name, default None
		    If the axis is a MultiIndex (hierarchical), count along a
		    particular level, collapsing into a Series
		ddof : int, default 1
		    Delta Degrees of Freedom. The divisor used in calculations is N - ddof,
		    where N represents the number of elements.
		numeric_only : boolean, default None
		    Include only float, int, boolean columns. If None, will attempt to use
		    everything, then use only numeric data. Not implemented for Series.
		
		Returns
		-------
		std : Series or DataFrame (if level specified)
	**/
	public function std(?axis:Dynamic, ?skipna:Dynamic, ?level:Dynamic, ?ddof:Dynamic, ?numeric_only:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Property returning a Styler object containing methods for
		building a styled HTML representation fo the DataFrame.
		
		See Also
		--------
		pandas.io.formats.style.Styler
	**/
	public var style : Dynamic;
	/**
		Subtraction of dataframe and other, element-wise (binary operator `sub`).
		
		Equivalent to ``dataframe - other``, but with support to substitute a fill_value for
		missing data in one of the inputs.
		
		Parameters
		----------
		other : Series, DataFrame, or constant
		axis : {0, 1, 'index', 'columns'}
		    For Series input, axis to match Series index on
		level : int or name
		    Broadcast across a level, matching Index values on the
		    passed MultiIndex level
		fill_value : None or float value, default None
		    Fill existing missing (NaN) values, and any new element needed for
		    successful DataFrame alignment, with this value before computation.
		    If data in both corresponding DataFrame locations is missing
		    the result will be missing
		
		Notes
		-----
		Mismatched indices will be unioned together
		
		Returns
		-------
		result : DataFrame
		
		Examples
		--------
		
		>>> a = pd.DataFrame([2, 1, 1, np.nan], index=['a', 'b', 'c', 'd'],
		...                  columns=['one'])
		>>> a
		   one
		a  2.0
		b  1.0
		c  1.0
		d  NaN
		>>> b = pd.DataFrame(dict(one=[1, np.nan, 1, np.nan],
		...                       two=[3, 2, np.nan, 2]),
		...                  index=['a', 'b', 'd', 'e'])
		>>> b
		   one  two
		a  1.0  3.0
		b  NaN  2.0
		d  1.0  NaN
		e  NaN  2.0
		>>> a.sub(b, fill_value=0)
		   one  two
		a  1.0  -3.0
		b  1.0  -2.0
		c  1.0  NaN
		d  -1.0  NaN
		e  NaN  -2.0
		
		
		See also
		--------
		DataFrame.rsub
	**/
	public function sub(other:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?fill_value:Dynamic):pandas.DataFrame;
	/**
		Subtraction of dataframe and other, element-wise (binary operator `sub`).
		
		Equivalent to ``dataframe - other``, but with support to substitute a fill_value for
		missing data in one of the inputs.
		
		Parameters
		----------
		other : Series, DataFrame, or constant
		axis : {0, 1, 'index', 'columns'}
		    For Series input, axis to match Series index on
		level : int or name
		    Broadcast across a level, matching Index values on the
		    passed MultiIndex level
		fill_value : None or float value, default None
		    Fill existing missing (NaN) values, and any new element needed for
		    successful DataFrame alignment, with this value before computation.
		    If data in both corresponding DataFrame locations is missing
		    the result will be missing
		
		Notes
		-----
		Mismatched indices will be unioned together
		
		Returns
		-------
		result : DataFrame
		
		Examples
		--------
		
		>>> a = pd.DataFrame([2, 1, 1, np.nan], index=['a', 'b', 'c', 'd'],
		...                  columns=['one'])
		>>> a
		   one
		a  2.0
		b  1.0
		c  1.0
		d  NaN
		>>> b = pd.DataFrame(dict(one=[1, np.nan, 1, np.nan],
		...                       two=[3, 2, np.nan, 2]),
		...                  index=['a', 'b', 'd', 'e'])
		>>> b
		   one  two
		a  1.0  3.0
		b  NaN  2.0
		d  1.0  NaN
		e  NaN  2.0
		>>> a.sub(b, fill_value=0)
		   one  two
		a  1.0  -3.0
		b  1.0  -2.0
		c  1.0  NaN
		d  -1.0  NaN
		e  NaN  -2.0
		
		
		See also
		--------
		DataFrame.rsub
	**/
	public function subtract(other:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?fill_value:Dynamic):pandas.DataFrame;
	/**
		Return the sum of the values for the requested axis
		
		Parameters
		----------
		axis : {index (0), columns (1)}
		skipna : boolean, default True
		    Exclude NA/null values when computing the result.
		level : int or level name, default None
		    If the axis is a MultiIndex (hierarchical), count along a
		    particular level, collapsing into a Series
		numeric_only : boolean, default None
		    Include only float, int, boolean columns. If None, will attempt to use
		    everything, then use only numeric data. Not implemented for Series.
		min_count : int, default 0
		    The required number of valid values to perform the operation. If fewer than
		    ``min_count`` non-NA values are present the result will be NA.
		
		    .. versionadded :: 0.22.0
		
		       Added with the default being 0. This means the sum of an all-NA
		       or empty Series is 0, and the product of an all-NA or empty
		       Series is 1.
		
		Returns
		-------
		sum : Series or DataFrame (if level specified)
		
		Examples
		--------
		By default, the sum of an empty or all-NA Series is ``0``.
		
		>>> pd.Series([]).sum()  # min_count=0 is the default
		0.0
		
		This can be controlled with the ``min_count`` parameter. For example, if
		you'd like the sum of an empty series to be NaN, pass ``min_count=1``.
		
		>>> pd.Series([]).sum(min_count=1)
		nan
		
		Thanks to the ``skipna`` parameter, ``min_count`` handles all-NA and
		empty series identically.
		
		>>> pd.Series([np.nan]).sum()
		0.0
		
		>>> pd.Series([np.nan]).sum(min_count=1)
		nan
	**/
	public function sum(?axis:Dynamic, ?skipna:Dynamic, ?level:Dynamic, ?numeric_only:Dynamic, ?min_count:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Interchange axes and swap values axes appropriately
		
		Returns
		-------
		y : same as input
	**/
	public function swapaxes(axis1:Dynamic, axis2:Dynamic, ?copy:Dynamic):Dynamic;
	/**
		Swap levels i and j in a MultiIndex on a particular axis
		
		Parameters
		----------
		i, j : int, string (can be mixed)
		    Level of index to be swapped. Can pass level name as string.
		
		Returns
		-------
		swapped : type of caller (new object)
		
		.. versionchanged:: 0.18.1
		
		   The indexes ``i`` and ``j`` are now optional, and default to
		   the two innermost levels of the index.
	**/
	public function swaplevel(?i:Dynamic, ?j:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Return the last `n` rows.
		
		This function returns last `n` rows from the object based on
		position. It is useful for quickly verifying data, for example,
		after sorting or appending rows.
		
		Parameters
		----------
		n : int, default 5
		    Number of rows to select.
		
		Returns
		-------
		type of caller
		    The last `n` rows of the caller object.
		
		See Also
		--------
		pandas.DataFrame.head : The first `n` rows of the caller object.
		
		Examples
		--------
		>>> df = pd.DataFrame({'animal':['alligator', 'bee', 'falcon', 'lion',
		...                    'monkey', 'parrot', 'shark', 'whale', 'zebra']})
		>>> df
		      animal
		0  alligator
		1        bee
		2     falcon
		3       lion
		4     monkey
		5     parrot
		6      shark
		7      whale
		8      zebra
		
		Viewing the last 5 lines
		
		>>> df.tail()
		   animal
		4  monkey
		5  parrot
		6   shark
		7   whale
		8   zebra
		
		Viewing the last `n` lines (three in this case)
		
		>>> df.tail(3)
		  animal
		6  shark
		7  whale
		8  zebra
	**/
	public function tail(?n:Dynamic):Dynamic;
	/**
		Return the elements in the given *positional* indices along an axis.
		
		This means that we are not indexing according to actual values in
		the index attribute of the object. We are indexing according to the
		actual position of the element in the object.
		
		Parameters
		----------
		indices : array-like
		    An array of ints indicating which positions to take.
		axis : {0 or 'index', 1 or 'columns', None}, default 0
		    The axis on which to select elements. ``0`` means that we are
		    selecting rows, ``1`` means that we are selecting columns.
		convert : bool, default True
		    Whether to convert negative indices into positive ones.
		    For example, ``-1`` would map to the ``len(axis) - 1``.
		    The conversions are similar to the behavior of indexing a
		    regular Python list.
		
		    .. deprecated:: 0.21.0
		       In the future, negative indices will always be converted.
		
		is_copy : bool, default True
		    Whether to return a copy of the original object or not.
		**kwargs
		    For compatibility with :meth:`numpy.take`. Has no effect on the
		    output.
		
		Returns
		-------
		taken : type of caller
		    An array-like containing the elements taken from the object.
		
		See Also
		--------
		DataFrame.loc : Select a subset of a DataFrame by labels.
		DataFrame.iloc : Select a subset of a DataFrame by positions.
		numpy.take : Take elements from an array along an axis.
		
		Examples
		--------
		>>> df = pd.DataFrame([('falcon', 'bird',    389.0),
		...                    ('parrot', 'bird',     24.0),
		...                    ('lion',   'mammal',   80.5),
		...                    ('monkey', 'mammal', np.nan)],
		...                    columns=['name', 'class', 'max_speed'],
		...                    index=[0, 2, 3, 1])
		>>> df
		     name   class  max_speed
		0  falcon    bird      389.0
		2  parrot    bird       24.0
		3    lion  mammal       80.5
		1  monkey  mammal        NaN
		
		Take elements at positions 0 and 3 along the axis 0 (default).
		
		Note how the actual indices selected (0 and 1) do not correspond to
		our selected indices 0 and 3. That's because we are selecting the 0th
		and 3rd rows, not rows whose indices equal 0 and 3.
		
		>>> df.take([0, 3])
		     name   class  max_speed
		0  falcon    bird      389.0
		1  monkey  mammal        NaN
		
		Take elements at indices 1 and 2 along the axis 1 (column selection).
		
		>>> df.take([1, 2], axis=1)
		    class  max_speed
		0    bird      389.0
		2    bird       24.0
		3  mammal       80.5
		1  mammal        NaN
		
		We may take elements using negative integers for positive indices,
		starting from the end of the object, just like with Python lists.
		
		>>> df.take([-1, -2])
		     name   class  max_speed
		1  monkey  mammal        NaN
		3    lion  mammal       80.5
	**/
	public function take(indices:Dynamic, ?axis:Dynamic, ?convert:Dynamic, ?is_copy:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Copy object to the system clipboard.
		
		Write a text representation of object to the system clipboard.
		This can be pasted into Excel, for example.
		
		Parameters
		----------
		excel : bool, default True
		    - True, use the provided separator, writing in a csv format for
		      allowing easy pasting into excel.
		    - False, write a string representation of the object to the
		      clipboard.
		
		sep : str, default ``'\t'``
		    Field delimiter.
		**kwargs
		    These parameters will be passed to DataFrame.to_csv.
		
		See Also
		--------
		DataFrame.to_csv : Write a DataFrame to a comma-separated values
		    (csv) file.
		read_clipboard : Read text from clipboard and pass to read_table.
		
		Notes
		-----
		Requirements for your platform.
		
		  - Linux : `xclip`, or `xsel` (with `gtk` or `PyQt4` modules)
		  - Windows : none
		  - OS X : none
		
		Examples
		--------
		Copy the contents of a DataFrame to the clipboard.
		
		>>> df = pd.DataFrame([[1, 2, 3], [4, 5, 6]], columns=['A', 'B', 'C'])
		>>> df.to_clipboard(sep=',')
		... # Wrote the following to the system clipboard:
		... # ,A,B,C
		... # 0,1,2,3
		... # 1,4,5,6
		
		We can omit the the index by passing the keyword `index` and setting
		it to false.
		
		>>> df.to_clipboard(sep=',', index=False)
		... # Wrote the following to the system clipboard:
		... # A,B,C
		... # 1,2,3
		... # 4,5,6
	**/
	public function to_clipboard(?excel:Dynamic, ?sep:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Write DataFrame to a comma-separated values (csv) file
		
		Parameters
		----------
		path_or_buf : string or file handle, default None
		    File path or object, if None is provided the result is returned as
		    a string.
		sep : character, default ','
		    Field delimiter for the output file.
		na_rep : string, default ''
		    Missing data representation
		float_format : string, default None
		    Format string for floating point numbers
		columns : sequence, optional
		    Columns to write
		header : boolean or list of string, default True
		    Write out the column names. If a list of strings is given it is
		    assumed to be aliases for the column names
		index : boolean, default True
		    Write row names (index)
		index_label : string or sequence, or False, default None
		    Column label for index column(s) if desired. If None is given, and
		    `header` and `index` are True, then the index names are used. A
		    sequence should be given if the DataFrame uses MultiIndex.  If
		    False do not print fields for index names. Use index_label=False
		    for easier importing in R
		mode : str
		    Python write mode, default 'w'
		encoding : string, optional
		    A string representing the encoding to use in the output file,
		    defaults to 'ascii' on Python 2 and 'utf-8' on Python 3.
		compression : string, optional
		    A string representing the compression to use in the output file.
		    Allowed values are 'gzip', 'bz2', 'zip', 'xz'. This input is only
		    used when the first argument is a filename.
		line_terminator : string, default ``'\n'``
		    The newline character or character sequence to use in the output
		    file
		quoting : optional constant from csv module
		    defaults to csv.QUOTE_MINIMAL. If you have set a `float_format`
		    then floats are converted to strings and thus csv.QUOTE_NONNUMERIC
		    will treat them as non-numeric
		quotechar : string (length 1), default '\"'
		    character used to quote fields
		doublequote : boolean, default True
		    Control quoting of `quotechar` inside a field
		escapechar : string (length 1), default None
		    character used to escape `sep` and `quotechar` when appropriate
		chunksize : int or None
		    rows to write at a time
		tupleize_cols : boolean, default False
		    .. deprecated:: 0.21.0
		       This argument will be removed and will always write each row
		       of the multi-index as a separate row in the CSV file.
		
		    Write MultiIndex columns as a list of tuples (if True) or in
		    the new, expanded format, where each MultiIndex column is a row
		    in the CSV (if False).
		date_format : string, default None
		    Format string for datetime objects
		decimal: string, default '.'
		    Character recognized as decimal separator. E.g. use ',' for
		    European data
	**/
	public function to_csv(?path_or_buf:Dynamic, ?sep:Dynamic, ?na_rep:Dynamic, ?float_format:Dynamic, ?columns:Dynamic, ?header:Dynamic, ?index:Dynamic, ?index_label:Dynamic, ?mode:Dynamic, ?encoding:Dynamic, ?compression:Dynamic, ?quoting:Dynamic, ?quotechar:Dynamic, ?line_terminator:Dynamic, ?chunksize:Dynamic, ?tupleize_cols:Dynamic, ?date_format:Dynamic, ?doublequote:Dynamic, ?escapechar:Dynamic, ?decimal:Dynamic):Dynamic;
	/**
		Return dense representation of NDFrame (as opposed to sparse)
	**/
	public function to_dense():Dynamic;
	/**
		Convert the DataFrame to a dictionary.
		
		The type of the key-value pairs can be customized with the parameters
		(see below).
		
		Parameters
		----------
		orient : str {'dict', 'list', 'series', 'split', 'records', 'index'}
		    Determines the type of the values of the dictionary.
		
		    - 'dict' (default) : dict like {column -> {index -> value}}
		    - 'list' : dict like {column -> [values]}
		    - 'series' : dict like {column -> Series(values)}
		    - 'split' : dict like
		      {'index' -> [index], 'columns' -> [columns], 'data' -> [values]}
		    - 'records' : list like
		      [{column -> value}, ... , {column -> value}]
		    - 'index' : dict like {index -> {column -> value}}
		
		    Abbreviations are allowed. `s` indicates `series` and `sp`
		    indicates `split`.
		
		into : class, default dict
		    The collections.Mapping subclass used for all Mappings
		    in the return value.  Can be the actual class or an empty
		    instance of the mapping type you want.  If you want a
		    collections.defaultdict, you must pass it initialized.
		
		    .. versionadded:: 0.21.0
		
		Returns
		-------
		result : collections.Mapping like {column -> {index -> value}}
		
		See Also
		--------
		DataFrame.from_dict: create a DataFrame from a dictionary
		DataFrame.to_json: convert a DataFrame to JSON format
		
		Examples
		--------
		>>> df = pd.DataFrame({'col1': [1, 2],
		...                    'col2': [0.5, 0.75]},
		...                   index=['a', 'b'])
		>>> df
		   col1  col2
		a     1   0.50
		b     2   0.75
		>>> df.to_dict()
		{'col1': {'a': 1, 'b': 2}, 'col2': {'a': 0.5, 'b': 0.75}}
		
		You can specify the return orientation.
		
		>>> df.to_dict('series')
		{'col1': a    1
		         b    2
		         Name: col1, dtype: int64,
		 'col2': a    0.50
		         b    0.75
		         Name: col2, dtype: float64}
		
		>>> df.to_dict('split')
		{'index': ['a', 'b'], 'columns': ['col1', 'col2'],
		 'data': [[1.0, 0.5], [2.0, 0.75]]}
		
		>>> df.to_dict('records')
		[{'col1': 1.0, 'col2': 0.5}, {'col1': 2.0, 'col2': 0.75}]
		
		>>> df.to_dict('index')
		{'a': {'col1': 1.0, 'col2': 0.5}, 'b': {'col1': 2.0, 'col2': 0.75}}
		
		You can also specify the mapping type.
		
		>>> from collections import OrderedDict, defaultdict
		>>> df.to_dict(into=OrderedDict)
		OrderedDict([('col1', OrderedDict([('a', 1), ('b', 2)])),
		             ('col2', OrderedDict([('a', 0.5), ('b', 0.75)]))])
		
		If you want a `defaultdict`, you need to initialize it:
		
		>>> dd = defaultdict(list)
		>>> df.to_dict('records', into=dd)
		[defaultdict(<class 'list'>, {'col1': 1.0, 'col2': 0.5}),
		 defaultdict(<class 'list'>, {'col1': 2.0, 'col2': 0.75})]
	**/
	public function to_dict(?orient:Dynamic, ?into:Dynamic):Dynamic;
	/**
		Write DataFrame to an excel sheet
		
		
		Parameters
		----------
		excel_writer : string or ExcelWriter object
		    File path or existing ExcelWriter
		sheet_name : string, default 'Sheet1'
		    Name of sheet which will contain DataFrame
		na_rep : string, default ''
		    Missing data representation
		float_format : string, default None
		    Format string for floating point numbers
		columns : sequence, optional
		    Columns to write
		header : boolean or list of string, default True
		    Write out the column names. If a list of strings is given it is
		    assumed to be aliases for the column names
		index : boolean, default True
		    Write row names (index)
		index_label : string or sequence, default None
		    Column label for index column(s) if desired. If None is given, and
		    `header` and `index` are True, then the index names are used. A
		    sequence should be given if the DataFrame uses MultiIndex.
		startrow :
		    upper left cell row to dump data frame
		startcol :
		    upper left cell column to dump data frame
		engine : string, default None
		    write engine to use - you can also set this via the options
		    ``io.excel.xlsx.writer``, ``io.excel.xls.writer``, and
		    ``io.excel.xlsm.writer``.
		merge_cells : boolean, default True
		    Write MultiIndex and Hierarchical Rows as merged cells.
		encoding: string, default None
		    encoding of the resulting excel file. Only necessary for xlwt,
		    other writers support unicode natively.
		inf_rep : string, default 'inf'
		    Representation for infinity (there is no native representation for
		    infinity in Excel)
		freeze_panes : tuple of integer (length 2), default None
		    Specifies the one-based bottommost row and rightmost column that
		    is to be frozen
		
		    .. versionadded:: 0.20.0
		
		Notes
		-----
		If passing an existing ExcelWriter object, then the sheet will be added
		to the existing workbook.  This can be used to save different
		DataFrames to one workbook:
		
		>>> writer = pd.ExcelWriter('output.xlsx')
		>>> df1.to_excel(writer,'Sheet1')
		>>> df2.to_excel(writer,'Sheet2')
		>>> writer.save()
		
		For compatibility with to_csv, to_excel serializes lists and dicts to
		strings before writing.
	**/
	public function to_excel(excel_writer:Dynamic, ?sheet_name:Dynamic, ?na_rep:Dynamic, ?float_format:Dynamic, ?columns:Dynamic, ?header:Dynamic, ?index:Dynamic, ?index_label:Dynamic, ?startrow:Dynamic, ?startcol:Dynamic, ?engine:Dynamic, ?merge_cells:Dynamic, ?encoding:Dynamic, ?inf_rep:Dynamic, ?verbose:Dynamic, ?freeze_panes:Dynamic):Dynamic;
	/**
		write out the binary feather-format for DataFrames
		
		.. versionadded:: 0.20.0
		
		Parameters
		----------
		fname : str
		    string file path
	**/
	public function to_feather(fname:Dynamic):Dynamic;
	/**
		Write a DataFrame to a Google BigQuery table.
		
		This function requires the `pandas-gbq package
		<https://pandas-gbq.readthedocs.io>`__.
		
		Authentication to the Google BigQuery service is via OAuth 2.0.
		
		- If ``private_key`` is provided, the library loads the JSON service
		  account credentials and uses those to authenticate.
		
		- If no ``private_key`` is provided, the library tries `application
		  default credentials`_.
		
		  .. _application default credentials:
		      https://cloud.google.com/docs/authentication/production#providing_credentials_to_your_application
		
		- If application default credentials are not found or cannot be used
		  with BigQuery, the library authenticates with user account
		  credentials. In this case, you will be asked to grant permissions
		  for product name 'pandas GBQ'.
		
		Parameters
		----------
		destination_table : str
		    Name of table to be written, in the form 'dataset.tablename'.
		project_id : str
		    Google BigQuery Account project ID.
		chunksize : int, optional
		    Number of rows to be inserted in each chunk from the dataframe.
		    Set to ``None`` to load the whole dataframe at once.
		reauth : bool, default False
		    Force Google BigQuery to reauthenticate the user. This is useful
		    if multiple accounts are used.
		if_exists : str, default 'fail'
		    Behavior when the destination table exists. Value can be one of:
		
		    ``'fail'``
		        If table exists, do nothing.
		    ``'replace'``
		        If table exists, drop it, recreate it, and insert data.
		    ``'append'``
		        If table exists, insert data. Create if does not exist.
		private_key : str, optional
		    Service account private key in JSON format. Can be file path
		    or string contents. This is useful for remote server
		    authentication (eg. Jupyter/IPython notebook on remote host).
		auth_local_webserver : bool, default False
		    Use the `local webserver flow`_ instead of the `console flow`_
		    when getting user credentials.
		
		    .. _local webserver flow:
		        http://google-auth-oauthlib.readthedocs.io/en/latest/reference/google_auth_oauthlib.flow.html#google_auth_oauthlib.flow.InstalledAppFlow.run_local_server
		    .. _console flow:
		        http://google-auth-oauthlib.readthedocs.io/en/latest/reference/google_auth_oauthlib.flow.html#google_auth_oauthlib.flow.InstalledAppFlow.run_console
		
		    *New in version 0.2.0 of pandas-gbq*.
		table_schema : list of dicts, optional
		    List of BigQuery table fields to which according DataFrame
		    columns conform to, e.g. ``[{'name': 'col1', 'type':
		    'STRING'},...]``. If schema is not provided, it will be
		    generated according to dtypes of DataFrame columns. See
		    BigQuery API documentation on available names of a field.
		
		    *New in version 0.3.1 of pandas-gbq*.
		verbose : boolean, deprecated
		    *Deprecated in Pandas-GBQ 0.4.0.* Use the `logging module
		    to adjust verbosity instead
		    <https://pandas-gbq.readthedocs.io/en/latest/intro.html#logging>`__.
		
		See Also
		--------
		pandas_gbq.to_gbq : This function in the pandas-gbq library.
		pandas.read_gbq : Read a DataFrame from Google BigQuery.
	**/
	public function to_gbq(destination_table:Dynamic, project_id:Dynamic, ?chunksize:Dynamic, ?verbose:Dynamic, ?reauth:Dynamic, ?if_exists:Dynamic, ?private_key:Dynamic, ?auth_local_webserver:Dynamic, ?table_schema:Dynamic):Dynamic;
	/**
		Write the contained data to an HDF5 file using HDFStore.
		
		Hierarchical Data Format (HDF) is self-describing, allowing an
		application to interpret the structure and contents of a file with
		no outside information. One HDF file can hold a mix of related objects
		which can be accessed as a group or as individual objects.
		
		In order to add another DataFrame or Series to an existing HDF file
		please use append mode and a different a key.
		
		For more information see the :ref:`user guide <io.hdf5>`.
		
		Parameters
		----------
		path_or_buf : str or pandas.HDFStore
		    File path or HDFStore object.
		key : str
		    Identifier for the group in the store.
		mode : {'a', 'w', 'r+'}, default 'a'
		    Mode to open file:
		
		    - 'w': write, a new file is created (an existing file with
		      the same name would be deleted).
		    - 'a': append, an existing file is opened for reading and
		      writing, and if the file does not exist it is created.
		    - 'r+': similar to 'a', but the file must already exist.
		format : {'fixed', 'table'}, default 'fixed'
		    Possible values:
		
		    - 'fixed': Fixed format. Fast writing/reading. Not-appendable,
		      nor searchable.
		    - 'table': Table format. Write as a PyTables Table structure
		      which may perform worse but allow more flexible operations
		      like searching / selecting subsets of the data.
		append : bool, default False
		    For Table formats, append the input data to the existing.
		data_columns :  list of columns or True, optional
		    List of columns to create as indexed data columns for on-disk
		    queries, or True to use all columns. By default only the axes
		    of the object are indexed. See :ref:`io.hdf5-query-data-columns`.
		    Applicable only to format='table'.
		complevel : {0-9}, optional
		    Specifies a compression level for data.
		    A value of 0 disables compression.
		complib : {'zlib', 'lzo', 'bzip2', 'blosc'}, default 'zlib'
		    Specifies the compression library to be used.
		    As of v0.20.2 these additional compressors for Blosc are supported
		    (default if no compressor specified: 'blosc:blosclz'):
		    {'blosc:blosclz', 'blosc:lz4', 'blosc:lz4hc', 'blosc:snappy',
		    'blosc:zlib', 'blosc:zstd'}.
		    Specifying a compression library which is not available issues
		    a ValueError.
		fletcher32 : bool, default False
		    If applying compression use the fletcher32 checksum.
		dropna : bool, default False
		    If true, ALL nan rows will not be written to store.
		errors : str, default 'strict'
		    Specifies how encoding and decoding errors are to be handled.
		    See the errors argument for :func:`open` for a full list
		    of options.
		
		See Also
		--------
		DataFrame.read_hdf : Read from HDF file.
		DataFrame.to_parquet : Write a DataFrame to the binary parquet format.
		DataFrame.to_sql : Write to a sql table.
		DataFrame.to_feather : Write out feather-format for DataFrames.
		DataFrame.to_csv : Write out to a csv file.
		
		Examples
		--------
		>>> df = pd.DataFrame({'A': [1, 2, 3], 'B': [4, 5, 6]},
		...                   index=['a', 'b', 'c'])
		>>> df.to_hdf('data.h5', key='df', mode='w')
		
		We can add another object to the same file:
		
		>>> s = pd.Series([1, 2, 3, 4])
		>>> s.to_hdf('data.h5', key='s')
		
		Reading from HDF file:
		
		>>> pd.read_hdf('data.h5', 'df')
		A  B
		a  1  4
		b  2  5
		c  3  6
		>>> pd.read_hdf('data.h5', 's')
		0    1
		1    2
		2    3
		3    4
		dtype: int64
		
		Deleting file with data:
		
		>>> import os
		>>> os.remove('data.h5')
	**/
	public function to_hdf(path_or_buf:Dynamic, key:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Render a DataFrame as an HTML table.
		
		`to_html`-specific options:
		
		bold_rows : boolean, default True
		    Make the row labels bold in the output
		classes : str or list or tuple, default None
		    CSS class(es) to apply to the resulting html table
		escape : boolean, default True
		    Convert the characters <, >, and & to HTML-safe sequences.
		max_rows : int, optional
		    Maximum number of rows to show before truncating. If None, show
		    all.
		max_cols : int, optional
		    Maximum number of columns to show before truncating. If None, show
		    all.
		decimal : string, default '.'
		    Character recognized as decimal separator, e.g. ',' in Europe
		
		    .. versionadded:: 0.18.0
		
		border : int
		    A ``border=border`` attribute is included in the opening
		    `<table>` tag. Default ``pd.options.html.border``.
		
		    .. versionadded:: 0.19.0
		
		table_id : str, optional
		    A css id is included in the opening `<table>` tag if specified.
		
		    .. versionadded:: 0.23.0
		
		
		Parameters
		----------
		buf : StringIO-like, optional
		    buffer to write to
		columns : sequence, optional
		    the subset of columns to write; default None writes all columns
		col_space : int, optional
		    the minimum width of each column
		header : bool, optional
		    whether to print column labels, default True
		index : bool, optional
		    whether to print index (row) labels, default True
		na_rep : string, optional
		    string representation of NAN to use, default 'NaN'
		formatters : list or dict of one-parameter functions, optional
		    formatter functions to apply to columns' elements by position or name,
		    default None. The result of each function must be a unicode string.
		    List must be of length equal to the number of columns.
		float_format : one-parameter function, optional
		    formatter function to apply to columns' elements if they are floats,
		    default None. The result of this function must be a unicode string.
		sparsify : bool, optional
		    Set to False for a DataFrame with a hierarchical index to print every
		    multiindex key at each row, default True
		index_names : bool, optional
		    Prints the names of the indexes, default True
		line_width : int, optional
		    Width to wrap a line in characters, default no wrap
		table_id : str, optional
		    id for the <table> element create by to_html
		
		    .. versionadded:: 0.23.0
		justify : str, default None
		    How to justify the column labels. If None uses the option from
		    the print configuration (controlled by set_option), 'right' out
		    of the box. Valid values are
		
		    * left
		    * right
		    * center
		    * justify
		    * justify-all
		    * start
		    * end
		    * inherit
		    * match-parent
		    * initial
		    * unset
		
		
		Returns
		-------
		formatted : string (or unicode, depending on data and options)
	**/
	public function to_html(?buf:Dynamic, ?columns:Dynamic, ?col_space:Dynamic, ?header:Dynamic, ?index:Dynamic, ?na_rep:Dynamic, ?formatters:Dynamic, ?float_format:Dynamic, ?sparsify:Dynamic, ?index_names:Dynamic, ?justify:Dynamic, ?bold_rows:Dynamic, ?classes:Dynamic, ?escape:Dynamic, ?max_rows:Dynamic, ?max_cols:Dynamic, ?show_dimensions:Dynamic, ?notebook:Dynamic, ?decimal:Dynamic, ?border:Dynamic, ?table_id:Dynamic):Dynamic;
	/**
		Convert the object to a JSON string.
		
		Note NaN's and None will be converted to null and datetime objects
		will be converted to UNIX timestamps.
		
		Parameters
		----------
		path_or_buf : string or file handle, optional
		    File path or object. If not specified, the result is returned as
		    a string.
		orient : string
		    Indication of expected JSON string format.
		
		    * Series
		
		      - default is 'index'
		      - allowed values are: {'split','records','index'}
		
		    * DataFrame
		
		      - default is 'columns'
		      - allowed values are:
		        {'split','records','index','columns','values'}
		
		    * The format of the JSON string
		
		      - 'split' : dict like {'index' -> [index],
		        'columns' -> [columns], 'data' -> [values]}
		      - 'records' : list like
		        [{column -> value}, ... , {column -> value}]
		      - 'index' : dict like {index -> {column -> value}}
		      - 'columns' : dict like {column -> {index -> value}}
		      - 'values' : just the values array
		      - 'table' : dict like {'schema': {schema}, 'data': {data}}
		        describing the data, and the data component is
		        like ``orient='records'``.
		
		        .. versionchanged:: 0.20.0
		
		date_format : {None, 'epoch', 'iso'}
		    Type of date conversion. 'epoch' = epoch milliseconds,
		    'iso' = ISO8601. The default depends on the `orient`. For
		    ``orient='table'``, the default is 'iso'. For all other orients,
		    the default is 'epoch'.
		double_precision : int, default 10
		    The number of decimal places to use when encoding
		    floating point values.
		force_ascii : boolean, default True
		    Force encoded string to be ASCII.
		date_unit : string, default 'ms' (milliseconds)
		    The time unit to encode to, governs timestamp and ISO8601
		    precision.  One of 's', 'ms', 'us', 'ns' for second, millisecond,
		    microsecond, and nanosecond respectively.
		default_handler : callable, default None
		    Handler to call if object cannot otherwise be converted to a
		    suitable format for JSON. Should receive a single argument which is
		    the object to convert and return a serialisable object.
		lines : boolean, default False
		    If 'orient' is 'records' write out line delimited json format. Will
		    throw ValueError if incorrect 'orient' since others are not list
		    like.
		
		    .. versionadded:: 0.19.0
		
		compression : {None, 'gzip', 'bz2', 'zip', 'xz'}
		    A string representing the compression to use in the output file,
		    only used when the first argument is a filename.
		
		    .. versionadded:: 0.21.0
		
		index : boolean, default True
		    Whether to include the index values in the JSON string. Not
		    including the index (``index=False``) is only supported when
		    orient is 'split' or 'table'.
		
		    .. versionadded:: 0.23.0
		
		See Also
		--------
		pandas.read_json
		
		Examples
		--------
		
		>>> df = pd.DataFrame([['a', 'b'], ['c', 'd']],
		...                   index=['row 1', 'row 2'],
		...                   columns=['col 1', 'col 2'])
		>>> df.to_json(orient='split')
		'{"columns":["col 1","col 2"],
		  "index":["row 1","row 2"],
		  "data":[["a","b"],["c","d"]]}'
		
		Encoding/decoding a Dataframe using ``'records'`` formatted JSON.
		Note that index labels are not preserved with this encoding.
		
		>>> df.to_json(orient='records')
		'[{"col 1":"a","col 2":"b"},{"col 1":"c","col 2":"d"}]'
		
		Encoding/decoding a Dataframe using ``'index'`` formatted JSON:
		
		>>> df.to_json(orient='index')
		'{"row 1":{"col 1":"a","col 2":"b"},"row 2":{"col 1":"c","col 2":"d"}}'
		
		Encoding/decoding a Dataframe using ``'columns'`` formatted JSON:
		
		>>> df.to_json(orient='columns')
		'{"col 1":{"row 1":"a","row 2":"c"},"col 2":{"row 1":"b","row 2":"d"}}'
		
		Encoding/decoding a Dataframe using ``'values'`` formatted JSON:
		
		>>> df.to_json(orient='values')
		'[["a","b"],["c","d"]]'
		
		Encoding with Table Schema
		
		>>> df.to_json(orient='table')
		'{"schema": {"fields": [{"name": "index", "type": "string"},
		                        {"name": "col 1", "type": "string"},
		                        {"name": "col 2", "type": "string"}],
		             "primaryKey": "index",
		             "pandas_version": "0.20.0"},
		  "data": [{"index": "row 1", "col 1": "a", "col 2": "b"},
		           {"index": "row 2", "col 1": "c", "col 2": "d"}]}'
	**/
	public function to_json(?path_or_buf:Dynamic, ?orient:Dynamic, ?date_format:Dynamic, ?double_precision:Dynamic, ?force_ascii:Dynamic, ?date_unit:Dynamic, ?default_handler:Dynamic, ?lines:Dynamic, ?compression:Dynamic, ?index:Dynamic):Dynamic;
	/**
		Render an object to a tabular environment table. You can splice
		this into a LaTeX document. Requires \\usepackage{booktabs}.
		
		.. versionchanged:: 0.20.2
		   Added to Series
		
		`to_latex`-specific options:
		
		bold_rows : boolean, default False
		    Make the row labels bold in the output
		column_format : str, default None
		    The columns format as specified in `LaTeX table format
		    <https://en.wikibooks.org/wiki/LaTeX/Tables>`__ e.g 'rcl' for 3
		    columns
		longtable : boolean, default will be read from the pandas config module
		    Default: False.
		    Use a longtable environment instead of tabular. Requires adding
		    a \\usepackage{longtable} to your LaTeX preamble.
		escape : boolean, default will be read from the pandas config module
		    Default: True.
		    When set to False prevents from escaping latex special
		    characters in column names.
		encoding : str, default None
		    A string representing the encoding to use in the output file,
		    defaults to 'ascii' on Python 2 and 'utf-8' on Python 3.
		decimal : string, default '.'
		    Character recognized as decimal separator, e.g. ',' in Europe.
		
		    .. versionadded:: 0.18.0
		
		multicolumn : boolean, default True
		    Use \multicolumn to enhance MultiIndex columns.
		    The default will be read from the config module.
		
		    .. versionadded:: 0.20.0
		
		multicolumn_format : str, default 'l'
		    The alignment for multicolumns, similar to `column_format`
		    The default will be read from the config module.
		
		    .. versionadded:: 0.20.0
		
		multirow : boolean, default False
		    Use \multirow to enhance MultiIndex rows.
		    Requires adding a \\usepackage{multirow} to your LaTeX preamble.
		    Will print centered labels (instead of top-aligned)
		    across the contained rows, separating groups via clines.
		    The default will be read from the pandas config module.
		
		    .. versionadded:: 0.20.0
	**/
	public function to_latex(?buf:Dynamic, ?columns:Dynamic, ?col_space:Dynamic, ?header:Dynamic, ?index:Dynamic, ?na_rep:Dynamic, ?formatters:Dynamic, ?float_format:Dynamic, ?sparsify:Dynamic, ?index_names:Dynamic, ?bold_rows:Dynamic, ?column_format:Dynamic, ?longtable:Dynamic, ?escape:Dynamic, ?encoding:Dynamic, ?decimal:Dynamic, ?multicolumn:Dynamic, ?multicolumn_format:Dynamic, ?multirow:Dynamic):Dynamic;
	/**
		msgpack (serialize) object to input file path
		
		THIS IS AN EXPERIMENTAL LIBRARY and the storage format
		may not be stable until a future release.
		
		Parameters
		----------
		path : string File path, buffer-like, or None
		    if None, return generated string
		append : boolean whether to append to an existing msgpack
		    (default is False)
		compress : type of compressor (zlib or blosc), default to None (no
		    compression)
	**/
	public function to_msgpack(?path_or_buf:Dynamic, ?encoding:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Transform long (stacked) format (DataFrame) into wide (3D, Panel)
		format.
		
		.. deprecated:: 0.20.0
		
		Currently the index of the DataFrame must be a 2-level MultiIndex. This
		may be generalized later
		
		Returns
		-------
		panel : Panel
	**/
	public function to_panel():pandas.Panel;
	/**
		Write a DataFrame to the binary parquet format.
		
		.. versionadded:: 0.21.0
		
		This function writes the dataframe as a `parquet file
		<https://parquet.apache.org/>`_. You can choose different parquet
		backends, and have the option of compression. See
		:ref:`the user guide <io.parquet>` for more details.
		
		Parameters
		----------
		fname : str
		    String file path.
		engine : {'auto', 'pyarrow', 'fastparquet'}, default 'auto'
		    Parquet library to use. If 'auto', then the option
		    ``io.parquet.engine`` is used. The default ``io.parquet.engine``
		    behavior is to try 'pyarrow', falling back to 'fastparquet' if
		    'pyarrow' is unavailable.
		compression : {'snappy', 'gzip', 'brotli', None}, default 'snappy'
		    Name of the compression to use. Use ``None`` for no compression.
		**kwargs
		    Additional arguments passed to the parquet library. See
		    :ref:`pandas io <io.parquet>` for more details.
		
		See Also
		--------
		read_parquet : Read a parquet file.
		DataFrame.to_csv : Write a csv file.
		DataFrame.to_sql : Write to a sql table.
		DataFrame.to_hdf : Write to hdf.
		
		Notes
		-----
		This function requires either the `fastparquet
		<https://pypi.org/project/fastparquet>`_ or `pyarrow
		<https://arrow.apache.org/docs/python/>`_ library.
		
		Examples
		--------
		>>> df = pd.DataFrame(data={'col1': [1, 2], 'col2': [3, 4]})
		>>> df.to_parquet('df.parquet.gzip', compression='gzip')
		>>> pd.read_parquet('df.parquet.gzip')
		   col1  col2
		0     1     3
		1     2     4
	**/
	public function to_parquet(fname:Dynamic, ?engine:Dynamic, ?compression:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Convert DataFrame from DatetimeIndex to PeriodIndex with desired
		frequency (inferred from index if not passed)
		
		Parameters
		----------
		freq : string, default
		axis : {0 or 'index', 1 or 'columns'}, default 0
		    The axis to convert (the index by default)
		copy : boolean, default True
		    If False then underlying input data is not copied
		
		Returns
		-------
		ts : TimeSeries with PeriodIndex
	**/
	public function to_period(?freq:Dynamic, ?axis:Dynamic, ?copy:Dynamic):Dynamic;
	/**
		Pickle (serialize) object to file.
		
		Parameters
		----------
		path : str
		    File path where the pickled object will be stored.
		compression : {'infer', 'gzip', 'bz2', 'zip', 'xz', None},         default 'infer'
		    A string representing the compression to use in the output file. By
		    default, infers from the file extension in specified path.
		
		    .. versionadded:: 0.20.0
		protocol : int
		    Int which indicates which protocol should be used by the pickler,
		    default HIGHEST_PROTOCOL (see [1]_ paragraph 12.1.2). The possible
		    values for this parameter depend on the version of Python. For
		    Python 2.x, possible values are 0, 1, 2. For Python>=3.0, 3 is a
		    valid value. For Python >= 3.4, 4 is a valid value. A negative
		    value for the protocol parameter is equivalent to setting its value
		    to HIGHEST_PROTOCOL.
		
		    .. [1] https://docs.python.org/3/library/pickle.html
		    .. versionadded:: 0.21.0
		
		See Also
		--------
		read_pickle : Load pickled pandas object (or any object) from file.
		DataFrame.to_hdf : Write DataFrame to an HDF5 file.
		DataFrame.to_sql : Write DataFrame to a SQL database.
		DataFrame.to_parquet : Write a DataFrame to the binary parquet format.
		
		Examples
		--------
		>>> original_df = pd.DataFrame({"foo": range(5), "bar": range(5, 10)})
		>>> original_df
		   foo  bar
		0    0    5
		1    1    6
		2    2    7
		3    3    8
		4    4    9
		>>> original_df.to_pickle("./dummy.pkl")
		
		>>> unpickled_df = pd.read_pickle("./dummy.pkl")
		>>> unpickled_df
		   foo  bar
		0    0    5
		1    1    6
		2    2    7
		3    3    8
		4    4    9
		
		>>> import os
		>>> os.remove("./dummy.pkl")
	**/
	public function to_pickle(path:Dynamic, ?compression:Dynamic, ?protocol:Dynamic):Dynamic;
	/**
		Convert DataFrame to a NumPy record array.
		
		Index will be put in the 'index' field of the record array if
		requested.
		
		Parameters
		----------
		index : boolean, default True
		    Include index in resulting record array, stored in 'index' field.
		convert_datetime64 : boolean, default None
		    .. deprecated:: 0.23.0
		
		    Whether to convert the index to datetime.datetime if it is a
		    DatetimeIndex.
		
		Returns
		-------
		y : numpy.recarray
		
		See Also
		--------
		DataFrame.from_records: convert structured or record ndarray
		    to DataFrame.
		numpy.recarray: ndarray that allows field access using
		    attributes, analogous to typed columns in a
		    spreadsheet.
		
		Examples
		--------
		>>> df = pd.DataFrame({'A': [1, 2], 'B': [0.5, 0.75]},
		...                   index=['a', 'b'])
		>>> df
		   A     B
		a  1  0.50
		b  2  0.75
		>>> df.to_records()
		rec.array([('a', 1, 0.5 ), ('b', 2, 0.75)],
		          dtype=[('index', 'O'), ('A', '<i8'), ('B', '<f8')])
		
		The index can be excluded from the record array:
		
		>>> df.to_records(index=False)
		rec.array([(1, 0.5 ), (2, 0.75)],
		          dtype=[('A', '<i8'), ('B', '<f8')])
		
		By default, timestamps are converted to `datetime.datetime`:
		
		>>> df.index = pd.date_range('2018-01-01 09:00', periods=2, freq='min')
		>>> df
		                     A     B
		2018-01-01 09:00:00  1  0.50
		2018-01-01 09:01:00  2  0.75
		>>> df.to_records()
		rec.array([(datetime.datetime(2018, 1, 1, 9, 0), 1, 0.5 ),
		           (datetime.datetime(2018, 1, 1, 9, 1), 2, 0.75)],
		          dtype=[('index', 'O'), ('A', '<i8'), ('B', '<f8')])
		
		The timestamp conversion can be disabled so NumPy's datetime64
		data type is used instead:
		
		>>> df.to_records(convert_datetime64=False)
		rec.array([('2018-01-01T09:00:00.000000000', 1, 0.5 ),
		           ('2018-01-01T09:01:00.000000000', 2, 0.75)],
		          dtype=[('index', '<M8[ns]'), ('A', '<i8'), ('B', '<f8')])
	**/
	public function to_records(?index:Dynamic, ?convert_datetime64:Dynamic):Dynamic;
	/**
		Convert to SparseDataFrame
		
		Parameters
		----------
		fill_value : float, default NaN
		kind : {'block', 'integer'}
		
		Returns
		-------
		y : SparseDataFrame
	**/
	public function to_sparse(?fill_value:Dynamic, ?kind:Dynamic):pandas.SparseDataFrame;
	/**
		Write records stored in a DataFrame to a SQL database.
		
		Databases supported by SQLAlchemy [1]_ are supported. Tables can be
		newly created, appended to, or overwritten.
		
		Parameters
		----------
		name : string
		    Name of SQL table.
		con : sqlalchemy.engine.Engine or sqlite3.Connection
		    Using SQLAlchemy makes it possible to use any DB supported by that
		    library. Legacy support is provided for sqlite3.Connection objects.
		schema : string, optional
		    Specify the schema (if database flavor supports this). If None, use
		    default schema.
		if_exists : {'fail', 'replace', 'append'}, default 'fail'
		    How to behave if the table already exists.
		
		    * fail: Raise a ValueError.
		    * replace: Drop the table before inserting new values.
		    * append: Insert new values to the existing table.
		
		index : boolean, default True
		    Write DataFrame index as a column. Uses `index_label` as the column
		    name in the table.
		index_label : string or sequence, default None
		    Column label for index column(s). If None is given (default) and
		    `index` is True, then the index names are used.
		    A sequence should be given if the DataFrame uses MultiIndex.
		chunksize : int, optional
		    Rows will be written in batches of this size at a time. By default,
		    all rows will be written at once.
		dtype : dict, optional
		    Specifying the datatype for columns. The keys should be the column
		    names and the values should be the SQLAlchemy types or strings for
		    the sqlite3 legacy mode.
		
		Raises
		------
		ValueError
		    When the table already exists and `if_exists` is 'fail' (the
		    default).
		
		See Also
		--------
		pandas.read_sql : read a DataFrame from a table
		
		References
		----------
		.. [1] http://docs.sqlalchemy.org
		.. [2] https://www.python.org/dev/peps/pep-0249/
		
		Examples
		--------
		
		Create an in-memory SQLite database.
		
		>>> from sqlalchemy import create_engine
		>>> engine = create_engine('sqlite://', echo=False)
		
		Create a table from scratch with 3 rows.
		
		>>> df = pd.DataFrame({'name' : ['User 1', 'User 2', 'User 3']})
		>>> df
		     name
		0  User 1
		1  User 2
		2  User 3
		
		>>> df.to_sql('users', con=engine)
		>>> engine.execute("SELECT * FROM users").fetchall()
		[(0, 'User 1'), (1, 'User 2'), (2, 'User 3')]
		
		>>> df1 = pd.DataFrame({'name' : ['User 4', 'User 5']})
		>>> df1.to_sql('users', con=engine, if_exists='append')
		>>> engine.execute("SELECT * FROM users").fetchall()
		[(0, 'User 1'), (1, 'User 2'), (2, 'User 3'),
		 (0, 'User 4'), (1, 'User 5')]
		
		Overwrite the table with just ``df1``.
		
		>>> df1.to_sql('users', con=engine, if_exists='replace',
		...            index_label='id')
		>>> engine.execute("SELECT * FROM users").fetchall()
		[(0, 'User 4'), (1, 'User 5')]
		
		Specify the dtype (especially useful for integers with missing values).
		Notice that while pandas is forced to store the data as floating point,
		the database supports nullable integers. When fetching the data with
		Python, we get back integer scalars.
		
		>>> df = pd.DataFrame({"A": [1, None, 2]})
		>>> df
		     A
		0  1.0
		1  NaN
		2  2.0
		
		>>> from sqlalchemy.types import Integer
		>>> df.to_sql('integers', con=engine, index=False,
		...           dtype={"A": Integer()})
		
		>>> engine.execute("SELECT * FROM integers").fetchall()
		[(1,), (None,), (2,)]
	**/
	public function to_sql(name:Dynamic, con:Dynamic, ?schema:Dynamic, ?if_exists:Dynamic, ?index:Dynamic, ?index_label:Dynamic, ?chunksize:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Export Stata binary dta files.
		
		Parameters
		----------
		fname : path (string), buffer or path object
		    string, path object (pathlib.Path or py._path.local.LocalPath) or
		    object implementing a binary write() functions. If using a buffer
		    then the buffer will not be automatically closed after the file
		    data has been written.
		convert_dates : dict
		    Dictionary mapping columns containing datetime types to stata
		    internal format to use when writing the dates. Options are 'tc',
		    'td', 'tm', 'tw', 'th', 'tq', 'ty'. Column can be either an integer
		    or a name. Datetime columns that do not have a conversion type
		    specified will be converted to 'tc'. Raises NotImplementedError if
		    a datetime column has timezone information.
		write_index : bool
		    Write the index to Stata dataset.
		encoding : str
		    Default is latin-1. Unicode is not supported.
		byteorder : str
		    Can be ">", "<", "little", or "big". default is `sys.byteorder`.
		time_stamp : datetime
		    A datetime to use as file creation date.  Default is the current
		    time.
		data_label : str
		    A label for the data set.  Must be 80 characters or smaller.
		variable_labels : dict
		    Dictionary containing columns as keys and variable labels as
		    values. Each label must be 80 characters or smaller.
		
		    .. versionadded:: 0.19.0
		
		version : {114, 117}
		    Version to use in the output dta file.  Version 114 can be used
		    read by Stata 10 and later.  Version 117 can be read by Stata 13
		    or later. Version 114 limits string variables to 244 characters or
		    fewer while 117 allows strings with lengths up to 2,000,000
		    characters.
		
		    .. versionadded:: 0.23.0
		
		convert_strl : list, optional
		    List of column names to convert to string columns to Stata StrL
		    format. Only available if version is 117.  Storing strings in the
		    StrL format can produce smaller dta files if strings have more than
		    8 characters and values are repeated.
		
		    .. versionadded:: 0.23.0
		
		Raises
		------
		NotImplementedError
		    * If datetimes contain timezone information
		    * Column dtype is not representable in Stata
		ValueError
		    * Columns listed in convert_dates are neither datetime64[ns]
		      or datetime.datetime
		    * Column listed in convert_dates is not in DataFrame
		    * Categorical label contains more than 32,000 characters
		
		    .. versionadded:: 0.19.0
		
		See Also
		--------
		pandas.read_stata : Import Stata data files
		pandas.io.stata.StataWriter : low-level writer for Stata data files
		pandas.io.stata.StataWriter117 : low-level writer for version 117 files
		
		Examples
		--------
		>>> data.to_stata('./data_file.dta')
		
		Or with dates
		
		>>> data.to_stata('./date_data_file.dta', {2 : 'tw'})
		
		Alternatively you can create an instance of the StataWriter class
		
		>>> writer = StataWriter('./data_file.dta', data)
		>>> writer.write_file()
		
		With dates:
		
		>>> writer = StataWriter('./date_data_file.dta', data, {2 : 'tw'})
		>>> writer.write_file()
	**/
	public function to_stata(fname:Dynamic, ?convert_dates:Dynamic, ?write_index:Dynamic, ?encoding:Dynamic, ?byteorder:Dynamic, ?time_stamp:Dynamic, ?data_label:Dynamic, ?variable_labels:Dynamic, ?version:Dynamic, ?convert_strl:Dynamic):Dynamic;
	/**
		Render a DataFrame to a console-friendly tabular output.
		
		Parameters
		----------
		buf : StringIO-like, optional
		    buffer to write to
		columns : sequence, optional
		    the subset of columns to write; default None writes all columns
		col_space : int, optional
		    the minimum width of each column
		header : bool, optional
		    Write out the column names. If a list of strings is given, it is assumed to be aliases for the column names
		index : bool, optional
		    whether to print index (row) labels, default True
		na_rep : string, optional
		    string representation of NAN to use, default 'NaN'
		formatters : list or dict of one-parameter functions, optional
		    formatter functions to apply to columns' elements by position or name,
		    default None. The result of each function must be a unicode string.
		    List must be of length equal to the number of columns.
		float_format : one-parameter function, optional
		    formatter function to apply to columns' elements if they are floats,
		    default None. The result of this function must be a unicode string.
		sparsify : bool, optional
		    Set to False for a DataFrame with a hierarchical index to print every
		    multiindex key at each row, default True
		index_names : bool, optional
		    Prints the names of the indexes, default True
		line_width : int, optional
		    Width to wrap a line in characters, default no wrap
		table_id : str, optional
		    id for the <table> element create by to_html
		
		    .. versionadded:: 0.23.0
		justify : str, default None
		    How to justify the column labels. If None uses the option from
		    the print configuration (controlled by set_option), 'right' out
		    of the box. Valid values are
		
		    * left
		    * right
		    * center
		    * justify
		    * justify-all
		    * start
		    * end
		    * inherit
		    * match-parent
		    * initial
		    * unset
		
		
		Returns
		-------
		formatted : string (or unicode, depending on data and options)
	**/
	public function to_string(?buf:Dynamic, ?columns:Dynamic, ?col_space:Dynamic, ?header:Dynamic, ?index:Dynamic, ?na_rep:Dynamic, ?formatters:Dynamic, ?float_format:Dynamic, ?sparsify:Dynamic, ?index_names:Dynamic, ?justify:Dynamic, ?line_width:Dynamic, ?max_rows:Dynamic, ?max_cols:Dynamic, ?show_dimensions:Dynamic):Dynamic;
	/**
		Cast to DatetimeIndex of timestamps, at *beginning* of period
		
		Parameters
		----------
		freq : string, default frequency of PeriodIndex
		    Desired frequency
		how : {'s', 'e', 'start', 'end'}
		    Convention for converting period to timestamp; start of period
		    vs. end
		axis : {0 or 'index', 1 or 'columns'}, default 0
		    The axis to convert (the index by default)
		copy : boolean, default True
		    If false then underlying input data is not copied
		
		Returns
		-------
		df : DataFrame with DatetimeIndex
	**/
	public function to_timestamp(?freq:Dynamic, ?how:Dynamic, ?axis:Dynamic, ?copy:Dynamic):Dynamic;
	/**
		Return an xarray object from the pandas object.
		
		Returns
		-------
		a DataArray for a Series
		a Dataset for a DataFrame
		a DataArray for higher dims
		
		Examples
		--------
		>>> df = pd.DataFrame({'A' : [1, 1, 2],
		                       'B' : ['foo', 'bar', 'foo'],
		                       'C' : np.arange(4.,7)})
		>>> df
		   A    B    C
		0  1  foo  4.0
		1  1  bar  5.0
		2  2  foo  6.0
		
		>>> df.to_xarray()
		<xarray.Dataset>
		Dimensions:  (index: 3)
		Coordinates:
		  * index    (index) int64 0 1 2
		Data variables:
		    A        (index) int64 1 1 2
		    B        (index) object 'foo' 'bar' 'foo'
		    C        (index) float64 4.0 5.0 6.0
		
		>>> df = pd.DataFrame({'A' : [1, 1, 2],
		                       'B' : ['foo', 'bar', 'foo'],
		                       'C' : np.arange(4.,7)}
		                     ).set_index(['B','A'])
		>>> df
		         C
		B   A
		foo 1  4.0
		bar 1  5.0
		foo 2  6.0
		
		>>> df.to_xarray()
		<xarray.Dataset>
		Dimensions:  (A: 2, B: 2)
		Coordinates:
		  * B        (B) object 'bar' 'foo'
		  * A        (A) int64 1 2
		Data variables:
		    C        (B, A) float64 5.0 nan 4.0 6.0
		
		>>> p = pd.Panel(np.arange(24).reshape(4,3,2),
		                 items=list('ABCD'),
		                 major_axis=pd.date_range('20130101', periods=3),
		                 minor_axis=['first', 'second'])
		>>> p
		<class 'pandas.core.panel.Panel'>
		Dimensions: 4 (items) x 3 (major_axis) x 2 (minor_axis)
		Items axis: A to D
		Major_axis axis: 2013-01-01 00:00:00 to 2013-01-03 00:00:00
		Minor_axis axis: first to second
		
		>>> p.to_xarray()
		<xarray.DataArray (items: 4, major_axis: 3, minor_axis: 2)>
		array([[[ 0,  1],
		        [ 2,  3],
		        [ 4,  5]],
		       [[ 6,  7],
		        [ 8,  9],
		        [10, 11]],
		       [[12, 13],
		        [14, 15],
		        [16, 17]],
		       [[18, 19],
		        [20, 21],
		        [22, 23]]])
		Coordinates:
		  * items       (items) object 'A' 'B' 'C' 'D'
		  * major_axis  (major_axis) datetime64[ns] 2013-01-01 2013-01-02 2013-01-03  # noqa
		  * minor_axis  (minor_axis) object 'first' 'second'
		
		Notes
		-----
		See the `xarray docs <http://xarray.pydata.org/en/stable/>`__
	**/
	public function to_xarray():Dynamic;
	/**
		Call function producing a like-indexed NDFrame
		and return a NDFrame with the transformed values
		
		.. versionadded:: 0.20.0
		
		Parameters
		----------
		func : callable, string, dictionary, or list of string/callables
		    To apply to column
		
		    Accepted Combinations are:
		
		    - string function name
		    - function
		    - list of functions
		    - dict of column names -> functions (or list of functions)
		
		Returns
		-------
		transformed : NDFrame
		
		Examples
		--------
		>>> df = pd.DataFrame(np.random.randn(10, 3), columns=['A', 'B', 'C'],
		...                   index=pd.date_range('1/1/2000', periods=10))
		df.iloc[3:7] = np.nan
		
		>>> df.transform(lambda x: (x - x.mean()) / x.std())
		                   A         B         C
		2000-01-01  0.579457  1.236184  0.123424
		2000-01-02  0.370357 -0.605875 -1.231325
		2000-01-03  1.455756 -0.277446  0.288967
		2000-01-04       NaN       NaN       NaN
		2000-01-05       NaN       NaN       NaN
		2000-01-06       NaN       NaN       NaN
		2000-01-07       NaN       NaN       NaN
		2000-01-08 -0.498658  1.274522  1.642524
		2000-01-09 -0.540524 -1.012676 -0.828968
		2000-01-10 -1.366388 -0.614710  0.005378
		
		See also
		--------
		pandas.NDFrame.aggregate
		pandas.NDFrame.apply
	**/
	public function transform(func:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):pandas.core.frame.NDFrame;
	/**
		Transpose index and columns.
		
		Reflect the DataFrame over its main diagonal by writing rows as columns
		and vice-versa. The property :attr:`.T` is an accessor to the method
		:meth:`transpose`.
		
		Parameters
		----------
		copy : bool, default False
		    If True, the underlying data is copied. Otherwise (default), no
		    copy is made if possible.
		*args, **kwargs
		    Additional keywords have no effect but might be accepted for
		    compatibility with numpy.
		
		Returns
		-------
		DataFrame
		    The transposed DataFrame.
		
		See Also
		--------
		numpy.transpose : Permute the dimensions of a given array.
		
		Notes
		-----
		Transposing a DataFrame with mixed dtypes will result in a homogeneous
		DataFrame with the `object` dtype. In such a case, a copy of the data
		is always made.
		
		Examples
		--------
		**Square DataFrame with homogeneous dtype**
		
		>>> d1 = {'col1': [1, 2], 'col2': [3, 4]}
		>>> df1 = pd.DataFrame(data=d1)
		>>> df1
		   col1  col2
		0     1     3
		1     2     4
		
		>>> df1_transposed = df1.T # or df1.transpose()
		>>> df1_transposed
		      0  1
		col1  1  2
		col2  3  4
		
		When the dtype is homogeneous in the original DataFrame, we get a
		transposed DataFrame with the same dtype:
		
		>>> df1.dtypes
		col1    int64
		col2    int64
		dtype: object
		>>> df1_transposed.dtypes
		0    int64
		1    int64
		dtype: object
		
		**Non-square DataFrame with mixed dtypes**
		
		>>> d2 = {'name': ['Alice', 'Bob'],
		...       'score': [9.5, 8],
		...       'employed': [False, True],
		...       'kids': [0, 0]}
		>>> df2 = pd.DataFrame(data=d2)
		>>> df2
		    name  score  employed  kids
		0  Alice    9.5     False     0
		1    Bob    8.0      True     0
		
		>>> df2_transposed = df2.T # or df2.transpose()
		>>> df2_transposed
		              0     1
		name      Alice   Bob
		score       9.5     8
		employed  False  True
		kids          0     0
		
		When the DataFrame has mixed dtypes, we get a transposed DataFrame with
		the `object` dtype:
		
		>>> df2.dtypes
		name         object
		score       float64
		employed       bool
		kids          int64
		dtype: object
		>>> df2_transposed.dtypes
		0    object
		1    object
		dtype: object
	**/
	public function transpose(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Floating division of dataframe and other, element-wise (binary operator `truediv`).
		
		Equivalent to ``dataframe / other``, but with support to substitute a fill_value for
		missing data in one of the inputs.
		
		Parameters
		----------
		other : Series, DataFrame, or constant
		axis : {0, 1, 'index', 'columns'}
		    For Series input, axis to match Series index on
		level : int or name
		    Broadcast across a level, matching Index values on the
		    passed MultiIndex level
		fill_value : None or float value, default None
		    Fill existing missing (NaN) values, and any new element needed for
		    successful DataFrame alignment, with this value before computation.
		    If data in both corresponding DataFrame locations is missing
		    the result will be missing
		
		Notes
		-----
		Mismatched indices will be unioned together
		
		Returns
		-------
		result : DataFrame
		
		Examples
		--------
		None
		
		See also
		--------
		DataFrame.rtruediv
	**/
	public function truediv(other:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?fill_value:Dynamic):pandas.DataFrame;
	/**
		Truncate a Series or DataFrame before and after some index value.
		
		This is a useful shorthand for boolean indexing based on index
		values above or below certain thresholds.
		
		Parameters
		----------
		before : date, string, int
		    Truncate all rows before this index value.
		after : date, string, int
		    Truncate all rows after this index value.
		axis : {0 or 'index', 1 or 'columns'}, optional
		    Axis to truncate. Truncates the index (rows) by default.
		copy : boolean, default is True,
		    Return a copy of the truncated section.
		
		Returns
		-------
		type of caller
		    The truncated Series or DataFrame.
		
		See Also
		--------
		DataFrame.loc : Select a subset of a DataFrame by label.
		DataFrame.iloc : Select a subset of a DataFrame by position.
		
		Notes
		-----
		If the index being truncated contains only datetime values,
		`before` and `after` may be specified as strings instead of
		Timestamps.
		
		Examples
		--------
		>>> df = pd.DataFrame({'A': ['a', 'b', 'c', 'd', 'e'],
		...                    'B': ['f', 'g', 'h', 'i', 'j'],
		...                    'C': ['k', 'l', 'm', 'n', 'o']},
		...                    index=[1, 2, 3, 4, 5])
		>>> df
		   A  B  C
		1  a  f  k
		2  b  g  l
		3  c  h  m
		4  d  i  n
		5  e  j  o
		
		>>> df.truncate(before=2, after=4)
		   A  B  C
		2  b  g  l
		3  c  h  m
		4  d  i  n
		
		The columns of a DataFrame can be truncated.
		
		>>> df.truncate(before="A", after="B", axis="columns")
		   A  B
		1  a  f
		2  b  g
		3  c  h
		4  d  i
		5  e  j
		
		For Series, only rows can be truncated.
		
		>>> df['A'].truncate(before=2, after=4)
		2    b
		3    c
		4    d
		Name: A, dtype: object
		
		The index values in ``truncate`` can be datetimes or string
		dates.
		
		>>> dates = pd.date_range('2016-01-01', '2016-02-01', freq='s')
		>>> df = pd.DataFrame(index=dates, data={'A': 1})
		>>> df.tail()
		                     A
		2016-01-31 23:59:56  1
		2016-01-31 23:59:57  1
		2016-01-31 23:59:58  1
		2016-01-31 23:59:59  1
		2016-02-01 00:00:00  1
		
		>>> df.truncate(before=pd.Timestamp('2016-01-05'),
		...             after=pd.Timestamp('2016-01-10')).tail()
		                     A
		2016-01-09 23:59:56  1
		2016-01-09 23:59:57  1
		2016-01-09 23:59:58  1
		2016-01-09 23:59:59  1
		2016-01-10 00:00:00  1
		
		Because the index is a DatetimeIndex containing only dates, we can
		specify `before` and `after` as strings. They will be coerced to
		Timestamps before truncation.
		
		>>> df.truncate('2016-01-05', '2016-01-10').tail()
		                     A
		2016-01-09 23:59:56  1
		2016-01-09 23:59:57  1
		2016-01-09 23:59:58  1
		2016-01-09 23:59:59  1
		2016-01-10 00:00:00  1
		
		Note that ``truncate`` assumes a 0 value for any unspecified time
		component (midnight). This differs from partial string slicing, which
		returns any partially matching dates.
		
		>>> df.loc['2016-01-05':'2016-01-10', :].tail()
		                     A
		2016-01-10 23:59:55  1
		2016-01-10 23:59:56  1
		2016-01-10 23:59:57  1
		2016-01-10 23:59:58  1
		2016-01-10 23:59:59  1
	**/
	public function truncate(?before:Dynamic, ?after:Dynamic, ?axis:Dynamic, ?copy:Dynamic):Dynamic;
	/**
		Shift the time index, using the index's frequency if available.
		
		Parameters
		----------
		periods : int
		    Number of periods to move, can be positive or negative
		freq : DateOffset, timedelta, or time rule string, default None
		    Increment to use from the tseries module or time rule (e.g. 'EOM')
		axis : int or basestring
		    Corresponds to the axis that contains the Index
		
		Notes
		-----
		If freq is not specified then tries to use the freq or inferred_freq
		attributes of the index. If neither of those attributes exist, a
		ValueError is thrown
		
		Returns
		-------
		shifted : NDFrame
	**/
	public function tshift(?periods:Dynamic, ?freq:Dynamic, ?axis:Dynamic):pandas.core.frame.NDFrame;
	/**
		Convert tz-aware axis to target time zone.
		
		Parameters
		----------
		tz : string or pytz.timezone object
		axis : the axis to convert
		level : int, str, default None
		    If axis ia a MultiIndex, convert a specific level. Otherwise
		    must be None
		copy : boolean, default True
		    Also make a copy of the underlying data
		
		Returns
		-------
		
		Raises
		------
		TypeError
		    If the axis is tz-naive.
	**/
	public function tz_convert(tz:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?copy:Dynamic):Dynamic;
	/**
		Localize tz-naive TimeSeries to target time zone.
		
		Parameters
		----------
		tz : string or pytz.timezone object
		axis : the axis to localize
		level : int, str, default None
		    If axis ia a MultiIndex, localize a specific level. Otherwise
		    must be None
		copy : boolean, default True
		    Also make a copy of the underlying data
		ambiguous : 'infer', bool-ndarray, 'NaT', default 'raise'
		    - 'infer' will attempt to infer fall dst-transition hours based on
		      order
		    - bool-ndarray where True signifies a DST time, False designates
		      a non-DST time (note that this flag is only applicable for
		      ambiguous times)
		    - 'NaT' will return NaT where there are ambiguous times
		    - 'raise' will raise an AmbiguousTimeError if there are ambiguous
		      times
		
		Returns
		-------
		
		Raises
		------
		TypeError
		    If the TimeSeries is tz-aware and tz is not None.
	**/
	public function tz_localize(tz:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?copy:Dynamic, ?ambiguous:Dynamic):Dynamic;
	/**
		Pivot a level of the (necessarily hierarchical) index labels, returning
		a DataFrame having a new level of column labels whose inner-most level
		consists of the pivoted index labels. If the index is not a MultiIndex,
		the output will be a Series (the analogue of stack when the columns are
		not a MultiIndex).
		The level involved will automatically get sorted.
		
		Parameters
		----------
		level : int, string, or list of these, default -1 (last level)
		    Level(s) of index to unstack, can pass level name
		fill_value : replace NaN with this value if the unstack produces
		    missing values
		
		    .. versionadded:: 0.18.0
		
		See also
		--------
		DataFrame.pivot : Pivot a table based on column values.
		DataFrame.stack : Pivot a level of the column labels (inverse operation
		    from `unstack`).
		
		Examples
		--------
		>>> index = pd.MultiIndex.from_tuples([('one', 'a'), ('one', 'b'),
		...                                    ('two', 'a'), ('two', 'b')])
		>>> s = pd.Series(np.arange(1.0, 5.0), index=index)
		>>> s
		one  a   1.0
		     b   2.0
		two  a   3.0
		     b   4.0
		dtype: float64
		
		>>> s.unstack(level=-1)
		     a   b
		one  1.0  2.0
		two  3.0  4.0
		
		>>> s.unstack(level=0)
		   one  two
		a  1.0   3.0
		b  2.0   4.0
		
		>>> df = s.unstack(level=0)
		>>> df.unstack()
		one  a  1.0
		     b  2.0
		two  a  3.0
		     b  4.0
		dtype: float64
		
		Returns
		-------
		unstacked : DataFrame or Series
	**/
	public function unstack(?level:Dynamic, ?fill_value:Dynamic):Dynamic;
	/**
		Modify in place using non-NA values from another DataFrame.
		
		Aligns on indices. There is no return value.
		
		Parameters
		----------
		other : DataFrame, or object coercible into a DataFrame
		    Should have at least one matching index/column label
		    with the original DataFrame. If a Series is passed,
		    its name attribute must be set, and that will be
		    used as the column name to align with the original DataFrame.
		join : {'left'}, default 'left'
		    Only left join is implemented, keeping the index and columns of the
		    original object.
		overwrite : bool, default True
		    How to handle non-NA values for overlapping keys:
		
		    * True: overwrite original DataFrame's values
		      with values from `other`.
		    * False: only update values that are NA in
		      the original DataFrame.
		
		filter_func : callable(1d-array) -> boolean 1d-array, optional
		    Can choose to replace values other than NA. Return True for values
		    that should be updated.
		raise_conflict : bool, default False
		    If True, will raise a ValueError if the DataFrame and `other`
		    both contain non-NA data in the same place.
		
		Raises
		------
		ValueError
		    When `raise_conflict` is True and there's overlapping non-NA data.
		
		See Also
		--------
		dict.update : Similar method for dictionaries.
		DataFrame.merge : For column(s)-on-columns(s) operations.
		
		Examples
		--------
		>>> df = pd.DataFrame({'A': [1, 2, 3],
		...                    'B': [400, 500, 600]})
		>>> new_df = pd.DataFrame({'B': [4, 5, 6],
		...                        'C': [7, 8, 9]})
		>>> df.update(new_df)
		>>> df
		   A  B
		0  1  4
		1  2  5
		2  3  6
		
		The DataFrame's length does not increase as a result of the update,
		only values at matching index/column labels are updated.
		
		>>> df = pd.DataFrame({'A': ['a', 'b', 'c'],
		...                    'B': ['x', 'y', 'z']})
		>>> new_df = pd.DataFrame({'B': ['d', 'e', 'f', 'g', 'h', 'i']})
		>>> df.update(new_df)
		>>> df
		   A  B
		0  a  d
		1  b  e
		2  c  f
		
		For Series, it's name attribute must be set.
		
		>>> df = pd.DataFrame({'A': ['a', 'b', 'c'],
		...                    'B': ['x', 'y', 'z']})
		>>> new_column = pd.Series(['d', 'e'], name='B', index=[0, 2])
		>>> df.update(new_column)
		>>> df
		   A  B
		0  a  d
		1  b  y
		2  c  e
		>>> df = pd.DataFrame({'A': ['a', 'b', 'c'],
		...                    'B': ['x', 'y', 'z']})
		>>> new_df = pd.DataFrame({'B': ['d', 'e']}, index=[1, 2])
		>>> df.update(new_df)
		>>> df
		   A  B
		0  a  x
		1  b  d
		2  c  e
		
		If `other` contains NaNs the corresponding values are not updated
		in the original dataframe.
		
		>>> df = pd.DataFrame({'A': [1, 2, 3],
		...                    'B': [400, 500, 600]})
		>>> new_df = pd.DataFrame({'B': [4, np.nan, 6]})
		>>> df.update(new_df)
		>>> df
		   A      B
		0  1    4.0
		1  2  500.0
		2  3    6.0
	**/
	public function update(other:Dynamic, ?join:Dynamic, ?overwrite:Dynamic, ?filter_func:Dynamic, ?raise_conflict:Dynamic):Dynamic;
	/**
		Return a Numpy representation of the DataFrame.
		
		Only the values in the DataFrame will be returned, the axes labels
		will be removed.
		
		Returns
		-------
		numpy.ndarray
		    The values of the DataFrame.
		
		Examples
		--------
		A DataFrame where all columns are the same type (e.g., int64) results
		in an array of the same type.
		
		>>> df = pd.DataFrame({'age':    [ 3,  29],
		...                    'height': [94, 170],
		...                    'weight': [31, 115]})
		>>> df
		   age  height  weight
		0    3      94      31
		1   29     170     115
		>>> df.dtypes
		age       int64
		height    int64
		weight    int64
		dtype: object
		>>> df.values
		array([[  3,  94,  31],
		       [ 29, 170, 115]], dtype=int64)
		
		A DataFrame with mixed type columns(e.g., str/object, int64, float32)
		results in an ndarray of the broadest type that accommodates these
		mixed types (e.g., object).
		
		>>> df2 = pd.DataFrame([('parrot',   24.0, 'second'),
		...                     ('lion',     80.5, 1),
		...                     ('monkey', np.nan, None)],
		...                   columns=('name', 'max_speed', 'rank'))
		>>> df2.dtypes
		name          object
		max_speed    float64
		rank          object
		dtype: object
		>>> df2.values
		array([['parrot', 24.0, 'second'],
		       ['lion', 80.5, 1],
		       ['monkey', nan, None]], dtype=object)
		
		Notes
		-----
		The dtype will be a lower-common-denominator dtype (implicit
		upcasting); that is to say if the dtypes (even of numeric types)
		are mixed, the one that accommodates all will be chosen. Use this
		with care if you are not dealing with the blocks.
		
		e.g. If the dtypes are float16 and float32, dtype will be upcast to
		float32.  If dtypes are int32 and uint8, dtype will be upcast to
		int32. By :func:`numpy.find_common_type` convention, mixing int64
		and uint64 will result in a float64 dtype.
		
		See Also
		--------
		pandas.DataFrame.index : Retrievie the index labels
		pandas.DataFrame.columns : Retrieving the column names
	**/
	public var values : Dynamic;
	/**
		Return unbiased variance over requested axis.
		
		Normalized by N-1 by default. This can be changed using the ddof argument
		
		Parameters
		----------
		axis : {index (0), columns (1)}
		skipna : boolean, default True
		    Exclude NA/null values. If an entire row/column is NA, the result
		    will be NA
		level : int or level name, default None
		    If the axis is a MultiIndex (hierarchical), count along a
		    particular level, collapsing into a Series
		ddof : int, default 1
		    Delta Degrees of Freedom. The divisor used in calculations is N - ddof,
		    where N represents the number of elements.
		numeric_only : boolean, default None
		    Include only float, int, boolean columns. If None, will attempt to use
		    everything, then use only numeric data. Not implemented for Series.
		
		Returns
		-------
		var : Series or DataFrame (if level specified)
	**/
	@:native("var")
	public function _var(?axis:Dynamic, ?skipna:Dynamic, ?level:Dynamic, ?ddof:Dynamic, ?numeric_only:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return an object of same shape as self and whose corresponding
		entries are from self where `cond` is True and otherwise are from
		`other`.
		
		Parameters
		----------
		cond : boolean NDFrame, array-like, or callable
		    Where `cond` is True, keep the original value. Where
		    False, replace with corresponding value from `other`.
		    If `cond` is callable, it is computed on the NDFrame and
		    should return boolean NDFrame or array. The callable must
		    not change input NDFrame (though pandas doesn't check it).
		
		    .. versionadded:: 0.18.1
		        A callable can be used as cond.
		
		other : scalar, NDFrame, or callable
		    Entries where `cond` is False are replaced with
		    corresponding value from `other`.
		    If other is callable, it is computed on the NDFrame and
		    should return scalar or NDFrame. The callable must not
		    change input NDFrame (though pandas doesn't check it).
		
		    .. versionadded:: 0.18.1
		        A callable can be used as other.
		
		inplace : boolean, default False
		    Whether to perform the operation in place on the data
		axis : alignment axis if needed, default None
		level : alignment level if needed, default None
		errors : str, {'raise', 'ignore'}, default 'raise'
		    - ``raise`` : allow exceptions to be raised
		    - ``ignore`` : suppress exceptions. On error return original object
		
		    Note that currently this parameter won't affect
		    the results and will always coerce to a suitable dtype.
		
		try_cast : boolean, default False
		    try to cast the result back to the input type (if possible),
		raise_on_error : boolean, default True
		    Whether to raise on invalid data types (e.g. trying to where on
		    strings)
		
		    .. deprecated:: 0.21.0
		
		Returns
		-------
		wh : same type as caller
		
		Notes
		-----
		The where method is an application of the if-then idiom. For each
		element in the calling DataFrame, if ``cond`` is ``True`` the
		element is used; otherwise the corresponding element from the DataFrame
		``other`` is used.
		
		The signature for :func:`DataFrame.where` differs from
		:func:`numpy.where`. Roughly ``df1.where(m, df2)`` is equivalent to
		``np.where(m, df1, df2)``.
		
		For further details and examples see the ``where`` documentation in
		:ref:`indexing <indexing.where_mask>`.
		
		Examples
		--------
		>>> s = pd.Series(range(5))
		>>> s.where(s > 0)
		0    NaN
		1    1.0
		2    2.0
		3    3.0
		4    4.0
		
		>>> s.mask(s > 0)
		0    0.0
		1    NaN
		2    NaN
		3    NaN
		4    NaN
		
		>>> s.where(s > 1, 10)
		0    10.0
		1    10.0
		2    2.0
		3    3.0
		4    4.0
		
		>>> df = pd.DataFrame(np.arange(10).reshape(-1, 2), columns=['A', 'B'])
		>>> m = df % 3 == 0
		>>> df.where(m, -df)
		   A  B
		0  0 -1
		1 -2  3
		2 -4 -5
		3  6 -7
		4 -8  9
		>>> df.where(m, -df) == np.where(m, df, -df)
		      A     B
		0  True  True
		1  True  True
		2  True  True
		3  True  True
		4  True  True
		>>> df.where(m, -df) == df.mask(~m, -df)
		      A     B
		0  True  True
		1  True  True
		2  True  True
		3  True  True
		4  True  True
		
		See Also
		--------
		:func:`DataFrame.mask`
	**/
	public function where(cond:Dynamic, ?other:Dynamic, ?inplace:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?errors:Dynamic, ?try_cast:Dynamic, ?raise_on_error:Dynamic):Dynamic;
	/**
		Returns a cross-section (row(s) or column(s)) from the
		Series/DataFrame. Defaults to cross-section on the rows (axis=0).
		
		Parameters
		----------
		key : object
		    Some label contained in the index, or partially in a MultiIndex
		axis : int, default 0
		    Axis to retrieve cross-section on
		level : object, defaults to first n levels (n=1 or len(key))
		    In case of a key partially contained in a MultiIndex, indicate
		    which levels are used. Levels can be referred by label or position.
		drop_level : boolean, default True
		    If False, returns object with same levels as self.
		
		Examples
		--------
		>>> df
		   A  B  C
		a  4  5  2
		b  4  0  9
		c  9  7  3
		>>> df.xs('a')
		A    4
		B    5
		C    2
		Name: a
		>>> df.xs('C', axis=1)
		a    2
		b    9
		c    3
		Name: C
		
		>>> df
		                    A  B  C  D
		first second third
		bar   one    1      4  1  8  9
		      two    1      7  5  5  0
		baz   one    1      6  6  8  0
		      three  2      5  3  5  3
		>>> df.xs(('baz', 'three'))
		       A  B  C  D
		third
		2      5  3  5  3
		>>> df.xs('one', level=1)
		             A  B  C  D
		first third
		bar   1      4  1  8  9
		baz   1      6  6  8  0
		>>> df.xs(('baz', 2), level=[0, 'third'])
		        A  B  C  D
		second
		three   5  3  5  3
		
		Returns
		-------
		xs : Series or DataFrame
		
		Notes
		-----
		xs is only for getting, not setting values.
		
		MultiIndex Slicers is a generic way to get/set values on any level or
		levels.  It is a superset of xs functionality, see
		:ref:`MultiIndex Slicers <advanced.mi_slicers>`
	**/
	public function xs(key:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?drop_level:Dynamic):Dynamic;
}