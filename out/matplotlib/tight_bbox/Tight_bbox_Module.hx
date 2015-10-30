/* This file is generated, do not edit! */
package matplotlib.tight_bbox;
@:pythonImport("matplotlib.tight_bbox") extern class Tight_bbox_Module {
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
		Temporarily adjust the figure so that only the specified area
		(bbox_inches) is saved.
		
		It modifies fig.bbox, fig.bbox_inches,
		fig.transFigure._boxout, and fig.patch.  While the figure size
		changes, the scale of the original figure is conserved.  A
		function which restores the original values are returned.
	**/
	static public function adjust_bbox(fig:Dynamic, bbox_inches:Dynamic, ?fixed_dpi:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	/**
		This need to be called when figure dpi changes during the drawing
		(e.g., rasterizing). It recovers the bbox and re-adjust it with
		the new dpi.
	**/
	static public function process_figure_for_rasterizing(fig:Dynamic, bbox_inches_restore:Dynamic, ?fixed_dpi:Dynamic):Dynamic;
	static public var unicode_literals : Dynamic;
}