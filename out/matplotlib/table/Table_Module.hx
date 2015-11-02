/* This file is generated, do not edit! */
package matplotlib.table;
@:pythonImport("matplotlib.table") extern class Table_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Decorator for Artist.draw method. Provides routines
		that run before and after the draw call. The before and after functions
		are useful for changing artist-dependant renderer attributes or making
		other setup function calls, such as starting and flushing a mixed-mode
		renderer.
	**/
	static public function allow_rasterization(draw:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Return True if *obj* looks like a string
	**/
	static public function is_string_like(obj:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		TABLE(cellText=None, cellColours=None,
		      cellLoc='right', colWidths=None,
		      rowLabels=None, rowColours=None, rowLoc='left',
		      colLabels=None, colColours=None, colLoc='center',
		      loc='bottom', bbox=None, edges='closed')
		
		Factory function to generate a Table instance.
		
		Thanks to John Gill for providing the class and table.
	**/
	static public function table(ax:Dynamic, ?cellText:Dynamic, ?cellColours:Dynamic, ?cellLoc:Dynamic, ?colWidths:Dynamic, ?rowLabels:Dynamic, ?rowColours:Dynamic, ?rowLoc:Dynamic, ?colLabels:Dynamic, ?colColours:Dynamic, ?colLoc:Dynamic, ?loc:Dynamic, ?bbox:Dynamic, ?edges:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var unicode_literals : Dynamic;
}