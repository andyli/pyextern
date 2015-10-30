/* This file is generated, do not edit! */
package inspect;
@:pythonImport("inspect") extern class Inspect {
	static public var CORO_CLOSED : Dynamic;
	static public var CORO_CREATED : Dynamic;
	static public var CORO_RUNNING : Dynamic;
	static public var CORO_SUSPENDED : Dynamic;
	static public var CO_COROUTINE : Dynamic;
	static public var CO_GENERATOR : Dynamic;
	static public var CO_ITERABLE_COROUTINE : Dynamic;
	static public var CO_NESTED : Dynamic;
	static public var CO_NEWLOCALS : Dynamic;
	static public var CO_NOFREE : Dynamic;
	static public var CO_OPTIMIZED : Dynamic;
	static public var CO_VARARGS : Dynamic;
	static public var CO_VARKEYWORDS : Dynamic;
	static public var GEN_CLOSED : Dynamic;
	static public var GEN_CREATED : Dynamic;
	static public var GEN_RUNNING : Dynamic;
	static public var GEN_SUSPENDED : Dynamic;
	static public var TPFLAGS_IS_ABSTRACT : Dynamic;
	static public var _KEYWORD_ONLY : Dynamic;
	static public var _NonUserDefinedCallables : Dynamic;
	static public var _POSITIONAL_ONLY : Dynamic;
	static public var _POSITIONAL_OR_KEYWORD : Dynamic;
	static public var _VAR_KEYWORD : Dynamic;
	static public var _VAR_POSITIONAL : Dynamic;
	static public var __author__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _check_class(klass:Dynamic, attr:Dynamic):Dynamic;
	static public function _check_instance(obj:Dynamic, attr:Dynamic):Dynamic;
	static public var _filesbymodname : Dynamic;
	static public function _findclass(func:Dynamic):Dynamic;
	static public function _finddoc(obj:Dynamic):Dynamic;
	/**
		Get information about the arguments accepted by a code object.
		
		Four things are returned: (args, varargs, kwonlyargs, varkw), where
		'args' and 'kwonlyargs' are lists of argument names, and 'varargs'
		and 'varkw' are the names of the * and ** arguments or None.
	**/
	static public function _getfullargs(co:Dynamic):Dynamic;
	static public function _is_type(obj:Dynamic):Dynamic;
	/**
		Logic for inspecting an object given at command line 
	**/
	static public function _main():Dynamic;
	static public function _missing_arguments(f_name:Dynamic, argnames:Dynamic, pos:Dynamic, values:Dynamic):Dynamic;
	static public var _sentinel : Dynamic;
	static public function _shadowed_dict(klass:Dynamic):Dynamic;
	/**
		Private helper to transform signatures for unbound
		functions to bound methods.
	**/
	static public function _signature_bound_method(sig:Dynamic):Dynamic;
	/**
		Private helper function to get signature for
		builtin callables.
	**/
	static public function _signature_from_builtin(cls:Dynamic, func:Dynamic, ?skip_bound_arg:Dynamic):Dynamic;
	/**
		Private helper function to get signature for arbitrary
		callable objects.
	**/
	static public function _signature_from_callable(obj:Dynamic, ?follow_wrapper_chains:Dynamic, ?skip_bound_arg:Dynamic, sigcls:Dynamic):Dynamic;
	/**
		Private helper: constructs Signature for the given python function.
	**/
	static public function _signature_from_function(cls:Dynamic, func:Dynamic):Dynamic;
	/**
		Private helper to parse content of '__text_signature__'
		and return a Signature based on it.
	**/
	static public function _signature_fromstr(cls:Dynamic, obj:Dynamic, s:Dynamic, ?skip_bound_arg:Dynamic):Dynamic;
	/**
		Private helper to get first parameter name from a
		__text_signature__ of a builtin method, which should
		be in the following format: '($param1, ...)'.
		Assumptions are that the first argument won't have
		a default value or an annotation.
	**/
	static public function _signature_get_bound_param(spec:Dynamic):Dynamic;
	/**
		Private helper to calculate how 'wrapped_sig' signature will
		look like after applying a 'functools.partial' object (or alike)
		on it.
	**/
	static public function _signature_get_partial(wrapped_sig:Dynamic, partial:Dynamic, ?extra_args:Dynamic):Dynamic;
	/**
		Private helper. Checks if ``cls`` has an attribute
		named ``method_name`` and returns it only if it is a
		pure python function.
	**/
	static public function _signature_get_user_defined_method(cls:Dynamic, method_name:Dynamic):Dynamic;
	/**
		Private helper to test if `obj` is a callable that might
		support Argument Clinic's __text_signature__ protocol.
	**/
	static public function _signature_is_builtin(obj:Dynamic):Dynamic;
	/**
		Private helper to test if `obj` is a duck type of FunctionType.
		A good example of such objects are functions compiled with
		Cython, which have all attributes that a pure Python function
		would have, but have their code statically compiled.
	**/
	static public function _signature_is_functionlike(obj:Dynamic):Dynamic;
	/**
		Private helper function. Takes a signature in Argument Clinic's
		extended signature format.
		
		Returns a tuple of three things:
		  * that signature re-rendered in standard Python syntax,
		  * the index of the "self" parameter (generally 0), or None if
		    the function does not have a "self" parameter, and
		  * the index of the last "positional only" parameter,
		    or None if the signature has no positional-only parameters.
	**/
	static public function _signature_strip_non_python_syntax(signature:Dynamic):Dynamic;
	static public function _static_getmro(klass:Dynamic):Dynamic;
	static public function _too_many(f_name:Dynamic, args:Dynamic, kwonly:Dynamic, varargs:Dynamic, defcount:Dynamic, given:Dynamic, values:Dynamic):Dynamic;
	/**
		Return list of attribute-descriptor tuples.
		
		For each name in dir(cls), the return list contains a 4-tuple
		with these elements:
		
		    0. The name (a string).
		
		    1. The kind of attribute this is, one of these strings:
		           'class method'    created via classmethod()
		           'static method'   created via staticmethod()
		           'property'        created via property()
		           'method'          any other flavor of method or descriptor
		           'data'            not a method
		
		    2. The class which defined this attribute (a class).
		
		    3. The object as obtained by calling getattr; if this fails, or if the
		       resulting object does not live anywhere in the class' mro (including
		       metaclasses) then the object is looked up in the defining class's
		       dict (found by walking the mro).
		
		If one of the items in dir(cls) is stored in the metaclass it will now
		be discovered and not have None be listed as the class in which it was
		defined.  Any items whose home class cannot be discovered are skipped.
	**/
	static public function classify_class_attrs(cls:Dynamic):Dynamic;
	/**
		Clean up indentation from docstrings.
		
		Any whitespace that can be uniformly removed from the second line
		onwards is removed.
	**/
	static public function cleandoc(doc:Dynamic):Dynamic;
	/**
		Return the frame of the caller or None if this is not possible.
	**/
	static public function currentframe():Dynamic;
	/**
		Return the entire source file and starting line number for an object.
		
		The argument may be a module, class, method, function, traceback, frame,
		or code object.  The source code is returned as a list of all the lines
		in the file and the line number indexes a line in that list.  An OSError
		is raised if the source code cannot be retrieved.
	**/
	static public function findsource(object:Dynamic):Dynamic;
	static public function formatannotation(annotation:Dynamic, ?base_module:Dynamic):Dynamic;
	static public function formatannotationrelativeto(object:Dynamic):Dynamic;
	/**
		Format an argument spec from the values returned by getargspec
		or getfullargspec.
		
		The first seven arguments are (args, varargs, varkw, defaults,
		kwonlyargs, kwonlydefaults, annotations).  The other five arguments
		are the corresponding optional formatting functions that are called to
		turn names and values into strings.  The last argument is an optional
		function to format the sequence of arguments.
	**/
	static public function formatargspec(args:Dynamic, ?varargs:Dynamic, ?varkw:Dynamic, ?defaults:Dynamic, ?kwonlyargs:Dynamic, ?kwonlydefaults:Dynamic, ?annotations:Dynamic, ?formatarg:Dynamic, ?formatvarargs:Dynamic, ?formatvarkw:Dynamic, ?formatvalue:Dynamic, ?formatreturns:Dynamic, ?formatannotation:Dynamic):Dynamic;
	/**
		Format an argument spec from the 4 values returned by getargvalues.
		
		The first four arguments are (args, varargs, varkw, locals).  The
		next four arguments are the corresponding optional formatting functions
		that are called to turn names and values into strings.  The ninth
		argument is an optional function to format the sequence of arguments.
	**/
	static public function formatargvalues(args:Dynamic, varargs:Dynamic, varkw:Dynamic, locals:Dynamic, ?formatarg:Dynamic, ?formatvarargs:Dynamic, ?formatvarkw:Dynamic, ?formatvalue:Dynamic):Dynamic;
	/**
		Return an absolute path to the source or compiled file for an object.
		
		The idea is for each object to have a unique origin, so this routine
		normalizes the result as much as possible.
	**/
	static public function getabsfile(object:Dynamic, ?_filename:Dynamic):Dynamic;
	/**
		Get information about the arguments accepted by a code object.
		
		Three things are returned: (args, varargs, varkw), where
		'args' is the list of argument names. Keyword-only arguments are
		appended. 'varargs' and 'varkw' are the names of the * and **
		arguments or None.
	**/
	static public function getargs(co:Dynamic):Dynamic;
	/**
		Get the names and default values of a function's arguments.
		
		A tuple of four things is returned: (args, varargs, keywords, defaults).
		'args' is a list of the argument names, including keyword-only argument names.
		'varargs' and 'keywords' are the names of the * and ** arguments or None.
		'defaults' is an n-tuple of the default values of the last n arguments.
		
		Use the getfullargspec() API for Python 3 code, as annotations
		and keyword arguments are supported. getargspec() will raise ValueError
		if the func has either annotations or keyword arguments.
	**/
	static public function getargspec(func:Dynamic):Dynamic;
	/**
		Get information about arguments passed into a particular frame.
		
		A tuple of four things is returned: (args, varargs, varkw, locals).
		'args' is a list of the argument names.
		'varargs' and 'varkw' are the names of the * and ** arguments or None.
		'locals' is the locals dictionary of the given frame.
	**/
	static public function getargvalues(frame:Dynamic):Dynamic;
	/**
		Retrieve attributes without triggering dynamic lookup via the
		descriptor protocol,  __getattr__ or __getattribute__.
		
		Note: this function may not be able to retrieve all attributes
		that getattr can fetch (like dynamically created attributes)
		and may find attributes that getattr can't (like descriptors
		that raise AttributeError). It can also return descriptor objects
		instead of instance members in some cases. See the
		documentation for details.
	**/
	static public function getattr_static(obj:Dynamic, attr:Dynamic, ?_default:Dynamic):Dynamic;
	/**
		Extract the block of code at the top of the given list of lines.
	**/
	static public function getblock(lines:Dynamic):Dynamic;
	/**
		Get the mapping of arguments to values.
		
		A dict is returned, with keys the function argument names (including the
		names of the * and ** arguments, if any), and values the respective bound
		values from 'positional' and 'named'.
	**/
	static public function getcallargs(func_and_positional:Dynamic, named:Dynamic):Dynamic;
	/**
		Arrange the given list of classes into a hierarchy of nested lists.
		
		Where a nested list appears, it contains classes derived from the class
		whose entry immediately precedes the list.  Each entry is a 2-tuple
		containing a class and a tuple of its base classes.  If the 'unique'
		argument is true, exactly one entry appears in the returned structure
		for each class in the given list.  Otherwise, classes using multiple
		inheritance and their descendants will appear multiple times.
	**/
	static public function getclasstree(classes:Dynamic, ?unique:Dynamic):Dynamic;
	/**
		Get the mapping of free variables to their current values.
		
		Returns a named tuple of dicts mapping the current nonlocal, global
		and builtin references as seen by the body of the function. A final
		set of unbound names that could not be resolved is also provided.
	**/
	static public function getclosurevars(func:Dynamic):Dynamic;
	/**
		Get lines of comments immediately preceding an object's source code.
		
		Returns None when source can't be found.
	**/
	static public function getcomments(object:Dynamic):Dynamic;
	/**
		Get the mapping of coroutine local variables to their current values.
		
		A dict is returned, with the keys the local variable names and values the
		bound values.
	**/
	static public function getcoroutinelocals(coroutine:Dynamic):Dynamic;
	/**
		Get current state of a coroutine object.
		
		Possible states are:
		  CORO_CREATED: Waiting to start execution.
		  CORO_RUNNING: Currently being executed by the interpreter.
		  CORO_SUSPENDED: Currently suspended at an await expression.
		  CORO_CLOSED: Execution has completed.
	**/
	static public function getcoroutinestate(coroutine:Dynamic):Dynamic;
	/**
		Get the documentation string for an object.
		
		All tabs are expanded to spaces.  To clean up docstrings that are
		indented to line up with blocks of code, any whitespace than can be
		uniformly removed from the second line onwards is removed.
	**/
	static public function getdoc(object:Dynamic):Dynamic;
	/**
		Work out which source or compiled file an object was defined in.
	**/
	static public function getfile(object:Dynamic):Dynamic;
	/**
		Get information about a frame or traceback object.
		
		A tuple of five things is returned: the filename, the line number of
		the current line, the function name, a list of lines of context from
		the source code, and the index of the current line within that list.
		The optional second argument specifies the number of lines of context
		to return, which are centered around the current line.
	**/
	static public function getframeinfo(frame:Dynamic, ?context:Dynamic):Dynamic;
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
	/**
		Get the mapping of generator local variables to their current values.
		
		A dict is returned, with the keys the local variable names and values the
		bound values.
	**/
	static public function getgeneratorlocals(generator:Dynamic):Dynamic;
	/**
		Get current state of a generator-iterator.
		
		Possible states are:
		  GEN_CREATED: Waiting to start execution.
		  GEN_RUNNING: Currently being executed by the interpreter.
		  GEN_SUSPENDED: Currently suspended at a yield expression.
		  GEN_CLOSED: Execution has completed.
	**/
	static public function getgeneratorstate(generator:Dynamic):Dynamic;
	/**
		Get a list of records for a traceback's frame and all lower frames.
		
		Each record contains a frame object, filename, line number, function
		name, a list of lines of context, and index within the context.
	**/
	static public function getinnerframes(tb:Dynamic, ?context:Dynamic):Dynamic;
	/**
		Get the line number from a frame object, allowing for optimization.
	**/
	static public function getlineno(frame:Dynamic):Dynamic;
	/**
		Return all members of an object as (name, value) pairs sorted by name.
		Optionally, only return members that satisfy a given predicate.
	**/
	static public function getmembers(object:Dynamic, ?predicate:Dynamic):Dynamic;
	/**
		Return the module an object was defined in, or None if not found.
	**/
	static public function getmodule(object:Dynamic, ?_filename:Dynamic):Dynamic;
	/**
		Get the module name, suffix, mode, and module type for a given file.
	**/
	static public function getmoduleinfo(path:Dynamic):Dynamic;
	/**
		Return the module name for a given file, or None.
	**/
	static public function getmodulename(path:Dynamic):Dynamic;
	/**
		Return tuple of base classes (including cls) in method resolution order.
	**/
	static public function getmro(cls:Dynamic):Dynamic;
	/**
		Get a list of records for a frame and all higher (calling) frames.
		
		Each record contains a frame object, filename, line number, function
		name, a list of lines of context, and index within the context.
	**/
	static public function getouterframes(frame:Dynamic, ?context:Dynamic):Dynamic;
	/**
		Return the text of the source code for an object.
		
		The argument may be a module, class, method, function, traceback, frame,
		or code object.  The source code is returned as a single string.  An
		OSError is raised if the source code cannot be retrieved.
	**/
	static public function getsource(object:Dynamic):Dynamic;
	/**
		Return the filename that can be used to locate an object's source.
		Return None if no way can be identified to get the source.
	**/
	static public function getsourcefile(object:Dynamic):Dynamic;
	/**
		Return a list of source lines and starting line number for an object.
		
		The argument may be a module, class, method, function, traceback, frame,
		or code object.  The source code is returned as a list of the lines
		corresponding to the object and the line number indicates where in the
		original source file the first line of code was found.  An OSError is
		raised if the source code cannot be retrieved.
	**/
	static public function getsourcelines(object:Dynamic):Dynamic;
	/**
		Return the indent size, in spaces, at the start of a line of text.
	**/
	static public function indentsize(line:Dynamic):Dynamic;
	/**
		Return true if the object is an abstract base class (ABC).
	**/
	static public function isabstract(object:Dynamic):Dynamic;
	/**
		Return true is object can be passed to an ``await`` expression.
	**/
	static public function isawaitable(object:Dynamic):Dynamic;
	/**
		Return true if the object is a built-in function or method.
		
		Built-in functions and methods provide these attributes:
		    __doc__         documentation string
		    __name__        original name of this function or method
		    __self__        instance to which a method is bound, or None
	**/
	static public function isbuiltin(object:Dynamic):Dynamic;
	/**
		Return true if the object is a class.
		
		Class objects provide these attributes:
		    __doc__         documentation string
		    __module__      name of module in which this class was defined
	**/
	static public function isclass(object:Dynamic):Dynamic;
	/**
		Return true if the object is a code object.
		
		Code objects provide these attributes:
		    co_argcount     number of arguments (not including * or ** args)
		    co_code         string of raw compiled bytecode
		    co_consts       tuple of constants used in the bytecode
		    co_filename     name of file in which this code object was created
		    co_firstlineno  number of first line in Python source code
		    co_flags        bitmap: 1=optimized | 2=newlocals | 4=*arg | 8=**arg
		    co_lnotab       encoded mapping of line numbers to bytecode indices
		    co_name         name with which this code object was defined
		    co_names        tuple of names of local variables
		    co_nlocals      number of local variables
		    co_stacksize    virtual machine stack space required
		    co_varnames     tuple of names of arguments and local variables
	**/
	static public function iscode(object:Dynamic):Dynamic;
	/**
		Return true if the object is a coroutine.
	**/
	static public function iscoroutine(object:Dynamic):Dynamic;
	/**
		Return true if the object is a coroutine function.
		
		Coroutine functions are defined with "async def" syntax,
		or generators decorated with "types.coroutine".
	**/
	static public function iscoroutinefunction(object:Dynamic):Dynamic;
	/**
		Return true if the object is a data descriptor.
		
		Data descriptors have both a __get__ and a __set__ attribute.  Examples are
		properties (defined in Python) and getsets and members (defined in C).
		Typically, data descriptors will also have __name__ and __doc__ attributes
		(properties, getsets, and members have both of these attributes), but this
		is not guaranteed.
	**/
	static public function isdatadescriptor(object:Dynamic):Dynamic;
	/**
		Return true if the object is a frame object.
		
		Frame objects provide these attributes:
		    f_back          next outer frame object (this frame's caller)
		    f_builtins      built-in namespace seen by this frame
		    f_code          code object being executed in this frame
		    f_globals       global namespace seen by this frame
		    f_lasti         index of last attempted instruction in bytecode
		    f_lineno        current line number in Python source code
		    f_locals        local namespace seen by this frame
		    f_trace         tracing function for this frame, or None
	**/
	static public function isframe(object:Dynamic):Dynamic;
	/**
		Return true if the object is a user-defined function.
		
		Function objects provide these attributes:
		    __doc__         documentation string
		    __name__        name with which this function was defined
		    __code__        code object containing compiled function bytecode
		    __defaults__    tuple of any default values for arguments
		    __globals__     global namespace in which this function was defined
		    __annotations__ dict of parameter annotations
		    __kwdefaults__  dict of keyword only parameters with defaults
	**/
	static public function isfunction(object:Dynamic):Dynamic;
	/**
		Return true if the object is a generator.
		
		Generator objects provide these attributes:
		    __iter__        defined to support iteration over container
		    close           raises a new GeneratorExit exception inside the
		                    generator to terminate the iteration
		    gi_code         code object
		    gi_frame        frame object or possibly None once the generator has
		                    been exhausted
		    gi_running      set to 1 when generator is executing, 0 otherwise
		    next            return the next item from the container
		    send            resumes the generator and "sends" a value that becomes
		                    the result of the current yield-expression
		    throw           used to raise an exception inside the generator
	**/
	static public function isgenerator(object:Dynamic):Dynamic;
	/**
		Return true if the object is a user-defined generator function.
		
		Generator function objects provides same attributes as functions.
		
		See help(isfunction) for attributes listing.
	**/
	static public function isgeneratorfunction(object:Dynamic):Dynamic;
	/**
		Return true if the object is a getset descriptor.
		
		getset descriptors are specialized descriptors defined in extension
		modules.
	**/
	static public function isgetsetdescriptor(object:Dynamic):Dynamic;
	/**
		Return true if the object is a member descriptor.
		
		Member descriptors are specialized descriptors defined in extension
		modules.
	**/
	static public function ismemberdescriptor(object:Dynamic):Dynamic;
	/**
		Return true if the object is an instance method.
		
		Instance method objects provide these attributes:
		    __doc__         documentation string
		    __name__        name with which this method was defined
		    __func__        function object containing implementation of method
		    __self__        instance to which this method is bound
	**/
	static public function ismethod(object:Dynamic):Dynamic;
	/**
		Return true if the object is a method descriptor.
		
		But not if ismethod() or isclass() or isfunction() are true.
		
		This is new in Python 2.2, and, for example, is true of int.__add__.
		An object passing this test has a __get__ attribute but not a __set__
		attribute, but beyond that the set of attributes varies.  __name__ is
		usually sensible, and __doc__ often is.
		
		Methods implemented via descriptors that also pass one of the other
		tests return false from the ismethoddescriptor() test, simply because
		the other tests promise more -- you can, e.g., count on having the
		__func__ attribute (etc) when an object passes ismethod().
	**/
	static public function ismethoddescriptor(object:Dynamic):Dynamic;
	/**
		Return true if the object is a module.
		
		Module objects provide these attributes:
		    __cached__      pathname to byte compiled file
		    __doc__         documentation string
		    __file__        filename (missing for built-in modules)
	**/
	static public function ismodule(object:Dynamic):Dynamic;
	/**
		Return true if the object is any kind of function or method.
	**/
	static public function isroutine(object:Dynamic):Dynamic;
	/**
		Return true if the object is a traceback.
		
		Traceback objects provide these attributes:
		    tb_frame        frame object at this level
		    tb_lasti        index of last attempted instruction in bytecode
		    tb_lineno       current line number in Python source code
		    tb_next         next inner traceback object (called by this level)
	**/
	static public function istraceback(object:Dynamic):Dynamic;
	static public var k : Dynamic;
	static public var mod_dict : Dynamic;
	static public var modulesbyfile : Dynamic;
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
		>>> p.x + p.y                       # fields also accessable by name
		33
		>>> d = p._asdict()                 # convert to a dictionary
		>>> d['x']
		11
		>>> Point(**d)                      # convert from a dictionary
		Point(x=11, y=22)
		>>> p._replace(x=100)               # _replace() is like str.replace() but targets named fields
		Point(x=100, y=22)
	**/
	static public function namedtuple(typename:Dynamic, field_names:Dynamic, ?verbose:Dynamic, ?rename:Dynamic):Dynamic;
	/**
		Get a signature object for the passed callable.
	**/
	static public function signature(obj:Dynamic, ?follow_wrapped:Dynamic):Dynamic;
	/**
		Return a list of records for the stack above the caller's frame.
	**/
	static public function stack(?context:Dynamic):Dynamic;
	/**
		Return a list of records for the stack below the current exception.
	**/
	static public function trace(?context:Dynamic):Dynamic;
	/**
		Get the object wrapped by *func*.
		
		Follows the chain of :attr:`__wrapped__` attributes returning the last
		object in the chain.
		
		*stop* is an optional callback accepting an object in the wrapper chain
		as its sole argument that allows the unwrapping to be terminated early if
		the callback returns a true value. If the callback never returns a true
		value, the last object in the chain is returned as usual. For example,
		:func:`signature` uses this to stop unwrapping if any object in the
		chain has a ``__signature__`` attribute defined.
		
		:exc:`ValueError` is raised if a cycle is encountered.
		
		 
	**/
	static public function unwrap(func:Dynamic, ?stop:Dynamic):Dynamic;
	static public var v : Dynamic;
	/**
		Recursive helper function for getclasstree().
	**/
	static public function walktree(classes:Dynamic, children:Dynamic, parent:Dynamic):Dynamic;
}