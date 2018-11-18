/* This file is generated, do not edit! */
package theano.gof.op;
@:pythonImport("theano.gof.op", "CLinkerOp") extern class CLinkerOp {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function __eq__(value:Dynamic):Dynamic;
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
	public function ___init__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Void;
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
	public function __ne__(value:Dynamic):Dynamic;
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
		Optional: return a code string specific to the apply to be
		inserted in the struct cleanup code.
		
		Parameters
		----------
		node : an Apply instance in the graph being compiled
		name : str
		    A unique name to distinguish variables from those of other nodes.
		
		Raises
		------
		MethodNotDefined
		    The subclass does not override this method.
	**/
	public function c_cleanup_code_struct(node:Dynamic, name:Dynamic):Dynamic;
	/**
		Required: return the C implementation of an Op.
		
		Returns C code that does the computation associated to this `Op`,
		given names for the inputs and outputs.
		
		Parameters
		----------
		node : Apply instance
		    The node for which we are compiling the current c_code.
		   The same Op may be used in more than one node.
		name : str
		    A name that is automatically assigned and guaranteed to be
		    unique.
		inputs : list of strings
		    There is a string for each input of the function, and the
		    string is the name of a C variable pointing to that input.
		    The type of the variable depends on the declared type of
		    the input.  There is a corresponding python variable that
		    can be accessed by prepending "py_" to the name in the
		    list.
		outputs : list of strings
		    Each string is the name of a C variable where the Op should
		    store its output.  The type depends on the declared type of
		    the output.  There is a corresponding python variable that
		    can be accessed by prepending "py_" to the name in the
		    list.  In some cases the outputs will be preallocated and
		    the value of the variable may be pre-filled.  The value for
		    an unallocated output is type-dependent.
		sub : dict of strings
		    Extra symbols defined in `CLinker` sub symbols (such as 'fail').
		    WRITEME
		
		Raises
		------
		MethodNotDefined
		    The subclass does not override this method.
	**/
	public function c_code(node:Dynamic, name:Dynamic, inputs:Dynamic, outputs:Dynamic, sub:Dynamic):Dynamic;
	/**
		Return a tuple of integers indicating the version of this Op.
		
		An empty tuple indicates an 'unversioned' Op that will not be cached
		between processes.
		
		The cache mechanism may erase cached modules that have been superceded
		by newer versions. See `ModuleCache` for details.
		
		See Also
		--------
		c_code_cache_version_apply()
	**/
	public function c_code_cache_version():Dynamic;
	/**
		Return a tuple of integers indicating the version of this Op.
		
		An empty tuple indicates an 'unversioned' Op that will not be
		cached between processes.
		
		The cache mechanism may erase cached modules that have been
		superceded by newer versions.  See `ModuleCache` for details.
		
		See Also
		--------
		c_code_cache_version()
		
		Notes
		-----
		    This function overrides `c_code_cache_version` unless it explicitly
		    calls `c_code_cache_version`. The default implementation simply
		    calls `c_code_cache_version` and ignores the `node` argument.
	**/
	public function c_code_cache_version_apply(node:Dynamic):Dynamic;
	/**
		Optional: return C code to run after c_code, whether it failed or not.
		
		This is a convenient place to clean up things allocated by c_code().
		
		Parameters
		----------
		node : Apply instance
		    WRITEME
		name : str
		    A name that is automatically assigned and guaranteed to be
		    unique.
		inputs : list of strings
		    There is a string for each input of the function, and the
		    string is the name of a C variable pointing to that input.
		    The type of the variable depends on the declared type of
		    the input. There is a corresponding python variable that
		    can be accessed by prepending "py_" to the name in the
		    list.
		outputs : list of strings
		    Each string is the name of a C variable correspoinding to
		    one of the outputs of the Op. The type depends on the
		    declared type of the output. There is a corresponding
		    python variable that can be accessed by prepending "py_" to
		    the name in the list.
		sub : dict of strings
		    extra symbols defined in `CLinker` sub symbols (such as 'fail').
		    WRITEME
		
		Raises
		------
		MethodNotDefined
		    The subclass does not override this method.
	**/
	public function c_code_cleanup(node:Dynamic, name:Dynamic, inputs:Dynamic, outputs:Dynamic, sub:Dynamic):Dynamic;
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
		Optional: return a list of code snippets to be inserted in module
		initialization.
		
		Raises
		------
		MethodNotDefined
		    The subclass does not override this method.
	**/
	public function c_init_code():Dynamic;
	/**
		Optional: return a code string specific to the apply
		to be inserted in the module initialization code.
		
		Parameters
		----------
		node : an Apply instance in the graph being compiled
		name : str
		    A string or number that serves to uniquely identify this node.
		    Symbol names defined by this support code should include the name,
		    so that they can be called from the c_code, and so that they do not
		    cause name collisions.
		
		Notes
		-----
		This function is called in addition to c_init_code and will supplement
		whatever is returned from there.
		
		Raises
		------
		MethodNotDefined
		    The subclass does not override this method.
	**/
	public function c_init_code_apply(node:Dynamic, name:Dynamic):Dynamic;
	/**
		Optional: return a code string specific to the apply
		to be inserted in the struct initialization code.
		
		Parameters
		----------
		node : an Apply instance in the graph being compiled
		name : str
		    A unique name to distinguish variables from those of other nodes.
		sub
		    A dictionary of values to substitute in the code.
		    Most notably it contains a 'fail' entry that you should place in
		    your code after setting a python exception to indicate an error.
		
		Raises
		------
		MethodNotDefined
		    The subclass does not override this method.
	**/
	public function c_init_code_struct(node:Dynamic, name:Dynamic, sub:Dynamic):Dynamic;
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
		Optional: return utility code for use by an `Op` that will be
		inserted at global scope, that can be specialized for the
		support of a particular `Apply` node.
		
		Parameters
		----------
		node: an Apply instance in the graph being compiled
		name: str
		    A string or number that serves to uniquely identify this node.
		    Symbol names defined by this support code should include the name,
		    so that they can be called from the c_code, and so that they do not
		    cause name collisions.
		
		Notes
		-----
		This function is called in addition to c_support_code and will
		supplement whatever is returned from there.
		
		Raises
		------
		MethodNotDefined
		    Subclass does not implement this method.
	**/
	public function c_support_code_apply(node:Dynamic, name:Dynamic):Dynamic;
	/**
		Optional: return utility code for use by an `Op` that will be
		inserted at struct scope, that can be specialized for the
		support of a particular `Apply` node.
		
		Parameters
		----------
		node : an Apply instance in the graph being compiled
		name : str
		    A unique name to distinguish you variables from those of other
		    nodes.
		
		Raises
		------
		MethodNotDefined
		    Subclass does not implement this method.
	**/
	public function c_support_code_struct(node:Dynamic, name:Dynamic):Dynamic;
}