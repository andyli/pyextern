/* This file is generated, do not edit! */
package matplotlib.backends.backend_mixed;
@:pythonImport("matplotlib.backends.backend_mixed") extern class Backend_mixed_Module {
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
		frombuffer(buffer, width, height, isoutput)
		
		Load the image from a character buffer
		By default this function fills the input buffer, which can subsequently
		be resampled using resize.  If isoutput=1, fill the output buffer.
		This is used to support raw pixel images w/o resampling.
	**/
	static public function frombuffer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var print_function : Dynamic;
	/**
		This need to be called when figure dpi changes during the drawing
		(e.g., rasterizing). It recovers the bbox and re-adjust it with
		the new dpi.
	**/
	static public function process_figure_for_rasterizing(fig:Dynamic, bbox_inches_restore:Dynamic, ?fixed_dpi:Dynamic):Dynamic;
	static public var unicode_literals : Dynamic;
}