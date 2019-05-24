/* This file is generated, do not edit! */
package matplotlib.cbook.deprecation;
@:pythonImport("matplotlib.cbook.deprecation") extern class Deprecation_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Decorator indicating that parameter *name* of *func* is being deprecated.
		
		The actual implementation of *func* should keep the *name* parameter in its
		signature.
		
		Parameters that come after the deprecated parameter effectively become
		keyword-only (as they cannot be passed positionally without triggering the
		DeprecationWarning on the deprecated parameter), and should be marked as
		such after the deprecation period has passed and the deprecated parameter
		is removed.
		
		Examples
		--------
		
		::
		    @_delete_parameter("3.1", "unused")
		    def func(used_arg, other_arg, unused, more_args): ...
	**/
	static public function _delete_parameter(since:Dynamic, name:Dynamic, ?func:Dynamic):Dynamic;
	static public var _deprecated_parameter : Dynamic;
	static public function _generate_deprecation_warning(since:Dynamic, ?message:Dynamic, ?name:Dynamic, ?alternative:Dynamic, ?pending:Dynamic, ?obj_type:Dynamic, ?addendum:Dynamic, ?removal:Dynamic):Dynamic;
	/**
		Decorator indicating that passing parameter *name* (or any of the following
		ones) positionally to *func* is being deprecated.
		
		Note that this decorator **cannot** be applied to a function that has a
		pyplot-level wrapper, as the wrapper always pass all arguments by keyword.
		If it is used, users will see spurious DeprecationWarnings every time they
		call the pyplot wrapper.
	**/
	static public function _make_keyword_only(since:Dynamic, name:Dynamic, ?func:Dynamic):Dynamic;
	/**
		Decorator indicating that parameter *old* of *func* is renamed to *new*.
		
		The actual implementation of *func* should use *new*, not *old*.  If *old*
		is passed to *func*, a DeprecationWarning is emitted, and its value is
		used, even if *new* is also passed by keyword (this is to simplify pyplot
		wrapper functions, which always pass *new* explicitly to the Axes method).
		If *new* is also passed but positionally, a TypeError will be raised by the
		underlying function during argument binding.
		
		Examples
		--------
		
		::
		    @_rename_parameter("3.1", "bad_name", "good_name")
		    def func(good_name): ...
	**/
	static public function _rename_parameter(since:Dynamic, old:Dynamic, _new:Dynamic, ?func:Dynamic):Dynamic;
	static public function _suppress_matplotlib_deprecation_warning():Dynamic;
	/**
		Decorator to mark a function, a class, or a property as deprecated.
		
		When deprecating a classmethod, a staticmethod, or a property, the
		``@deprecated`` decorator should go *under* the ``@classmethod``, etc.
		decorator (i.e., `deprecated` should directly decorate the underlying
		callable).
		
		Parameters
		----------
		since : str
		    The release at which this API became deprecated.  This is
		    required.
		
		message : str, optional
		    Override the default deprecation message.  The format
		    specifier `%(name)s` may be used for the name of the object,
		    and `%(alternative)s` may be used in the deprecation message
		    to insert the name of an alternative to the deprecated
		    object.
		
		name : str, optional
		    The name of the deprecated object; if not provided the name
		    is automatically determined from the passed in object,
		    though this is useful in the case of renamed functions, where
		    the new function is just assigned to the name of the
		    deprecated function.  For example::
		
		        def new_function():
		            ...
		        old_function = new_function
		
		alternative : str, optional
		    An alternative API that the user may use in place of the deprecated
		    API.  The deprecation warning will tell the user about this alternative
		    if provided.
		
		pending : bool, optional
		    If True, uses a PendingDeprecationWarning instead of a
		    DeprecationWarning.  Cannot be used together with *removal*.
		
		obj_type : str, optional
		    The object type being deprecated; by default, 'function' if decorating
		    a function and 'class' if decorating a class.
		
		addendum : str, optional
		    Additional text appended directly to the final message.
		
		removal : str, optional
		    The expected removal version.  With the default (an empty string), a
		    removal version is automatically computed from *since*.  Set to other
		    Falsy values to not schedule a removal date.  Cannot be used together
		    with *pending*.
		
		Examples
		--------
		
		    Basic example::
		
		        @deprecated('1.4.0')
		        def the_function_to_deprecate():
		            pass
	**/
	static public function deprecated(since:Dynamic, ?message:Dynamic, ?name:Dynamic, ?alternative:Dynamic, ?pending:Dynamic, ?obj_type:Dynamic, ?addendum:Dynamic, ?removal:Dynamic):Dynamic;
	/**
		Used to display deprecation in a standard way.
		
		Parameters
		----------
		since : str
		    The release at which this API became deprecated.
		
		message : str, optional
		    Override the default deprecation message.  The format
		    specifier `%(name)s` may be used for the name of the function,
		    and `%(alternative)s` may be used in the deprecation message
		    to insert the name of an alternative to the deprecated
		    function.  `%(obj_type)s` may be used to insert a friendly name
		    for the type of object being deprecated.
		
		name : str, optional
		    The name of the deprecated object.
		
		alternative : str, optional
		    An alternative API that the user may use in place of the deprecated
		    API.  The deprecation warning will tell the user about this alternative
		    if provided.
		
		pending : bool, optional
		    If True, uses a PendingDeprecationWarning instead of a
		    DeprecationWarning.  Cannot be used together with *removal*.
		
		obj_type : str, optional
		    The object type being deprecated.
		
		addendum : str, optional
		    Additional text appended directly to the final message.
		
		removal : str, optional
		    The expected removal version.  With the default (an empty string), a
		    removal version is automatically computed from *since*.  Set to other
		    Falsy values to not schedule a removal date.  Cannot be used together
		    with *pending*.
		
		Examples
		--------
		
		    Basic example::
		
		        # To warn of the deprecation of "matplotlib.name_of_module"
		        warn_deprecated('1.4.0', name='matplotlib.name_of_module',
		                        obj_type='module')
	**/
	static public function warn_deprecated(since:Dynamic, ?message:Dynamic, ?name:Dynamic, ?alternative:Dynamic, ?pending:Dynamic, ?obj_type:Dynamic, ?addendum:Dynamic, ?removal:Dynamic):Dynamic;
}