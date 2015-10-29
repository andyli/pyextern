/* This file is generated, do not edit! */
package scipy._lib;
@:pythonImport("scipy._lib.decorator") extern class Decorator {
	static public var DEF : Dynamic;
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var __version__ : Dynamic;
	static public var __warningregistry__ : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		decorator(caller) converts a caller function into a decorator;
		decorator(caller, func) decorates a function using a caller.
	**/
	static public function decorator(caller:Dynamic, ?func:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Execute the given source in the context of globals and locals.
		
		The source may be a string representing one or more Python statements
		or a code object as returned by compile().
		The globals must be a dictionary and locals can be any mapping,
		defaulting to the current globals and locals.
		If only globals is given, locals defaults to it.
	**/
	static public function exec_(source:Dynamic, ?globals:Dynamic, ?locals:Dynamic):Dynamic;
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
	static public var print_function : Dynamic;
}