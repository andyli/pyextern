/* This file is generated, do not edit! */
package seaborn.miscplot;
@:pythonImport("seaborn.miscplot") extern class Miscplot_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Who's a good boy?
	**/
	static public function dogplot(?_:python.VarArgs<Dynamic>, ?__:python.KwArgs<Dynamic>):Dynamic;
	/**
		Plot the values in a color palette as a horizontal array.
		
		Parameters
		----------
		pal : sequence of matplotlib colors
		    colors, i.e. as returned by seaborn.color_palette()
		size :
		    scaling factor for size of plot
	**/
	static public function palplot(pal:Dynamic, ?size:Dynamic):Dynamic;
}