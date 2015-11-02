/* This file is generated, do not edit! */
package matplotlib.patches;
@:pythonImport("matplotlib.patches", "BoxStyle") extern class BoxStyle {
	/**
		A simple circle box.
	**/
	static public function Circle(?pad:Dynamic):Dynamic;
	/**
		(Double) Arrow Box
	**/
	static public function DArrow(?pad:Dynamic):Dynamic;
	/**
		(left) Arrow Box
	**/
	static public function LArrow(?pad:Dynamic):Dynamic;
	/**
		(right) Arrow Box
	**/
	static public function RArrow(?pad:Dynamic):Dynamic;
	/**
		A box with round corners.
	**/
	static public function Round(?pad:Dynamic, ?rounding_size:Dynamic):Dynamic;
	/**
		Another box with round edges.
	**/
	static public function Round4(?pad:Dynamic, ?rounding_size:Dynamic):Dynamic;
	/**
		A rounded tooth box.
	**/
	static public function Roundtooth(?pad:Dynamic, ?tooth_size:Dynamic):Dynamic;
	/**
		A sawtooth box.
	**/
	static public function Sawtooth(?pad:Dynamic, ?tooth_size:Dynamic):Dynamic;
	/**
		A simple square box.
	**/
	static public function Square(?pad:Dynamic):Dynamic;
	/**
		:class:`BBoxTransmuterBase` and its derivatives are used to make a
		fancy box around a given rectangle. The :meth:`__call__` method
		returns the :class:`~matplotlib.path.Path` of the fancy box. This
		class is not an artist and actual drawing of the fancy box is done
		by the :class:`FancyBboxPatch` class.
	**/
	static public function _Base():Dynamic;
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
	public function ___init__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		return the instance of the subclass with the given style name.
	**/
	static public function __new__(self:Dynamic, stylename:Dynamic, ?kw:python.KwArgs<Dynamic>):Dynamic;
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
	static public var _style_list : Dynamic;
	/**
		A class method which returns a dictionary of available styles.
	**/
	static public function get_styles():Dynamic;
	/**
		A class method which returns a string of the available styles.
	**/
	static public function pprint_styles():Dynamic;
	/**
		Register a new style.
	**/
	static public function register(name:Dynamic, style:Dynamic):Dynamic;
}