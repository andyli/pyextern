/* This file is generated, do not edit! */
package theano.gof.null_type;
@:pythonImport("theano.gof.null_type", "NullType") extern class NullType {
	/**
		A :term:`Constant` is a `Variable` with a `value` field that cannot be
		changed at runtime.
		
		Constant nodes make eligible numerous optimizations: constant inlining in
		C code, constant folding, etc.
		
		Notes
		-----
		The data field is filtered by what is provided in the constructor for the
		Constant's type field.
		
		WRITEME
	**/
	static public function Constant(type:Dynamic, data:Dynamic, ?name:Dynamic):Dynamic;
	/**
		A :term:`Variable` is a node in an expression graph that represents a
		variable.
		
		The inputs and outputs of every `Apply` (theano.gof.Apply) are `Variable`
		instances. The input and output arguments to create a `function` are also
		`Variable` instances. A `Variable` is like a strongly-typed variable in
		some other languages; each `Variable` contains a reference to a `Type`
		instance that defines the kind of value the `Variable` can take in a
		computation.
		
		A `Variable` is a container for four important attributes:
		
		- :literal:`type` a `Type` instance defining the kind of value this
		  `Variable` can have,
		
		- :literal:`owner` either None (for graph roots) or the `Apply` instance
		  of which `self` is an output,
		
		- :literal:`index` the integer such that :literal:`owner.outputs[index] is
		  this_variable` (ignored if `owner` is None),
		
		- :literal:`name` a string to use in pretty-printing and debugging.
		
		There are a few kinds of Variables to be aware of: A Variable which is the
		output of a symbolic computation has a reference to the Apply instance to
		which it belongs (property: owner) and the position of itself in the owner's
		output list (property: index).
		
		- `Variable` (this base type) is typically the output of a symbolic
		  computation.
		
		- `Constant` (a subclass) which adds a default and un-replaceable
		  :literal:`value`, and requires that owner is None.
		
		- `TensorVariable` subclass of Variable that represents a numpy.ndarray
		   object.
		
		- `TensorSharedVariable` Shared version of TensorVariable.
		
		- `SparseVariable` subclass of Variable that represents
		  a scipy.sparse.{csc,csr}_matrix object.
		
		- `GpuArrayVariable` subclass of Variable that represents our object on
		  the GPU that is a subset of numpy.ndarray.
		
		- `RandomVariable`.
		
		A Variable which is the output of a symbolic computation will have an owner
		not equal to None.
		
		Using the Variables' owner field and the Apply nodes' inputs fields, one can
		navigate a graph from an output all the way to the inputs. The opposite
		direction is not possible until a FunctionGraph has annotated the Variables
		with the clients field, ie, before the compilation process has begun a
		Variable does not know which Apply nodes take it as input.
		
		Parameters
		----------
		type : a Type instance
		    The type governs the kind of data that can be associated with this
		    variable.
		owner : None or Apply instance
		    The Apply instance which computes the value for this variable.
		index : None or int
		    The position of this Variable in owner.outputs.
		name : None or str
		    A string for pretty-printing and debugging.
		
		Examples
		--------
		
		.. code-block:: python
		
		    import theano
		    from theano import tensor
		
		    a = tensor.constant(1.5)        # declare a symbolic constant
		    b = tensor.fscalar()            # declare a symbolic floating-point scalar
		
		    c = a + b                       # create a simple expression
		
		    f = theano.function([b], [c])   # this works because a has a value associated with it already
		
		    assert 4.0 == f(2.5)            # bind 2.5 to an internal copy of b and evaluate an internal c
		
		    theano.function([a], [c])       # compilation error because b (required by c) is undefined
		
		    theano.function([a,b], [c])     # compilation error because a is constant, it can't be an input
		
		    d = tensor.value(1.5)           # create a value similar to the constant 'a'
		    e = d + b
		    theano.function([d,b], [e])     # this works.  d's default value of 1.5 is ignored.
		
		The python variables :literal:`a,b,c` all refer to instances of type
		`Variable`. The `Variable` referred to by `a` is also an instance of
		`Constant`.
		
		`compile.function` uses each `Apply` instance's `inputs` attribute together
		with each Variable's `owner` field to determine which inputs are necessary
		to compute the function's outputs.
	**/
	static public function Variable(type:Dynamic, ?owner:Dynamic, ?index:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Return a new `Variable` instance of Type `self`.
		
		Parameters
		----------
		name : None or str
		    A pretty string for printing and debugging.
	**/
	public function __call__(?name:Dynamic):Dynamic;
	static public function __class__(name:Dynamic, bases:Dynamic, dct:Dynamic):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		__dir__() -> list
		default dir() implementation
	**/
	public function __dir__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(other:Dynamic):Dynamic;
	/**
		default object formatter
	**/
	public function __format__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self>=value.
	**/
	public function __ge__(value:Dynamic):Dynamic;
	/**
		Return getattr(self, name).
	**/
	public function __getattribute__(name:Dynamic):Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(?why_null:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?why_null:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(value:Dynamic):Dynamic;
	static public var __module__ : Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(other:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce_ex__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		__sizeof__() -> int
		size of object in memory, in bytes
	**/
	public function __sizeof__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __slots__ : Dynamic;
	/**
		Return str(self).
	**/
	public function __str__():Dynamic;
	/**
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	/**
		Return C code to clean up after `c_extract`.
		
		This returns C code that should deallocate whatever `c_extract`
		allocated or decrease the reference counts. Do not decrease
		py_%(name)s's reference count.
		
		WRITEME
		
		Parameters
		----------
		name : WRITEME
		    WRITEME
		sub : WRITEME
		    WRITEME
		
		Raises
		------
		 MethodNotDefined
		    Subclass does not implement this method.
	**/
	public function c_cleanup(name:Dynamic, sub:Dynamic):Dynamic;
	/**
		Return a tuple of integers indicating the version of this Type.
		
		An empty tuple indicates an 'unversioned' Type that will not
		be cached between processes.
		
		The cache mechanism may erase cached modules that have been
		superceded by newer versions. See `ModuleCache` for details.
	**/
	public function c_code_cache_version():Dynamic;
	/**
		Optional: Return a list of compile args recommended to compile the
		code returned by other methods in this class.
		
		Example
		-------
		return ['-ffast-math']
		
		Compiler arguments related to headers, libraries and search paths should
		be provided via the functions `c_headers`, `c_libraries`,
		`c_header_dirs`, and `c_lib_dirs`.
		
		Raises
		------
		MethodNotDefined
		    Subclass does not implement this method.
	**/
	public function c_compile_args():Dynamic;
	/**
		Required: Return c code to declare variables that will be
		instantiated by `c_extract`.
		
		Parameters
		----------
		name: str
		    The name of the ``PyObject *`` pointer that will
		    the value for this Type
		sub: dict string -> string
		    a dictionary of special codes.  Most importantly
		    sub['fail']. See CLinker for more info on `sub` and ``fail``.
		
		Notes
		-----
		It is important to include the `name` inside of variables which
		are declared here, so that name collisions do not occur in the
		source file that is generated.
		
		The variable called ``name`` is not necessarily defined yet
		where this code is inserted. This code might be inserted to
		create class variables for example, whereas the variable ``name``
		might only exist inside certain functions in that class.
		
		TODO: Why should variable declaration fail?  Is it even allowed to?
		
		Raises
		------
		MethodNotDefined
		    Subclass does not implement this method.
		
		Examples
		--------
		.. code-block: python
		
		    return "PyObject ** addr_of_%(name)s;"
	**/
	public function c_declare(name:Dynamic, sub:Dynamic, ?check_input:Dynamic):Dynamic;
	/**
		Optional: Return the name of the primitive C type of items into variables
		handled by this type.
		
		e.g:
		
		 - For ``TensorType(dtype='int64', ...)``: should return ``"npy_int64"``.
		 - For ``GpuArrayType(dtype='int32', ...)``: should return ``"ga_int"``.
	**/
	public function c_element_type():Dynamic;
	/**
		Required: Return c code to extract a PyObject * instance.
		
		The code returned from this function must be templated using
		``%(name)s``, representing the name that the caller wants to
		call this `Variable`. The Python object self.data is in a
		variable called "py_%(name)s" and this code must set the
		variables declared by c_declare to something representative
		of py_%(name)s. If the data is improper, set an appropriate
		exception and insert "%(fail)s".
		
		TODO: Point out that template filling (via sub) is now performed
		      by this function. --jpt
		
		Parameters
		----------
		name : str
		    The name of the ``PyObject *`` pointer that will
		    store the value for this Type.
		sub : dict string -> string
		    A dictionary of special codes. Most importantly
		    sub['fail']. See CLinker for more info on `sub` and ``fail``.
		
		Raises
		------
		MethodNotDefined
		    Subclass does not implement this method.
		
		Examples
		--------
		.. code-block: python
		
		    return "if (py_%(name)s == Py_None)" + \                        addr_of_%(name)s = &py_%(name)s;" + \                   "else" + \                   { PyErr_SetString(PyExc_ValueError, \                        'was expecting None'); %(fail)s;}"
	**/
	public function c_extract(name:Dynamic, sub:Dynamic, ?check_input:Dynamic):Dynamic;
	/**
		Optional: C code to extract a PyObject * instance.
		
		Unlike c_extract, c_extract_out has to accept Py_None,
		meaning that the variable should be left uninitialized.
	**/
	public function c_extract_out(name:Dynamic, sub:Dynamic, ?check_input:Dynamic):Dynamic;
	/**
		Optional: Return a list of header search paths required by code
		returned by this class.
		
		Examples
		--------
		return ['/usr/local/include', '/opt/weirdpath/src/include']
		
		Provides search paths for headers, in addition to those in any relevant
		environment variables.
		
		Hint: for unix compilers, these are the things that get '-I' prefixed
		in the compiler cmdline.
		
		Raises
		------
		MethodNotDefined
		    Subclass does not implement this method.
	**/
	public function c_header_dirs():Dynamic;
	/**
		Optional: Return a list of header files required by code returned by
		this class.
		
		Examples
		--------
		return ['<iostream>', '<math.h>', '/full/path/to/header.h']
		
		These strings will be prefixed with "#include " and inserted at the
		beginning of the c source code.
		
		Strings in this list that start neither with '<' nor '"' will be
		enclosed in double-quotes.
		
		Raises
		------
		MethodNotDefined
		    Subclass does not implement this method.
	**/
	public function c_headers():Dynamic;
	/**
		Required: Return c code to initialize the variables that were declared
		by self.c_declare().
		
		Notes
		-----
		The variable called ``name`` is not necessarily defined yet
		where this code is inserted. This code might be inserted in a
		class constructor for example, whereas the variable ``name``
		might only exist inside certain functions in that class.
		
		TODO: Why should variable initialization fail?  Is it even allowed to?
		
		Examples
		--------
		.. code-block: python
		
		    return "addr_of_%(name)s = NULL;"
	**/
	public function c_init(name:Dynamic, sub:Dynamic):Dynamic;
	/**
		Optional: return a list of code snippets to be inserted in module
		initialization.
		
		Raises
		------
		MethodNotDefined
		    The subclass does not override this method.
	**/
	public function c_init_code():Dynamic;
	/**
		Optional: Return True for small or builtin C types.
		
		A hint to tell the compiler that this type is a builtin C type or a
		small struct and that its memory footprint is negligible. Simple
		objects may be passed on the stack.
	**/
	public function c_is_simple():Dynamic;
	/**
		Optional: Return a list of library search paths required by code
		returned by this class.
		
		Examples
		--------
		return ['/usr/local/lib', '/opt/weirdpath/build/libs'].
		
		Provides search paths for libraries, in addition to those in any
		relevant environment variables (e.g. LD_LIBRARY_PATH).
		
		Hint: for unix compilers, these are the things that get '-L' prefixed
		in the compiler cmdline.
		
		Raises
		------
		MethodNotDefined
		    Subclass does not implement this method.
	**/
	public function c_lib_dirs():Dynamic;
	/**
		Optional: Return a list of libraries required by code returned by
		this class.
		
		Examples
		--------
		return ['gsl', 'gslcblas', 'm', 'fftw3', 'g2c'].
		
		The compiler will search the directories specified by the environment
		variable LD_LIBRARY_PATH in addition to any returned by `c_lib_dirs`.
		
		Hint: for unix compilers, these are the things that get '-l' prefixed
		in the compiler cmdline.
		
		Raises
		------
		MethodNotDefined
		    Subclass does not implement this method.
	**/
	public function c_libraries():Dynamic;
	/**
		Optional: WRITEME
		
		Parameters
		----------
		data : WRITEME
		    WRITEME
		
		Raises
		------
		MethodNotDefined
		    Subclass does not implement this method.
	**/
	public function c_literal(data:Dynamic):Dynamic;
	/**
		Optional: return a list of incompatible gcc compiler arguments.
		
		We will remove those arguments from the command line of gcc. So if
		another Op adds a compile arg in the graph that is incompatible
		with this Op, the incompatible arg will not be used.
		Useful for instance to remove -ffast-math.
		
		EXAMPLE
		
		WRITEME
		
		Raises
		------
		MethodNotDefined
		    The subclass does not override this method.
	**/
	public function c_no_compile_args():Dynamic;
	/**
		Optional: Return utility code (a string, or a list of strings) for use by a `Variable` or `Op` to be
		included at global scope prior to the rest of the code for this class.
		
		QUESTION: How many times will this support code be emitted for a graph
		with many instances of the same type?
		
		Raises
		------
		MethodNotDefined
		    Subclass does not implement this method.
	**/
	public function c_support_code():Dynamic;
	/**
		Required: Return C code to pack C types back into a PyObject.
		
		The code returned from this function must be templated using
		"%(name)s", representing the name that the caller wants to
		call this Variable. The returned code may set "py_%(name)s"
		to a PyObject* and that PyObject* will be accessible from
		Python via variable.data. Do not forget to adjust reference
		counts if "py_%(name)s" is changed from its original value.
		
		Parameters
		----------
		name : WRITEME
		    WRITEME
		sub : WRITEME
		    WRITEME
		
		Raises
		------
		MethodNotDefined
		    Subclass does not implement this method.
	**/
	public function c_sync(name:Dynamic, sub:Dynamic):Dynamic;
	/**
		Patch variable so that its type will match self, if possible.
		
		If the variable can't be converted, this should return None.
		
		The conversion can only happen if the following implication is
		true for all possible `val`.
		
		  self.is_valid_value(val) => var.type.is_valid_value(val)
		
		For the majority of types this means that you can only have
		non-broadcastable dimensions become broadcastable and not the
		inverse.
		
		The default is to not convert anything which is always safe.
	**/
	public function convert_variable(_var:Dynamic):Dynamic;
	/**
		Required: Return data or an appropriately wrapped/converted data.
		
		Subclass implementation should raise a TypeError exception if
		the data is not of an acceptable type.
		
		If strict is True, the data returned must be the same as the
		data passed as an argument. If it is False, and allow_downcast
		is True, filter may cast it to an appropriate type. If
		allow_downcast is False, filter may only upcast it, not lose
		precision. If allow_downcast is None (default), the behaviour can be
		Type-dependent, but for now it means only Python floats can be
		downcasted, and only to floatX scalars.
		
		Raises
		------
		MethodNotDefined
		    Subclass doesn't implement this function.
	**/
	public function filter(data:Dynamic, ?strict:Dynamic, ?allow_downcast:Dynamic):Dynamic;
	/**
		Convert a symbolic variable into this Type, if compatible.
		
		For the moment, the only Types compatible with one another are
		TensorType and GpuArrayType, provided they have the same
		number of dimensions, same broadcasting pattern, and same
		dtype.
		
		If Types are not compatible, a TypeError should be raised.
	**/
	public function filter_variable(other:Dynamic, ?allow_convert:Dynamic):Dynamic;
	/**
		Required: Return True for any python object `a` that would be a
		legal value for a Variable of this Type.
	**/
	public function is_valid_value(a:Dynamic):Dynamic;
	public function make_constant(value:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Return a new `Variable` instance of Type `self`.
		
		Parameters
		----------
		name : None or str
		    A pretty string for printing and debugging.
	**/
	public function make_variable(?name:Dynamic):Dynamic;
	static public function may_share_memory(a:Dynamic, b:Dynamic):Dynamic;
	/**
		Optional: Return a message explaining the output of
		is_valid_value.
	**/
	public function value_validity_msg(a:Dynamic):Dynamic;
	/**
		Return True if a and b can be considered exactly equal.
		
		a and b are assumed to be valid values of this Type.
	**/
	static public function values_eq(a:Dynamic, b:Dynamic, ?force_same_dtype:Dynamic):Dynamic;
	/**
		Return True if a and b can be considered approximately equal.
		
		This function is used by theano debugging tools to decide
		whether two values are equivalent, admitting a certain amount
		of numerical instability. For example, for floating-point
		numbers this function should be an approximate comparison.
		
		By default, this does an exact comparison.
		
		Parameters
		----------
		a
		    A potential value for a Variable of this Type.
		
		b
		    A potential value for a Variable of this Type.
		
		Returns
		-------
		bool
	**/
	public function values_eq_approx(a:Dynamic, b:Dynamic):Dynamic;
}