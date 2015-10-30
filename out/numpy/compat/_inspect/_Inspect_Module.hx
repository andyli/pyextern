/* This file is generated, do not edit! */
package numpy.compat._inspect;
@:pythonImport("numpy.compat._inspect") extern class _Inspect_Module {
	static public var CO_NEWLOCALS : Dynamic;
	static public var CO_OPTIMIZED : Dynamic;
	static public var CO_VARARGS : Dynamic;
	static public var CO_VARKEYWORDS : Dynamic;
	static public var __all__ : Dynamic;
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
		Format an argument spec from the 4 values returned by getargspec.
		
		The first four arguments are (args, varargs, varkw, defaults).  The
		other four arguments are the corresponding optional formatting functions
		that are called to turn names and values into strings.  The ninth
		argument is an optional function to format the sequence of arguments.
	**/
	static public function formatargspec(args:Dynamic, ?varargs:Dynamic, ?varkw:Dynamic, ?defaults:Dynamic, ?formatarg:Dynamic, ?formatvarargs:Dynamic, ?formatvarkw:Dynamic, ?formatvalue:Dynamic, ?join:Dynamic):Dynamic;
	/**
		Format an argument spec from the 4 values returned by getargvalues.
		
		The first four arguments are (args, varargs, varkw, locals).  The
		next four arguments are the corresponding optional formatting functions
		that are called to turn names and values into strings.  The ninth
		argument is an optional function to format the sequence of arguments.
	**/
	static public function formatargvalues(args:Dynamic, varargs:Dynamic, varkw:Dynamic, locals:Dynamic, ?formatarg:Dynamic, ?formatvarargs:Dynamic, ?formatvarkw:Dynamic, ?formatvalue:Dynamic, ?join:Dynamic):Dynamic;
	/**
		Get information about the arguments accepted by a code object.
		
		Three things are returned: (args, varargs, varkw), where 'args' is
		a list of argument names (possibly containing nested lists), and
		'varargs' and 'varkw' are the names of the * and ** arguments or None.
	**/
	static public function getargs(co:Dynamic):Dynamic;
	/**
		Get the names and default values of a function's arguments.
		
		A tuple of four things is returned: (args, varargs, varkw, defaults).
		'args' is a list of the argument names (it may contain nested lists).
		'varargs' and 'varkw' are the names of the * and ** arguments or None.
		'defaults' is an n-tuple of the default values of the last n arguments.
	**/
	static public function getargspec(func:Dynamic):Dynamic;
	/**
		Get information about arguments passed into a particular frame.
		
		A tuple of four things is returned: (args, varargs, varkw, locals).
		'args' is a list of the argument names (it may contain nested lists).
		'varargs' and 'varkw' are the names of the * and ** arguments or None.
		'locals' is the locals dictionary of the given frame.
	**/
	static public function getargvalues(frame:Dynamic):Dynamic;
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
		Return true if the object is a user-defined function.
		
		Function objects provide these attributes:
		    __doc__         documentation string
		    __name__        name with which this function was defined
		    func_code       code object containing compiled function bytecode
		    func_defaults   tuple of any default values for arguments
		    func_doc        (same as __doc__)
		    func_globals    global namespace in which this function was defined
		    func_name       (same as __name__)
	**/
	static public function isfunction(object:Dynamic):Dynamic;
	/**
		Return true if the object is an instance method.
		
		Instance method objects provide these attributes:
		    __doc__         documentation string
		    __name__        name with which this method was defined
		    im_class        class object in which this method belongs
		    im_func         function object containing implementation of method
		    im_self         instance to which this method is bound, or None
	**/
	static public function ismethod(object:Dynamic):Dynamic;
	static public function joinseq(seq:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Recursively walk a sequence, stringifying each element.
		
		    
	**/
	static public function strseq(object:Dynamic, convert:Dynamic, ?join:Dynamic):Dynamic;
}