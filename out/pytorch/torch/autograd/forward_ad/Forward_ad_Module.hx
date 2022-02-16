/* This file is generated, do not edit! */
package torch.autograd.forward_ad;
@:pythonImport("torch.autograd.forward_ad") extern class Forward_ad_Module {
	static public function Any(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _current_level : Dynamic;
	/**
		Function that can be used to enter a new forward grad level.
		This level can be used to make and unpack dual Tensors to compute
		forward gradients.
		
		This function also updates the current level that is used by default
		by the other functions in this API.
	**/
	static public function enter_dual_level():Dynamic;
	/**
		Function that can be used to exit a forward grad level.
		This function deletes all the gradients associated with this
		level. Only deleting the latest entered level is allowed.
		
		This function also updates the current level that is used by default
		by the other functions in this API.
	**/
	static public function exit_dual_level(?level:Dynamic):Dynamic;
	/**
		Function that creates a "dual object" that can be used to compute forward AD gradients
		based on the given Tensor and its tangent. It returns a new Tensor that shares memory with
		:attr:`tensor` and the :attr:`tangent` is used as-is.
		
		This function is backward differentiable.
		
		Given a function `f` whose jacobian is `J`, it allows to compute the jacobian vector product,
		named `jvp`, between `J` and a given vector `v` as follows.
		
		Example::
		    >>> inp = make_dual(x, v)
		    >>> out = f(inp)
		    >>> y, jvp = unpack_dual(out)
	**/
	static public function make_dual(tensor:Dynamic, tangent:Dynamic, ?level:Dynamic):Dynamic;
	/**
		Function that unpacks a "dual object" to recover two plain tensors, one representing
		the primal and the other the tangent (both are views of :attr:`tensor`. Neither of these
		tensors can be dual tensor of level :attr:`level`.
		
		This function is backward differentiable.
	**/
	static public function unpack_dual(tensor:Dynamic, ?level:Dynamic):Dynamic;
}