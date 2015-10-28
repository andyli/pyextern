/* This file is generated, do not edit! */
package matplotlib.tri;
@:pythonImport("matplotlib.tri", "Triangulation") extern class Triangulation {
	public function calculate_plane_coefficients(z:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var edges : Dynamic;
	static public function get_from_args_and_kwargs(?varargs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_masked_triangles(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_trifinder(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var neighbors : Dynamic;
	public function set_mask(mask:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}