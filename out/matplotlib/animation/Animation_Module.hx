/* This file is generated, do not edit! */
package matplotlib.animation;
@:pythonImport("matplotlib.animation") extern class Animation_Module {
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
		Compute figure size so that pixels are a multiple of n
		
		Parameters
		----------
		w, h : float
		    Size in inches
		
		dpi : float
		    The dpi
		
		n : int
		    The target multiple
		
		Returns
		-------
		wnew, hnew : float
		    The new figure size in inches.
	**/
	static public function adjusted_figsize(w:Dynamic, h:Dynamic, dpi:Dynamic, n:Dynamic):Float;
	/**
		Decorator to mark a function as deprecated.
		
		Parameters
		----------
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
	/**
		Encode a bytestring into a bytes object containing multiple lines
		of base-64 data.
	**/
	static public function encodebytes(s:Dynamic):Dynamic;
	/**
		Return True if *obj* looks like a string
	**/
	static public function is_string_like(obj:Dynamic):Dynamic;
	/**
		return true if *obj* is iterable
	**/
	static public function iterable(obj:Dynamic):Dynamic;
	static public var mencoder_dep : Dynamic;
	static public var print_function : Dynamic;
	static public var rcParams : Dynamic;
	static public var rcParamsDefault : Dynamic;
	static public var subprocess_creation_flags : Dynamic;
	static public var unicode_literals : Dynamic;
	static public var verbose : Dynamic;
	static public var writers : Dynamic;
}