/* This file is generated, do not edit! */
package tensorflow.python.util.tf_inspect;
@:pythonImport("tensorflow.python.util.tf_inspect") extern class Tf_inspect_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var __warningregistry__ : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		TFDecorator-aware replacement for inspect.currentframe.
	**/
	static public function currentframe():Dynamic;
	static public var division : Dynamic;
	/**
		TFDecorator-aware replacement for inspect.getargspec.
		
		Args:
		  object: A callable, possibly decorated.
		
		Returns:
		  The `ArgSpec` that describes the signature of the outermost decorator that
		  changes the callable's signature. If the callable is not decorated,
		  `inspect.getargspec()` will be called directly on the callable.
	**/
	static public function getargspec(object:Dynamic):Dynamic;
	/**
		TFDecorator-aware replacement for inspect.getcallargs.
		
		Args:
		  func: A callable, possibly decorated
		  *positional: The positional arguments that would be passed to `func`.
		  **named: The named argument dictionary that would be passed to `func`.
		
		Returns:
		  A dictionary mapping `func`'s named arguments to the values they would
		  receive if `func(*positional, **named)` were called.
		
		`getcallargs` will use the argspec from the outermost decorator that provides
		it. If no attached decorators modify argspec, the final unwrapped target's
		argspec will be used.
	**/
	static public function getcallargs(func:Dynamic, ?positional:python.VarArgs<Dynamic>, ?named:python.KwArgs<Dynamic>):Dynamic;
	/**
		TFDecorator-aware replacement for inspect.getdoc.
		
		Args:
		  object: An object, possibly decorated.
		
		Returns:
		  The docstring associated with the object.
		
		The outermost-decorated object is intended to have the most complete
		documentation, so the decorated parameter is not unwrapped.
	**/
	static public function getdoc(object:Dynamic):Dynamic;
	/**
		TFDecorator-aware replacement for inspect.getfile.
	**/
	static public function getfile(object:Dynamic):Dynamic;
	/**
		TFDecorator-aware replacement for inspect.getmembers.
	**/
	static public function getmembers(object:Dynamic, ?predicate:Dynamic):Dynamic;
	/**
		TFDecorator-aware replacement for inspect.getmro.
	**/
	static public function getmro(cls:Dynamic):Dynamic;
	/**
		TFDecorator-aware replacement for inspect.getsource.
	**/
	static public function getsource(object:Dynamic):Dynamic;
	/**
		TFDecorator-aware replacement for inspect.isclass.
	**/
	static public function isclass(object:Dynamic):Dynamic;
	/**
		TFDecorator-aware replacement for inspect.isfunction.
	**/
	static public function isfunction(object:Dynamic):Dynamic;
	/**
		TFDecorator-aware replacement for inspect.ismethod.
	**/
	static public function ismethod(object:Dynamic):Dynamic;
	/**
		TFDecorator-aware replacement for inspect.ismodule.
	**/
	static public function ismodule(object:Dynamic):Dynamic;
	/**
		TFDecorator-aware replacement for inspect.isroutine.
	**/
	static public function isroutine(object:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		TFDecorator-aware replacement for inspect.stack.
	**/
	static public function stack(?context:Dynamic):Dynamic;
}