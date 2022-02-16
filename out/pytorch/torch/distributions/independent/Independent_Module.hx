/* This file is generated, do not edit! */
package torch.distributions.independent;
@:pythonImport("torch.distributions.independent") extern class Independent_Module {
	static public function Dict(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Sum out ``dim`` many rightmost dimensions of a given tensor.
		
		Args:
		    value (Tensor): A tensor of ``.dim()`` at least ``dim``.
		    dim (int): The number of rightmost dims to sum out.
	**/
	static public function _sum_rightmost(value:Dynamic, dim:Dynamic):Dynamic;
}