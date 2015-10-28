/* This file is generated, do not edit! */
package matplotlib;
@:pythonImport("matplotlib.image") extern class Image {
	static public function from_images(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function fromarray(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function fromarray2(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function frombuffer(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function frombyte(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function imread(fname:Dynamic, ?format:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function imsave(fname:Dynamic, arr:Dynamic, ?vmin:Dynamic = null, ?vmax:Dynamic = null, ?cmap:Dynamic = null, ?format:Dynamic = null, ?origin:Dynamic = null, ?dpi:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function pcolor(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function pcolor2(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function pil_to_array(pilImage:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function thumbnail(infile:Dynamic, thumbfile:Dynamic, ?scale:Dynamic, ?interpolation:Dynamic, ?preview:Dynamic = false, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}