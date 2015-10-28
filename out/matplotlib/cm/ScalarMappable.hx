/* This file is generated, do not edit! */
package matplotlib.cm;
@:pythonImport("matplotlib.cm", "ScalarMappable") extern class ScalarMappable {
	public function add_checker(checker:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function autoscale(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function autoscale_None(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function changed(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function check_update(checker:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var cmap : Dynamic;
	public var colorbar : Dynamic;
	public function get_array(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_clim(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_cmap(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var norm : Dynamic;
	public function set_array(A:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function set_clim(?vmin:Dynamic = null, ?vmax:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function set_cmap(cmap:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function set_colorbar(im:Dynamic, ax:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function set_norm(norm:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function to_rgba(x:Dynamic, ?alpha:Dynamic = null, ?bytes:Dynamic = false, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}