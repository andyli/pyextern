/* This file is generated, do not edit! */
package matplotlib.axis;
@:native("matplotlib.axis.XAxis") extern class XAxis {
	public var axis_name : Dynamic;
	public function contains(mouseevent:Dynamic):Void;
	public function get_data_interval():Void;
	public function get_label_position():Void;
	public function get_minpos():Void;
	public function get_text_heights(renderer:Dynamic):Void;
	public function get_ticks_position():Void;
	public function get_view_interval():Void;
	public function set_data_interval(vmin:Dynamic, vmax:Dynamic, ?ignore:Dynamic = false):Void;
	public function set_default_intervals():Void;
	public function set_label_position(position:Dynamic):Void;
	public function set_ticks_position(position:Dynamic):Void;
	public function set_view_interval(vmin:Dynamic, vmax:Dynamic, ?ignore:Dynamic = false):Void;
	public function tick_bottom():Void;
	public function tick_top():Void;
}