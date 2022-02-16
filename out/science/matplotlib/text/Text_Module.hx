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
		Calculate the bounding box of the text.
		
		The bbox position takes text rotation into account, but the width and
		height are those of the unrotated box (unlike `.Text.get_window_extent`).
	**/
	static public function _get_textbox(text:Dynamic, renderer:Dynamic):Dynamic;
	static public var _log : Dynamic;
	/**
		Return *rotation* normalized to an angle between 0 and 360 degrees.
		
		Parameters
		----------
		rotation : float or {None, 'horizontal', 'vertical'}
		    Rotation angle in degrees. *None* and 'horizontal' equal 0,
		    'vertical' equals 90.
		
		Returns
		-------
		float
	**/
	static public function get_rotation(rotation:Dynamic):Dynamic;
}