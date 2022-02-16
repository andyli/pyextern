/* This file is generated, do not edit! */
package matplotlib.category;
@:pythonImport("matplotlib.category", "StrCategoryConverter") extern class StrCategoryConverter {
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
	static public function _validate_unit(unit:Dynamic):Dynamic;
	/**
		Set the default axis ticks and labels.
		
		Parameters
		----------
		unit : `.UnitData`
		    object string unit information for value
		axis : `~matplotlib.axis.Axis`
		    axis for which information is being set
		
		    .. note:: *axis* is not used
		
		Returns
		-------
		`~matplotlib.units.AxisInfo`
		    Information to support default tick labeling
	**/
	static public function axisinfo(unit:Dynamic, axis:Dynamic):Dynamic;
	/**
		Convert strings in *value* to floats using mapping information stored
		in the *unit* object.
		
		Parameters
		----------
		value : str or iterable
		    Value or list of values to be converted.
		unit : `.UnitData`
		    An object mapping strings to integers.
		axis : `~matplotlib.axis.Axis`
		    The axis on which the converted value is plotted.
		
		    .. note:: *axis* is unused.
		
		Returns
		-------
		float or ndarray[float]
	**/
	static public function convert(value:Dynamic, unit:Dynamic, axis:Dynamic):Dynamic;
	/**
		Set and update the `~matplotlib.axis.Axis` units.
		
		Parameters
		----------
		data : str or iterable of str
		axis : `~matplotlib.axis.Axis`
		    axis on which the data is plotted
		
		Returns
		-------
		`.UnitData`
		    object storing string to integer mapping
	**/
	static public function default_units(data:Dynamic, axis:Dynamic):Dynamic;
	/**
		[*Deprecated*] The Matplotlib datalim, autoscaling, locators etc work with scalars
		which are the units converted to floats given the current unit.  The
		converter may be passed these floats, or arrays of them, even when
		units are set.
		
		Notes
		-----
		.. deprecated:: 3.5
		   
	**/
	static public function is_numlike(x:Dynamic):Dynamic;
}