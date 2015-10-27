/* This file is generated, do not edit! */
package matplotlib;
@:native("matplotlib.tight_layout") extern class Tight_layout {
	static public function auto_adjust_subplotpars(fig:Dynamic, renderer:Dynamic, nrows_ncols:Dynamic, num1num2_list:Dynamic, subplot_list:Dynamic, ?ax_bbox_list:Dynamic = null, ?pad:Dynamic, ?h_pad:Dynamic = null, ?w_pad:Dynamic = null, ?rect:Dynamic = null):Void;
	static public function get_renderer(fig:Dynamic):Void;
	static public function get_subplotspec_list(axes_list:Dynamic, ?grid_spec:Dynamic = null):Void;
	static public function get_tight_layout_figure(fig:Dynamic, axes_list:Dynamic, subplotspec_list:Dynamic, renderer:Dynamic, ?pad:Dynamic, ?h_pad:Dynamic = null, ?w_pad:Dynamic = null, ?rect:Dynamic = null):Void;
}