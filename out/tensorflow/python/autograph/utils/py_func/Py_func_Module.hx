/* This file is generated, do not edit! */
package tensorflow.python.autograph.utils.py_func;
@:pythonImport("tensorflow.python.autograph.utils.py_func") extern class Py_func_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
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
		Helper that wraps a callable to py_func.
		
		The helper passes tensor arguments through the py_func interface. Non-tensor
		arguments are allowed, and will be passed to f directly. Note that non-tensor
		arguments are captured by f will not update every time the wrapper is
		called (this is consistent with its argument list, which only includes
		the tensor arguments). In general, it's safest not to reuse this wrapper.
		
		Args:
		  f: Callable
		  return_dtypes: None, individual of tuple/list of DType or MatchDType, the
		      data type for each of f's return value(s). Set to None if f has no
		      return values or use_dummy_return is True. Use MatchDType to define a
		      dtype identical to that of `i`th argument (argument 0 is the first);
		      an argument must of Tensor type if it is to be used with MatchDType.
		  args: Positional arguments for f, as list or tuple.
		  kwargs: Keyword arguments for f, as dict with string keys. May be None.
		  use_dummy_return: If True, the function will return a dummy value of 1
		      and discard its actual return value.
		Returns:
		  The return values of f converted to tensor.
		Raises:
		  ValueError: if any of the arguments are incorrect.
	**/
	static public function wrap_py_func(f:Dynamic, return_dtypes:Dynamic, args:Dynamic, ?kwargs:Dynamic, ?use_dummy_return:Dynamic):Dynamic;
}