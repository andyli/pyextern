/* This file is generated, do not edit! */
package matplotlib;
@:pythonImport("matplotlib", "Verbose") extern class Verbose {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		.. deprecated:: 2.2
		    matplotlib.verbose is deprecated;
		Command line argument --verbose-LEVEL is deprecated.
		This functionality is now provided by the standard
		python logging library.  To get more (or less) logging output:
		    import logging
		    logger = logging.getLogger('matplotlib')
		    logger.set_level(logging.INFO)
		
		\ 
	**/
	@:native("__init__")
	public function ___init__():Dynamic;
	/**
		.. deprecated:: 2.2
		    matplotlib.verbose is deprecated;
		Command line argument --verbose-LEVEL is deprecated.
		This functionality is now provided by the standard
		python logging library.  To get more (or less) logging output:
		    import logging
		    logger = logging.getLogger('matplotlib')
		    logger.set_level(logging.INFO)
		
		\ 
	**/
	public function new():Void;
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
	static public var _commandLineVerbose : Dynamic;
	static public var arg : Dynamic;
	/**
		.. deprecated:: 2.2
		    matplotlib.verbose is deprecated;
		Command line argument --verbose-LEVEL is deprecated.
		This functionality is now provided by the standard
		python logging library.  To get more (or less) logging output:
		    import logging
		    logger = logging.getLogger('matplotlib')
		    logger.set_level(logging.INFO)
		
		return true if self.level is >= level
	**/
	public function ge(level:Dynamic):Dynamic;
	static public var levels : Dynamic;
	/**
		.. deprecated:: 2.2
		    matplotlib.verbose is deprecated;
		Command line argument --verbose-LEVEL is deprecated.
		This functionality is now provided by the standard
		python logging library.  To get more (or less) logging output:
		    import logging
		    logger = logging.getLogger('matplotlib')
		    logger.set_level(logging.INFO)
		
		print message s to self.fileo if self.level>=level.  Return
		value indicates whether a message was issued
	**/
	public function report(s:Dynamic, ?level:Dynamic):Dynamic;
	/**
		.. deprecated:: 2.2
		    matplotlib.verbose is deprecated;
		Command line argument --verbose-LEVEL is deprecated.
		This functionality is now provided by the standard
		python logging library.  To get more (or less) logging output:
		    import logging
		    logger = logging.getLogger('matplotlib')
		    logger.set_level(logging.INFO)
		
		\ 
	**/
	public function set_fileo(fname:Dynamic):Dynamic;
	/**
		.. deprecated:: 2.2
		    matplotlib.verbose is deprecated;
		Command line argument --verbose-LEVEL is deprecated.
		This functionality is now provided by the standard
		python logging library.  To get more (or less) logging output:
		    import logging
		    logger = logging.getLogger('matplotlib')
		    logger.set_level(logging.INFO)
		
		set the verbosity to one of the Verbose.levels strings
	**/
	public function set_level(level:Dynamic):Dynamic;
	static public var vald : Dynamic;
	/**
		.. deprecated:: 2.2
		    matplotlib.verbose is deprecated;
		Command line argument --verbose-LEVEL is deprecated.
		This functionality is now provided by the standard
		python logging library.  To get more (or less) logging output:
		    import logging
		    logger = logging.getLogger('matplotlib')
		    logger.set_level(logging.INFO)
		
		return a callable function that wraps func and reports it
		output through the verbose handler if current verbosity level
		is higher than level
		
		if always is True, the report will occur on every function
		call; otherwise only on the first time the function is called
	**/
	public function wrap(fmt:Dynamic, func:Dynamic, ?level:Dynamic, ?always:Dynamic):Dynamic;
}