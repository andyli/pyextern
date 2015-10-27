/* This file is generated, do not edit! */
package matplotlib.backends.backend_pdf;
@:native("matplotlib.backends.backend_pdf.PdfFile") extern class PdfFile {
	public function alphaState(alpha:Dynamic):Void;
	public function embedTTF(filename:Dynamic, characters:Dynamic):Void;
	public function fontName(fontprop:Dynamic):Void;
	public function imageObject(image:Dynamic):Void;
	public function markerObject(path:Dynamic, trans:Dynamic, fillp:Dynamic, strokep:Dynamic, lw:Dynamic, joinstyle:Dynamic, capstyle:Dynamic):Void;
	public function reserveObject(?name:Dynamic):Void;
	public function writeInfoDict():Void;
	public function writeTrailer():Void;
	public function writeXref():Void;
}