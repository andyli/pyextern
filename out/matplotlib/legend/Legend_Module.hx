/* This file is generated, do not edit! */
package matplotlib.legend;
@:pythonImport("matplotlib.legend") extern class Legend_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Decorator for Artist.draw method. Provides routines
		that run before and after the draw call. The before and after functions
		are useful for changing artist-dependant renderer attributes or making
		other setup function calls, such as starting and flushing a mixed-mode
		renderer.
	**/
	static public function allow_rasterization(draw:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Return True if *obj* looks like a string
	**/
	static public function is_string_like(obj:Dynamic):Dynamic;
	/**
		return true if *obj* is iterable
	**/
	static public function iterable(obj:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public var rcParams : Dynamic;
	/**
		make sure *args* are equal len before zipping
	**/
	static public function safezip(args:Dynamic):Dynamic;
	static public var unicode_literals : Dynamic;
	/**
		Used to display deprecation warning in a standard way.
		
		Parameters
		------------
		since : str
		    The release at which this API became deprecated.
		
		message : str, optional
		    Override the default deprecation message.  The format
		    specifier `%(func)s` may be used for the name of the function,
		    and `%(alternative)s` may be used in the deprecation message
		    to insert the name of an alternative to the deprecated
		    function.  `%(obj_type)` may be used to insert a friendly name
		    for the type of object being deprecated.
		
		name : str, optional
		    The name of the deprecated function; if not provided the name
		    is automatically determined from the passed in function,
		    though this is useful in the case of renamed functions, where
		    the new function is just assigned to the name of the
		    deprecated function.  For example::
		
		        def new_function():
		            ...
		        oldFunction = new_function
		
		alternative : str, optional
		    An alternative function that the user may use in place of the
		    deprecated function.  The deprecation warning will tell the user about
		    this alternative if provided.
		
		pending : bool, optional
		    If True, uses a PendingDeprecationWarning instead of a
		    DeprecationWarning.
		
		obj_type : str, optional
		    The object type being deprecated.
		
		Examples
		--------
		
		    Basic example::
		
		        # To warn of the deprecation of "matplotlib.name_of_module"
		        warn_deprecated('1.4.0', name='matplotlib.name_of_module',
		                        obj_type='module')
	**/
	static public function warn_deprecated(since:Dynamic, ?message:Dynamic, ?name:Dynamic, ?alternative:Dynamic, ?pending:Dynamic, ?obj_type:Dynamic):Dynamic;
}