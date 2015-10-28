/* This file is generated, do not edit! */
package matplotlib.text;
@:pythonImport("matplotlib.text", "Annotation") extern class Annotation {
	public var anncoords : Dynamic;
	public function contains(event:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function draw(?varargs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_window_extent(?renderer:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function set_figure(fig:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function update_bbox_position_size(renderer:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function update_positions(renderer:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var xyann : Dynamic;
}