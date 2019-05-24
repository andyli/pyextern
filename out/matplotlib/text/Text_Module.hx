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
	static public var _log : Dynamic;
	/**
		Temporarily inserts newlines to the text if the wrap option is enabled.
		    
	**/
	static public function _wrap_text(textobj:Dynamic):Dynamic;
	/**
		Return the text angle as float between 0 and 360 degrees.
		
		*rotation* may be 'horizontal', 'vertical', or a numeric value in degrees.
	**/
	static public function get_rotation(rotation:Dynamic):Dynamic;
	static public var rcParams : Dynamic;
}