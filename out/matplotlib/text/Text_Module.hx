/* This file is generated, do not edit! */
package matplotlib.text;
@:pythonImport("matplotlib.text") extern class Text_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Calculate the bounding box of the text. Unlike
		:meth:`matplotlib.text.Text.get_extents` method, The bbox size of
		the text before the rotation is calculated.
	**/
	static public function _get_textbox(text:Dynamic, renderer:Dynamic):Dynamic;
	/**
		Return an override dict.  See :func:`~pyplot.text' docstring for info
	**/
	static public function _process_text_args(_override:Dynamic, ?fontdict:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Temporarily inserts newlines to the text if the wrap option is enabled.
	**/
	static public function _wrap_text(textobj:Dynamic):Dynamic;
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
		Return the text angle as float. The returned
		angle is between 0 and 360 deg.
		
		*rotation* may be 'horizontal', 'vertical', or a numeric value in degrees.
	**/
	static public function get_rotation(rotation:Dynamic):Dynamic;
	/**
		Return True if *obj* looks like a string
	**/
	static public function is_string_like(obj:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public var rcParams : Dynamic;
	static public var unicode_literals : Dynamic;
}