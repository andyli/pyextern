/* This file is generated, do not edit! */
package pandas.util._decorators;
@:pythonImport("pandas.util._decorators") extern class _Decorators_Module {
	static public var PY2 : Dynamic;
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
	/**
		Remove any common leading whitespace from every line in `text`.
		
		This can be used to make triple-quoted strings line up with the left
		edge of the display, while still presenting them in the source code
		in indented form.
		
		Note that tabs and spaces are both treated as whitespace, but they
		are not equal: the lines "  hello" and "\thello" are
		considered to have no common leading whitespace.  (This behaviour is
		new in Python 2.5; older versions of this module incorrectly
		expanded tabs before searching for common leading whitespace.)
	**/
	static public function dedent(text:Dynamic):Dynamic;
	/**
		Return a new function that emits a deprecation warning on use.
		
		To use this method for a deprecated function, another function
		`alternative` with the same signature must exist. The deprecated
		function will emit a deprecation warning, and in the docstring
		it will contain the deprecation directive with the provided version
		so it can be detected for future removal.
		
		Parameters
		----------
		name : str
		    Name of function to deprecate.
		alternative : func
		    Function to use instead.
		version : str
		    Version of pandas in which the method has been deprecated.
		alt_name : str, optional
		    Name to use in preference of alternative.__name__.
		klass : Warning, default FutureWarning
		stacklevel : int, default 2
		msg : str
		    The message to display in the warning.
		    Default is '{name} is deprecated. Use {alt_name} instead.'
	**/
	static public function deprecate(name:Dynamic, alternative:Dynamic, version:Dynamic, ?alt_name:Dynamic, ?klass:Dynamic, ?stacklevel:Dynamic, ?msg:Dynamic):Dynamic;
	/**
		Decorator to deprecate a keyword argument of a function.
		
		Parameters
		----------
		old_arg_name : str
		    Name of argument in function to deprecate
		new_arg_name : str or None
		    Name of preferred argument in function. Use None to raise warning that
		    ``old_arg_name`` keyword is deprecated.
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
		
		To raise a warning that a keyword will be removed entirely in the future
		
		>>> @deprecate_kwarg(old_arg_name='cols', new_arg_name=None)
		... def f(cols='', another_param=''):
		...     print(cols)
		...
		>>> f(cols='should raise warning')
		FutureWarning: the 'cols' keyword is deprecated and will be removed in a
		future version please takes steps to stop use of 'cols'
		should raise warning
		>>> f(another_param='should not raise warning')
		should not raise warning
		
		>>> f(cols='should raise warning', another_param='')
		FutureWarning: the 'cols' keyword is deprecated and will be removed in a
		future version please takes steps to stop use of 'cols'
		should raise warning
	**/
	static public function deprecate_kwarg(old_arg_name:Dynamic, new_arg_name:Dynamic, ?mapping:Dynamic, ?stacklevel:Dynamic):Dynamic;
	static public function indent(text:Dynamic, ?indents:Dynamic):Dynamic;
	/**
		Returns a tuple containing the paramenter list with defaults
		and parameter list.
		
		Examples
		--------
		>>> def f(a, b, c=2):
		>>>     return a * b * c
		>>> print(make_signature(f))
		(['a', 'b', 'c=2'], ['a', 'b', 'c'])
	**/
	static public function make_signature(func:Dynamic):Dynamic;
	static public function rewrite_axis_style_signature(name:Dynamic, extra_params:Dynamic):Dynamic;
	static public function signature(f:Dynamic):Dynamic;
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