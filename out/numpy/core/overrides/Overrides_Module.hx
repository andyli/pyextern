/* This file is generated, do not edit! */
package numpy.core.overrides;
@:pythonImport("numpy.core.overrides") extern class Overrides_Module {
	static public var ENABLE_ARRAY_FUNCTION : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Collect arguments on which to call __array_function__.
		
		Parameters
		----------
		relevant_args : iterable of array-like
		    Iterable of possibly array-like arguments to check for
		    __array_function__ methods.
		
		Returns
		-------
		Sequence of arguments with __array_function__ methods, in the order in
		which they should be called.
	**/
	static public function _get_implementing_args(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		add_docstring(obj, docstring)
		
		Add a docstring to a built-in obj if possible.
		If the obj already has a docstring raise a RuntimeError
		If this routine does not know how to add a docstring to the object
		raise a TypeError
	**/
	static public function add_docstring(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Decorator for adding dispatch with the __array_function__ protocol.
		
		See NEP-18 for example usage.
		
		Parameters
		----------
		dispatcher : callable
		    Function that when called like ``dispatcher(*args, **kwargs)`` with
		    arguments from the NumPy function call returns an iterable of
		    array-like arguments to check for ``__array_function__``.
		module : str, optional
		    __module__ attribute to set on new function, e.g., ``module='numpy'``.
		    By default, module is copied from the decorated function.
		verify : bool, optional
		    If True, verify the that the signature of the dispatcher and decorated
		    function signatures match exactly: all required and optional arguments
		    should appear in order with the same names, but the default values for
		    all optional arguments should be ``None``. Only disable verification
		    if the dispatcher's signature needs to deviate for some particular
		    reason, e.g., because the function has a signature like
		    ``func(*args, **kwargs)``.
		docs_from_dispatcher : bool, optional
		    If True, copy docs from the dispatcher function onto the dispatched
		    function, rather than from the implementation. This is useful for
		    functions defined in C, which otherwise don't have docstrings.
		
		Returns
		-------
		Function suitable for decorating the implementation of a NumPy function.
	**/
	static public function array_function_dispatch(dispatcher:Dynamic, ?module:Dynamic, ?verify:Dynamic, ?docs_from_dispatcher:Dynamic):Dynamic;
	/**
		Like array_function_dispatcher, but with function arguments flipped.
	**/
	static public function array_function_from_dispatcher(implementation:Dynamic, ?module:Dynamic, ?verify:Dynamic, ?docs_from_dispatcher:Dynamic):Dynamic;
	/**
		Get the names and default values of a function's arguments.
		
		A tuple of four things is returned: (args, varargs, varkw, defaults).
		'args' is a list of the argument names (it may contain nested lists).
		'varargs' and 'varkw' are the names of the * and ** arguments or None.
		'defaults' is an n-tuple of the default values of the last n arguments.
	**/
	static public function getargspec(func:Dynamic):Dynamic;
	/**
		Implement a function with checks for __array_function__ overrides.
		
		All arguments are required, and can only be passed by position.
		
		Arguments
		---------
		implementation : function
		    Function that implements the operation on NumPy array without
		    overrides when called like ``implementation(*args, **kwargs)``.
		public_api : function
		    Function exposed by NumPy's public API originally called like
		    ``public_api(*args, **kwargs)`` on which arguments are now being
		    checked.
		relevant_args : iterable
		    Iterable of arguments to check for __array_function__ methods.
		args : tuple
		    Arbitrary positional arguments originally passed into ``public_api``.
		kwargs : dict
		    Arbitrary keyword arguments originally passed into ``public_api``.
		
		Returns
		-------
		Result from calling ``implementation()`` or an ``__array_function__``
		method, as appropriate.
		
		Raises
		------
		TypeError : if no implementation is found.
	**/
	static public function implement_array_function(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Decorator for overriding __module__ on a function or class.
		
		Example usage::
		
		    @set_module('numpy')
		    def example():
		        pass
		
		    assert example.__module__ == 'numpy'
	**/
	static public function set_module(module:Dynamic):Dynamic;
	/**
		Verify that a dispatcher function has the right signature.
	**/
	static public function verify_matching_signatures(implementation:Dynamic, dispatcher:Dynamic):Dynamic;
}