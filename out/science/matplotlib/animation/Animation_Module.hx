/* This file is generated, do not edit! */
package matplotlib.animation;
@:pythonImport("matplotlib.animation") extern class Animation_Module {
	static public var DISPLAY_TEMPLATE : Dynamic;
	static public var INCLUDED_FRAMES : Dynamic;
	static public var JS_INCLUDE : Dynamic;
	static public var STYLE_INCLUDE : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		frame_list should be a list of base64-encoded png files
	**/
	static public function _embedded_frames(frame_list:Dynamic, frame_format:Dynamic):Dynamic;
	/**
		paths should be a list of Paths
	**/
	static public function _included_frames(paths:Dynamic, frame_format:Dynamic):Dynamic;
	static public var _log : Dynamic;
	/**
		Compute figure size so that pixels are a multiple of n.
		
		Parameters
		----------
		w, h : float
		    Size in inches.
		
		dpi : float
		    The dpi.
		
		n : int
		    The target multiple.
		
		Returns
		-------
		wnew, hnew : float
		    The new figure size in inches.
	**/
	static public function adjusted_figsize(w:Dynamic, h:Dynamic, dpi:Dynamic, n:Dynamic):Float;
	static public var subprocess_creation_flags : Dynamic;
	static public var writers : Dynamic;
}