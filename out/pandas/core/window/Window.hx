/* This file is generated, do not edit! */
package pandas.core.window;
@:pythonImport("pandas.core.window", "Window") extern class Window {
	/**
		Return a string representation for a particular object.
		
		Invoked by bytes(obj) in py3 only.
		Yields a bytestring in both py2/py3.
	**/
	public function __bytes__():Dynamic;
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		Provide method name lookup and completion
		Only provide 'public' methods
	**/
	public function __dir__():Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		default object formatter
	**/
	public function __format__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self>=value.
	**/
	public function __ge__(value:Dynamic):Dynamic;
	public function __getattr__(attr:Dynamic):Dynamic;
	/**
		Return getattr(self, name).
	**/
	public function __getattribute__(name:Dynamic):Dynamic;
	public function __getitem__(key:Dynamic):Dynamic;
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
	public function ___init__(obj:Dynamic, ?window:Dynamic, ?min_periods:Dynamic, ?freq:Dynamic, ?center:Dynamic, ?win_type:Dynamic, ?axis:Dynamic, ?on:Dynamic, ?closed:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(obj:Dynamic, ?window:Dynamic, ?min_periods:Dynamic, ?freq:Dynamic, ?center:Dynamic, ?win_type:Dynamic, ?axis:Dynamic, ?on:Dynamic, ?closed:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	static public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		Generates the total memory usage for a object that returns
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
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	static public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		provide a nice str repr of our rolling object 
	**/
	public function __unicode__():Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
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
	/**
		Applies a moving window of type ``window_type`` on the data.
		
		Parameters
		----------
		mean : boolean, default True
		    If True computes weighted mean, else weighted sum
		how : string, default to None (DEPRECATED)
		    how to resample
		
		Returns
		-------
		y : type of input argument
	**/
	public function _apply_window(?mean:Dynamic, ?how:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var _attributes : Dynamic;
	static public var _builtin_table : Dynamic;
	/**
		center the result in the window 
	**/
	public function _center_window(result:Dynamic, window:Dynamic):Dynamic;
	/**
		class constructor (for this class it's just `__class__`
	**/
	public var _constructor : Dynamic;
	/**
		resample according to the how, return a new object 
	**/
	public function _convert_freq(?how:Dynamic):Dynamic;
	/**
		split data into blocks & return conformed data 
	**/
	public function _create_blocks(how:Dynamic):Dynamic;
	static public var _cython_table : Dynamic;
	/**
		add addtional __dir__ for this object 
	**/
	public function _dir_additions():Dynamic;
	/**
		delete unwanted __dir__ for this object 
	**/
	public function _dir_deletions():Dynamic;
	/**
		Return index as ndarrays
		
		Returns
		-------
		tuple of (index, index_as_ndarray)
	**/
	public function _get_index(?index:Dynamic):Dynamic;
	public function _get_window(?other:Dynamic):Dynamic;
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
	static public var _internal_names : Dynamic;
	static public var _internal_names_set : Dynamic;
	/**
		if we define an builtin function for this argument, return it,
		otherwise return the arg
	**/
	public function _is_builtin_func(arg:Dynamic):Dynamic;
	/**
		if we define an internal function for this argument, return it 
	**/
	public function _is_cython_func(arg:Dynamic):Dynamic;
	static public var _obj_with_exclusions : Dynamic;
	public var _on : Dynamic;
	public function _prep_values(?values:Dynamic, ?kill_inf:Dynamic, ?how:Dynamic):Dynamic;
	/**
		provide validation for our window type, return the window
		we have already been validated
	**/
	public function _prep_window(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Reset cached properties. If ``key`` is passed, only clears that key.
	**/
	public function _reset_cache(?key:Dynamic):Dynamic;
	static public var _selected_obj : Dynamic;
	static public var _selection : Dynamic;
	public var _selection_list : Dynamic;
	/**
		return a name for myself; this would ideally be called
		the 'name' property, but we cannot conflict with the
		Series.name property which can be set
	**/
	public var _selection_name : Dynamic;
	/**
		return a new object with the replacement attributes 
	**/
	public function _shallow_copy(?obj:Dynamic, ?obj_type:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		if arg is a string, then try to operate on it:
		- try to find a function (or attribute) on ourselves
		- try to find a numpy function
		- raise
	**/
	public function _try_aggregate_string_function(arg:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var _window_type : Dynamic;
	/**
		wrap a single result 
	**/
	public function _wrap_result(result:Dynamic, ?block:Dynamic, ?obj:Dynamic):Dynamic;
	/**
		wrap the results
		
		Paramters
		---------
		results : list of ndarrays
		blocks : list of blocks
		obj : conformed data (may be resampled)
	**/
	public function _wrap_results(results:Dynamic, blocks:Dynamic, obj:Dynamic):Dynamic;
	/**
		Aggregate using callable, string, dict, or list of string/callables
		
		
		
		Parameters
		----------
		func : callable, string, dictionary, or list of string/callables
		    Function to use for aggregating the data. If a function, must either
		    work when passed a Series/DataFrame or when passed to Series/DataFrame.apply. For
		    a DataFrame, can pass a dict, if the keys are DataFrame column names.
		
		    Accepted Combinations are:
		
		    - string function name
		    - function
		    - list of functions
		    - dict of column names -> functions (or list of functions)
		
		Notes
		-----
		Numpy functions mean/median/prod/sum/std/var are special cased so the
		default behavior is applying the function along axis=0
		(e.g., np.mean(arr_2d, axis=0)) as opposed to
		mimicking the default Numpy behavior (e.g., np.mean(arr_2d)).
		
		agg is an alias for aggregate. Use it.
		
		Returns
		-------
		aggregated : Series/DataFrame
		
		Examples
		--------
		
		>>> df = pd.DataFrame(np.random.randn(10, 3), columns=['A', 'B', 'C'])
		>>> df
		          A         B         C
		0 -2.385977 -0.102758  0.438822
		1 -1.004295  0.905829 -0.954544
		2  0.735167 -0.165272 -1.619346
		3 -0.702657 -1.340923 -0.706334
		4 -0.246845  0.211596 -0.901819
		5  2.463718  3.157577 -1.380906
		6 -1.142255  2.340594 -0.039875
		7  1.396598 -1.647453  1.677227
		8 -0.543425  1.761277 -0.220481
		9 -0.640505  0.289374 -1.550670
		
		>>> df.rolling(3, win_type='boxcar').agg('mean')
		          A         B         C
		0       NaN       NaN       NaN
		1       NaN       NaN       NaN
		2 -0.885035  0.212600 -0.711689
		3 -0.323928 -0.200122 -1.093408
		4 -0.071445 -0.431533 -1.075833
		5  0.504739  0.676083 -0.996353
		6  0.358206  1.903256 -0.774200
		7  0.906020  1.283573  0.085482
		8 -0.096361  0.818139  0.472290
		9  0.070889  0.134399 -0.031308
		
		See also
		--------
		pandas.DataFrame.rolling.aggregate
		pandas.DataFrame.aggregate
	**/
	public function agg(arg:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Aggregate using callable, string, dict, or list of string/callables
		
		
		
		Parameters
		----------
		func : callable, string, dictionary, or list of string/callables
		    Function to use for aggregating the data. If a function, must either
		    work when passed a Series/DataFrame or when passed to Series/DataFrame.apply. For
		    a DataFrame, can pass a dict, if the keys are DataFrame column names.
		
		    Accepted Combinations are:
		
		    - string function name
		    - function
		    - list of functions
		    - dict of column names -> functions (or list of functions)
		
		Notes
		-----
		Numpy functions mean/median/prod/sum/std/var are special cased so the
		default behavior is applying the function along axis=0
		(e.g., np.mean(arr_2d, axis=0)) as opposed to
		mimicking the default Numpy behavior (e.g., np.mean(arr_2d)).
		
		agg is an alias for aggregate. Use it.
		
		Returns
		-------
		aggregated : Series/DataFrame
		
		Examples
		--------
		
		>>> df = pd.DataFrame(np.random.randn(10, 3), columns=['A', 'B', 'C'])
		>>> df
		          A         B         C
		0 -2.385977 -0.102758  0.438822
		1 -1.004295  0.905829 -0.954544
		2  0.735167 -0.165272 -1.619346
		3 -0.702657 -1.340923 -0.706334
		4 -0.246845  0.211596 -0.901819
		5  2.463718  3.157577 -1.380906
		6 -1.142255  2.340594 -0.039875
		7  1.396598 -1.647453  1.677227
		8 -0.543425  1.761277 -0.220481
		9 -0.640505  0.289374 -1.550670
		
		>>> df.rolling(3, win_type='boxcar').agg('mean')
		          A         B         C
		0       NaN       NaN       NaN
		1       NaN       NaN       NaN
		2 -0.885035  0.212600 -0.711689
		3 -0.323928 -0.200122 -1.093408
		4 -0.071445 -0.431533 -1.075833
		5  0.504739  0.676083 -0.996353
		6  0.358206  1.903256 -0.774200
		7  0.906020  1.283573  0.085482
		8 -0.096361  0.818139  0.472290
		9  0.070889  0.134399 -0.031308
		
		See also
		--------
		pandas.DataFrame.rolling.aggregate
		pandas.DataFrame.aggregate
	**/
	public function aggregate(arg:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var exclusions : Dynamic;
	public var is_datetimelike : Dynamic;
	public var is_freq_type : Dynamic;
	/**
		window mean
		
		Parameters
		----------
		how : string, default None (DEPRECATED)
		    Method for down- or re-sampling
		
		Returns
		-------
		same type as input
		
		See also
		--------
		pandas.Series.window
		pandas.DataFrame.window
	**/
	public function mean(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var ndim : Dynamic;
	/**
		window sum
		
		Parameters
		----------
		how : string, default None (DEPRECATED)
		    Method for down- or re-sampling
		
		Returns
		-------
		same type as input
		
		See also
		--------
		pandas.Series.window
		pandas.DataFrame.window
	**/
	public function sum(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function validate():Dynamic;
}