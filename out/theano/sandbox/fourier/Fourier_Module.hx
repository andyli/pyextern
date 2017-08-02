/* This file is generated, do not edit! */
package theano.sandbox.fourier;
@:pythonImport("theano.sandbox.fourier") extern class Fourier_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var __warningregistry__ : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Return a (rows x cols) matrix implementing a discrete cosine transform.
		
		This algorithm is adapted from Dan Ellis' Rastmat spec2cep.m, lines 15-20.
	**/
	static public function dct_matrix(rows:Dynamic, cols:Dynamic, ?unitary:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public function fft(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function generic(?name:Dynamic):Dynamic;
	static public function grad_todo(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function half_fft(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function half_ifft(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function ifft(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var message : Dynamic;
	static public var print_function : Dynamic;
}