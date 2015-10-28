/* This file is generated, do not edit! */
package scipy.signal;
@:pythonImport("scipy.signal", "TransferFunction") extern class TransferFunction {
	public var A : Dynamic;
	public var B : Dynamic;
	public function bode(?w:Dynamic = null, ?n:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var C : Dynamic;
	public var D : Dynamic;
	public var den : Dynamic;
	public function freqresp(?w:Dynamic = null, ?n:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var gain : Dynamic;
	public function impulse(?X0:Dynamic = null, ?T:Dynamic = null, ?N:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var num : Dynamic;
	public function output(U:Dynamic, T:Dynamic, ?X0:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var poles : Dynamic;
	public function step(?X0:Dynamic = null, ?T:Dynamic = null, ?N:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function to_ss(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function to_tf(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function to_zpk(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var zeros : Dynamic;
}