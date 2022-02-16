/* This file is generated, do not edit! */
package pandas.core.dtypes.dtypes;
@:pythonImport("pandas.core.dtypes.dtypes") extern class Dtypes_Module {
	static public function Any(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function Dtype(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function DtypeObj(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function MutableMapping(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var NaT : Dynamic;
	static public function Ordered(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var TYPE_CHECKING : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var annotations : Dynamic;
	/**
		Cast a value to a type.
		
		This returns the value unchanged.  To the type checker this
		signals that the return value has the designated type, but at
		runtime we intentionally don't check anything (we want this
		to be as fast as possible).
	**/
	@:native("cast")
	static public function _cast(typ:Dynamic, val:Dynamic):Dynamic;
	/**
		Return True if given object is boolean.
		
		Returns
		-------
		bool
	**/
	static public function is_bool(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public var npt : Dynamic;
	/**
		Register an ExtensionType with pandas as class decorator.
		
		This enables operations like ``.astype(name)`` for the name
		of the ExtensionDtype.
		
		Returns
		-------
		callable
		    A class decorator.
		
		Examples
		--------
		>>> from pandas.api.extensions import register_extension_dtype, ExtensionDtype
		>>> @register_extension_dtype
		... class MyExtensionDtype(ExtensionDtype):
		...     name = "myextension"
	**/
	static public function register_extension_dtype(cls:Dynamic):Dynamic;
	/**
		Return DateOffset object from string or tuple representation
		or datetime.timedelta object.
		
		Parameters
		----------
		freq : str, datetime.timedelta, BaseOffset or None
		
		Returns
		-------
		DateOffset or None
		
		Raises
		------
		ValueError
		    If freq is an invalid frequency
		
		See Also
		--------
		BaseOffset : Standard kind of date increment used for a date range.
		
		Examples
		--------
		>>> to_offset("5min")
		<5 * Minutes>
		
		>>> to_offset("1D1H")
		<25 * Hours>
		
		>>> to_offset("2W")
		<2 * Weeks: weekday=6>
		
		>>> to_offset("2B")
		<2 * BusinessDays>
		
		>>> to_offset(pd.Timedelta(days=1))
		<Day>
		
		>>> to_offset(Hour())
		<Hour>
	**/
	static public function to_offset(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		A special construct usable to annotate class objects.
		
		For example, suppose we have the following classes::
		
		  class User: ...  # Abstract base for User classes
		  class BasicUser(User): ...
		  class ProUser(User): ...
		  class TeamUser(User): ...
		
		And a function that takes a class argument that's a subclass of
		User and returns an instance of the corresponding class::
		
		  U = TypeVar('U', bound=User)
		  def new_user(user_class: Type[U]) -> U:
		      user = user_class()
		      # (Here we could write the user object to a database)
		      return user
		
		  joe = new_user(BasicUser)
		
		At this point the type checker knows that joe has type BasicUser.
	**/
	static public function type_t(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Compare string representations of timezones
		
		The same timezone can be represented as different instances of
		timezones. For example
		`<DstTzInfo 'Europe/Paris' LMT+0:09:00 STD>` and
		`<DstTzInfo 'Europe/Paris' CET+1:00:00 STD>` are essentially same
		timezones but aren't evaluated such, but the string representation
		for both of these is `'Europe/Paris'`.
		
		This exists only to add a notion of equality to pytz-style zones
		that is compatible with the notion of equality expected of tzinfo
		subclasses.
		
		Parameters
		----------
		start : tzinfo
		end : tzinfo
		
		Returns:
		-------
		bool
	**/
	static public function tz_compare(args:haxe.extern.Rest<Dynamic>):Dynamic;
}