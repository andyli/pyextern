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
	/**
		Implements `getargspec` for `functools.partial` objects.
		
		Args:
		  obj: The `functools.partial` obeject
		Returns:
		  An `inspect.ArgSpec`
		Raises:
		  ValueError: When callable's signature can not be expressed with
		    ArgSpec.
	**/
	static public function _get_argspec_for_partial(obj:Dynamic):Dynamic;
	/**
		A python3 version of getargspec.
		
		Calls `getfullargspec` and assigns args, varargs,
		varkw, and defaults to a python 2/3 compatible `ArgSpec`.
		
		The parameter name 'varkw' is changed to 'keywords' to fit the
		`ArgSpec` struct.
		
		Args:
		  target: the target object to inspect.
		
		Returns:
		  An ArgSpec with args, varargs, keywords, and defaults parameters
		  from FullArgSpec.
	**/
	static public function _getargspec(target:Dynamic):Dynamic;
	/**
		Get the names and default values of a callable object's parameters.
		
		A tuple of seven things is returned:
		(args, varargs, varkw, defaults, kwonlyargs, kwonlydefaults, annotations).
		'args' is a list of the parameter names.
		'varargs' and 'varkw' are the names of the * and ** parameters or None.
		'defaults' is an n-tuple of the default values of the last n parameters.
		'kwonlyargs' is a list of keyword-only parameter names.
		'kwonlydefaults' is a dictionary mapping names from kwonlyargs to defaults.
		'annotations' is a dictionary mapping parameter names to annotations.
		
		Notable differences from inspect.signature():
		  - the "self" parameter is always reported, even for bound methods
		  - wrapper chains defined by __wrapped__ *not* unwrapped automatically
	**/
	static public function _getfullargspec(func:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		TFDecorator-aware replacement for inspect.currentframe.
	**/
	static public function currentframe():Dynamic;
	static public var division : Dynamic;
	/**
		TFDecorator-aware replacement for `inspect.getargspec`.
		
		Note: `getfullargspec` is recommended as the python 2/3 compatible
		replacement for this function.
		
		Args:
		  obj: A function, partial function, or callable object, possibly decorated.
		
		Returns:
		  The `ArgSpec` that describes the signature of the outermost decorator that
		  changes the callable's signature, or the `ArgSpec` that describes
		  the object if not decorated.
		
		Raises:
		  ValueError: When callable's signature can not be expressed with
		    ArgSpec.
		  TypeError: For objects of unsupported types.
	**/
	static public function getargspec(obj:Dynamic):Dynamic;
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
	static public function getframeinfo(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		TFDecorator-aware replacement for `inspect.getfullargspec`.
		
		This wrapper emulates `inspect.getfullargspec` in[^)]* Python2.
		
		Args:
		  obj: A callable, possibly decorated.
		
		Returns:
		  The `FullArgSpec` that describes the signature of
		  the outermost decorator that changes the callable's signature. If the
		  callable is not decorated, `inspect.getfullargspec()` will be called
		  directly on the callable.
	**/
	static public function getfullargspec(obj:Dynamic):Dynamic;
	/**
		TFDecorator-aware replacement for inspect.getmembers.
	**/
	static public function getmembers(object:Dynamic, ?predicate:Dynamic):Dynamic;
	/**
		TFDecorator-aware replacement for inspect.getmodule.
	**/
	static public function getmodule(object:Dynamic):Dynamic;
	/**
		TFDecorator-aware replacement for inspect.getmro.
	**/
	static public function getmro(cls:Dynamic):Dynamic;
	/**
		TFDecorator-aware replacement for inspect.getsource.
	**/
	static public function getsource(object:Dynamic):Dynamic;
	/**
		TFDecorator-aware replacement for inspect.getsourcefile.
	**/
	static public function getsourcefile(object:Dynamic):Dynamic;
	/**
		TFDecorator-aware replacement for inspect.getsourcelines.
	**/
	static public function getsourcelines(object:Dynamic):Dynamic;
	/**
		TFDecorator-aware replacement for inspect.isbuiltin.
	**/
	static public function isbuiltin(object:Dynamic):Dynamic;
	/**
		TFDecorator-aware replacement for inspect.isclass.
	**/
	static public function isclass(object:Dynamic):Dynamic;
	/**
		TFDecorator-aware replacement for inspect.ismodule.
	**/
	static public function isframe(object:Dynamic):Dynamic;
	/**
		TFDecorator-aware replacement for inspect.isfunction.
	**/
	static public function isfunction(object:Dynamic):Dynamic;
	/**
		TFDecorator-aware replacement for inspect.isgenerator.
	**/
	static public function isgenerator(object:Dynamic):Dynamic;
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
	/**
		Returns a new subclass of tuple with named fields.
		
		>>> Point = namedtuple('Point', ['x', 'y'])
		>>> Point.__doc__                   # docstring for the new class
		'Point(x, y)'
		>>> p = Point(11, y=22)             # instantiate with positional args or keywords
		>>> p[0] + p[1]                     # indexable like a plain tuple
		33
		>>> x, y = p                        # unpack like a regular tuple
		>>> x, y
		(11, 22)
		>>> p.x + p.y                       # fields also accessible by name
		33
		>>> d = p._asdict()                 # convert to a dictionary
		>>> d['x']
		11
		>>> Point(**d)                      # convert from a dictionary
		Point(x=11, y=22)
		>>> p._replace(x=100)               # _replace() is like str.replace() but targets named fields
		Point(x=100, y=22)
	**/
	static public function namedtuple(typename:Dynamic, field_names:Dynamic, ?verbose:Dynamic, ?rename:Dynamic, ?module:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		TFDecorator-aware replacement for inspect.stack.
	**/
	static public function stack(?context:Dynamic):Dynamic;
}