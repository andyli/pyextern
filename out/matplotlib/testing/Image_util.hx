/* This file is generated, do not edit! */
package matplotlib.testing;
@:pythonImport("matplotlib.testing.image_util") extern class Image_util {
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
		.. deprecated:: 1.4.0
		    The autocontrast function was deprecated in version 1.4.0.
		
		Maximize image contrast, based on histogram.  This completely
		ignores the alpha channel.
	**/
	static public function autocontrast(image:Dynamic, ?cutoff:Dynamic):Dynamic;
	/**
		Decorator to mark a function as deprecated.
		
		Parameters
		------------
		since : str
		    The release at which this API became deprecated.  This is
		    required.
		
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
		
		Examples
		--------
		
		    Basic example::
		
		        @deprecated('1.4.0')
		        def the_function_to_deprecate():
		            pass
	**/
	static public function deprecated(since:Dynamic, ?message:Dynamic, ?name:Dynamic, ?alternative:Dynamic, ?pending:Dynamic, ?obj_type:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
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