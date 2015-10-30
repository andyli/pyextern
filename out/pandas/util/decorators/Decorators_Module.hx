/* This file is generated, do not edit! */
package pandas.util.decorators;
@:pythonImport("pandas.util.decorators") extern class Decorators_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Return whether the object is callable (i.e., some kind of function).
		
		Note that classes are callable, as are instances of classes with a
		__call__() method.
	**/
	static public function callable(obj:Dynamic):Dynamic;
	static public function deprecate(name:Dynamic, alternative:Dynamic, ?alt_name:Dynamic):Dynamic;
	/**
		Decorator to deprecate a keyword argument of a function
		
		Parameters
		----------
		old_arg_name : str
		    Name of argument in function to deprecate
		new_arg_name : str
		    Name of prefered argument in function
		mapping : dict or callable
		    If mapping is present, use it to translate old arguments to
		    new arguments. A callable must do its own value checking;
		    values not found in a dict will be forwarded unchanged.
		
		Examples
		--------
		The following deprecates 'cols', using 'columns' instead
		
		>>> @deprecate_kwarg(old_arg_name='cols', new_arg_name='columns')
		... def f(columns=''):
		...     print(columns)
		...
		>>> f(columns='should work ok')
		should work ok
		>>> f(cols='should raise warning')
		FutureWarning: cols is deprecated, use columns instead
		  warnings.warn(msg, FutureWarning)
		should raise warning
		>>> f(cols='should error', columns="can't pass do both")
		TypeError: Can only specify 'cols' or 'columns', not both
		>>> @deprecate_kwarg('old', 'new', {'yes': True, 'no': False})
		... def f(new=False):
		...     print('yes!' if new else 'no!')
		...
		>>> f(old='yes')
		FutureWarning: old='yes' is deprecated, use new=True instead
		  warnings.warn(msg, FutureWarning)
		yes!
	**/
	static public function deprecate_kwarg(old_arg_name:Dynamic, new_arg_name:Dynamic, ?mapping:Dynamic, ?stacklevel:Dynamic):Dynamic;
	static public function indent(text:Dynamic, ?indents:Dynamic):Dynamic;
	/**
		Make function raise KnownFailureTest exception if given condition is true.
		
		If the condition is a callable, it is used at runtime to dynamically
		make the decision. This is useful for tests that may require costly
		imports, to delay the cost until the test suite is actually executed.
		
		Parameters
		----------
		fail_condition : bool or callable
		    Flag to determine whether to mark the decorated test as a known
		    failure (if True) or not (if False).
		msg : str, optional
		    Message to give on raising a KnownFailureTest exception.
		    Default is None.
		
		Returns
		-------
		decorator : function
		    Decorator, which, when applied to a function, causes SkipTest
		    to be raised when `skip_condition` is True, and the function
		    to be called normally otherwise.
		
		Notes
		-----
		The decorator itself is decorated with the ``nose.tools.make_decorator``
		function in order to transmit function name, and various other metadata.
	**/
	static public function knownfailureif(fail_condition:Dynamic, ?msg:Dynamic):Dynamic;
	/**
		Returns a string repr of the arg list of a func call, with any defaults
		
		Examples
		--------
		
		>>> def f(a,b,c=2) :
		>>>     return a*b*c
		>>> print(_make_signature(f))
		a,b,c=2
	**/
	static public function make_signature(func:Dynamic):Dynamic;
	static public function suppress_stdout(f:Dynamic):Dynamic;
	/**
		Decorator factory to apply update_wrapper() to a wrapper function
		
		Returns a decorator that invokes update_wrapper() with the decorated
		function as the wrapper argument and the arguments to wraps() as the
		remaining arguments. Default arguments are as for update_wrapper().
		This is a convenience function to simplify applying partial() to
		update_wrapper().
	**/
	static public function wraps(wrapped:Dynamic, ?assigned:Dynamic, ?updated:Dynamic):Dynamic;
}