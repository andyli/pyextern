/* This file is generated, do not edit! */
package matplotlib.patches;
@:pythonImport("matplotlib.patches", "BoxStyle") extern class BoxStyle {
	/**
		A circular box.
	**/
	static public function Circle(?pad:Dynamic):Dynamic;
	/**
		A box in the shape of a two-way arrow.
	**/
	static public function DArrow(?pad:Dynamic):Dynamic;
	/**
		A box in the shape of a left-pointing arrow.
	**/
	static public function LArrow(?pad:Dynamic):Dynamic;
	/**
		A box in the shape of a right-pointing arrow.
	**/
	static public function RArrow(?pad:Dynamic):Dynamic;
	/**
		A box with round corners.
	**/
	static public function Round(?pad:Dynamic, ?rounding_size:Dynamic):Dynamic;
	/**
		A box with rounded edges.
	**/
	static public function Round4(?pad:Dynamic, ?rounding_size:Dynamic):Dynamic;
	/**
		A box with a rounded sawtooth outline.
	**/
	static public function Roundtooth(?pad:Dynamic, ?tooth_size:Dynamic):Dynamic;
	/**
		A box with a sawtooth outline.
	**/
	static public function Sawtooth(?pad:Dynamic, ?tooth_size:Dynamic):Dynamic;
	/**
		A square box.
	**/
	static public function Square(?pad:Dynamic):Dynamic;
	/**
		[*Deprecated*] Abstract base class for styling of `.FancyBboxPatch`.
		
		This class is not an artist itself.  The `__call__` method returns the
		`~matplotlib.path.Path` for outlining the fancy box. The actual drawing
		is handled in `.FancyBboxPatch`.
		
		Subclasses may only use parameters with default values in their
		``__init__`` method because they must be able to be initialized
		without arguments.
		
		Subclasses must implement the `__call__` method. It receives the
		enclosing rectangle *x0, y0, width, height* as well as the
		*mutation_size*, which scales the outline properties such as padding.
		It returns the outline of the fancy box as `.path.Path`.
		
		Notes
		-----
		.. deprecated:: 3.4
		   
	**/
	static public function _Base(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		Return the instance of the subclass with the given style name.
	**/
	static public function __new__(cls:Dynamic, stylename:Dynamic, ?kw:python.KwArgs<Dynamic>):Dynamic;
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
	static public var _style_list : Dynamic;
	/**
		Return a dictionary of available styles.
	**/
	static public function get_styles():Dynamic;
	/**
		Return the available styles as pretty-printed string.
	**/
	static public function pprint_styles():Dynamic;
	/**
		Register a new style.
	**/
	static public function register(name:Dynamic, style:Dynamic):Dynamic;
}