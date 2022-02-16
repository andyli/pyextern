/* This file is generated, do not edit! */
package pandas.core.dtypes.inference;
@:pythonImport("pandas.core.dtypes.inference") extern class Inference_Module {
	static public function ArrayLike(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Pattern(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Check if the object is array-like.
		
		For an object to be considered array-like, it must be list-like and
		have a `dtype` attribute.
		
		Parameters
		----------
		obj : The object to check
		
		Returns
		-------
		is_array_like : bool
		    Whether `obj` has array-like properties.
		
		Examples
		--------
		>>> is_array_like(np.array([1, 2, 3]))
		True
		>>> is_array_like(pd.Series(["a", "b"]))
		True
		>>> is_array_like(pd.Index(["2016-01-01"]))
		True
		>>> is_array_like([1, 2, 3])
		False
		>>> is_array_like(("a", "b"))
		False
	**/
	static public function is_array_like(obj:Dynamic):Bool;
	/**
		Return True if given object is boolean.
		
		Returns
		-------
		bool
	**/
	static public function is_bool(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return True if given object is complex.
		
		Returns
		-------
		bool
	**/
	static public function is_complex(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Checks if the object is a data-class instance
		
		Parameters
		----------
		item : object
		
		Returns
		--------
		is_dataclass : bool
		    True if the item is an instance of a data-class,
		    will return false if you pass the data class itself
		
		Examples
		--------
		>>> from dataclasses import dataclass
		>>> @dataclass
		... class Point:
		...     x: int
		...     y: int
		
		>>> is_dataclass(Point)
		False
		>>> is_dataclass(Point(0,2))
		True
	**/
	static public function is_dataclass(item:Dynamic):Bool;
	static public function is_decimal(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Check if the object is dict-like.
		
		Parameters
		----------
		obj : The object to check
		
		Returns
		-------
		is_dict_like : bool
		    Whether `obj` has dict-like properties.
		
		Examples
		--------
		>>> is_dict_like({1: 2})
		True
		>>> is_dict_like([1, 2, 3])
		False
		>>> is_dict_like(dict)
		False
		>>> is_dict_like(dict())
		True
	**/
	static public function is_dict_like(obj:Dynamic):Bool;
	/**
		Check if the object is a file-like object.
		
		For objects to be considered file-like, they must
		be an iterator AND have either a `read` and/or `write`
		method as an attribute.
		
		Note: file-like objects must be iterable, but
		iterable objects need not be file-like.
		
		Parameters
		----------
		obj : The object to check
		
		Returns
		-------
		is_file_like : bool
		    Whether `obj` has file-like properties.
		
		Examples
		--------
		>>> import io
		>>> buffer = io.StringIO("data")
		>>> is_file_like(buffer)
		True
		>>> is_file_like([1, 2, 3])
		False
	**/
	static public function is_file_like(obj:Dynamic):Bool;
	/**
		Return True if given object is float.
		
		Returns
		-------
		bool
	**/
	static public function is_float(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return True if hash(obj) will succeed, False otherwise.
		
		Some types will pass a test against collections.abc.Hashable but fail when
		they are actually hashed with hash().
		
		Distinguish between these and other types by trying the call to hash() and
		seeing if they raise TypeError.
		
		Returns
		-------
		bool
		
		Examples
		--------
		>>> import collections
		>>> a = ([],)
		>>> isinstance(a, collections.abc.Hashable)
		True
		>>> is_hashable(a)
		False
	**/
	static public function is_hashable(obj:Dynamic):Dynamic;
	/**
		Check if this is a ndarray[bool] or an ndarray[object] of bool objects.
		
		Parameters
		----------
		arr : np.ndarray or ExtensionArray
		
		Returns
		-------
		bool
		
		Notes
		-----
		This does not include the special treatment is_bool_dtype uses for
		Categorical.
	**/
	static public function is_inferred_bool_dtype(arr:Dynamic):Dynamic;
	/**
		Return True if given object is integer.
		
		Returns
		-------
		bool
	**/
	static public function is_integer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function is_interval(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Check if the object is an iterator.
		
		This is intended for generators, not list-like objects.
		
		Parameters
		----------
		obj : The object to check
		
		Returns
		-------
		is_iter : bool
		    Whether `obj` is an iterator.
		
		Examples
		--------
		>>> import datetime
		>>> is_iterator((x for x in []))
		True
		>>> is_iterator([1, 2, 3])
		False
		>>> is_iterator(datetime.datetime(2017, 1, 1))
		False
		>>> is_iterator("foo")
		False
		>>> is_iterator(1)
		False
	**/
	static public function is_iterator(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Check if the object is a named tuple.
		
		Parameters
		----------
		obj : The object to check
		
		Returns
		-------
		is_named_tuple : bool
		    Whether `obj` is a named tuple.
		
		Examples
		--------
		>>> from collections import namedtuple
		>>> Point = namedtuple("Point", ["x", "y"])
		>>> p = Point(1, 2)
		>>>
		>>> is_named_tuple(p)
		True
		>>> is_named_tuple((1, 2))
		False
	**/
	static public function is_named_tuple(obj:Dynamic):Bool;
	/**
		Check if the object is list-like, and that all of its elements
		are also list-like.
		
		Parameters
		----------
		obj : The object to check
		
		Returns
		-------
		is_list_like : bool
		    Whether `obj` has list-like properties.
		
		Examples
		--------
		>>> is_nested_list_like([[1, 2, 3]])
		True
		>>> is_nested_list_like([{1, 2, 3}, {1, 2, 3}])
		True
		>>> is_nested_list_like(["foo"])
		False
		>>> is_nested_list_like([])
		False
		>>> is_nested_list_like([[1, 2, 3], 1])
		False
		
		Notes
		-----
		This won't reliably detect whether a consumable iterator (e. g.
		a generator) is a nested-list-like without consuming the iterator.
		To avoid consuming it, we always return False if the outer container
		doesn't define `__len__`.
		
		See Also
		--------
		is_list_like
	**/
	static public function is_nested_list_like(obj:Dynamic):Bool;
	/**
		Check if the object is a number.
		
		Returns True when the object is a number, and False if is not.
		
		Parameters
		----------
		obj : any type
		    The object to check if is a number.
		
		Returns
		-------
		is_number : bool
		    Whether `obj` is a number or not.
		
		See Also
		--------
		api.types.is_integer: Checks a subgroup of numbers.
		
		Examples
		--------
		>>> from pandas.api.types import is_number
		>>> is_number(1)
		True
		>>> is_number(7.15)
		True
		
		Booleans are valid because they are int subclass.
		
		>>> is_number(False)
		True
		
		>>> is_number("foo")
		False
		>>> is_number("5")
		False
	**/
	static public function is_number(obj:Dynamic):Bool;
	/**
		Check if the object is a regex pattern instance.
		
		Parameters
		----------
		obj : The object to check
		
		Returns
		-------
		is_regex : bool
		    Whether `obj` is a regex pattern.
		
		Examples
		--------
		>>> is_re(re.compile(".*"))
		True
		>>> is_re("foo")
		False
	**/
	static public function is_re(obj:Dynamic):Bool;
	/**
		Check if the object can be compiled into a regex pattern instance.
		
		Parameters
		----------
		obj : The object to check
		
		Returns
		-------
		is_regex_compilable : bool
		    Whether `obj` can be compiled as a regex pattern.
		
		Examples
		--------
		>>> is_re_compilable(".*")
		True
		>>> is_re_compilable(1)
		False
	**/
	static public function is_re_compilable(obj:Dynamic):Bool;
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
	/**
		Check if the object is a sequence of objects.
		String types are not included as sequences here.
		
		Parameters
		----------
		obj : The object to check
		
		Returns
		-------
		is_sequence : bool
		    Whether `obj` is a sequence of objects.
		
		Examples
		--------
		>>> l = [1, 2, 3]
		>>>
		>>> is_sequence(l)
		True
		>>> is_sequence(iter(l))
		False
	**/
	static public function is_sequence(obj:Dynamic):Bool;
	/**
		Check if the object is an iterable but not a string.
		
		Parameters
		----------
		obj : The object to check.
		
		Returns
		-------
		is_iter_not_string : bool
		    Whether `obj` is a non-string iterable.
		
		Examples
		--------
		>>> iterable_not_string([1, 2, 3])
		True
		>>> iterable_not_string("foo")
		False
		>>> iterable_not_string(1)
		False
	**/
	static public function iterable_not_string(obj:Dynamic):Bool;
}