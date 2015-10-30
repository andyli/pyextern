/* This file is generated, do not edit! */
package pandas.core.base;
@:pythonImport("pandas.core.base") extern class Base_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _indexops_doc_kwargs : Dynamic;
	static public var _shared_docs : Dynamic;
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
}