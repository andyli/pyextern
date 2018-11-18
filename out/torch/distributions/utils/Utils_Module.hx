/* This file is generated, do not edit! */
package torch.distributions.utils;
@:pythonImport("torch.distributions.utils") extern class Utils_Module {
	static public var _FINFO : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Given a list of tensor sizes, returns the size of the resulting broadcasted
		tensor.
		
		Args:
		    shapes (list of torch.Size): list of tensor sizes
	**/
	static public function _broadcast_shape(shapes:Dynamic):Dynamic;
	/**
		Return floating point info about a `Tensor`:
		- `.eps` is the smallest number that can be added to 1 without being lost.
		- `.tiny` is the smallest positive number greater than zero
		  (much smaller than `.eps`).
		
		Args:
		    tensor (Tensor): tensor of floating point data.
		Returns:
		    _Finfo: a `namedtuple` with fields `.eps` and `.tiny`.
	**/
	static public function _finfo(tensor:Dynamic):Dynamic;
	/**
		Sum out ``dim`` many rightmost dimensions of a given tensor.
		
		Args:
		    value (Tensor): A tensor of ``.dim()`` at least ``dim``.
		    dim (int): The number of rightmost dims to sum out.
	**/
	static public function _sum_rightmost(value:Dynamic, dim:Dynamic):Dynamic;
	/**
		Given a batch of matrices, returns the lower triangular part of each matrix, with
		the other entries set to 0. The argument `diagonal` has the same meaning as in
		`torch.tril`.
	**/
	static public function batch_tril(bmat:Dynamic, ?diagonal:Dynamic):Dynamic;
	/**
		Given a list of values (possibly containing numbers), returns a list where each
		value is broadcasted based on the following rules:
		  - `torch.*Tensor` instances are broadcasted as per the `broadcasting rules
		    <http://pytorch.org/docs/master/notes/broadcasting.html>`_
		  - numbers.Number instances (scalars) are upcast to tensors having
		    the same size and type as the first tensor passed to `values`.  If all the
		    values are scalars, then they are upcasted to Tensors having size
		    `(1,)`.
		
		Args:
		    values (list of `numbers.Number` or `torch.*Tensor`)
		
		Raises:
		    ValueError: if any of the values is not a `numbers.Number` or
		        `torch.*Tensor` instance
	**/
	static public function broadcast_all(?values:python.VarArgs<Dynamic>):Dynamic;
	static public function clamp_probs(probs:Dynamic):Dynamic;
	/**
		Converts a tensor of logits into probabilities. Note that for the
		binary case, each value denotes log odds, whereas for the
		multi-dimensional case, the values along the last dimension denote
		the log probabilities (possibly unnormalized) of the events.
	**/
	static public function logits_to_probs(logits:Dynamic, ?is_binary:Dynamic):Dynamic;
	/**
		Returns a new subclass of tuple with named fields.
		
		>>> Point = namedtuple('Point', ['x', 'y'])
		>>> Point.__doc__                   # docstring for the new class
		'Point(x, y)'
		>>> p = Point(11, y=22)             # instantiate with positional args or keywords
		>>> p[0] + p[1]                     # indexable like a plain tuple
		33
		>>> x, y = p                        # unpack like a regular tuple
		>>> x, y
		(11, 22)
		>>> p.x + p.y                       # fields also accessible by name
		33
		>>> d = p._asdict()                 # convert to a dictionary
		>>> d['x']
		11
		>>> Point(**d)                      # convert from a dictionary
		Point(x=11, y=22)
		>>> p._replace(x=100)               # _replace() is like str.replace() but targets named fields
		Point(x=100, y=22)
	**/
	static public function namedtuple(typename:Dynamic, field_names:Dynamic, ?verbose:Dynamic, ?rename:Dynamic, ?module:Dynamic):Dynamic;
	/**
		Converts a tensor of probabilities into logits. For the binary case,
		this denotes the probability of occurrence of the event indexed by `1`.
		For the multi-dimensional case, the values along the last dimension
		denote the probabilities of occurrence of each of the events.
	**/
	static public function probs_to_logits(probs:Dynamic, ?is_binary:Dynamic):Dynamic;
	/**
		Update a wrapper function to look like the wrapped function
		
		wrapper is the function to be updated
		wrapped is the original function
		assigned is a tuple naming the attributes assigned directly
		from the wrapped function to the wrapper function (defaults to
		functools.WRAPPER_ASSIGNMENTS)
		updated is a tuple naming the attributes of the wrapper that
		are updated with the corresponding attribute from the wrapped
		function (defaults to functools.WRAPPER_UPDATES)
	**/
	static public function update_wrapper(wrapper:Dynamic, wrapped:Dynamic, ?assigned:Dynamic, ?updated:Dynamic):Dynamic;
}