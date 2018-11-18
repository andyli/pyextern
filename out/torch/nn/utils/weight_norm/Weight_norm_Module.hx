/* This file is generated, do not edit! */
package torch.nn.utils.weight_norm;
@:pythonImport("torch.nn.utils.weight_norm") extern class Weight_norm_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Computes the norm over all dimensions except dim
	**/
	static public function _norm(p:Dynamic, dim:Dynamic):Dynamic;
	/**
		Removes the weight normalization reparameterization from a module.
		
		Args:
		    module (nn.Module): containing module
		    name (str, optional): name of weight parameter
		
		Example:
		    >>> m = weight_norm(nn.Linear(20, 40))
		    >>> remove_weight_norm(m)
	**/
	static public function remove_weight_norm(module:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Applies weight normalization to a parameter in the given module.
		
		.. math::
		     \mathbf{w} = g \dfrac{\mathbf{v}}{\|\mathbf{v}\|}
		
		Weight normalization is a reparameterization that decouples the magnitude
		of a weight tensor from its direction. This replaces the parameter specified
		by `name` (e.g. "weight") with two parameters: one specifying the magnitude
		(e.g. "weight_g") and one specifying the direction (e.g. "weight_v").
		Weight normalization is implemented via a hook that recomputes the weight
		tensor from the magnitude and direction before every :meth:`~Module.forward`
		call.
		
		By default, with `dim=0`, the norm is computed independently per output
		channel/plane. To compute a norm over the entire weight tensor, use
		`dim=None`.
		
		See https://arxiv.org/abs/1602.07868
		
		Args:
		    module (nn.Module): containing module
		    name (str, optional): name of weight parameter
		    dim (int, optional): dimension over which to compute the norm
		
		Returns:
		    The original module with the weight norm hook
		
		Example::
		
		    >>> m = weight_norm(nn.Linear(20, 40), name='weight')
		    Linear (20 -> 40)
		    >>> m.weight_g.size()
		    torch.Size([40, 1])
		    >>> m.weight_v.size()
		    torch.Size([40, 20])
	**/
	static public function weight_norm(module:Dynamic, ?name:Dynamic, ?dim:Dynamic):Dynamic;
}