/* This file is generated, do not edit! */
package pandas.core.resample;
@:pythonImport("pandas.core.resample", "TimeGrouper") extern class TimeGrouper {
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		__dir__() -> list
		default dir() implementation
	**/
	public function __dir__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function ___init__(?freq:Dynamic, ?closed:Dynamic, ?label:Dynamic, ?how:Dynamic, ?nperiods:Dynamic, ?axis:Dynamic, ?fill_method:Dynamic, ?limit:Dynamic, ?loffset:Dynamic, ?kind:Dynamic, ?convention:Dynamic, ?base:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?freq:Dynamic, ?closed:Dynamic, ?label:Dynamic, ?how:Dynamic, ?nperiods:Dynamic, ?axis:Dynamic, ?fill_method:Dynamic, ?limit:Dynamic, ?loffset:Dynamic, ?kind:Dynamic, ?convention:Dynamic, ?base:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Void;
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
	static public function __new__(cls:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce_ex__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		__sizeof__() -> int
		size of object in memory, in bytes
	**/
	public function __sizeof__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	public function _adjust_bin_edges(binner:Dynamic, ax_values:Dynamic):Dynamic;
	/**
		default to the standard binner here 
	**/
	public function _get_binner_for_grouping(obj:Dynamic):Dynamic;
	/**
		Parameters
		----------
		obj : the subject object
		
		Returns
		-------
		a tuple of binner, grouper, obj (possibly sorted)
	**/
	public function _get_grouper(obj:Dynamic):Dynamic;
	/**
		return my resampler or raise if we have an invalid axis
		
		Parameters
		----------
		obj : input object
		kind : string, optional
		    'period','timestamp','timedelta' are valid
		
		Returns
		-------
		a Resampler
		
		Raises
		------
		TypeError if incompatible axis
	**/
	public function _get_resampler(obj:Dynamic, ?kind:Dynamic):Dynamic;
	public function _get_time_bins(ax:Dynamic):Dynamic;
	public function _get_time_delta_bins(ax:Dynamic):Dynamic;
	public function _get_time_period_bins(ax:Dynamic):Dynamic;
	/**
		given an object and the specifications, setup the internal grouper
		for this particular specification
		
		Parameters
		----------
		obj : the subject object
		sort : bool, default False
		    whether the resulting grouper should be sorted
	**/
	public function _set_grouper(obj:Dynamic, ?sort:Dynamic):Dynamic;
	public var ax : Dynamic;
	public var groups : Dynamic;
}