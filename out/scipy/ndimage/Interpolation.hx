/* This file is generated, do not edit! */
package scipy.ndimage;
@:pythonImport("scipy.ndimage.interpolation") extern class Interpolation {
	static public function affine_transform(input:Dynamic, matrix:Dynamic, ?offset:Dynamic, ?output_shape:Dynamic = null, ?output:Dynamic = null, ?order:Dynamic, ?mode:Dynamic, ?cval:Dynamic, ?prefilter:Dynamic = true, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function geometric_transform(input:Dynamic, mapping:Dynamic, ?output_shape:Dynamic = null, ?output:Dynamic = null, ?order:Dynamic, ?mode:Dynamic, ?cval:Dynamic, ?prefilter:Dynamic = true, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function map_coordinates(input:Dynamic, coordinates:Dynamic, ?output:Dynamic = null, ?order:Dynamic, ?mode:Dynamic, ?cval:Dynamic, ?prefilter:Dynamic = true, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function rotate(input:Dynamic, angle:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function shift(input:Dynamic, shift:Dynamic, ?output:Dynamic = null, ?order:Dynamic, ?mode:Dynamic, ?cval:Dynamic, ?prefilter:Dynamic = true, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function spline_filter(input:Dynamic, ?order:Dynamic, ?output:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function spline_filter1d(input:Dynamic, ?order:Dynamic, ?axis:Dynamic, ?output:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function zoom(input:Dynamic, zoom:Dynamic, ?output:Dynamic = null, ?order:Dynamic, ?mode:Dynamic, ?cval:Dynamic, ?prefilter:Dynamic = true, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}