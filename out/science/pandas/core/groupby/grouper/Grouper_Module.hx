/* This file is generated, do not edit! */
package pandas.core.groupby.grouper;
@:pythonImport("pandas.core.groupby.grouper") extern class Grouper_Module {
	static public function Any(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function ArrayLike(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Hashable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var NDFrameT : Dynamic;
	static public var TYPE_CHECKING : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Check for use of deprecated parameters in ``resample`` and related functions.
		
		Raises the appropriate warnings if these parameters are detected.
		Only sets an approximate ``stacklevel`` for the warnings (see #37603, #36629).
		
		Parameters
		----------
		kwargs : dict
		    Dictionary of keyword arguments to check for deprecated parameters.
		origin : object
		    From where this function is being called; either Grouper or TimeGrouper. Used
		    to determine an approximate stacklevel.
	**/
	static public function _check_deprecated_resample_kwargs(kwargs:Dynamic, origin:Dynamic):Dynamic;
	static public function _convert_grouper(axis:Dynamic, grouper:Dynamic):Dynamic;
	static public function _is_label_like(val:Dynamic):Dynamic;
	static public var annotations : Dynamic;
	/**
		A decorator to indicate final methods and final classes.
		
		Use this decorator to indicate to type checkers that the decorated
		method cannot be overridden, and decorated class cannot be subclassed.
		For example:
		
		  class Base:
		      @final
		      def done(self) -> None:
		          ...
		  class Sub(Base):
		      def done(self) -> None:  # Error reported by type checker
		            ...
		
		  @final
		  class Leaf:
		      ...
		  class Other(Leaf):  # Error reported by type checker
		      ...
		
		There is no runtime checking of these properties.
	**/
	@:native("final")
	static public function _final(f:Dynamic):Dynamic;
	/**
		Find the first place in the stack that is not inside pandas
		(tests notwithstanding).
	**/
	static public function find_stack_level():Dynamic;
	/**
		Create and return a BaseGrouper, which is an internal
		mapping of how to create the grouper indexers.
		This may be composed of multiple Grouping objects, indicating
		multiple groupers
		
		Groupers are ultimately index mappings. They can originate as:
		index mappings, keys to columns, functions, or Groupers
		
		Groupers enable local references to axis,level,sort, while
		the passed in axis, level, and sort are 'global'.
		
		This routine tries to figure out what the passing in references
		are and then creates a Grouping for each one, combined into
		a BaseGrouper.
		
		If observed & we have a categorical grouper, only show the observed
		values.
		
		If validate, then check for key/level overlaps.
	**/
	static public function get_grouper(obj:Dynamic, ?key:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?sort:Dynamic, ?observed:Dynamic, ?mutated:Dynamic, ?validate:Dynamic, ?dropna:Dynamic):Dynamic;
	/**
		Check whether an array-like or dtype is of the Categorical dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like or dtype
		    The array-like or dtype to check.
		
		Returns
		-------
		boolean
		    Whether or not the array-like or dtype is of the Categorical dtype.
		
		Examples
		--------
		>>> is_categorical_dtype(object)
		False
		>>> is_categorical_dtype(CategoricalDtype())
		True
		>>> is_categorical_dtype([1, 2, 3])
		False
		>>> is_categorical_dtype(pd.Categorical([1, 2, 3]))
		True
		>>> is_categorical_dtype(pd.CategoricalIndex([1, 2, 3]))
		True
	**/
	static public function is_categorical_dtype(arr_or_dtype:Dynamic):Dynamic;
	/**
		Check if the object is list-like.
		
		Objects that are considered list-like are for example Python
		lists, tuples, sets, NumPy arrays, and Pandas Series.
		
		Strings and datetime objects, however, are not considered list-like.
		
		Parameters
		----------
		obj : object
		    Object to check.
		allow_sets : bool, default True
		    If this parameter is False, sets will not be considered list-like.
		
		Returns
		-------
		bool
		    Whether `obj` has list-like properties.
		
		Examples
		--------
		>>> import datetime
		>>> is_list_like([1, 2, 3])
		True
		>>> is_list_like({1, 2, 3})
		True
		>>> is_list_like(datetime.datetime(2017, 1, 1))
		False
		>>> is_list_like("foo")
		False
		>>> is_list_like(1)
		False
		>>> is_list_like(np.array([2]))
		True
		>>> is_list_like(np.array(2))
		False
	**/
	static public function is_list_like(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return True if given object is scalar.
		
		Parameters
		----------
		val : object
		    This includes:
		
		    - numpy array scalar (e.g. np.int64)
		    - Python builtin numerics
		    - Python builtin byte arrays and strings
		    - None
		    - datetime.datetime
		    - datetime.timedelta
		    - Period
		    - decimal.Decimal
		    - Interval
		    - DateOffset
		    - Fraction
		    - Number.
		
		Returns
		-------
		bool
		    Return True if given object is scalar.
		
		Examples
		--------
		>>> import datetime
		>>> dt = datetime.datetime(2018, 10, 3)
		>>> pd.api.types.is_scalar(dt)
		True
		
		>>> pd.api.types.is_scalar([2, 3])
		False
		
		>>> pd.api.types.is_scalar({0: 1, 2: 3})
		False
		
		>>> pd.api.types.is_scalar((0, 2))
		False
		
		pandas supports PEP 3141 numbers:
		
		>>> from fractions import Fraction
		>>> pd.api.types.is_scalar(Fraction(3, 5))
		True
	**/
	static public function is_scalar(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var npt : Dynamic;
	/**
		This function is the sanctioned way of converting objects
		to a string representation and properly handles nested sequences.
		
		Parameters
		----------
		thing : anything to be formatted
		_nest_lvl : internal use only. pprint_thing() is mutually-recursive
		    with pprint_sequence, this argument is used to keep track of the
		    current nesting level, and limit it.
		escape_chars : list or dict, optional
		    Characters to escape. If a dict is passed the values are the
		    replacements
		default_escapes : bool, default False
		    Whether the input escape characters replaces or adds to the defaults
		max_seq_items : int or None, default None
		    Pass through to other pretty printers to limit sequence printing
		
		Returns
		-------
		str
	**/
	static public function pprint_thing(thing:Dynamic, ?_nest_lvl:Dynamic, ?escape_chars:Dynamic, ?default_escapes:Dynamic, ?quote_strings:Dynamic, ?max_seq_items:Dynamic):Dynamic;
	/**
		Code the categories to ensure we can groupby for categoricals.
		
		If observed=True, we return a new Categorical with the observed
		categories only.
		
		If sort=False, return a copy of self, coded with categories as
		returned by .unique(), followed by any categories not appearing in
		the data. If sort=True, return self.
		
		This method is needed solely to ensure the categorical index of the
		GroupBy result has categories in the order of appearance in the data
		(GH-8868).
		
		Parameters
		----------
		c : Categorical
		sort : bool
		    The value of the sort parameter groupby was called with.
		observed : bool
		    Account only for the observed values
		
		Returns
		-------
		Categorical
		    If sort=False, the new categories are set to the order of
		    appearance in codes (unless ordered=True, in which case the
		    original order is preserved), followed by any unrepresented
		    categories in the original order.
		Categorical or None
		    If we are observed, return the original categorical, otherwise None
	**/
	static public function recode_for_groupby(c:Dynamic, sort:Dynamic, observed:Dynamic):Dynamic;
	/**
		Reverse the codes_to_groupby to account for sort / observed.
		
		Parameters
		----------
		c : Categorical
		sort : bool
		    The value of the sort parameter groupby was called with.
		ci : CategoricalIndex
		    The codes / categories to recode
		
		Returns
		-------
		CategoricalIndex
	**/
	static public function recode_from_groupby(c:Dynamic, sort:Dynamic, ci:Dynamic):Dynamic;
	/**
		Safely convert non-nanosecond datetime64 or timedelta64 values to nanosecond.
	**/
	static public function sanitize_to_nanoseconds(values:Dynamic, ?copy:Dynamic):Dynamic;
}