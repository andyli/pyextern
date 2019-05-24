/* This file is generated, do not edit! */
package matplotlib.axes._secondary_axes;
@:pythonImport("matplotlib.axes._secondary_axes") extern class _Secondary_axes_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Helper function to locate the secondary axes.
		
		A locator gets used in `Axes.set_aspect` to override the default
		locations...  It is a function that takes an axes object and
		a renderer and tells `set_aspect` where it is to be placed.
		
		This locator make the transform be in axes-relative co-coordinates
		because that is how we specify the "location" of the secondary axes.
		
		Here *rect* is a rectangle [l, b, w, h] that specifies the
		location for the axes in the transform given by *trans* on the
		*parent*.
	**/
	static public function _make_secondary_locator(rect:Dynamic, parent:Dynamic):Dynamic;
	static public var _secax_docstring : Dynamic;
}