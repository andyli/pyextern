/* This file is generated, do not edit! */
package matplotlib.axis;
@:pythonImport("matplotlib.axis", "XAxis") extern class XAxis {
	public var axis_name : Dynamic;
	public function contains(mouseevent:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_data_interval(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_label_position(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_minpos(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_text_heights(renderer:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_ticks_position(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_view_interval(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function set_data_interval(vmin:Dynamic, vmax:Dynamic, ?ignore:Dynamic = false, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function set_default_intervals(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function set_label_position(position:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function set_ticks_position(position:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function set_view_interval(vmin:Dynamic, vmax:Dynamic, ?ignore:Dynamic = false, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function tick_bottom(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function tick_top(?kwargs:python.KwArgs<Dynamic>):Dynamic;
}