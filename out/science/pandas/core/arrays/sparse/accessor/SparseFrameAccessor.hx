/* This file is generated, do not edit! */
package pandas.core.arrays.sparse.accessor;
@:pythonImport("pandas.core.arrays.sparse.accessor", "SparseFrameAccessor") extern class SparseFrameAccessor {
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
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
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
	public function ___init__(?data:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?data:Dynamic):Void;
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
	public function __ne__(value:Dynamic):Dynamic;
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
		Add accessors to cls from the delegate class.
		
		Parameters
		----------
		cls
		    Class to add the methods/properties to.
		delegate
		    Class to get methods/properties and doc-strings.
		accessors : list of str
		    List of accessors to add.
		typ : {'property', 'method'}
		overwrite : bool, default False
		    Overwrite the method/property in the target class if it exists.
	**/
	static public function _add_delegate_accessors(delegate:Dynamic, accessors:Dynamic, typ:Dynamic, ?overwrite:Dynamic):Dynamic;
	public function _delegate_method(name:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function _delegate_property_get(name:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function _delegate_property_set(name:Dynamic, value:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function _prep_index(data:Dynamic, index:Dynamic, columns:Dynamic):Dynamic;
	public function _validate(data:Dynamic):Dynamic;
	static public var _validation_msg : Dynamic;
	/**
		Ratio of non-sparse points to total (dense) data points.
	**/
	public var density : Dynamic;
	/**
		Create a new DataFrame from a scipy sparse matrix.
		
		.. versionadded:: 0.25.0
		
		Parameters
		----------
		data : scipy.sparse.spmatrix
		    Must be convertible to csc format.
		index, columns : Index, optional
		    Row and column labels to use for the resulting DataFrame.
		    Defaults to a RangeIndex.
		
		Returns
		-------
		DataFrame
		    Each column of the DataFrame is stored as a
		    :class:`arrays.SparseArray`.
		
		Examples
		--------
		>>> import scipy.sparse
		>>> mat = scipy.sparse.eye(3)
		>>> pd.DataFrame.sparse.from_spmatrix(mat)
		     0    1    2
		0  1.0  0.0  0.0
		1  0.0  1.0  0.0
		2  0.0  0.0  1.0
	**/
	static public function from_spmatrix(data:Dynamic, ?index:Dynamic, ?columns:Dynamic):Dynamic;
	/**
		Return the contents of the frame as a sparse SciPy COO matrix.
		
		.. versionadded:: 0.25.0
		
		Returns
		-------
		coo_matrix : scipy.sparse.spmatrix
		    If the caller is heterogeneous and contains booleans or objects,
		    the result will be of dtype=object. See Notes.
		
		Notes
		-----
		The dtype will be the lowest-common-denominator type (implicit
		upcasting); that is to say if the dtypes (even of numeric types)
		are mixed, the one that accommodates all will be chosen.
		
		e.g. If the dtypes are float16 and float32, dtype will be upcast to
		float32. By numpy.find_common_type convention, mixing int64 and
		and uint64 will result in a float64 dtype.
	**/
	public function to_coo():Dynamic;
	/**
		Convert a DataFrame with sparse values to dense.
		
		.. versionadded:: 0.25.0
		
		Returns
		-------
		DataFrame
		    A DataFrame with the same values stored as dense arrays.
		
		Examples
		--------
		>>> df = pd.DataFrame({"A": pd.arrays.SparseArray([0, 1, 0])})
		>>> df.sparse.to_dense()
		   A
		0  0
		1  1
		2  0
	**/
	public function to_dense():Dynamic;
}