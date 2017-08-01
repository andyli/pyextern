/* This file is generated, do not edit! */
package torch.autograd.variable;
@:pythonImport("torch.autograd.variable", "Variable") extern class Variable {
	public function __add__(other:Dynamic):Dynamic;
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __deepcopy__(memo:Dynamic):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		__dir__() -> list
		default dir() implementation
	**/
	public function __dir__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __div__(other:Dynamic):Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(other:Dynamic):Dynamic;
	/**
		default object formatter
	**/
	public function __format__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self>=value.
	**/
	public function __ge__(other:Dynamic):Dynamic;
	public function __getattr__(name:Dynamic):Dynamic;
	/**
		Return getattr(self, name).
	**/
	public function __getattribute__(name:Dynamic):Dynamic;
	public function __getitem__(key:Dynamic):Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(other:Dynamic):Dynamic;
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	public function __iadd__(other:Dynamic):Dynamic;
	public function __idiv__(other:Dynamic):Dynamic;
	public function __imul__(other:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	static public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __ipow__(other:Dynamic):Dynamic;
	public function __isub__(other:Dynamic):Dynamic;
	public function __iter__():Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(other:Dynamic):Dynamic;
	public function __len__():Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(other:Dynamic):Dynamic;
	public function __matmul__(other:Dynamic):Dynamic;
	public function __mod__(other:Dynamic):Dynamic;
	static public var __module__ : Dynamic;
	public function __mul__(other:Dynamic):Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(other:Dynamic):Dynamic;
	public function __neg__():Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function __pow__(other:Dynamic):Dynamic;
	public function __radd__(other:Dynamic):Dynamic;
	public function __rdiv__(other:Dynamic):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce_ex__(proto:Dynamic):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	public function __rmul__(other:Dynamic):Dynamic;
	public function __rpow__(other:Dynamic):Dynamic;
	public function __rsub__(other:Dynamic):Dynamic;
	public function __rtruediv__(other:Dynamic):Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	public function __setitem__(key:Dynamic, value:Dynamic):Dynamic;
	public function __setstate__(state:Dynamic):Dynamic;
	/**
		__sizeof__() -> int
		size of object in memory, in bytes
	**/
	public function __sizeof__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return str(self).
	**/
	public function __str__():Dynamic;
	public function __sub__(other:Dynamic):Dynamic;
	/**
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	static public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __truediv__(other:Dynamic):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	public function _add(other:Dynamic, inplace:Dynamic):Dynamic;
	public function _addcop(op:Dynamic, args:Dynamic):Dynamic;
	public var _backward_hooks : Dynamic;
	public function _blas(cls:Dynamic, args:Dynamic, inplace:Dynamic):Dynamic;
	public var _creator : Dynamic;
	static public var _execution_engine : Dynamic;
	static public var _fallthrough_methods : Dynamic;
	public function _get_type(name:Dynamic):Dynamic;
	public var _grad : Dynamic;
	static public function _static_blas(cls:Dynamic, args:Dynamic, inplace:Dynamic):Dynamic;
	public function _sub(other:Dynamic, inplace:Dynamic):Dynamic;
	static public function _torch():Dynamic;
	public var _version : Dynamic;
	public function abs():Dynamic;
	public function acos():Dynamic;
	public function add(other:Dynamic):Dynamic;
	public function add_(other:Dynamic):Dynamic;
	public function addbmm(?args:python.VarArgs<Dynamic>):Dynamic;
	public function addbmm_(?args:python.VarArgs<Dynamic>):Dynamic;
	public function addcdiv(?args:python.VarArgs<Dynamic>):Dynamic;
	public function addcmul(?args:python.VarArgs<Dynamic>):Dynamic;
	public function addmm(?args:python.VarArgs<Dynamic>):Dynamic;
	public function addmm_(?args:python.VarArgs<Dynamic>):Dynamic;
	public function addmv(?args:python.VarArgs<Dynamic>):Dynamic;
	public function addmv_(?args:python.VarArgs<Dynamic>):Dynamic;
	public function addr(?args:python.VarArgs<Dynamic>):Dynamic;
	public function addr_(?args:python.VarArgs<Dynamic>):Dynamic;
	public function asin():Dynamic;
	public function atan():Dynamic;
	/**
		Computes the gradient of current variable w.r.t. graph leaves.
		
		The graph is differentiated using the chain rule. If the variable is
		non-scalar (i.e. its data has more than one element) and requires
		gradient, the function additionaly requires specifying ``gradient``.
		It should be a tensor of matching type and location, that contains
		the gradient of the differentiated function w.r.t. ``self``.
		
		This function accumulates gradients in the leaves - you might need to zero
		them before calling it.
		
		Arguments:
		    gradient (Tensor): Gradient of the differentiated function
		        w.r.t. the data. Required only if the data has more than one
		        element. Type and location should match these of ``self.data``.
		    retain_variables (bool): If ``True``, buffers necessary for computing
		        gradients won't be freed after use. It is only necessary to
		        specify ``True`` if you want to differentiate some subgraph multiple
		        times (in some cases it will be much more efficient to use
		        `autograd.backward`).
	**/
	public function backward(?gradient:Dynamic, ?retain_variables:Dynamic):Dynamic;
	public function baddbmm(?args:python.VarArgs<Dynamic>):Dynamic;
	public function baddbmm_(?args:python.VarArgs<Dynamic>):Dynamic;
	public function bernoulli():Dynamic;
	public function bmm(batch:Dynamic):Dynamic;
	public function byte():Dynamic;
	public function ceil():Dynamic;
	public function char():Dynamic;
	public function chunk(num_chunks:Dynamic, ?dim:Dynamic):Dynamic;
	public function clamp(?min:Dynamic, ?max:Dynamic):Dynamic;
	public function clone():Dynamic;
	public function contiguous():Dynamic;
	public function cos():Dynamic;
	public function cosh():Dynamic;
	public function cpu():Dynamic;
	public var creator : Dynamic;
	public function cross(other:Dynamic, ?dim:Dynamic):Dynamic;
	public function cuda(?device_id:Dynamic, ?async:Dynamic):Dynamic;
	public function cumsum(dim:Dynamic):Dynamic;
	public var data : Dynamic;
	/**
		Returns a new Variable, detached from the current graph.
		
		Result will never require gradient. If the input is volatile, the output
		will be volatile too.
		
		.. note::
		
		  Returned Variable uses the same data tensor, as the original one, and
		  in-place modifications on either of them will be seen, and may trigger
		  errors in correctness checks.
	**/
	public function detach():Dynamic;
	/**
		Detaches the Variable from the graph that created it, making it a leaf.
	**/
	public function detach_():Dynamic;
	public function diag(?diagonal_idx:Dynamic):Dynamic;
	public function dist(tensor:Dynamic, ?p:Dynamic):Dynamic;
	public function div(other:Dynamic):Dynamic;
	public function div_(other:Dynamic):Dynamic;
	public function dot(other:Dynamic):Dynamic;
	public function double():Dynamic;
	public function eq(other:Dynamic):Dynamic;
	public function exp():Dynamic;
	public function exp_():Dynamic;
	public function expand(?sizes:python.VarArgs<Dynamic>):Dynamic;
	public function expand_as(tensor:Dynamic):Dynamic;
	public function float():Dynamic;
	public function floor():Dynamic;
	public function fmod(value:Dynamic):Dynamic;
	public function frac():Dynamic;
	public function gather(dim:Dynamic, index:Dynamic):Dynamic;
	public function ge(other:Dynamic):Dynamic;
	public function ger(vector:Dynamic):Dynamic;
	public var grad : Dynamic;
	public function gt(other:Dynamic):Dynamic;
	public function half():Dynamic;
	public function index_add(dim:Dynamic, index:Dynamic, tensor:Dynamic):Dynamic;
	public function index_add_(dim:Dynamic, index:Dynamic, tensor:Dynamic):Dynamic;
	public function index_copy(dim:Dynamic, index:Dynamic, tensor:Dynamic):Dynamic;
	public function index_copy_(dim:Dynamic, index:Dynamic, tensor:Dynamic):Dynamic;
	public function index_fill(dim:Dynamic, index:Dynamic, value:Dynamic):Dynamic;
	public function index_fill_(dim:Dynamic, index:Dynamic, value:Dynamic):Dynamic;
	public function index_select(dim:Dynamic, index:Dynamic):Dynamic;
	public function int():Dynamic;
	public function is_same_size(other_var:Dynamic):Dynamic;
	public function kthvalue(dim:Dynamic):Dynamic;
	public function le(other:Dynamic):Dynamic;
	public function lerp(tensor:Dynamic, weight:Dynamic):Dynamic;
	public function log():Dynamic;
	public function log1p():Dynamic;
	public function long():Dynamic;
	public function lt(other:Dynamic):Dynamic;
	public function masked_copy(mask:Dynamic, variable:Dynamic):Dynamic;
	public function masked_copy_(mask:Dynamic, variable:Dynamic):Dynamic;
	public function masked_fill(mask:Dynamic, value:Dynamic):Dynamic;
	public function masked_fill_(mask:Dynamic, value:Dynamic):Dynamic;
	public function masked_select(mask:Dynamic):Dynamic;
	public function max(?dim:Dynamic):Dynamic;
	public function mean(?dim:Dynamic):Dynamic;
	public function median(dim:Dynamic):Dynamic;
	public function min(?dim:Dynamic):Dynamic;
	public function mm(matrix:Dynamic):Dynamic;
	public function mode(dim:Dynamic):Dynamic;
	public function mul(other:Dynamic):Dynamic;
	public function mul_(other:Dynamic):Dynamic;
	public function multinomial(?num_samples:Dynamic, ?with_replacement:Dynamic):Dynamic;
	public function mv(vector:Dynamic):Dynamic;
	public function narrow(dim:Dynamic, start_index:Dynamic, length:Dynamic):Dynamic;
	public function ne(other:Dynamic):Dynamic;
	public function neg():Dynamic;
	public function neg_():Dynamic;
	public function norm(?p:Dynamic, ?dim:Dynamic):Dynamic;
	public var output_nr : Dynamic;
	public function permute(?permutation:python.VarArgs<Dynamic>):Dynamic;
	public function pow(other:Dynamic):Dynamic;
	public function prod(?dim:Dynamic):Dynamic;
	public function reciprocal():Dynamic;
	/**
		Registers a backward hook.
		
		The hook will be called every time a gradient with respect to the
		variable is computed. The hook should have the following signature::
		
		    hook(grad) -> Variable or None
		
		The hook should not modify its argument, but it can optionally return
		a new gradient which will be used in place of :attr:`grad`.
		
		This function returns a handle with a method ``handle.remove()``
		that removes the hook from the module.
		
		Example:
		    >>> v = Variable(torch.Tensor([0, 0, 0]), requires_grad=True)
		    >>> h = v.register_hook(lambda grad: grad * 2)  # double the gradient
		    >>> v.backward(torch.Tensor([1, 1, 1]))
		    >>> v.grad.data
		     2
		     2
		     2
		    [torch.FloatTensor of size 3]
		    >>> h.remove()  # removes the hook
	**/
	public function register_hook(hook:Dynamic):Dynamic;
	/**
		Registers a reward obtained as a result of a stochastic process.
		
		Differentiating stochastic nodes requires providing them with reward
		value. If your graph contains any stochastic operations, you should
		call this function on their outputs. Otherwise an error will be raised.
		
		Parameters:
		    reward(Tensor): Tensor with per-element rewards. It has to match
		        the device location and shape of Variable's data.
	**/
	public function reinforce(reward:Dynamic):Dynamic;
	public function remainder(value:Dynamic):Dynamic;
	public function renorm(p:Dynamic, dim:Dynamic, maxnorm:Dynamic):Dynamic;
	public function repeat(?repeats:python.VarArgs<Dynamic>):Dynamic;
	public var requires_grad : Dynamic;
	public function resize(?sizes:python.VarArgs<Dynamic>):Dynamic;
	public function resize_as(variable:Dynamic):Dynamic;
	public function round():Dynamic;
	public function rsqrt():Dynamic;
	public function scatter(dim:Dynamic, index:Dynamic, source:Dynamic):Dynamic;
	public function scatter_(dim:Dynamic, index:Dynamic, source:Dynamic):Dynamic;
	public function select(dim:Dynamic, _index:Dynamic):Dynamic;
	public function short():Dynamic;
	public function sigmoid():Dynamic;
	public function sigmoid_():Dynamic;
	public function sign():Dynamic;
	public function sin():Dynamic;
	public function sinh():Dynamic;
	public function sort(?dim:Dynamic, ?descending:Dynamic):Dynamic;
	public function split(split_size:Dynamic, ?dim:Dynamic):Dynamic;
	public function sqrt():Dynamic;
	public function squeeze(?dim:Dynamic):Dynamic;
	public function std(?dim:Dynamic, ?unbiased:Dynamic):Dynamic;
	public function sub(other:Dynamic):Dynamic;
	public function sub_(other:Dynamic):Dynamic;
	public function sum(?dim:Dynamic):Dynamic;
	public function t():Dynamic;
	public function tan():Dynamic;
	public function tanh():Dynamic;
	public function tanh_():Dynamic;
	public function topk(k:Dynamic, ?dim:Dynamic, ?largest:Dynamic, ?sorted:Dynamic):Dynamic;
	public function trace():Dynamic;
	public function transpose(dim1:Dynamic, dim2:Dynamic):Dynamic;
	public function tril(?diagonal_idx:Dynamic):Dynamic;
	public function triu(?diagonal_idx:Dynamic):Dynamic;
	public function trunc():Dynamic;
	public function type(t:Dynamic):Dynamic;
	public function type_as(t:Dynamic):Dynamic;
	public function unsqueeze(dim:Dynamic):Dynamic;
	@:native("var")
	public function _var(?dim:Dynamic, ?unbiased:Dynamic):Dynamic;
	public function view(?sizes:python.VarArgs<Dynamic>):Dynamic;
	public function view_as(tensor:Dynamic):Dynamic;
	public var volatile : Dynamic;
}