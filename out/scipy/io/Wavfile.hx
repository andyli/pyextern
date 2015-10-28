/* This file is generated, do not edit! */
package scipy.io;
@:pythonImport("scipy.io.wavfile") extern class Wavfile {
	static public function read(filename:Dynamic, ?mmap:Dynamic = false, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function write(filename:Dynamic, rate:Dynamic, data:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}