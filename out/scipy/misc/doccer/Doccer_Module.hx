/* This file is generated, do not edit! */
package scipy.misc.doccer;
@:pythonImport("scipy.misc.doccer") extern class Doccer_Module {
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
		Fill a function docstring from variables in dictionary
		
		Adapt the indent of the inserted docs
		
		Parameters
		----------
		docstring : string
		    docstring from function, possibly with dict formatting strings
		docdict : dict, optional
		    dictionary with keys that match the dict formatting strings
		    and values that are docstring fragments to be inserted.  The
		    indentation of the inserted docstrings is set to match the
		    minimum indentation of the ``docstring`` by adding this
		    indentation to all lines of the inserted string, except the
		    first
		
		Returns
		-------
		outstring : string
		    string with requested ``docdict`` strings inserted
		
		Examples
		--------
		>>> docformat(' Test string with %(value)s', {'value':'inserted value'})
		' Test string with inserted value'
		>>> docstring = 'First line\n    Second line\n    %(value)s'
		>>> inserted_string = "indented\nstring"
		>>> docdict = {'value': inserted_string}
		>>> docformat(docstring, docdict)
		'First line\n    Second line\n    indented\n    string'
	**/
	static public function docformat(docstring:Dynamic, ?docdict:Dynamic):String;
	/**
		This decorator replaces the decorated function's docstring
		with the docstring from corresponding method in `cls`.
		It extends the 'Notes' section of that docstring to include
		the given `notes`.
	**/
	static public function extend_notes_in_docstring(cls:Dynamic, notes:Dynamic):Dynamic;
	/**
		Return docstring decorator using docdict variable dictionary
		
		Parameters
		----------
		docdict : dictionary
		    dictionary containing name, docstring fragment pairs
		unindent_params : {False, True}, boolean, optional
		    If True, strip common indentation from all parameters in
		    docdict
		
		Returns
		-------
		decfunc : function
		    decorator that applies dictionary to input function docstring
	**/
	static public function filldoc(docdict:Dynamic, ?unindent_params:Dynamic):haxe.Constraints.Function;
	/**
		Minimum indent for all lines in line list
		
		>>> lines = [' one', '  two', '   three']
		>>> indentcount_lines(lines)
		1
		>>> lines = []
		>>> indentcount_lines(lines)
		0
		>>> lines = [' one']
		>>> indentcount_lines(lines)
		1
		>>> indentcount_lines(['    '])
		0
	**/
	static public function indentcount_lines(lines:Dynamic):Dynamic;
	/**
		This decorator modifies the decorated function's docstring by
		replacing occurrences of '%(super)s' with the docstring of the
		method of the same name from the class `cls`.
		
		If the decorated method has no docstring, it is simply given the
		docstring of `cls`s method.
		
		Parameters
		----------
		cls : Python class or instance
		    A class with a method with the same name as the decorated method.
		    The docstring of the method in this class replaces '%(super)s' in the
		    docstring of the decorated method.
		
		Returns
		-------
		f : function
		    The decorator function that modifies the __doc__ attribute
		    of its argument.
		
		Examples
		--------
		In the following, the docstring for Bar.func created using the
		docstring of `Foo.func`.
		
		>>> class Foo(object):
		...     def func(self):
		...         '''Do something useful.'''
		...         return
		...
		>>> class Bar(Foo):
		...     @inherit_docstring_from(Foo)
		...     def func(self):
		...         '''%(super)s
		...         Do it fast.
		...         '''
		...         return
		...
		>>> b = Bar()
		>>> b.func.__doc__
		'Do something useful.
		    Do it fast.
		    '
	**/
	static public function inherit_docstring_from(cls:Dynamic):haxe.Constraints.Function;
	static public var print_function : Dynamic;
	/**
		This decorator replaces the decorated function's docstring
		with the docstring from corresponding method in `cls`.
		It replaces the 'Notes' section of that docstring with
		the given `notes`.
	**/
	static public function replace_notes_in_docstring(cls:Dynamic, notes:Dynamic):Dynamic;
	/**
		Unindent all strings in a docdict 
	**/
	static public function unindent_dict(docdict:Dynamic):Dynamic;
	/**
		Set docstring to minimum indent for all lines, including first
		
		>>> unindent_string(' two')
		'two'
		>>> unindent_string('  two\n   three')
		'two\n three'
	**/
	static public function unindent_string(docstring:Dynamic):Dynamic;
}