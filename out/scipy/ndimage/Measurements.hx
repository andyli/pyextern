/* This file is generated, do not edit! */
package scipy.ndimage;
@:pythonImport("scipy.ndimage.measurements") extern class Measurements {
	static public function center_of_mass(input:Dynamic, ?labels:Dynamic = null, ?index:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function extrema(input:Dynamic, ?labels:Dynamic = null, ?index:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function find_objects(input:Dynamic, ?max_label:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function histogram(input:Dynamic, min:Dynamic, max:Dynamic, bins:Dynamic, ?labels:Dynamic = null, ?index:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function label(input:Dynamic, ?structure:Dynamic = null, ?output:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function labeled_comprehension(input:Dynamic, labels:Dynamic, index:Dynamic, func:Dynamic, out_dtype:Dynamic, _default:Dynamic, ?pass_positions:Dynamic = false, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function maximum(input:Dynamic, ?labels:Dynamic = null, ?index:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function maximum_position(input:Dynamic, ?labels:Dynamic = null, ?index:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function mean(input:Dynamic, ?labels:Dynamic = null, ?index:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function minimum(input:Dynamic, ?labels:Dynamic = null, ?index:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function minimum_position(input:Dynamic, ?labels:Dynamic = null, ?index:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function standard_deviation(input:Dynamic, ?labels:Dynamic = null, ?index:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function sum(input:Dynamic, ?labels:Dynamic = null, ?index:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function variance(input:Dynamic, ?labels:Dynamic = null, ?index:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function watershed_ift(input:Dynamic, markers:Dynamic, ?structure:Dynamic = null, ?output:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}