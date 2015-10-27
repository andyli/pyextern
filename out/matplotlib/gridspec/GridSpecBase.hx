/* This file is generated, do not edit! */
package matplotlib.gridspec;
@:native("matplotlib.gridspec.GridSpecBase") extern class GridSpecBase {
	public function get_geometry():Void;
	public function get_grid_positions(fig:Dynamic):Void;
	public function get_height_ratios():Void;
	public function get_subplot_params(?fig:Dynamic = null):Void;
	public function get_width_ratios():Void;
	public function new_subplotspec(loc:Dynamic, ?rowspan:Dynamic, ?colspan:Dynamic):Void;
	public function set_height_ratios(height_ratios:Dynamic):Void;
	public function set_width_ratios(width_ratios:Dynamic):Void;
}