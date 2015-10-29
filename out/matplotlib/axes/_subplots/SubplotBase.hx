/* This file is generated, do not edit! */
package matplotlib.axes._subplots;
@:pythonImport("matplotlib.axes._subplots", "SubplotBase") extern class SubplotBase {
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
		*fig* is a :class:`matplotlib.figure.Figure` instance.
		
		*args* is the tuple (*numRows*, *numCols*, *plotNum*), where
		the array of subplots in the figure has dimensions *numRows*,
		*numCols*, and where *plotNum* is the number of the subplot
		being created.  *plotNum* starts at 1 in the upper left
		corner and increases to the right.
		
		
		If *numRows* <= *numCols* <= *plotNum* < 10, *args* can be the
		decimal integer *numRows* * 100 + *numCols* * 10 + *plotNum*.
	**/
	@:native("__init__")
	public function ___init__(fig:Dynamic, args:Dynamic, kwargs:Dynamic):Dynamic;
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
	static public function __new__(args:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce__():Dynamic;
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
	static public var __weakref__ : Dynamic;
	/**
		make a twinx axes of self. This is used for twinx and twiny.
	**/
	public function _make_twin_axes(kl:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		change subplot geometry, e.g., from 1,1,1 to 2,2,3
	**/
	public function change_geometry(numrows:Dynamic, numcols:Dynamic, num:Dynamic):Dynamic;
	/**
		get the subplot geometry, e.g., 2,2,3
	**/
	public function get_geometry():Dynamic;
	/**
		get the SubplotSpec instance associated with the subplot
	**/
	public function get_subplotspec():Dynamic;
	public function is_first_col():Dynamic;
	public function is_first_row():Dynamic;
	public function is_last_col():Dynamic;
	public function is_last_row():Dynamic;
	/**
		set the visible property on ticklabels so xticklabels are
		visible only if the subplot is in the last row and yticklabels
		are visible only if the subplot is in the first column
	**/
	public function label_outer():Dynamic;
	/**
		set the SubplotSpec instance associated with the subplot
	**/
	public function set_subplotspec(subplotspec:Dynamic):Dynamic;
	/**
		update the subplot position from fig.subplotpars
	**/
	public function update_params():Dynamic;
}