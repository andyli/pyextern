/* This file is generated, do not edit! */
package matplotlib;
@:native("matplotlib.image") extern class Image {
	static public function from_images():Void;
	static public function fromarray():Void;
	static public function fromarray2():Void;
	static public function frombuffer():Void;
	static public function frombyte():Void;
	static public function imread(fname:Dynamic, ?format:Dynamic = null):Void;
	static public function imsave(fname:Dynamic, arr:Dynamic, ?vmin:Dynamic = null, ?vmax:Dynamic = null, ?cmap:Dynamic = null, ?format:Dynamic = null, ?origin:Dynamic = null, ?dpi:Dynamic):Void;
	static public function pcolor():Void;
	static public function pcolor2():Void;
	static public function pil_to_array(pilImage:Dynamic):Void;
	static public function thumbnail(infile:Dynamic, thumbfile:Dynamic, ?scale:Dynamic, ?interpolation:Dynamic, ?preview:Dynamic = false):Void;
}