/* This file is generated, do not edit! */
package torch.cuda;
@:pythonImport("torch.cuda", "ByteTensor") extern class ByteTensor {
	/**
		abs() -> Tensor
		
		See :func:`torch.abs`
	**/
	public function __abs__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __add__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __and__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __array__(?dtype:Dynamic):Dynamic;
	static public var __array_priority__ : Dynamic;
	public function __array_wrap__(array:Dynamic):Dynamic;
	public function __bool__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Array view description for cuda tensors.
		
		See:
		https://numba.pydata.org/numba-doc/latest/cuda/cuda_array_interface.html
	**/
	public var __cuda_array_interface__ : Dynamic;
	public function __deepcopy__(memo:Dynamic):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	/**
		Delete self[key].
	**/
	public function __delitem__(key:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		__dir__() -> list
		default dir() implementation
	**/
	public function __dir__():Dynamic;
	public function __div__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __doc__ : Dynamic;
	/**
		eq(other) -> Tensor
		
		See :func:`torch.eq`
	**/
	public function __eq__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __float__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __floordiv__(other:Dynamic):Dynamic;
	/**
		default object formatter
	**/
	public function __format__(format_spec:Dynamic):Dynamic;
	/**
		ge(other) -> Tensor
		
		See :func:`torch.ge`
	**/
	public function __ge__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return getattr(self, name).
	**/
	public function __getattribute__(name:Dynamic):Dynamic;
	/**
		Return self[key].
	**/
	public function __getitem__(key:Dynamic):Dynamic;
	/**
		gt(other) -> Tensor
		
		See :func:`torch.gt`
	**/
	public function __gt__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	public function __iadd__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __iand__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __idiv__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __ilshift__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __imul__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __index__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __int__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __invert__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __ior__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __ipow__(other:Dynamic):Dynamic;
	public function __irshift__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __isub__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __iter__():Dynamic;
	public function __itruediv__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __ixor__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		le(other) -> Tensor
		
		See :func:`torch.le`
	**/
	public function __le__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return len(self).
	**/
	public function __len__():Dynamic;
	public function __long__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __lshift__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		lt(other) -> Tensor
		
		See :func:`torch.lt`
	**/
	public function __lt__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __matmul__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __mod__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __module__ : Dynamic;
	public function __mul__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ne(other) -> Tensor
		
		See :func:`torch.ne`
	**/
	public function __ne__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		neg() -> Tensor
		
		See :func:`torch.neg`
	**/
	public function __neg__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function __nonzero__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __or__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		pow(exponent) -> Tensor
		
		See :func:`torch.pow`
	**/
	public function __pow__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __radd__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	/**
		Reverses the tensor along dimension 0.
	**/
	public function __reversed__():Dynamic;
	public function __rfloordiv__(other:Dynamic):Dynamic;
	public function __rmul__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __rpow__(other:Dynamic):Dynamic;
	public function __rshift__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __rsub__(other:Dynamic):Dynamic;
	public function __rtruediv__(other:Dynamic):Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		Set self[key] to value.
	**/
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
	public function __sub__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __truediv__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	public function __xor__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var _backward_hooks : Dynamic;
	public var _base : Dynamic;
	public var _cdata : Dynamic;
	public function _coalesced_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function _dimI(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function _dimV(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var _grad : Dynamic;
	public var _grad_fn : Dynamic;
	public function _indices(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _make_subclass(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function _nnz(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function _values(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var _version : Dynamic;
	/**
		abs() -> Tensor
		
		See :func:`torch.abs`
	**/
	public function abs(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		abs_() -> Tensor
		
		In-place version of :meth:`~Tensor.abs`
	**/
	public function abs_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		acos() -> Tensor
		
		See :func:`torch.acos`
	**/
	public function acos(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		acos_() -> Tensor
		
		In-place version of :meth:`~Tensor.acos`
	**/
	public function acos_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		add(value) -> Tensor
		add(value=1, other) -> Tensor
		
		See :func:`torch.add`
	**/
	public function add(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		add_(value) -> Tensor
		add_(value=1, other) -> Tensor
		
		In-place version of :meth:`~Tensor.add`
	**/
	public function add_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		addbmm(beta=1, mat, alpha=1, batch1, batch2) -> Tensor
		
		See :func:`torch.addbmm`
	**/
	public function addbmm(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		addbmm_(beta=1, mat, alpha=1, batch1, batch2) -> Tensor
		
		In-place version of :meth:`~Tensor.addbmm`
	**/
	public function addbmm_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		addcdiv(value=1, tensor1, tensor2) -> Tensor
		
		See :func:`torch.addcdiv`
	**/
	public function addcdiv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		addcdiv_(value=1, tensor1, tensor2) -> Tensor
		
		In-place version of :meth:`~Tensor.addcdiv`
	**/
	public function addcdiv_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		addcmul(value=1, tensor1, tensor2) -> Tensor
		
		See :func:`torch.addcmul`
	**/
	public function addcmul(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		addcmul_(value=1, tensor1, tensor2) -> Tensor
		
		In-place version of :meth:`~Tensor.addcmul`
	**/
	public function addcmul_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		addmm(beta=1, mat, alpha=1, mat1, mat2) -> Tensor
		
		See :func:`torch.addmm`
	**/
	public function addmm(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		addmm_(beta=1, mat, alpha=1, mat1, mat2) -> Tensor
		
		In-place version of :meth:`~Tensor.addmm`
	**/
	public function addmm_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		addmv(beta=1, tensor, alpha=1, mat, vec) -> Tensor
		
		See :func:`torch.addmv`
	**/
	public function addmv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		addmv_(beta=1, tensor, alpha=1, mat, vec) -> Tensor
		
		In-place version of :meth:`~Tensor.addmv`
	**/
	public function addmv_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		addr(beta=1, alpha=1, vec1, vec2) -> Tensor
		
		See :func:`torch.addr`
	**/
	public function addr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		addr_(beta=1, alpha=1, vec1, vec2) -> Tensor
		
		In-place version of :meth:`~Tensor.addr`
	**/
	public function addr_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		.. function:: all() -> bool
		
		Returns True if all elements in the tensor are non-zero, False otherwise.
		
		Example::
		
		    >>> a = torch.randn(1, 3).byte() % 2
		    >>> a
		    tensor([[1, 0, 0]], dtype=torch.uint8)
		    >>> a.all()
		    tensor(0, dtype=torch.uint8)
		
		.. function:: all(dim, keepdim=False, out=None) -> Tensor
		
		Returns True if all elements in each row of the tensor in the given
		dimension :attr:`dim` are non-zero, False otherwise.
		
		If :attr:`keepdim` is ``True``, the output tensor is of the same size as
		:attr:`input` except in the dimension :attr:`dim` where it is of size 1.
		Otherwise, :attr:`dim` is squeezed (see :func:`torch.squeeze`), resulting
		in the output tensor having 1 fewer dimension than :attr:`input`.
		
		Args:
		    dim (int): the dimension to reduce
		    keepdim (bool): whether the output tensor has :attr:`dim` retained or not
		    out (Tensor, optional): the output tensor
		
		Example::
		
		    >>> a = torch.randn(4, 2).byte() % 2
		    >>> a
		    tensor([[0, 0],
		            [0, 0],
		            [0, 1],
		            [1, 1]], dtype=torch.uint8)
		    >>> a.all(dim=1)
		    tensor([0, 0, 0, 1], dtype=torch.uint8)
	**/
	public function all(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		allclose(other, rtol=1e-05, atol=1e-08, equal_nan=False) -> Tensor
		
		See :func:`torch.allclose`
	**/
	public function allclose(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		.. function:: any() -> bool
		
		Returns True if any elements in the tensor are non-zero, False otherwise.
		
		Example::
		
		    >>> a = torch.randn(1, 3).byte() % 2
		    >>> a
		    tensor([[0, 0, 1]], dtype=torch.uint8)
		    >>> a.any()
		    tensor(1, dtype=torch.uint8)
		
		.. function:: any(dim, keepdim=False, out=None) -> Tensor
		
		Returns True if any elements in each row of the tensor in the given
		dimension :attr:`dim` are non-zero, False otherwise.
		
		If :attr:`keepdim` is ``True``, the output tensor is of the same size as
		:attr:`input` except in the dimension :attr:`dim` where it is of size 1.
		Otherwise, :attr:`dim` is squeezed (see :func:`torch.squeeze`), resulting
		in the output tensor having 1 fewer dimension than :attr:`input`.
		
		Args:
		    dim (int): the dimension to reduce
		    keepdim (bool): whether the output tensor has :attr:`dim` retained or not
		    out (Tensor, optional): the output tensor
		
		Example::
		
		    >>> a = torch.randn(4, 2).byte() % 2
		    >>> a
		    tensor([[1, 0],
		            [0, 0],
		            [0, 1],
		            [0, 0]], dtype=torch.uint8)
		    >>> a.any(dim=1)
		    tensor([1, 0, 1, 0], dtype=torch.uint8)
	**/
	public function any(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		apply_(callable) -> Tensor
		
		Applies the function :attr:`callable` to each element in the tensor, replacing
		each element with the value returned by :attr:`callable`.
		
		.. note::
		
		    This function only works with CPU tensors and should not be used in code
		    sections that require high performance.
	**/
	public function apply_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		See :func:`torch.argmax`
	**/
	public function argmax(?dim:Dynamic, ?keepdim:Dynamic):Dynamic;
	/**
		See :func:`torch.argmin`
	**/
	public function argmin(?dim:Dynamic, ?keepdim:Dynamic):Dynamic;
	/**
		See :func: `torch.argsort`
	**/
	public function argsort(?dim:Dynamic, ?descending:Dynamic):Dynamic;
	public function as_strided(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function as_strided_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		asin() -> Tensor
		
		See :func:`torch.asin`
	**/
	public function asin(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		asin_() -> Tensor
		
		In-place version of :meth:`~Tensor.asin`
	**/
	public function asin_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		atan() -> Tensor
		
		See :func:`torch.atan`
	**/
	public function atan(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		atan2(other) -> Tensor
		
		See :func:`torch.atan2`
	**/
	public function atan2(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		atan2_(other) -> Tensor
		
		In-place version of :meth:`~Tensor.atan2`
	**/
	public function atan2_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		atan_() -> Tensor
		
		In-place version of :meth:`~Tensor.atan`
	**/
	public function atan_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Computes the gradient of current tensor w.r.t. graph leaves.
		
		The graph is differentiated using the chain rule. If the tensor is
		non-scalar (i.e. its data has more than one element) and requires
		gradient, the function additionally requires specifying ``gradient``.
		It should be a tensor of matching type and location, that contains
		the gradient of the differentiated function w.r.t. ``self``.
		
		This function accumulates gradients in the leaves - you might need to
		zero them before calling it.
		
		Arguments:
		    gradient (Tensor or None): Gradient w.r.t. the
		        tensor. If it is a tensor, it will be automatically converted
		        to a Tensor that does not require grad unless ``create_graph`` is True.
		        None values can be specified for scalar Tensors or ones that
		        don't require grad. If a None value would be acceptable then
		        this argument is optional.
		    retain_graph (bool, optional): If ``False``, the graph used to compute
		        the grads will be freed. Note that in nearly all cases setting
		        this option to True is not needed and often can be worked around
		        in a much more efficient way. Defaults to the value of
		        ``create_graph``.
		    create_graph (bool, optional): If ``True``, graph of the derivative will
		        be constructed, allowing to compute higher order derivative
		        products. Defaults to ``False``.
	**/
	public function backward(?gradient:Dynamic, ?retain_graph:Dynamic, ?create_graph:Dynamic):Dynamic;
	/**
		baddbmm(beta=1, alpha=1, batch1, batch2) -> Tensor
		
		See :func:`torch.baddbmm`
	**/
	public function baddbmm(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		baddbmm_(beta=1, alpha=1, batch1, batch2) -> Tensor
		
		In-place version of :meth:`~Tensor.baddbmm`
	**/
	public function baddbmm_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		bernoulli(*, generator=None) -> Tensor
		
		Returns a result tensor where each :math:`\texttt{result[i]}` is independently
		sampled from :math:`\text{Bernoulli}(\texttt{self[i]})`. :attr:`self` must have
		floating point ``dtype``, and the result will have the same ``dtype``.
		
		See :func:`torch.bernoulli`
	**/
	public function bernoulli(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		.. function:: bernoulli_(p=0.5, *, generator=None) -> Tensor
		
		    Fills each location of :attr:`self` with an independent sample from
		    :math:`\text{Bernoulli}(\texttt{p})`. :attr:`self` can have integral
		    ``dtype``.
		
		.. function:: bernoulli_(p_tensor, *, generator=None) -> Tensor
		
		    :attr:`p_tensor` should be a tensor containing probabilities to be used for
		    drawing the binary random number.
		
		    The :math:`\text{i}^{th}` element of :attr:`self` tensor will be set to a
		    value sampled from :math:`\text{Bernoulli}(\texttt{p\_tensor[i]})`.
		
		    :attr:`self` can have integral ``dtype``, but :attr`p_tensor` must have
		    floating point ``dtype``.
		
		See also :meth:`~Tensor.bernoulli` and :func:`torch.bernoulli`
	**/
	public function bernoulli_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		bincount(weights=None, minlength=0) -> Tensor
		
		See :func:`torch.bincount`
	**/
	public function bincount(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		bmm(batch2) -> Tensor
		
		See :func:`torch.bmm`
	**/
	public function bmm(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		See :func:`torch.btrifact`
		        
	**/
	public function btrifact(?info:Dynamic, ?pivot:Dynamic):Dynamic;
	/**
		btrifact_with_info(pivot=True) -> (Tensor, Tensor, Tensor)
		
		See :func:`torch.btrifact_with_info`
	**/
	public function btrifact_with_info(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		btrisolve(LU_data, LU_pivots) -> Tensor
		
		See :func:`torch.btrisolve`
	**/
	public function btrisolve(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		byte() -> Tensor
		
		``self.byte()`` is equivalent to ``self.to(torch.uint8)``. See :func:`to`.
	**/
	public function byte(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		cauchy_(median=0, sigma=1, *, generator=None) -> Tensor
		
		Fills the tensor with numbers drawn from the Cauchy distribution:
		
		.. math::
		
		    f(x) = \dfrac{1}{\pi} \dfrac{\sigma}{(x - \text{median})^2 + \sigma^2}
	**/
	public function cauchy_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ceil() -> Tensor
		
		See :func:`torch.ceil`
	**/
	public function ceil(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ceil_() -> Tensor
		
		In-place version of :meth:`~Tensor.ceil`
	**/
	public function ceil_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		char() -> Tensor
		
		``self.char()`` is equivalent to ``self.to(torch.int8)``. See :func:`to`.
	**/
	public function char(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		cholesky(upper=False) -> Tensor
		
		See :func:`torch.cholesky`
	**/
	public function cholesky(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		chunk(chunks, dim=0) -> List of Tensors
		
		See :func:`torch.chunk`
	**/
	public function chunk(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		clamp(min, max) -> Tensor
		
		See :func:`torch.clamp`
	**/
	public function clamp(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		clamp_(min, max) -> Tensor
		
		In-place version of :meth:`~Tensor.clamp`
	**/
	public function clamp_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function clamp_max(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function clamp_max_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function clamp_min(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function clamp_min_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		clone() -> Tensor
		
		Returns a copy of the :attr:`self` tensor. The copy has the same size and data
		type as :attr:`self`.
		
		.. note::
		
		    Unlike `copy_()`, this function is recorded in the computation graph. Gradients
		    propagating to the cloned tensor will propagate to the original tensor.
	**/
	public function clone(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function coalesce(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		contiguous() -> Tensor
		
		Returns a contiguous tensor containing the same data as :attr:`self` tensor. If
		:attr:`self` tensor is contiguous, this function returns the :attr:`self`
		tensor.
	**/
	public function contiguous(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		copy_(src, non_blocking=False) -> Tensor
		
		Copies the elements from :attr:`src` into :attr:`self` tensor and returns
		:attr:`self`.
		
		The :attr:`src` tensor must be :ref:`broadcastable <broadcasting-semantics>`
		with the :attr:`self` tensor. It may be of a different data type or reside on a
		different device.
		
		Args:
		    src (Tensor): the source tensor to copy from
		    non_blocking (bool): if ``True`` and this copy is between CPU and GPU,
		        the copy may occur asynchronously with respect to the host. For other
		        cases, this argument has no effect.
	**/
	public function copy_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		cos() -> Tensor
		
		See :func:`torch.cos`
	**/
	public function cos(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		cos_() -> Tensor
		
		In-place version of :meth:`~Tensor.cos`
	**/
	public function cos_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		cosh() -> Tensor
		
		See :func:`torch.cosh`
	**/
	public function cosh(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		cosh_() -> Tensor
		
		In-place version of :meth:`~Tensor.cosh`
	**/
	public function cosh_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		cpu() -> Tensor
		
		Returns a copy of this object in CPU memory.
		
		If this object is already in CPU memory and on the correct device,
		then no copy is performed and the original object is returned.
	**/
	public function cpu(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		cross(other, dim=-1) -> Tensor
		
		See :func:`torch.cross`
	**/
	public function cross(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		cuda(device=None, non_blocking=False) -> Tensor
		
		Returns a copy of this object in CUDA memory.
		
		If this object is already in CUDA memory and on the correct device,
		then no copy is performed and the original object is returned.
		
		Args:
		    device (:class:`torch.device`): The destination GPU device.
		        Defaults to the current CUDA device.
		    non_blocking (bool): If ``True`` and the source is in pinned memory,
		        the copy will be asynchronous with respect to the host.
		        Otherwise, the argument has no effect. Default: ``False``.
	**/
	public function cuda(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		cumprod(dim, dtype=None) -> Tensor
		
		See :func:`torch.cumprod`
	**/
	public function cumprod(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		cumsum(dim, dtype=None) -> Tensor
		
		See :func:`torch.cumsum`
	**/
	public function cumsum(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var data : Dynamic;
	/**
		data_ptr() -> int
		
		Returns the address of the first element of :attr:`self` tensor.
	**/
	public function data_ptr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		dense_dim() -> int
		
		If :attr:`self` is a sparse COO tensor (i.e., with ``torch.sparse_coo`` layout),
		this returns a the number of dense dimensions. Otherwise, this throws an
		error.
		
		See also :meth:`Tensor.sparse_dim`.
	**/
	public function dense_dim(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		det() -> Tensor
		
		See :func:`torch.det`
	**/
	public function det(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Returns a new Tensor, detached from the current graph.
		
		The result will never require gradient.
		
		.. note::
		
		  Returned Tensor uses the same data tensor as the original one.
		  In-place modifications on either of them will be seen, and may trigger
		  errors in correctness checks.
	**/
	public function detach(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Detaches the Tensor from the graph that created it, making it a leaf.
		Views cannot be detached in-place.
	**/
	public function detach_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Is the :class:`torch.device` where this Tensor is.
	**/
	public var device : Dynamic;
	/**
		diag(diagonal=0) -> Tensor
		
		See :func:`torch.diag`
	**/
	public function diag(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		diag_embed(offset=0, dim1=-2, dim2=-1) -> Tensor
		
		See :func:`torch.diag_embed`
	**/
	public function diag_embed(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		diagflat(diagonal=0) -> Tensor
		
		See :func:`torch.diagflat`
	**/
	public function diagflat(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		diagonal(offset=0, dim1=0, dim2=1) -> Tensor
		
		See :func:`torch.diagonal`
	**/
	public function diagonal(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		digamma() -> Tensor
		
		See :func:`torch.digamma`
	**/
	public function digamma(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		digamma_() -> Tensor
		
		In-place version of :meth:`~Tensor.digamma`
	**/
	public function digamma_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		dim() -> int
		
		Returns the number of dimensions of :attr:`self` tensor.
	**/
	public function dim(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		dist(other, p=2) -> Tensor
		
		See :func:`torch.dist`
	**/
	public function dist(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		div(value) -> Tensor
		
		See :func:`torch.div`
	**/
	public function div(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		div_(value) -> Tensor
		
		In-place version of :meth:`~Tensor.div`
	**/
	public function div_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		dot(tensor2) -> Tensor
		
		See :func:`torch.dot`
	**/
	public function dot(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		double() -> Tensor
		
		``self.double()`` is equivalent to ``self.to(torch.float64)``. See :func:`to`.
	**/
	public function double(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var dtype : Dynamic;
	/**
		eig(eigenvectors=False) -> (Tensor, Tensor)
		
		See :func:`torch.eig`
	**/
	public function eig(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		element_size() -> int
		
		Returns the size in bytes of an individual element.
		
		Example::
		
		    >>> torch.tensor([]).element_size()
		    4
		    >>> torch.tensor([], dtype=torch.uint8).element_size()
		    1
	**/
	public function element_size(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		eq(other) -> Tensor
		
		See :func:`torch.eq`
	**/
	public function eq(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		eq_(other) -> Tensor
		
		In-place version of :meth:`~Tensor.eq`
	**/
	public function eq_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		equal(other) -> bool
		
		See :func:`torch.equal`
	**/
	public function equal(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		erf() -> Tensor
		
		See :func:`torch.erf`
	**/
	public function erf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		erf_() -> Tensor
		
		In-place version of :meth:`~Tensor.erf`
	**/
	public function erf_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		erfc() -> Tensor
		
		See :func:`torch.erfc`
	**/
	public function erfc(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		erfc_() -> Tensor
		
		In-place version of :meth:`~Tensor.erfc`
	**/
	public function erfc_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		erfinv() -> Tensor
		
		See :func:`torch.erfinv`
	**/
	public function erfinv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		erfinv_() -> Tensor
		
		In-place version of :meth:`~Tensor.erfinv`
	**/
	public function erfinv_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		exp() -> Tensor
		
		See :func:`torch.exp`
	**/
	public function exp(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		exp_() -> Tensor
		
		In-place version of :meth:`~Tensor.exp`
	**/
	public function exp_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		expand(*sizes) -> Tensor
		
		Returns a new view of the :attr:`self` tensor with singleton dimensions expanded
		to a larger size.
		
		Passing -1 as the size for a dimension means not changing the size of
		that dimension.
		
		Tensor can be also expanded to a larger number of dimensions, and the
		new ones will be appended at the front. For the new dimensions, the
		size cannot be set to -1.
		
		Expanding a tensor does not allocate new memory, but only creates a
		new view on the existing tensor where a dimension of size one is
		expanded to a larger size by setting the ``stride`` to 0. Any dimension
		of size 1 can be expanded to an arbitrary value without allocating new
		memory.
		
		Args:
		    *sizes (torch.Size or int...): the desired expanded size
		
		Example::
		
		    >>> x = torch.tensor([[1], [2], [3]])
		    >>> x.size()
		    torch.Size([3, 1])
		    >>> x.expand(3, 4)
		    tensor([[ 1,  1,  1,  1],
		            [ 2,  2,  2,  2],
		            [ 3,  3,  3,  3]])
		    >>> x.expand(-1, 4)   # -1 means not changing the size of that dimension
		    tensor([[ 1,  1,  1,  1],
		            [ 2,  2,  2,  2],
		            [ 3,  3,  3,  3]])
	**/
	public function expand(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		expand_as(other) -> Tensor
		
		Expand this tensor to the same size as :attr:`other`.
		``self.expand_as(other)`` is equivalent to ``self.expand(other.size())``.
		
		Please see :meth:`~Tensor.expand` for more information about ``expand``.
		
		Args:
		    other (:class:`torch.Tensor`): The result tensor has the same size
		        as :attr:`other`.
	**/
	public function expand_as(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		expm1() -> Tensor
		
		See :func:`torch.expm1`
	**/
	public function expm1(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		expm1_() -> Tensor
		
		In-place version of :meth:`~Tensor.expm1`
	**/
	public function expm1_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		exponential_(lambd=1, *, generator=None) -> Tensor
		
		Fills :attr:`self` tensor with elements drawn from the exponential distribution:
		
		.. math::
		
		    f(x) = \lambda e^{-\lambda x}
	**/
	public function exponential_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		fft(signal_ndim, normalized=False) -> Tensor
		
		See :func:`torch.fft`
	**/
	public function fft(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		fill_(value) -> Tensor
		
		Fills :attr:`self` tensor with the specified value.
	**/
	public function fill_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		flatten(input, start_dim=0, end_dim=-1) -> Tensor
		
		see :func:`torch.flatten`
	**/
	public function flatten(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		flip(dims) -> Tensor
		
		See :func:`torch.flip`
	**/
	public function flip(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		float() -> Tensor
		
		``self.float()`` is equivalent to ``self.to(torch.float32)``. See :func:`to`.
	**/
	public function float(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		floor() -> Tensor
		
		See :func:`torch.floor`
	**/
	public function floor(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		floor_() -> Tensor
		
		In-place version of :meth:`~Tensor.floor`
	**/
	public function floor_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		fmod(divisor) -> Tensor
		
		See :func:`torch.fmod`
	**/
	public function fmod(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		fmod_(divisor) -> Tensor
		
		In-place version of :meth:`~Tensor.fmod`
	**/
	public function fmod_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		frac() -> Tensor
		
		See :func:`torch.frac`
	**/
	public function frac(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		frac_() -> Tensor
		
		In-place version of :meth:`~Tensor.frac`
	**/
	public function frac_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		gather(dim, index) -> Tensor
		
		See :func:`torch.gather`
	**/
	public function gather(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ge(other) -> Tensor
		
		See :func:`torch.ge`
	**/
	public function ge(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ge_(other) -> Tensor
		
		In-place version of :meth:`~Tensor.ge`
	**/
	public function ge_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		gels(A) -> Tensor
		
		See :func:`torch.gels`
	**/
	public function gels(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		geometric_(p, *, generator=None) -> Tensor
		
		Fills :attr:`self` tensor with elements drawn from the geometric distribution:
		
		.. math::
		
		    f(X=k) = (1 - p)^{k - 1} p
	**/
	public function geometric_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		geqrf() -> (Tensor, Tensor)
		
		See :func:`torch.geqrf`
	**/
	public function geqrf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ger(vec2) -> Tensor
		
		See :func:`torch.ger`
	**/
	public function ger(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		gesv(A) -> Tensor, Tensor
		
		See :func:`torch.gesv`
	**/
	public function gesv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		get_device() -> Device ordinal (Integer)
		
		For CUDA tensors, this function returns the device ordinal of the GPU on which the tensor resides.
		For CPU tensors, an error is thrown.
		
		Example::
		
		    >>> x = torch.randn(3, 4, 5, device='cuda:0')
		    >>> x.get_device()
		    0
		    >>> x.cpu().get_device()  # RuntimeError: get_device is not implemented for type torch.FloatTensor
	**/
	public function get_device(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		This attribute is ``None`` by default and becomes a Tensor the first time a call to
		:func:`backward` computes gradients for ``self``.
		The attribute will then contain the gradients computed and future calls to
		:func:`backward` will accumulate (add) gradients into it.
	**/
	public var grad : Dynamic;
	public var grad_fn : Dynamic;
	/**
		gt(other) -> Tensor
		
		See :func:`torch.gt`
	**/
	public function gt(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		gt_(other) -> Tensor
		
		In-place version of :meth:`~Tensor.gt`
	**/
	public function gt_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		half() -> Tensor
		
		``self.half()`` is equivalent to ``self.to(torch.float16)``. See :func:`to`.
	**/
	public function half(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		hardshrink(lambd=0.5) -> Tensor
		
		See :func:`torch.nn.functional.hardshrink`
	**/
	public function hardshrink(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		histc(bins=100, min=0, max=0) -> Tensor
		
		See :func:`torch.histc`
	**/
	public function histc(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ifft(signal_ndim, normalized=False) -> Tensor
		
		See :func:`torch.ifft`
	**/
	public function ifft(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Out-of-place version of :meth:`torch.Tensor.index_add_`
		        
	**/
	public function index_add(dim:Dynamic, index:Dynamic, tensor:Dynamic):Dynamic;
	/**
		index_add_(dim, index, tensor) -> Tensor
		
		Accumulate the elements of :attr:`tensor` into the :attr:`self` tensor by adding
		to the indices in the order given in :attr:`index`. For example, if ``dim == 0``
		and ``index[i] == j``, then the ``i``\ th row of :attr:`tensor` is added to the
		``j``\ th row of :attr:`self`.
		
		The :attr:`dim`\ th dimension of :attr:`tensor` must have the same size as the
		length of :attr:`index` (which must be a vector), and all other dimensions must
		match :attr:`self`, or an error will be raised.
		
		.. include:: cuda_deterministic.rst
		
		Args:
		    dim (int): dimension along which to index
		    index (LongTensor): indices of :attr:`tensor` to select from
		    tensor (Tensor): the tensor containing values to add
		
		Example::
		
		    >>> x = torch.ones(5, 3)
		    >>> t = torch.tensor([[1, 2, 3], [4, 5, 6], [7, 8, 9]], dtype=torch.float)
		    >>> index = torch.tensor([0, 4, 2])
		    >>> x.index_add_(0, index, t)
		    tensor([[  2.,   3.,   4.],
		            [  1.,   1.,   1.],
		            [  8.,   9.,  10.],
		            [  1.,   1.,   1.],
		            [  5.,   6.,   7.]])
	**/
	public function index_add_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Out-of-place version of :meth:`torch.Tensor.index_copy_`
		        
	**/
	public function index_copy(dim:Dynamic, index:Dynamic, tensor:Dynamic):Dynamic;
	/**
		index_copy_(dim, index, tensor) -> Tensor
		
		Copies the elements of :attr:`tensor` into the :attr:`self` tensor by selecting
		the indices in the order given in :attr:`index`. For example, if ``dim == 0``
		and ``index[i] == j``, then the ``i``\ th row of :attr:`tensor` is copied to the
		``j``\ th row of :attr:`self`.
		
		The :attr:`dim`\ th dimension of :attr:`tensor` must have the same size as the
		length of :attr:`index` (which must be a vector), and all other dimensions must
		match :attr:`self`, or an error will be raised.
		
		Args:
		    dim (int): dimension along which to index
		    index (LongTensor): indices of :attr:`tensor` to select from
		    tensor (Tensor): the tensor containing values to copy
		
		Example::
		
		    >>> x = torch.zeros(5, 3)
		    >>> t = torch.tensor([[1, 2, 3], [4, 5, 6], [7, 8, 9]], dtype=torch.float)
		    >>> index = torch.tensor([0, 4, 2])
		    >>> x.index_copy_(0, index, t)
		    tensor([[ 1.,  2.,  3.],
		            [ 0.,  0.,  0.],
		            [ 7.,  8.,  9.],
		            [ 0.,  0.,  0.],
		            [ 4.,  5.,  6.]])
	**/
	public function index_copy_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Out-of-place version of :meth:`torch.Tensor.index_fill_`
		        
	**/
	public function index_fill(dim:Dynamic, index:Dynamic, value:Dynamic):Dynamic;
	/**
		index_fill_(dim, index, val) -> Tensor
		
		Fills the elements of the :attr:`self` tensor with value :attr:`val` by
		selecting the indices in the order given in :attr:`index`.
		
		Args:
		    dim (int): dimension along which to index
		    index (LongTensor): indices of :attr:`self` tensor to fill in
		    val (float): the value to fill with
		
		Example::
		    >>> x = torch.tensor([[1, 2, 3], [4, 5, 6], [7, 8, 9]], dtype=torch.float)
		    >>> index = torch.tensor([0, 2])
		    >>> x.index_fill_(1, index, -1)
		    tensor([[-1.,  2., -1.],
		            [-1.,  5., -1.],
		            [-1.,  8., -1.]])
	**/
	public function index_fill_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function index_put(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		index_put_(indices, value, accumulate=False) -> Tensor
		
		Puts values from the tensor :attr:`value` into the tensor :attr:`self` using
		the indices specified in :attr:`indices` (which is a tuple of Tensors). The
		expression ``tensor.index_put_(indices, value)`` is equivalent to
		``tensor[indices] = value``. Returns :attr:`self`.
		
		If :attr:`accumulate` is ``True``, the elements in :attr:`tensor` are added to
		:attr:`self`. If accumulate is ``False``, the behavior is undefined if indices
		contain duplicate elements.
		
		Args:
		    indices (tuple of LongTensor): tensors used to index into `self`.
		    value (Tensor): tensor of same dtype as `self`.
		    accumulate (bool): whether to accumulate into self
	**/
	public function index_put_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		index_select(dim, index) -> Tensor
		
		See :func:`torch.index_select`
	**/
	public function index_select(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		indices() -> Tensor
		
		If :attr:`self` is a sparse COO tensor (i.e., with ``torch.sparse_coo`` layout),
		this returns a view of the contained indices tensor. Otherwise, this throws an
		error.
		
		See also :meth:`Tensor.values`.
		
		.. note::
		  This method can only be called on a coalesced sparse tensor. See
		  :meth:`Tensor.coalesce` for details.
	**/
	public function indices(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		int() -> Tensor
		
		``self.int()`` is equivalent to ``self.to(torch.int32)``. See :func:`to`.
	**/
	public function int(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		inverse() -> Tensor
		
		See :func:`torch.inverse`
	**/
	public function inverse(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		irfft(signal_ndim, normalized=False, onesided=True, signal_sizes=None) -> Tensor
		
		See :func:`torch.irfft`
	**/
	public function irfft(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function is_coalesced(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function is_complex(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		is_contiguous() -> bool
		
		Returns True if :attr:`self` tensor is contiguous in memory in C order.
	**/
	public function is_contiguous(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var is_cuda : Dynamic;
	public function is_distributed(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function is_floating_point(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		All Tensors that have :attr:`requires_grad` which is ``False`` will be leaf Tensors by convention.
		
		For Tensors that have :attr:`requires_grad` which is ``True``, they will be leaf Tensors if they were
		created by the user. This means that they are not the result of an operation and so
		:attr:`grad_fn` is None.
		
		Only leaf Tensors will have their :attr:`grad` populated during a call to :func:`backward`.
		To get :attr:`grad` populated for non-leaf Tensors, you can use :func:`retain_grad`.
		
		Example::
		
		    >>> a = torch.rand(10, requires_grad=True)
		    >>> a.is_leaf
		    True
		    >>> b = torch.rand(10, requires_grad=True).cuda()
		    >>> b.is_leaf
		    False
		    # b was created by the operation that cast a cpu Tensor into a cuda Tensor
		    >>> c = torch.rand(10, requires_grad=True) + 2
		    >>> c.is_leaf
		    False
		    # c was created by the addition operation
		    >>> d = torch.rand(10).cuda()
		    >>> d.is_leaf
		    True
		    # d does not require gradients and so has no operation creating it (that is tracked by the autograd engine)
		    >>> e = torch.rand(10).cuda().requires_grad_()
		    >>> e.is_leaf
		    True
		    # e requires gradients and has no operations creating it
		    >>> f = torch.rand(10, requires_grad=True, device="cuda")
		    >>> f.is_leaf
		    True
		    # f requires grad, has not operation creating it
	**/
	public var is_leaf : Dynamic;
	public function is_nonzero(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Returns true if this tensor resides in pinned memory
	**/
	public function is_pinned():Dynamic;
	public function is_same_size(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		is_set_to(tensor) -> bool
		
		Returns True if this object refers to the same ``THTensor`` object from the
		Torch C API as the given tensor.
	**/
	public function is_set_to(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Checks if tensor is in shared memory.
		
		This is always ``True`` for CUDA tensors.
	**/
	public function is_shared():Dynamic;
	public function is_signed(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var is_sparse : Dynamic;
	public function isclose(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		item() -> number
		
		Returns the value of this tensor as a standard Python number. This only works
		for tensors with one element. For other cases, see :meth:`~Tensor.tolist`.
		
		This operation is not differentiable.
		
		Example::
		
		    >>> x = torch.tensor([1.0])
		    >>> x.item()
		    1.0
	**/
	public function item(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		kthvalue(k, dim=None, keepdim=False) -> (Tensor, LongTensor)
		
		See :func:`torch.kthvalue`
	**/
	public function kthvalue(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var layout : Dynamic;
	/**
		le(other) -> Tensor
		
		See :func:`torch.le`
	**/
	public function le(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		le_(other) -> Tensor
		
		In-place version of :meth:`~Tensor.le`
	**/
	public function le_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		lerp(start, end, weight) -> Tensor
		
		See :func:`torch.lerp`
	**/
	public function lerp(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		lerp_(start, end, weight) -> Tensor
		
		In-place version of :meth:`~Tensor.lerp`
	**/
	public function lerp_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function lgamma(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function lgamma_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		log() -> Tensor
		
		See :func:`torch.log`
	**/
	public function log(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		log10() -> Tensor
		
		See :func:`torch.log10`
	**/
	public function log10(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		log10_() -> Tensor
		
		In-place version of :meth:`~Tensor.log10`
	**/
	public function log10_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		log1p() -> Tensor
		
		See :func:`torch.log1p`
	**/
	public function log1p(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		log1p_() -> Tensor
		
		In-place version of :meth:`~Tensor.log1p`
	**/
	public function log1p_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		log2() -> Tensor
		
		See :func:`torch.log2`
	**/
	public function log2(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		log2_() -> Tensor
		
		In-place version of :meth:`~Tensor.log2`
	**/
	public function log2_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		log_() -> Tensor
		
		In-place version of :meth:`~Tensor.log`
	**/
	public function log_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		log_normal_(mean=1, std=2, *, generator=None)
		
		Fills :attr:`self` tensor with numbers samples from the log-normal distribution
		parameterized by the given mean :math:`\mu` and standard deviation
		:math:`\sigma`. Note that :attr:`mean` and :attr:`std` are the mean and
		standard deviation of the underlying normal distribution, and not of the
		returned distribution:
		
		.. math::
		
		    f(x) = \dfrac{1}{x \sigma \sqrt{2\pi}}\ e^{-\frac{(\ln x - \mu)^2}{2\sigma^2}}
	**/
	public function log_normal_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function log_softmax(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		logdet() -> Tensor
		
		See :func:`torch.logdet`
	**/
	public function logdet(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		logsumexp(dim, keepdim=False) -> Tensor
		
		See :func:`torch.logsumexp`
	**/
	public function logsumexp(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		long() -> Tensor
		
		``self.long()`` is equivalent to ``self.to(torch.int64)``. See :func:`to`.
	**/
	public function long(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		lt(other) -> Tensor
		
		See :func:`torch.lt`
	**/
	public function lt(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		lt_(other) -> Tensor
		
		In-place version of :meth:`~Tensor.lt`
	**/
	public function lt_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function map2_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		map_(tensor, callable)
		
		Applies :attr:`callable` for each element in :attr:`self` tensor and the given
		:attr:`tensor` and stores the results in :attr:`self` tensor. :attr:`self` tensor and
		the given :attr:`tensor` must be :ref:`broadcastable <broadcasting-semantics>`.
		
		The :attr:`callable` should have the signature::
		
		    def callable(a, b) -> number
	**/
	public function map_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Out-of-place version of :meth:`torch.Tensor.masked_fill_`
		        
	**/
	public function masked_fill(mask:Dynamic, value:Dynamic):Dynamic;
	/**
		masked_fill_(mask, value)
		
		Fills elements of :attr:`self` tensor with :attr:`value` where :attr:`mask` is
		one. The shape of :attr:`mask` must be
		:ref:`broadcastable <broadcasting-semantics>` with the shape of the underlying
		tensor.
		
		Args:
		    mask (ByteTensor): the binary mask
		    value (float): the value to fill in with
	**/
	public function masked_fill_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Out-of-place version of :meth:`torch.Tensor.masked_scatter_`
		        
	**/
	public function masked_scatter(mask:Dynamic, tensor:Dynamic):Dynamic;
	/**
		masked_scatter_(mask, source)
		
		Copies elements from :attr:`source` into :attr:`self` tensor at positions where
		the :attr:`mask` is one.
		The shape of :attr:`mask` must be :ref:`broadcastable <broadcasting-semantics>`
		with the shape of the underlying tensor. The :attr:`source` should have at least
		as many elements as the number of ones in :attr:`mask`
		
		Args:
		    mask (ByteTensor): the binary mask
		    source (Tensor): the tensor to copy from
		
		.. note::
		
		    The :attr:`mask` operates on the :attr:`self` tensor, not on the given
		    :attr:`source` tensor.
	**/
	public function masked_scatter_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		masked_select(mask) -> Tensor
		
		See :func:`torch.masked_select`
	**/
	public function masked_select(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		matmul(tensor2) -> Tensor
		
		See :func:`torch.matmul`
	**/
	public function matmul(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		matrix_power(n) -> Tensor
		
		See :func:`torch.matrix_power`
	**/
	public function matrix_power(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		max(dim=None, keepdim=False) -> Tensor or (Tensor, Tensor)
		
		See :func:`torch.max`
	**/
	public function max(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		mean(dim=None, keepdim=False) -> Tensor or (Tensor, Tensor)
		
		See :func:`torch.mean`
	**/
	public function mean(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		median(dim=None, keepdim=False) -> (Tensor, LongTensor)
		
		See :func:`torch.median`
	**/
	public function median(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		min(dim=None, keepdim=False) -> Tensor or (Tensor, Tensor)
		
		See :func:`torch.min`
	**/
	public function min(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		mm(mat2) -> Tensor
		
		See :func:`torch.mm`
	**/
	public function mm(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		mode(dim=None, keepdim=False) -> (Tensor, LongTensor)
		
		See :func:`torch.mode`
	**/
	public function mode(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		mul(value) -> Tensor
		
		See :func:`torch.mul`
	**/
	public function mul(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		mul_(value)
		
		In-place version of :meth:`~Tensor.mul`
	**/
	public function mul_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		multinomial(num_samples, replacement=False, *, generator=None) -> Tensor
		
		See :func:`torch.multinomial`
	**/
	public function multinomial(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		mv(vec) -> Tensor
		
		See :func:`torch.mv`
	**/
	public function mv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		mvlgamma(p) -> Tensor
		
		See :func:`torch.mvlgamma`
	**/
	public function mvlgamma(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		mvlgamma_(p) -> Tensor
		
		In-place version of :meth:`~Tensor.mvlgamma`
	**/
	public function mvlgamma_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var name : Dynamic;
	/**
		narrow(dimension, start, length) -> Tensor
		
		See :func:`torch.narrow`
		
		Example::
		
		    >>> x = torch.tensor([[1, 2, 3], [4, 5, 6], [7, 8, 9]])
		    >>> x.narrow(0, 0, 2)
		    tensor([[ 1,  2,  3],
		            [ 4,  5,  6]])
		    >>> x.narrow(1, 1, 2)
		    tensor([[ 2,  3],
		            [ 5,  6],
		            [ 8,  9]])
	**/
	public function narrow(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		narrow_copy(dimension, start, length) -> Tensor
		
		Same as :meth:`Tensor.narrow` except returning a copy rather
		than shared storage.  This is primarily for sparse tensors, which
		do not have a shared-storage narrow method.  Calling ```narrow_copy``
		with ```dimemsion > self.sparse_dim()``` will return a copy with the
		relevant dense dimension narrowed, and ```self.shape``` updated accordingly.
	**/
	public function narrow_copy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ndimension() -> int
		
		Alias for :meth:`~Tensor.dim()`
	**/
	public function ndimension(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ne(other) -> Tensor
		
		See :func:`torch.ne`
	**/
	public function ne(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ne_(other) -> Tensor
		
		In-place version of :meth:`~Tensor.ne`
	**/
	public function ne_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		neg() -> Tensor
		
		See :func:`torch.neg`
	**/
	public function neg(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		neg_() -> Tensor
		
		In-place version of :meth:`~Tensor.neg`
	**/
	public function neg_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		nelement() -> int
		
		Alias for :meth:`~Tensor.numel`
	**/
	public function nelement(args:haxe.extern.Rest<Dynamic>):Dynamic;
	@:native("new")
	public function _new(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		new_empty(size, dtype=None, device=None, requires_grad=False) -> Tensor
		
		Returns a Tensor of size :attr:`size` filled with uninitialized data.
		By default, the returned Tensor has the same :class:`torch.dtype` and
		:class:`torch.device` as this tensor.
		
		Args:
		    dtype (:class:`torch.dtype`, optional): the desired type of returned tensor.
		        Default: if None, same :class:`torch.dtype` as this tensor.
		    device (:class:`torch.device`, optional): the desired device of returned tensor.
		        Default: if None, same :class:`torch.device` as this tensor.
		    requires_grad (bool, optional): If autograd should record operations on the
		        returned tensor. Default: ``False``.
		
		Example::
		
		    >>> tensor = torch.ones(())
		    >>> tensor.new_empty((2, 3))
		    tensor([[ 5.8182e-18,  4.5765e-41, -1.0545e+30],
		            [ 3.0949e-41,  4.4842e-44,  0.0000e+00]])
	**/
	public function new_empty(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		new_full(size, fill_value, dtype=None, device=None, requires_grad=False) -> Tensor
		
		Returns a Tensor of size :attr:`size` filled with :attr:`fill_value`.
		By default, the returned Tensor has the same :class:`torch.dtype` and
		:class:`torch.device` as this tensor.
		
		Args:
		    fill_value (scalar): the number to fill the output tensor with.
		    dtype (:class:`torch.dtype`, optional): the desired type of returned tensor.
		        Default: if None, same :class:`torch.dtype` as this tensor.
		    device (:class:`torch.device`, optional): the desired device of returned tensor.
		        Default: if None, same :class:`torch.device` as this tensor.
		    requires_grad (bool, optional): If autograd should record operations on the
		        returned tensor. Default: ``False``.
		
		Example::
		
		    >>> tensor = torch.ones((2,), dtype=torch.float64)
		    >>> tensor.new_full((3, 4), 3.141592)
		    tensor([[ 3.1416,  3.1416,  3.1416,  3.1416],
		            [ 3.1416,  3.1416,  3.1416,  3.1416],
		            [ 3.1416,  3.1416,  3.1416,  3.1416]], dtype=torch.float64)
	**/
	public function new_full(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		new_ones(size, dtype=None, device=None, requires_grad=False) -> Tensor
		
		Returns a Tensor of size :attr:`size` filled with ``1``.
		By default, the returned Tensor has the same :class:`torch.dtype` and
		:class:`torch.device` as this tensor.
		
		Args:
		    size (int...): a list, tuple, or :class:`torch.Size` of integers defining the
		        shape of the output tensor.
		    dtype (:class:`torch.dtype`, optional): the desired type of returned tensor.
		        Default: if None, same :class:`torch.dtype` as this tensor.
		    device (:class:`torch.device`, optional): the desired device of returned tensor.
		        Default: if None, same :class:`torch.device` as this tensor.
		    requires_grad (bool, optional): If autograd should record operations on the
		        returned tensor. Default: ``False``.
		
		Example::
		
		    >>> tensor = torch.tensor((), dtype=torch.int32)
		    >>> tensor.new_ones((2, 3))
		    tensor([[ 1,  1,  1],
		            [ 1,  1,  1]], dtype=torch.int32)
	**/
	public function new_ones(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		new_tensor(data, dtype=None, device=None, requires_grad=False) -> Tensor
		
		Returns a new Tensor with :attr:`data` as the tensor data.
		By default, the returned Tensor has the same :class:`torch.dtype` and
		:class:`torch.device` as this tensor.
		
		.. warning::
		
		    :func:`new_tensor` always copies :attr:`data`. If you have a Tensor
		    ``data`` and want to avoid a copy, use :func:`torch.Tensor.requires_grad_`
		    or :func:`torch.Tensor.detach`.
		    If you have a numpy array and want to avoid a copy, use
		    :func:`torch.from_numpy`.
		
		.. warning::
		
		    When data is a tensor `x`, :func:`new_tensor()` reads out 'the data' from whatever it is passed,
		    and constructs a leaf variable. Therefore ``tensor.new_tensor(x)`` is equivalent to ``x.clone().detach()``
		    and ``tensor.new_tensor(x, requires_grad=True)`` is equivalent to ``x.clone().detach().requires_grad_(True)``.
		    The equivalents using ``clone()`` and ``detach()`` are recommended.
		
		Args:
		    data (array_like): The returned Tensor copies :attr:`data`.
		    dtype (:class:`torch.dtype`, optional): the desired type of returned tensor.
		        Default: if None, same :class:`torch.dtype` as this tensor.
		    device (:class:`torch.device`, optional): the desired device of returned tensor.
		        Default: if None, same :class:`torch.device` as this tensor.
		    requires_grad (bool, optional): If autograd should record operations on the
		        returned tensor. Default: ``False``.
		
		Example::
		
		    >>> tensor = torch.ones((2,), dtype=torch.int8)
		    >>> data = [[0, 1], [2, 3]]
		    >>> tensor.new_tensor(data)
		    tensor([[ 0,  1],
		            [ 2,  3]], dtype=torch.int8)
	**/
	public function new_tensor(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		new_zeros(size, dtype=None, device=None, requires_grad=False) -> Tensor
		
		Returns a Tensor of size :attr:`size` filled with ``0``.
		By default, the returned Tensor has the same :class:`torch.dtype` and
		:class:`torch.device` as this tensor.
		
		Args:
		    size (int...): a list, tuple, or :class:`torch.Size` of integers defining the
		        shape of the output tensor.
		    dtype (:class:`torch.dtype`, optional): the desired type of returned tensor.
		        Default: if None, same :class:`torch.dtype` as this tensor.
		    device (:class:`torch.device`, optional): the desired device of returned tensor.
		        Default: if None, same :class:`torch.device` as this tensor.
		    requires_grad (bool, optional): If autograd should record operations on the
		        returned tensor. Default: ``False``.
		
		Example::
		
		    >>> tensor = torch.tensor((), dtype=torch.float64)
		    >>> tensor.new_zeros((2, 3))
		    tensor([[ 0.,  0.,  0.],
		            [ 0.,  0.,  0.]], dtype=torch.float64)
	**/
	public function new_zeros(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		nonzero() -> LongTensor
		
		See :func:`torch.nonzero`
	**/
	public function nonzero(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		See :func: `torch.norm`
	**/
	public function norm(?p:Dynamic, ?dim:Dynamic, ?keepdim:Dynamic):Dynamic;
	/**
		normal_(mean=0, std=1, *, generator=None) -> Tensor
		
		Fills :attr:`self` tensor with elements samples from the normal distribution
		parameterized by :attr:`mean` and :attr:`std`.
	**/
	public function normal_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		numel() -> int
		
		See :func:`torch.numel`
	**/
	public function numel(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		numpy() -> numpy.ndarray
		
		Returns :attr:`self` tensor as a NumPy :class:`ndarray`. This tensor and the
		returned :class:`ndarray` share the same underlying storage. Changes to
		:attr:`self` tensor will be reflected in the :class:`ndarray` and vice versa.
	**/
	public function numpy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		orgqr(input2) -> Tensor
		
		See :func:`torch.orgqr`
	**/
	public function orgqr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ormqr(input2, input3, left=True, transpose=False) -> Tensor
		
		See :func:`torch.ormqr`
	**/
	public function ormqr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var output_nr : Dynamic;
	/**
		permute(*dims) -> Tensor
		
		Permute the dimensions of this tensor.
		
		Args:
		    *dims (int...): The desired ordering of dimensions
		
		Example:
		    >>> x = torch.randn(2, 3, 5)
		    >>> x.size()
		    torch.Size([2, 3, 5])
		    >>> x.permute(2, 0, 1).size()
		    torch.Size([5, 2, 3])
	**/
	public function permute(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function pin_memory(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		pinverse() -> Tensor
		
		See :func:`torch.pinverse`
	**/
	public function pinverse(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function polygamma(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function polygamma_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		See :func:`torch.cholesky`
	**/
	public function potrf(?upper:Dynamic):Dynamic;
	/**
		potri(upper=True) -> Tensor
		
		See :func:`torch.potri`
	**/
	public function potri(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		potrs(input2, upper=True) -> Tensor
		
		See :func:`torch.potrs`
	**/
	public function potrs(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		pow(exponent) -> Tensor
		
		See :func:`torch.pow`
	**/
	public function pow(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		pow_(exponent) -> Tensor
		
		In-place version of :meth:`~Tensor.pow`
	**/
	public function pow_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function prelu(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		prod(dim=None, keepdim=False, dtype=None) -> Tensor
		
		See :func:`torch.prod`
	**/
	public function prod(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		pstrf(upper=True, tol=-1) -> (Tensor, IntTensor)
		
		See :func:`torch.pstrf`
	**/
	public function pstrf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		put_(indices, tensor, accumulate=False) -> Tensor
		
		Copies the elements from :attr:`tensor` into the positions specified by
		indices. For the purpose of indexing, the :attr:`self` tensor is treated as if
		it were a 1-D tensor.
		
		If :attr:`accumulate` is ``True``, the elements in :attr:`tensor` are added to
		:attr:`self`. If accumulate is ``False``, the behavior is undefined if indices
		contain duplicate elements.
		
		Args:
		    indices (LongTensor): the indices into self
		    tensor (Tensor): the tensor containing values to copy from
		    accumulate (bool): whether to accumulate into self
		
		Example::
		
		    >>> src = torch.tensor([[4, 3, 5],
		                            [6, 7, 8]])
		    >>> src.put_(torch.tensor([1, 3]), torch.tensor([9, 10]))
		    tensor([[  4,   9,   5],
		            [ 10,   7,   8]])
	**/
	public function put_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		qr() -> (Tensor, Tensor)
		
		See :func:`torch.qr`
	**/
	public function qr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		random_(from=0, to=None, *, generator=None) -> Tensor
		
		Fills :attr:`self` tensor with numbers sampled from the discrete uniform
		distribution over ``[from, to - 1]``. If not specified, the values are usually
		only bounded by :attr:`self` tensor's data type. However, for floating point
		types, if unspecified, range will be ``[0, 2^mantissa]`` to ensure that every
		value is representable. For example, `torch.tensor(1, dtype=torch.double).random_()`
		will be uniform in ``[0, 2^53]``.
	**/
	public function random_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		reciprocal() -> Tensor
		
		See :func:`torch.reciprocal`
	**/
	public function reciprocal(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		reciprocal_() -> Tensor
		
		In-place version of :meth:`~Tensor.reciprocal`
	**/
	public function reciprocal_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function record_stream(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Registers a backward hook.
		
		The hook will be called every time a gradient with respect to the
		Tensor is computed. The hook should have the following signature::
		
		    hook(grad) -> Tensor or None
		
		
		The hook should not modify its argument, but it can optionally return
		a new gradient which will be used in place of :attr:`grad`.
		
		This function returns a handle with a method ``handle.remove()``
		that removes the hook from the module.
		
		Example::
		
		    >>> v = torch.tensor([0., 0., 0.], requires_grad=True)
		    >>> h = v.register_hook(lambda grad: grad * 2)  # double the gradient
		    >>> v.backward(torch.tensor([1., 2., 3.]))
		    >>> v.grad
		
		     2
		     4
		     6
		    [torch.FloatTensor of size (3,)]
		
		    >>> h.remove()  # removes the hook
	**/
	public function register_hook(hook:Dynamic):Dynamic;
	public function reinforce(reward:Dynamic):Dynamic;
	public function relu(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function relu_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		remainder(divisor) -> Tensor
		
		See :func:`torch.remainder`
	**/
	public function remainder(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		remainder_(divisor) -> Tensor
		
		In-place version of :meth:`~Tensor.remainder`
	**/
	public function remainder_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		renorm(p, dim, maxnorm) -> Tensor
		
		See :func:`torch.renorm`
	**/
	public function renorm(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		renorm_(p, dim, maxnorm) -> Tensor
		
		In-place version of :meth:`~Tensor.renorm`
	**/
	public function renorm_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		repeat(*sizes) -> Tensor
		
		Repeats this tensor along the specified dimensions.
		
		Unlike :meth:`~Tensor.expand`, this function copies the tensor's data.
		
		.. warning::
		
		    :func:`torch.repeat` behaves differently from
		    `numpy.repeat <https://docs.scipy.org/doc/numpy/reference/generated/numpy.repeat.html>`_,
		    but is more similar to
		    `numpy.tile <https://docs.scipy.org/doc/numpy/reference/generated/numpy.tile.html>`_.
		
		Args:
		    sizes (torch.Size or int...): The number of times to repeat this tensor along each
		        dimension
		
		Example::
		
		    >>> x = torch.tensor([1, 2, 3])
		    >>> x.repeat(4, 2)
		    tensor([[ 1,  2,  3,  1,  2,  3],
		            [ 1,  2,  3,  1,  2,  3],
		            [ 1,  2,  3,  1,  2,  3],
		            [ 1,  2,  3,  1,  2,  3]])
		    >>> x.repeat(4, 2, 1).size()
		    torch.Size([4, 2, 3])
	**/
	public function repeat(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Is ``True`` if gradients need to be computed for this Tensor, ``False`` otherwise.
		
		.. note::
		
		    The fact that gradients need to be computed for a Tensor do not mean that the :attr:`grad`
		    attribute will be populated, see :attr:`is_leaf` for more details.
	**/
	public var requires_grad : Dynamic;
	/**
		requires_grad_(requires_grad=True) -> Tensor
		
		Change if autograd should record operations on this tensor: sets this tensor's
		:attr:`requires_grad` attribute in-place. Returns this tensor.
		
		:func:`require_grad_`'s main use case is to tell autograd to begin recording
		operations on a Tensor ``tensor``. If ``tensor`` has ``requires_grad=False``
		(because it was obtained through a DataLoader, or required preprocessing or
		initialization), ``tensor.requires_grad_()`` makes it so that autograd will
		begin to record operations on ``tensor``.
		
		Args:
		    requires_grad (bool): If autograd should record operations on this tensor.
		        Default: ``True``.
		
		Example::
		
		    >>> # Let's say we want to preprocess some saved weights and use
		    >>> # the result as new weights.
		    >>> saved_weights = [0.1, 0.2, 0.3, 0.25]
		    >>> loaded_weights = torch.tensor(saved_weights)
		    >>> weights = preprocess(loaded_weights)  # some function
		    >>> weights
		    tensor([-0.5503,  0.4926, -2.1158, -0.8303])
		
		    >>> # Now, start to record operations done to weights
		    >>> weights.requires_grad_()
		    >>> out = weights.pow(2).sum()
		    >>> out.backward()
		    >>> weights.grad
		    tensor([-1.1007,  0.9853, -4.2316, -1.6606])
	**/
	public function requires_grad_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		reshape(*shape) -> Tensor
		
		Returns a tensor with the same data and number of elements as :attr:`self`
		but with the specified shape. This method returns a view if :attr:`shape` is
		compatible with the current shape. See :meth:`torch.Tensor.view` on when it is
		possible to return a view.
		
		See :func:`torch.reshape`
		
		Args:
		    shape (tuple of ints or int...): the desired shape
	**/
	public function reshape(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		reshape_as(other) -> Tensor
		
		Returns this tensor as the same shape as :attr:`other`.
		``self.reshape_as(other)`` is equivalent to ``self.reshape(other.sizes())``.
		This method returns a view if ``other.sizes()`` is compatible with the current
		shape. See :meth:`torch.Tensor.view` on when it is possible to return a view.
		
		Please see :meth:`reshape` for more information about ``reshape``.
		
		Args:
		    other (:class:`torch.Tensor`): The result tensor has the same shape
		        as :attr:`other`.
	**/
	public function reshape_as(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function resize(?sizes:python.VarArgs<Dynamic>):Dynamic;
	/**
		resize_(*sizes) -> Tensor
		
		Resizes :attr:`self` tensor to the specified size. If the number of elements is
		larger than the current storage size, then the underlying storage is resized
		to fit the new number of elements. If the number of elements is smaller, the
		underlying storage is not changed. Existing elements are preserved but any new
		memory is uninitialized.
		
		.. warning::
		
		    This is a low-level method. The storage is reinterpreted as C-contiguous,
		    ignoring the current strides (unless the target size equals the current
		    size, in which case the tensor is left unchanged). For most purposes, you
		    will instead want to use :meth:`~Tensor.view()`, which checks for
		    contiguity, or :meth:`~Tensor.reshape()`, which copies data if needed. To
		    change the size in-place with custom strides, see :meth:`~Tensor.set_()`.
		
		Args:
		    sizes (torch.Size or int...): the desired size
		
		Example::
		
		    >>> x = torch.tensor([[1, 2], [3, 4], [5, 6]])
		    >>> x.resize_(2, 2)
		    tensor([[ 1,  2],
		            [ 3,  4]])
	**/
	public function resize_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function resize_as(tensor:Dynamic):Dynamic;
	/**
		resize_as_(tensor) -> Tensor
		
		Resizes the :attr:`self` tensor to be the same size as the specified
		:attr:`tensor`. This is equivalent to ``self.resize_(tensor.size())``.
	**/
	public function resize_as_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Enables .grad attribute for non-leaf Tensors.
	**/
	public function retain_grad():Dynamic;
	/**
		rfft(signal_ndim, normalized=False, onesided=True) -> Tensor
		
		See :func:`torch.rfft`
	**/
	public function rfft(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		roll(shifts, dims) -> Tensor
		
		See :func:`torch.roll`
	**/
	public function roll(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		rot90(k, dims) -> Tensor
		
		See :func:`torch.rot90`
	**/
	public function rot90(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		round() -> Tensor
		
		See :func:`torch.round`
	**/
	public function round(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		round_() -> Tensor
		
		In-place version of :meth:`~Tensor.round`
	**/
	public function round_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		rsqrt() -> Tensor
		
		See :func:`torch.rsqrt`
	**/
	public function rsqrt(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		rsqrt_() -> Tensor
		
		In-place version of :meth:`~Tensor.rsqrt`
	**/
	public function rsqrt_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Out-of-place version of :meth:`torch.Tensor.scatter_`
		        
	**/
	public function scatter(dim:Dynamic, index:Dynamic, source:Dynamic):Dynamic;
	/**
		scatter_(dim, index, src) -> Tensor
		
		Writes all values from the tensor :attr:`src` into :attr:`self` at the indices
		specified in the :attr:`index` tensor. For each value in :attr:`src`, its output
		index is specified by its index in :attr:`src` for ``dimension != dim`` and by
		the corresponding value in :attr:`index` for ``dimension = dim``.
		
		For a 3-D tensor, :attr:`self` is updated as::
		
		    self[index[i][j][k]][j][k] = src[i][j][k]  # if dim == 0
		    self[i][index[i][j][k]][k] = src[i][j][k]  # if dim == 1
		    self[i][j][index[i][j][k]] = src[i][j][k]  # if dim == 2
		
		This is the reverse operation of the manner described in :meth:`~Tensor.gather`.
		
		:attr:`self`, :attr:`index` and :attr:`src` (if it is a Tensor) should have same
		number of dimensions. It is also required that ``index.size(d) <= src.size(d)``
		for all dimensions ``d``, and that ``index.size(d) <= self.size(d)`` for all
		dimensions ``d != dim``.
		
		Moreover, as for :meth:`~Tensor.gather`, the values of :attr:`index` must be
		between ``0`` and ``self.size(dim) - 1`` inclusive, and all values in a row
		along the specified dimension :attr:`dim` must be unique.
		
		Args:
		    dim (int): the axis along which to index
		    index (LongTensor): the indices of elements to scatter,
		      can be either empty or the same size of src.
		      When empty, the operation returns identity
		    src (Tensor or float): the source element(s) to scatter
		
		Example::
		
		    >>> x = torch.rand(2, 5)
		    >>> x
		    tensor([[ 0.3992,  0.2908,  0.9044,  0.4850,  0.6004],
		            [ 0.5735,  0.9006,  0.6797,  0.4152,  0.1732]])
		    >>> torch.zeros(3, 5).scatter_(0, torch.tensor([[0, 1, 2, 0, 0], [2, 0, 0, 1, 2]]), x)
		    tensor([[ 0.3992,  0.9006,  0.6797,  0.4850,  0.6004],
		            [ 0.0000,  0.2908,  0.0000,  0.4152,  0.0000],
		            [ 0.5735,  0.0000,  0.9044,  0.0000,  0.1732]])
		
		    >>> z = torch.zeros(2, 4).scatter_(1, torch.tensor([[2], [3]]), 1.23)
		    >>> z
		    tensor([[ 0.0000,  0.0000,  1.2300,  0.0000],
		            [ 0.0000,  0.0000,  0.0000,  1.2300]])
	**/
	public function scatter_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Out-of-place version of :meth:`torch.Tensor.scatter_add_`
		        
	**/
	public function scatter_add(dim:Dynamic, index:Dynamic, source:Dynamic):Dynamic;
	/**
		scatter_add_(dim, index, other) -> Tensor
		
		Adds all values from the tensor :attr:`other` into :attr:`self` at the indices
		specified in the :attr:`index` tensor in a similar fashion as
		:meth:`~torch.Tensor.scatter_`. For each value in :attr:`other`, it is added to
		an index in :attr:`self` which is specified by its index in :attr:`other`
		for ``dimension != dim`` and by the corresponding value in :attr:`index` for
		``dimension = dim``.
		
		For a 3-D tensor, :attr:`self` is updated as::
		
		    self[index[i][j][k]][j][k] += other[i][j][k]  # if dim == 0
		    self[i][index[i][j][k]][k] += other[i][j][k]  # if dim == 1
		    self[i][j][index[i][j][k]] += other[i][j][k]  # if dim == 2
		
		:attr:`self`, :attr:`index` and :attr:`other` should have same number of
		dimensions. It is also required that ``index.size(d) <= other.size(d)`` for all
		dimensions ``d``, and that ``index.size(d) <= self.size(d)`` for all dimensions
		``d != dim``.
		
		Moreover, as for :meth:`~Tensor.gather`, the values of :attr:`index` must be
		between ``0`` and ``self.size(dim) - 1`` inclusive, and all values in a row along
		the specified dimension :attr:`dim` must be unique.
		
		.. include:: cuda_deterministic.rst
		
		Args:
		    dim (int): the axis along which to index
		    index (LongTensor): the indices of elements to scatter and add,
		      can be either empty or the same size of src.
		      When empty, the operation returns identity.
		    other (Tensor): the source elements to scatter and add
		
		Example::
		
		    >>> x = torch.rand(2, 5)
		    >>> x
		    tensor([[0.7404, 0.0427, 0.6480, 0.3806, 0.8328],
		            [0.7953, 0.2009, 0.9154, 0.6782, 0.9620]])
		    >>> torch.ones(3, 5).scatter_add_(0, torch.tensor([[0, 1, 2, 0, 0], [2, 0, 0, 1, 2]]), x)
		    tensor([[1.7404, 1.2009, 1.9154, 1.3806, 1.8328],
		            [1.0000, 1.0427, 1.0000, 1.6782, 1.0000],
		            [1.7953, 1.0000, 1.6480, 1.0000, 1.9620]])
	**/
	public function scatter_add_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		select(dim, index) -> Tensor
		
		Slices the :attr:`self` tensor along the selected dimension at the given index.
		This function returns a tensor with the given dimension removed.
		
		Args:
		    dim (int): the dimension to slice
		    index (int): the index to select with
		
		.. note::
		
		    :meth:`select` is equivalent to slicing. For example,
		    ``tensor.select(0, index)`` is equivalent to ``tensor[index]`` and
		    ``tensor.select(2, index)`` is equivalent to ``tensor[:,:,index]``.
	**/
	public function select(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		set_(source=None, storage_offset=0, size=None, stride=None) -> Tensor
		
		Sets the underlying storage, size, and strides. If :attr:`source` is a tensor,
		:attr:`self` tensor will share the same storage and have the same size and
		strides as :attr:`source`. Changes to elements in one tensor will be reflected
		in the other.
		
		If :attr:`source` is a :class:`~torch.Storage`, the method sets the underlying
		storage, offset, size, and stride.
		
		Args:
		    source (Tensor or Storage): the tensor or storage to use
		    storage_offset (int, optional): the offset in the storage
		    size (torch.Size, optional): the desired size. Defaults to the size of the source.
		    stride (tuple, optional): the desired stride. Defaults to C-contiguous strides.
	**/
	public function set_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var shape : Dynamic;
	/**
		Moves the underlying storage to shared memory.
		
		This is a no-op if the underlying storage is already in shared memory
		and for CUDA tensors. Tensors in shared memory cannot be resized.
	**/
	public function share_memory_():Dynamic;
	/**
		short() -> Tensor
		
		``self.short()`` is equivalent to ``self.to(torch.int16)``. See :func:`to`.
	**/
	public function short(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		sigmoid() -> Tensor
		
		See :func:`torch.sigmoid`
	**/
	public function sigmoid(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		sigmoid_() -> Tensor
		
		In-place version of :meth:`~Tensor.sigmoid`
	**/
	public function sigmoid_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		sign() -> Tensor
		
		See :func:`torch.sign`
	**/
	public function sign(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		sign_() -> Tensor
		
		In-place version of :meth:`~Tensor.sign`
	**/
	public function sign_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		sin() -> Tensor
		
		See :func:`torch.sin`
	**/
	public function sin(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		sin_() -> Tensor
		
		In-place version of :meth:`~Tensor.sin`
	**/
	public function sin_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		sinh() -> Tensor
		
		See :func:`torch.sinh`
	**/
	public function sinh(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		sinh_() -> Tensor
		
		In-place version of :meth:`~Tensor.sinh`
	**/
	public function sinh_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		size() -> torch.Size
		
		Returns the size of the :attr:`self` tensor. The returned value is a subclass of
		:class:`tuple`.
		
		Example::
		
		    >>> torch.empty(3, 4, 5).size()
		    torch.Size([3, 4, 5])
	**/
	public function size(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		slogdet() -> (Tensor, Tensor)
		
		See :func:`torch.slogdet`
	**/
	public function slogdet(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function smm(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function softmax(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		sort(dim=None, descending=False) -> (Tensor, LongTensor)
		
		See :func:`torch.sort`
	**/
	public function sort(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		sparse_dim() -> int
		
		If :attr:`self` is a sparse COO tensor (i.e., with ``torch.sparse_coo`` layout),
		this returns a the number of sparse dimensions. Otherwise, this throws an
		error.
		
		See also :meth:`Tensor.dense_dim`.
	**/
	public function sparse_dim(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		sparse_mask(input, mask) -> Tensor
		
		Returns a new SparseTensor with values from Tensor :attr:`input` filtered
		by indices of :attr:`mask` and values are ignored. :attr:`input` and :attr:`mask`
		must have the same shape.
		
		Args:
		    input (Tensor): an input Tensor
		    mask (SparseTensor): a SparseTensor which we filter :attr:`input` based on its indices
		
		Example::
		
		    >>> nnz = 5
		    >>> dims = [5, 5, 2, 2]
		    >>> I = torch.cat([torch.randint(0, dims[0], size=(nnz,)),
		                       torch.randint(0, dims[1], size=(nnz,))], 0).reshape(2, nnz)
		    >>> V = torch.randn(nnz, dims[2], dims[3])
		    >>> size = torch.Size(dims)
		    >>> S = torch.sparse_coo_tensor(I, V, size).coalesce()
		    >>> D = torch.randn(dims)
		    >>> D.sparse_mask(S)
		    tensor(indices=tensor([[0, 0, 0, 2],
		                           [0, 1, 4, 3]]),
		           values=tensor([[[ 1.6550,  0.2397],
		                           [-0.1611, -0.0779]],
		
		                          [[ 0.2326, -1.0558],
		                           [ 1.4711,  1.9678]],
		
		                          [[-0.5138, -0.0411],
		                           [ 1.9417,  0.5158]],
		
		                          [[ 0.0793,  0.0036],
		                           [-0.2569, -0.1055]]]),
		           size=(5, 5, 2, 2), nnz=4, layout=torch.sparse_coo)
	**/
	public function sparse_mask(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function sparse_resize_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function sparse_resize_and_clear_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		See :func:`torch.split`
		        
	**/
	public function split(split_size:Dynamic, ?dim:Dynamic):Dynamic;
	public function split_with_sizes(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		sqrt() -> Tensor
		
		See :func:`torch.sqrt`
	**/
	public function sqrt(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		sqrt_() -> Tensor
		
		In-place version of :meth:`~Tensor.sqrt`
	**/
	public function sqrt_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		squeeze(dim=None) -> Tensor
		
		See :func:`torch.squeeze`
	**/
	public function squeeze(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		squeeze_(dim=None) -> Tensor
		
		In-place version of :meth:`~Tensor.squeeze`
	**/
	public function squeeze_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function sspaddmm(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		std(dim=None, unbiased=True, keepdim=False) -> Tensor
		
		See :func:`torch.std`
	**/
	public function std(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		See :func:`torch.stft`
		
		.. warning::
		  This function changed signature at version 0.4.1. Calling with
		  the previous signature may cause error or return incorrect result.
	**/
	public function stft(n_fft:Dynamic, ?hop_length:Dynamic, ?win_length:Dynamic, ?window:Dynamic, ?center:Dynamic, ?pad_mode:Dynamic, ?normalized:Dynamic, ?onesided:Dynamic):Dynamic;
	/**
		storage() -> torch.Storage
		
		Returns the underlying storage
	**/
	public function storage(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		storage_offset() -> int
		
		Returns :attr:`self` tensor's offset in the underlying storage in terms of
		number of storage elements (not bytes).
		
		Example::
		
		    >>> x = torch.tensor([1, 2, 3, 4, 5])
		    >>> x.storage_offset()
		    0
		    >>> x[3:].storage_offset()
		    3
	**/
	public function storage_offset(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function storage_type(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		stride(dim) -> tuple or int
		
		Returns the stride of :attr:`self` tensor.
		
		Stride is the jump necessary to go from one element to the next one in the
		specified dimension :attr:`dim`. A tuple of all strides is returned when no
		argument is passed in. Otherwise, an integer value is returned as the stride in
		the particular dimension :attr:`dim`.
		
		Args:
		    dim (int, optional): the desired dimension in which stride is required
		
		Example::
		
		    >>> x = torch.tensor([[1, 2, 3, 4, 5], [6, 7, 8, 9, 10]])
		    >>> x.stride()
		    (5, 1)
		    >>>x.stride(0)
		    5
		    >>> x.stride(-1)
		    1
	**/
	public function stride(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		sub(value, other) -> Tensor
		
		Subtracts a scalar or tensor from :attr:`self` tensor. If both :attr:`value` and
		:attr:`other` are specified, each element of :attr:`other` is scaled by
		:attr:`value` before being used.
		
		When :attr:`other` is a tensor, the shape of :attr:`other` must be
		:ref:`broadcastable <broadcasting-semantics>` with the shape of the underlying
		tensor.
	**/
	public function sub(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		sub_(x) -> Tensor
		
		In-place version of :meth:`~Tensor.sub`
	**/
	public function sub_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		sum(dim=None, keepdim=False, dtype=None) -> Tensor
		
		See :func:`torch.sum`
	**/
	public function sum(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		svd(some=True, compute_uv=True) -> (Tensor, Tensor, Tensor)
		
		See :func:`torch.svd`
	**/
	public function svd(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		symeig(eigenvectors=False, upper=True) -> (Tensor, Tensor)
		
		See :func:`torch.symeig`
	**/
	public function symeig(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		t() -> Tensor
		
		See :func:`torch.t`
	**/
	public function t(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		t_() -> Tensor
		
		In-place version of :meth:`~Tensor.t`
	**/
	public function t_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		take(indices) -> Tensor
		
		See :func:`torch.take`
	**/
	public function take(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function tan(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		tan_() -> Tensor
		
		In-place version of :meth:`~Tensor.tan`
	**/
	public function tan_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		tanh() -> Tensor
		
		See :func:`torch.tanh`
	**/
	public function tanh(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		tanh_() -> Tensor
		
		In-place version of :meth:`~Tensor.tanh`
	**/
	public function tanh_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		to(*args, **kwargs) -> Tensor
		
		Performs Tensor dtype and/or device conversion. A :class:`torch.dtype` and :class:`torch.device` are
		inferred from the arguments of ``self.to(*args, **kwargs)``.
		
		.. note::
		
		    If the ``self`` Tensor already
		    has the correct :class:`torch.dtype` and :class:`torch.device`, then ``self`` is returned.
		    Otherwise, the returned tensor is a copy of ``self`` with the desired
		    :class:`torch.dtype` and :class:`torch.device`.
		
		Here are the ways to call ``to``:
		
		.. function:: to(dtype, non_blocking=False, copy=False) -> Tensor
		
		    Returns a Tensor with the specified :attr:`dtype`
		
		.. function:: to(device=None, dtype=None, non_blocking=False, copy=False) -> Tensor
		
		    Returns a Tensor with the specified :attr:`device` and (optional)
		    :attr:`dtype`. If :attr:`dtype` is ``None`` it is inferred to be ``self.dtype``.
		    When :attr:`non_blocking`, tries to convert asynchronously with respect to
		    the host if possible, e.g., converting a CPU Tensor with pinned memory to a
		    CUDA Tensor.
		    When :attr:`copy` is set, a new Tensor is created even when the Tensor
		    already matches the desired conversion.
		
		.. function:: to(other, non_blocking=False, copy=False) -> Tensor
		
		    Returns a Tensor with same :class:`torch.dtype` and :class:`torch.device` as
		    the Tensor :attr:`other`. When :attr:`non_blocking`, tries to convert
		    asynchronously with respect to the host if possible, e.g., converting a CPU
		    Tensor with pinned memory to a CUDA Tensor.
		    When :attr:`copy` is set, a new Tensor is created even when the Tensor
		    already matches the desired conversion.
		
		Example::
		
		    >>> tensor = torch.randn(2, 2)  # Initially dtype=float32, device=cpu
		    >>> tensor.to(torch.float64)
		    tensor([[-0.5044,  0.0005],
		            [ 0.3310, -0.0584]], dtype=torch.float64)
		
		    >>> cuda0 = torch.device('cuda:0')
		    >>> tensor.to(cuda0)
		    tensor([[-0.5044,  0.0005],
		            [ 0.3310, -0.0584]], device='cuda:0')
		
		    >>> tensor.to(cuda0, dtype=torch.float64)
		    tensor([[-0.5044,  0.0005],
		            [ 0.3310, -0.0584]], dtype=torch.float64, device='cuda:0')
		
		    >>> other = torch.randn((), dtype=torch.float64, device=cuda0)
		    >>> tensor.to(other, non_blocking=True)
		    tensor([[-0.5044,  0.0005],
		            [ 0.3310, -0.0584]], dtype=torch.float64, device='cuda:0')
	**/
	public function to(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function to_dense(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		to_sparse(sparseDims) -> Tensor
		Returns a sparse copy of the tensor.  PyTorch supports sparse tensors in
		:ref:`coordinate format <sparse-docs>`.
		Args:
		    sparseDims (int, optional): the number of sparse dimensions to include in the new sparse tensor
		Example::
		    >>> d = torch.tensor([[0, 0, 0], [9, 0, 10], [0, 0, 0]])
		    >>> d
		    tensor([[ 0,  0,  0],
		            [ 9,  0, 10],
		            [ 0,  0,  0]])
		    >>> d.to_sparse()
		    tensor(indices=tensor([[1, 1],
		                           [0, 2]]),
		           values=tensor([ 9, 10]),
		           size=(3, 3), nnz=2, layout=torch.sparse_coo)
		    >>> d.to_sparse(1)
		    tensor(indices=tensor([[1]]),
		           values=tensor([[ 9,  0, 10]]),
		           size=(3, 3), nnz=1, layout=torch.sparse_coo)
	**/
	public function to_sparse(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		"
		tolist() -> list or number
		
		Returns the tensor as a (nested) list. For scalars, a standard
		Python number is returned, just like with :meth:`~Tensor.item`.
		Tensors are automatically moved to the CPU first if necessary.
		
		This operation is not differentiable.
		
		Examples::
		
		    >>> a = torch.randn(2, 2)
		    >>> a.tolist()
		    [[0.012766935862600803, 0.5415473580360413],
		     [-0.08909505605697632, 0.7729271650314331]]
		    >>> a[0,0].tolist()
		    0.012766935862600803
	**/
	public function tolist(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		topk(k, dim=None, largest=True, sorted=True) -> (Tensor, LongTensor)
		
		See :func:`torch.topk`
	**/
	public function topk(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		trace() -> Tensor
		
		See :func:`torch.trace`
	**/
	public function trace(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		transpose(dim0, dim1) -> Tensor
		
		See :func:`torch.transpose`
	**/
	public function transpose(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		transpose_(dim0, dim1) -> Tensor
		
		In-place version of :meth:`~Tensor.transpose`
	**/
	public function transpose_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		tril(k=0) -> Tensor
		
		See :func:`torch.tril`
	**/
	public function tril(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		tril_(k=0) -> Tensor
		
		In-place version of :meth:`~Tensor.tril`
	**/
	public function tril_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		triu(k=0) -> Tensor
		
		See :func:`torch.triu`
	**/
	public function triu(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		triu_(k=0) -> Tensor
		
		In-place version of :meth:`~Tensor.triu`
	**/
	public function triu_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		trtrs(A, upper=True, transpose=False, unitriangular=False) -> (Tensor, Tensor)
		
		See :func:`torch.trtrs`
	**/
	public function trtrs(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		trunc() -> Tensor
		
		See :func:`torch.trunc`
	**/
	public function trunc(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		trunc_() -> Tensor
		
		In-place version of :meth:`~Tensor.trunc`
	**/
	public function trunc_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		type(dtype=None, non_blocking=False, **kwargs) -> str or Tensor
		Returns the type if `dtype` is not provided, else casts this object to
		the specified type.
		
		If this is already of the correct type, no copy is performed and the
		original object is returned.
		
		Args:
		    dtype (type or string): The desired type
		    non_blocking (bool): If ``True``, and the source is in pinned memory
		        and destination is on the GPU or vice versa, the copy is performed
		        asynchronously with respect to the host. Otherwise, the argument
		        has no effect.
		    **kwargs: For compatibility, may contain the key ``async`` in place of
		        the ``non_blocking`` argument. The ``async`` arg is deprecated.
	**/
	public function type(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		type_as(tensor) -> Tensor
		
		Returns this tensor cast to the type of the given tensor.
		
		This is a no-op if the tensor is already of the correct type. This is
		equivalent to::
		
		    self.type(tensor.type())
		
		Params:
		    tensor (Tensor): the tensor which has the desired type
	**/
	public function type_as(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		unbind(dim=0) -> seq
		
		See :func:`torch.unbind`
	**/
	public function unbind(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		unfold(dim, size, step) -> Tensor
		
		Returns a tensor which contains all slices of size :attr:`size` from
		:attr:`self` tensor in the dimension :attr:`dim`.
		
		Step between two slices is given by :attr:`step`.
		
		If `sizedim` is the size of dimension dim for :attr:`self`, the size of
		dimension :attr:`dim` in the returned tensor will be
		`(sizedim - size) / step + 1`.
		
		An additional dimension of size size is appended in the returned tensor.
		
		Args:
		    dim (int): dimension in which unfolding happens
		    size (int): the size of each slice that is unfolded
		    step (int): the step between each slice
		
		Example::
		
		    >>> x = torch.arange(1., 8)
		    >>> x
		    tensor([ 1.,  2.,  3.,  4.,  5.,  6.,  7.])
		    >>> x.unfold(0, 2, 1)
		    tensor([[ 1.,  2.],
		            [ 2.,  3.],
		            [ 3.,  4.],
		            [ 4.,  5.],
		            [ 5.,  6.],
		            [ 6.,  7.]])
		    >>> x.unfold(0, 2, 2)
		    tensor([[ 1.,  2.],
		            [ 3.,  4.],
		            [ 5.,  6.]])
	**/
	public function unfold(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		uniform_(from=0, to=1) -> Tensor
		
		Fills :attr:`self` tensor with numbers sampled from the continuous uniform
		distribution:
		
		.. math::
		    P(x) = \dfrac{1}{\text{to} - \text{from}}
	**/
	public function uniform_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Returns the unique scalar elements of the tensor as a 1-D tensor.
		
		See :func:`torch.unique`
	**/
	public function unique(?sorted:Dynamic, ?return_inverse:Dynamic, ?dim:Dynamic):Dynamic;
	/**
		unsqueeze(dim) -> Tensor
		
		See :func:`torch.unsqueeze`
	**/
	public function unsqueeze(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		unsqueeze_(dim) -> Tensor
		
		In-place version of :meth:`~Tensor.unsqueeze`
	**/
	public function unsqueeze_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		values() -> Tensor
		
		If :attr:`self` is a sparse COO tensor (i.e., with ``torch.sparse_coo`` layout),
		this returns a view of the contained values tensor. Otherwise, this throws an
		error.
		
		See also :meth:`Tensor.indices`.
		
		.. note::
		  This method can only be called on a coalesced sparse tensor. See
		  :meth:`Tensor.coalesce` for details.
	**/
	public function values(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		var(dim=None, unbiased=True, keepdim=False) -> Tensor
		
		See :func:`torch.var`
	**/
	@:native("var")
	public function _var(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		view(*shape) -> Tensor
		
		Returns a new tensor with the same data as the :attr:`self` tensor but of a
		different :attr:`shape`.
		
		The returned tensor shares the same data and must have the same number
		of elements, but may have a different size. For a tensor to be viewed, the new
		view size must be compatible with its original size and stride, i.e., each new
		view dimension must either be a subspace of an original dimension, or only span
		across original dimensions :math:`d, d+1, \dots, d+k` that satisfy the following
		contiguity-like condition that :math:`\forall i = 0, \dots, k-1`,
		
		.. math::
		
		  \text{stride}[i] = \text{stride}[i+1] \times \text{size}[i+1]
		
		Otherwise, :meth:`contiguous` needs to be called before the tensor can be
		viewed. See also: :meth:`reshape`, which returns a view if the shapes are
		compatible, and copies (equivalent to calling :meth:`contiguous`) otherwise.
		
		Args:
		    shape (torch.Size or int...): the desired size
		
		Example::
		
		    >>> x = torch.randn(4, 4)
		    >>> x.size()
		    torch.Size([4, 4])
		    >>> y = x.view(16)
		    >>> y.size()
		    torch.Size([16])
		    >>> z = x.view(-1, 8)  # the size -1 is inferred from other dimensions
		    >>> z.size()
		    torch.Size([2, 8])
	**/
	public function view(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		view_as(other) -> Tensor
		
		View this tensor as the same size as :attr:`other`.
		``self.view_as(other)`` is equivalent to ``self.view(other.size())``.
		
		Please see :meth:`~Tensor.view` for more information about ``view``.
		
		Args:
		    other (:class:`torch.Tensor`): The result tensor has the same size
		        as :attr:`other`.
	**/
	public function view_as(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var volatile : Dynamic;
	/**
		where(condition, y) -> Tensor
		
		``self.where(condition, y)`` is equivalent to ``torch.where(condition, self, y)``.
		See :func:`torch.where`
	**/
	public function where(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		zero_() -> Tensor
		
		Fills :attr:`self` tensor with zeros.
	**/
	public function zero_(args:haxe.extern.Rest<Dynamic>):Dynamic;
}