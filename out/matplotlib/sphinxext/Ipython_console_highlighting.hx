/* This file is generated, do not edit! */
package matplotlib.sphinxext;
@:pythonImport("matplotlib.sphinxext.ipython_console_highlighting") extern class Ipython_console_highlighting {
	static public var Comment : Dynamic;
	static public var Generic : Dynamic;
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
		Helper for lexers which must combine the results of several
		sublexers.
		
		``insertions`` is a list of ``(index, itokens)`` pairs.
		Each ``itokens`` iterable should be inserted at position
		``index`` into the token stream given by the ``tokens``
		argument.
		
		The result is a combined token stream.
		
		TODO: clean up the code here.
	**/
	static public function do_insertions(insertions:Dynamic, tokens:Dynamic):Dynamic;
	static public var line_re : Dynamic;
	static public var print_function : Dynamic;
	/**
		Setup as a sphinx extension.
	**/
	static public function setup(app:Dynamic):Dynamic;
	static public var unicode_literals : Dynamic;
}