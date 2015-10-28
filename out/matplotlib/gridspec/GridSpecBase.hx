/* This file is generated, do not edit! */
package matplotlib.gridspec;
@:pythonImport("matplotlib.gridspec", "GridSpecBase") extern class GridSpecBase {
	public function get_geometry(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_grid_positions(fig:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_height_ratios(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_subplot_params(?fig:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_width_ratios(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function new_subplotspec(loc:Dynamic, ?rowspan:Dynamic, ?colspan:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function set_height_ratios(height_ratios:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function set_width_ratios(width_ratios:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}