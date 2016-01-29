/* This file is generated, do not edit! */
package scipy._lib.decorator;
@:pythonImport("scipy._lib.decorator") extern class Decorator_Module {
	static public var DEF : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	@:native("__init__")
	static public function ___init__(self:Dynamic, g:Dynamic, ?a:python.VarArgs<Dynamic>, ?k:python.KwArgs<Dynamic>):Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var __version__ : Dynamic;
	/**
		Append ``a`` to the list of the virtual ancestors, unless it is already
		included.
	**/
	static public function append(a:Dynamic, vancestors:Dynamic):Dynamic;
	/**
		decorator(ContextManager) converts functions/generators into factories of ContextManager objects
	**/
	static public function contextmanager(g:Dynamic, ?a:python.VarArgs<Dynamic>, ?k:python.KwArgs<Dynamic>):Dynamic;
	/**
		decorate(func, caller) decorates a function using a caller.
	**/
	static public function decorate(func:Dynamic, caller:Dynamic):Dynamic;
	/**
		decorator(caller) converts a caller function into a decorator
	**/
	static public function decorator(caller:Dynamic, ?_func:Dynamic):Dynamic;
	/**
		Factory of decorators turning a function into a generic function
		dispatching on the given arguments.
	**/
	static public function dispatch_on(?dispatch_args:python.VarArgs<Dynamic>):Dynamic;
	static public function get_init(cls:Dynamic):Dynamic;
	/**
		A replacement for inspect.getargspec
	**/
	static public function getargspec(f:Dynamic):Dynamic;
	/**
		Get the names and default values of a callable object's arguments.
		
		A tuple of seven things is returned:
		(args, varargs, varkw, defaults, kwonlyargs, kwonlydefaults annotations).
		'args' is a list of the argument names.
		'varargs' and 'varkw' are the names of the * and ** arguments or None.
		'defaults' is an n-tuple of the default values of the last n arguments.
		'kwonlyargs' is a list of keyword-only argument names.
		'kwonlydefaults' is a dictionary mapping names from kwonlyargs to defaults.
		'annotations' is a dictionary mapping argument names to annotations.
		
		The first four items in the tuple correspond to getargspec().
		
		This function is deprecated, use inspect.signature() instead.
	**/
	static public function getfullargspec(func:Dynamic):Dynamic;
	static public var init : Dynamic;
	static public var n_args : Dynamic;
	static public var print_function : Dynamic;
}