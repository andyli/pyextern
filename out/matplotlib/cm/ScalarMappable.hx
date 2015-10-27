/* This file is generated, do not edit! */
package matplotlib.cm;
@:native("matplotlib.cm.ScalarMappable") extern class ScalarMappable {
	public function add_checker(checker:Dynamic):Void;
	public function autoscale():Void;
	public function autoscale_None():Void;
	public function changed():Void;
	public function check_update(checker:Dynamic):Void;
	public var cmap : Dynamic;
	public var colorbar : Dynamic;
	public function get_array():Void;
	public function get_clim():Void;
	public function get_cmap():Void;
	public var norm : Dynamic;
	public function set_array(A:Dynamic):Void;
	public function set_clim(?vmin:Dynamic = null, ?vmax:Dynamic = null):Void;
	public function set_cmap(cmap:Dynamic):Void;
	public function set_colorbar(im:Dynamic, ax:Dynamic):Void;
	public function set_norm(norm:Dynamic):Void;
	public function to_rgba(x:Dynamic, ?alpha:Dynamic = null, ?bytes:Dynamic = false):Void;
}