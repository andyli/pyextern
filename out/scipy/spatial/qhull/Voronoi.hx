/* This file is generated, do not edit! */
package scipy.spatial.qhull;
@:pythonImport("scipy.spatial.qhull", "Voronoi") extern class Voronoi {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __del__():Dynamic;
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
	@:native("__init__")
	public function ___init__(points:Dynamic, ?furthest_site:Dynamic, ?incremental:Dynamic, ?qhull_options:Dynamic):Dynamic;
	public function new(points:Dynamic, ?furthest_site:Dynamic, ?incremental:Dynamic, ?qhull_options:Dynamic):Void;
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
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	/**
		add_points(points, restart=False)
		
		Process a set of additional new points.
		
		Parameters
		----------
		points : ndarray
		    New points to add. The dimensionality should match that of the
		    initial points.
		restart : bool, optional
		    Whether to restart processing from scratch, rather than
		    adding points incrementally.
		
		Raises
		------
		QhullError
		    Raised when Qhull encounters an error condition, such as
		    geometrical degeneracy when options to resolve are not enabled.
		
		See Also
		--------
		close
		
		Notes
		-----
		You need to specify ``incremental=True`` when constructing the
		object to be able to add points incrementally. Incremental addition
		of points is also not possible after `close` has been called.
	**/
	public function _add_points(points:Dynamic, ?restart:Dynamic, ?interior_point:Dynamic):Dynamic;
	static public var _qhull : Dynamic;
	public function _update(qhull:Dynamic):Dynamic;
	/**
		add_points(points, restart=False)
		
		Process a set of additional new points.
		
		Parameters
		----------
		points : ndarray
		    New points to add. The dimensionality should match that of the
		    initial points.
		restart : bool, optional
		    Whether to restart processing from scratch, rather than
		    adding points incrementally.
		
		Raises
		------
		QhullError
		    Raised when Qhull encounters an error condition, such as
		    geometrical degeneracy when options to resolve are not enabled.
		
		See Also
		--------
		close
		
		Notes
		-----
		You need to specify ``incremental=True`` when constructing the
		object to be able to add points incrementally. Incremental addition
		of points is also not possible after `close` has been called.
	**/
	public function add_points(points:Dynamic, ?restart:Dynamic):Dynamic;
	/**
		close()
		
		Finish incremental processing.
		
		Call this to free resources taken up by Qhull, when using the
		incremental mode. After calling this, adding more points is no
		longer possible.
	**/
	public function close():Dynamic;
	public var points : Dynamic;
	public var ridge_dict : Dynamic;
}