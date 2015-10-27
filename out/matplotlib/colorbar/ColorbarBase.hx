/* This file is generated, do not edit! */
package matplotlib.colorbar;
@:native("matplotlib.colorbar.ColorbarBase") extern class ColorbarBase {
	public function add_lines(levels:Dynamic, colors:Dynamic, linewidths:Dynamic, ?erase:Dynamic = true):Void;
	public var ax : Dynamic;
	public function config_axis():Void;
	public function draw_all():Void;
	public function remove():Void;
	public function set_alpha(alpha:Dynamic):Void;
	public function set_label(args:haxe.extern.Rest<Dynamic>):Void;
	public function set_ticklabels(ticklabels:Dynamic, ?update_ticks:Dynamic = true):Void;
	public function set_ticks(ticks:Dynamic, ?update_ticks:Dynamic = true):Void;
	public function update_ticks():Void;
}