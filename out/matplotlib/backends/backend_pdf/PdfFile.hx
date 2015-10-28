/* This file is generated, do not edit! */
package matplotlib.backends.backend_pdf;
@:pythonImport("matplotlib.backends.backend_pdf", "PdfFile") extern class PdfFile {
	public function alphaState(alpha:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function embedTTF(filename:Dynamic, characters:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function fontName(fontprop:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function imageObject(image:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function markerObject(path:Dynamic, trans:Dynamic, fillp:Dynamic, strokep:Dynamic, lw:Dynamic, joinstyle:Dynamic, capstyle:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function reserveObject(?name:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function writeInfoDict(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function writeTrailer(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function writeXref(?kwargs:python.KwArgs<Dynamic>):Dynamic;
}