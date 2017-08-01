/* This file is generated, do not edit! */
package torch;
@:pythonImport("torch", "FloatTensor") extern class FloatTensor {
	public function __add__(other:Dynamic):Dynamic;
	public function __and__(other:Dynamic):Dynamic;
	public function __bool__():Dynamic;
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __deepcopy__(_memo:Dynamic):Dynamic;
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
	/**
		Return getattr(self, name).
	**/
	public function __getattribute__(name:Dynamic):Dynamic;
	/**
		Return self[key].
	**/
	public function __getitem__(key:Dynamic):Dynamic;
	public function __getstate__():Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(other:Dynamic):Dynamic;
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	public function __iadd__(other:Dynamic):Dynamic;
	public function __iand__(other:Dynamic):Dynamic;
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
	public function __ior__(other:Dynamic):Dynamic;
	public function __ipow__(other:Dynamic):Dynamic;
	public function __isub__(other:Dynamic):Dynamic;
	public function __iter__():Dynamic;
	public function __ixor__(other:Dynamic):Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(other:Dynamic):Dynamic;
	/**
		Return len(self).
	**/
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
	public function __nonzero__():Dynamic;
	public function __or__(other:Dynamic):Dynamic;
	public function __pow__(other:Dynamic):Dynamic;
	public function __radd__(other:Dynamic):Dynamic;
	public function __rdiv__(other:Dynamic):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce__():Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce_ex__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	public function __rmul__(other:Dynamic):Dynamic;
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
	public function __xor__(other:Dynamic):Dynamic;
	public var _cdata : Dynamic;
	static public function _new_with_metadata_file(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function _set_index(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var _torch : Dynamic;
	public function _write_metadata(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		add(value)
		
		See :func:`torch.add`
	**/
	public function add(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		add_(value)
		
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
		apply_(callable) -> Tensor
		
		Applies the function :attr:`callable` to each element in the tensor, replacing
		each element with the value returned by :attr:`callable`.
		
		.. note::
		
		    This function only works with CPU tensors and should not be used in code
		    sections that require high performance.
	**/
	public function apply_(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		bernoulli() -> Tensor
		
		See :func:`torch.bernoulli`
	**/
	public function bernoulli(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		bernoulli_() -> Tensor
		
		In-place version of :meth:`~Tensor.bernoulli`
	**/
	public function bernoulli_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		bmm(batch2) -> Tensor
		
		See :func:`torch.bmm`
	**/
	public function bmm(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function btrifact(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function btrisolve(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Casts this tensor to byte type
	**/
	public function byte():Dynamic;
	/**
		cauchy_(median=0, sigma=1, *, generator=None) -> Tensor
		
		Fills the tensor with numbers drawn from the Cauchy distribution:
		
		.. math::
		
		    P(x) = \dfrac{1}{\pi} \dfrac{\sigma}{(x - median)^2 + \sigma^2}
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
		Casts this tensor to char type
	**/
	public function char():Dynamic;
	/**
		Splits this tensor into a tuple of tensors.
		
		See :func:`torch.chunk`.
	**/
	public function chunk(n_chunks:Dynamic, ?dim:Dynamic):Dynamic;
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
	/**
		clone() -> Tensor
		
		Returns a copy of the tensor. The copy has the same size and data type as the
		original tensor.
	**/
	public function clone(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		contiguous() -> Tensor
		
		Returns a contiguous Tensor containing the same data as this tensor. If this
		tensor is contiguous, this function returns the original tensor.
	**/
	public function contiguous(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		copy_(src, async=False) -> Tensor
		
		Copies the elements from :attr:`src` into this tensor and returns this tensor.
		
		The source tensor should have the same number of elements as this tensor. It
		may be of a different data type or reside on a different device.
		
		Args:
		    src (Tensor): Source tensor to copy
		    async (bool): If True and this copy is between CPU and GPU, then the copy
		                  may occur asynchronously with respect to the host. For other
		                  copies, this argument has no effect.
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
		Returns a CPU copy of this tensor if it's not already on the CPU
	**/
	public function cpu():Dynamic;
	/**
		cross(other, dim=-1) -> Tensor
		
		See :func:`torch.cross`
	**/
	public function cross(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Returns a copy of this object in CUDA memory.
		
		If this object is already in CUDA memory and on the correct device, then
		no copy is performed and the original object is returned.
		
		Args:
		    device (int): The destination GPU id. Defaults to the current device.
		    async (bool): If True and the source is in pinned memory, the copy will
		                  be asynchronous with respect to the host. Otherwise, the
		                  argument has no effect.
	**/
	public function cuda(?device:Dynamic, ?async:Dynamic):Dynamic;
	/**
		cumprod(dim) -> Tensor
		
		See :func:`torch.cumprod`
	**/
	public function cumprod(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		cumsum(dim) -> Tensor
		
		See :func:`torch.cumsum`
	**/
	public function cumsum(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		data_ptr() -> int
		
		Returns the address of the first element of this tensor.
	**/
	public function data_ptr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		diag(diagonal=0) -> Tensor
		
		See :func:`torch.diag`
	**/
	public function diag(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		dim() -> int
		
		Returns the number of dimensions of this tensor.
	**/
	public function dim(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		dist(other, p=2) -> Tensor
		
		See :func:`torch.dist`
	**/
	public function dist(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		div(value)
		
		See :func:`torch.div`
	**/
	public function div(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		div_(value)
		
		In-place version of :meth:`~Tensor.div`
	**/
	public function div_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		dot(tensor2) -> float
		
		See :func:`torch.dot`
	**/
	public function dot(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Casts this tensor to double type
	**/
	public function double():Dynamic;
	/**
		eig(eigenvectors=False) -> (Tensor, Tensor)
		
		See :func:`torch.eig`
	**/
	public function eig(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		element_size() -> int
		
		Returns the size in bytes of an individual element.
		
		Example:
		    >>> torch.FloatTensor().element_size()
		    4
		    >>> torch.ByteTensor().element_size()
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
		expand(tensor, sizes) -> Tensor
		
		Returns a new view of the tensor with singleton dimensions expanded
		to a larger size.
		
		Tensor can be also expanded to a larger number of dimensions, and the
		new ones will be appended at the front.
		
		Expanding a tensor does not allocate new memory, but only creates a
		new view on the existing tensor where a dimension of size one is
		expanded to a larger size by setting the ``stride`` to 0. Any dimension
		of size 1 can be expanded to an arbitrary value without allocating new
		memory.
		
		Args:
		    *sizes (torch.Size or int...): The desired expanded size
		
		Example:
		    >>> x = torch.Tensor([[1], [2], [3]])
		    >>> x.size()
		    torch.Size([3, 1])
		    >>> x.expand(3, 4)
		     1  1  1  1
		     2  2  2  2
		     3  3  3  3
		    [torch.FloatTensor of size 3x4]
	**/
	public function expand(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Expands this tensor to the size of the specified tensor.
		
		This is equivalent to::
		
		    self.expand(tensor.size())
	**/
	public function expand_as(tensor:Dynamic):Dynamic;
	/**
		exponential_(lambd=1, *, generator=None) -> Tensor
		
		Fills this tensor with elements drawn from the exponential distribution:
		
		.. math::
		
		    P(x) = \lambda e^{-\lambda x}
	**/
	public function exponential_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		fill_(value) -> Tensor
		
		Fills this tensor with the specified value.
	**/
	public function fill_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Casts this tensor to float type
	**/
	public function float():Dynamic;
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
		
		Fills this tensor with elements drawn from the geometric distribution:
		
		.. math::
		
		    P(X=k) = (1 - p)^{k - 1} p
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
		Casts this tensor to half-precision float type
	**/
	public function half():Dynamic;
	/**
		histc(bins=100, min=0, max=0) -> Tensor
		
		See :func:`torch.histc`
	**/
	public function histc(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		index(m) -> Tensor
		
		Selects elements from this tensor using a binary mask or along a given
		dimension. The expression ``tensor.index(m)`` is equivalent to ``tensor[m]``.
		
		Args:
		    m (int or ByteTensor or slice): The dimension or mask used to select elements
	**/
	public function index(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		index_add_(dim, index, tensor) -> Tensor
		
		Accumulate the elements of tensor into the original tensor by adding to the
		indices in the order given in index. The shape of tensor must exactly match the
		elements indexed or an error will be raised.
		
		Args:
		    dim (int): Dimension along which to index
		    index (LongTensor): Indices to select from tensor
		    tensor (Tensor): Tensor containing values to add
		
		Example:
		    >>> x = torch.Tensor([[1, 1, 1], [1, 1, 1], [1, 1, 1]])
		    >>> t = torch.Tensor([[1, 2, 3], [4, 5, 6], [7, 8, 9]])
		    >>> index = torch.LongTensor([0, 2, 1])
		    >>> x.index_add_(0, index, t)
		    >>> x
		      2   3   4
		      8   9  10
		      5   6   7
		    [torch.FloatTensor of size 3x3]
	**/
	public function index_add_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		index_copy_(dim, index, tensor) -> Tensor
		
		Copies the elements of tensor into the original tensor by selecting the
		indices in the order given in index. The shape of tensor must exactly match the
		elements indexed or an error will be raised.
		
		Args:
		    dim (int): Dimension along which to index
		    index (LongTensor): Indices to select from tensor
		    tensor (Tensor): Tensor containing values to copy
		
		Example:
		    >>> x = torch.Tensor(3, 3)
		    >>> t = torch.Tensor([[1, 2, 3], [4, 5, 6], [7, 8, 9]])
		    >>> index = torch.LongTensor([0, 2, 1])
		    >>> x.index_copy_(0, index, t)
		    >>> x
		     1  2  3
		     7  8  9
		     4  5  6
		    [torch.FloatTensor of size 3x3]
	**/
	public function index_copy_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		index_fill_(dim, index, val) -> Tensor
		
		Fills the elements of the original tensor with value :attr:`val` by selecting
		the indices in the order given in index.
		
		Args:
		    dim (int): Dimension along which to index
		    index (LongTensor): Indices
		    val (float): Value to fill
		
		Example:
		    >>> x = torch.Tensor([[1, 2, 3], [4, 5, 6], [7, 8, 9]])
		    >>> index = torch.LongTensor([0, 2])
		    >>> x.index_fill_(1, index, -1)
		    >>> x
		    -1  2 -1
		    -1  5 -1
		    -1  8 -1
		    [torch.FloatTensor of size 3x3]
	**/
	public function index_fill_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		index_select(dim, index) -> Tensor
		
		See :func:`torch.index_select`
	**/
	public function index_select(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Casts this tensor to int type
	**/
	public function int():Dynamic;
	/**
		inverse() -> Tensor
		
		See :func:`torch.inverse`
	**/
	public function inverse(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		is_contiguous() -> bool
		
		Returns True if this tensor is contiguous in memory in C order.
	**/
	public function is_contiguous(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var is_cuda : Dynamic;
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
	public function is_signed():Dynamic;
	static public var is_sparse : Dynamic;
	/**
		kthvalue(k, dim=None) -> (Tensor, LongTensor)
		
		See :func:`torch.kthvalue`
	**/
	public function kthvalue(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		lerp(start, end, weight)
		
		See :func:`torch.lerp`
	**/
	public function lerp(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		lerp_(start, end, weight)
		
		In-place version of :meth:`~Tensor.lerp`
	**/
	public function lerp_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		log() -> Tensor
		
		See :func:`torch.log`
	**/
	public function log(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		log_() -> Tensor
		
		In-place version of :meth:`~Tensor.log`
	**/
	public function log_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		log_normal_(mean=1, std=2, *, generator=None)
		
		Fills this tensor with numbers samples from the log-normal distribution
		parameterized by the given mean (µ) and standard deviation (σ). Note that
		:attr:`mean` and :attr:`stdv` are the mean and standard deviation of the
		underlying normal distribution, and not of the returned distribution:
		
		.. math::
		
		    P(x) = \dfrac{1}{x \sigma \sqrt{2\pi}} e^{-\dfrac{(\ln x - \mu)^2}{2\sigma^2}}
	**/
	public function log_normal_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Casts this tensor to long type
	**/
	public function long():Dynamic;
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
		
		Applies :attr:`callable` for each element in this tensor and the given tensor
		and stores the results in this tensor. The :attr:`callable` should have the
		signature::
		
		    def callable(a, b) -> number
	**/
	public function map_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		masked_copy_(mask, source)
		
		Copies elements from :attr:`source` into this tensor at positions where the
		:attr:`mask` is one. The :attr:`mask` should have the same number of elements
		as this tensor. The :attr:`source` should have at least as many elements as the
		number of ones in :attr:`mask`
		
		Args:
		    mask (ByteTensor): The binary mask
		    source (Tensor): The tensor to copy from
		
		.. note::
		
		    The :attr:`mask` operates on the :attr:`self` tensor, not on the given
		    :attr:`source` tensor.
	**/
	public function masked_copy_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		masked_fill_(mask, value)
		
		Fills elements of this tensor with :attr:`value` where :attr:`mask` is one.
		The :attr:`mask` should have the same number of elements as this tensor, but
		the shape may differ.
		
		Args:
		    mask (ByteTensor): The binary mask
		    value (Tensor): The value to fill
	**/
	public function masked_fill_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		masked_select(mask) -> Tensor
		
		See :func:`torch.masked_select`
	**/
	public function masked_select(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		max(dim=None) -> float or (Tensor, Tensor)
		
		See :func:`torch.max`
	**/
	public function max(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		mean(dim=None) -> float or (Tensor, Tensor)
		
		See :func:`torch.mean`
	**/
	public function mean(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		median(dim=-1, values=None, indices=None) -> (Tensor, LongTensor)
		
		See :func:`torch.median`
	**/
	public function median(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		min(dim=None) -> float or (Tensor, Tensor)
		
		See :func:`torch.min`
	**/
	public function min(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		mm(mat2) -> Tensor
		
		See :func:`torch.mm`
	**/
	public function mm(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		mode(dim=-1, values=None, indices=None) -> (Tensor, LongTensor)
		
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
		multinomial(num_samples, replacement=False, *, generator=None)
		
		See :func:`torch.multinomial`
	**/
	public function multinomial(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		mv(vec) -> Tensor
		
		See :func:`torch.mv`
	**/
	public function mv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		narrow(dimension, start, length) -> Tensor
		
		Returns a new tensor that is a narrowed version of this tensor. The dimension
		:attr:`dim` is narrowed from :attr:`start` to :attr:`start + length`. The
		returned tensor and this tensor share the same underlying storage.
		
		Args:
		    dimension (int): The dimension along which to narrow
		    start (int): The starting dimension
		    length (int):
		
		Example:
		    >>> x = torch.Tensor([[1, 2, 3], [4, 5, 6], [7, 8, 9]])
		    >>> x.narrow(0, 0, 2)
		     1  2  3
		     4  5  6
		    [torch.FloatTensor of size 2x3]
		    >>> x.narrow(1, 1, 2)
		     2  3
		     5  6
		     8  9
		    [torch.FloatTensor of size 3x2]
	**/
	public function narrow(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	/**
		Constructs a new tensor of the same data type.
	**/
	@:native("new")
	public function _new(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		nonzero() -> LongTensor
		
		See :func:`torch.nonzero`
	**/
	public function nonzero(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		norm(p=2) -> float
		
		See :func:`torch.norm`
	**/
	public function norm(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		normal_(mean=0, std=1, *, generator=None)
		
		Fills this tensor with elements samples from the normal distribution
		parameterized by :attr:`mean` and :attr:`std`.
	**/
	public function normal_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		numel() -> int
		
		See :func:`torch.numel`
	**/
	public function numel(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		numpy() -> ndarray
		
		Returns this tensor as a NumPy :class:`ndarray`. This tensor and the returned
		:class:`ndarray` share the same underlying storage. Changes to this tensor will
		be reflected in the :class:`ndarray` and vice versa.
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
	/**
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
	public function permute(?dims:python.VarArgs<Dynamic>):Dynamic;
	/**
		Copies the tensor to pinned memory, if it's not already pinned.
	**/
	public function pin_memory():Dynamic;
	/**
		potrf(upper=True) -> Tensor
		
		See :func:`torch.potrf`
	**/
	public function potrf(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		pow(exponent)
		
		See :func:`torch.pow`
	**/
	public function pow(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		pow_(exponent)
		
		In-place version of :meth:`~Tensor.pow`
	**/
	public function pow_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		prod() -> float
		
		See :func:`torch.prod`
	**/
	public function prod(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		pstrf(upper=True, tol=-1) -> (Tensor, IntTensor)
		
		See :func:`torch.pstrf`
	**/
	public function pstrf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		qr() -> (Tensor, Tensor)
		
		See :func:`torch.qr`
	**/
	public function qr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		random_(from=0, to=None, *, generator=None)
		
		Fills this tensor with numbers sampled from the uniform distribution or
		discrete uniform distribution over [from, to - 1]. If not specified, the
		values are only bounded by this tensor's data type.
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
		Repeats this tensor along the specified dimensions.
		
		Unlike :meth:`expand`, this function copies the tensor's data.
		
		Args:
		    *sizes (torch.Size or int...): The number of times to repeat this tensor along each dimension
		
		Example:
		    >>> x = torch.Tensor([1, 2, 3])
		    >>> x.repeat(4, 2)
		     1  2  3  1  2  3
		     1  2  3  1  2  3
		     1  2  3  1  2  3
		     1  2  3  1  2  3
		    [torch.FloatTensor of size 4x6]
		    >>> x.repeat(4, 2, 1).size()
		    torch.Size([4, 2, 3])
	**/
	public function repeat(?sizes:python.VarArgs<Dynamic>):Dynamic;
	/**
		resize_(*sizes)
		
		Resizes this tensor to the specified size. If the number of elements is
		larger than the current storage size, then the underlying storage is resized
		to fit the new number of elements. If the number of elements is smaller, the
		underlying storage is not changed. Existing elements are preserved but any new
		memory is uninitialized.
		
		Args:
		    sizes (torch.Size or int...): The desired size
		
		Example:
		    >>> x = torch.Tensor([[1, 2], [3, 4], [5, 6]])
		    >>> x.resize_(2, 2)
		    >>> x
		     1  2
		     3  4
		    [torch.FloatTensor of size 2x2]
	**/
	public function resize_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		resize_as_(tensor)
		
		Resizes the current tensor to be the same size as the specified tensor. This is
		equivalent to::
		
		    self.resize_(tensor.size())
	**/
	public function resize_as_(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		scatter_(input, dim, index, src) -> Tensor
		
		Writes all values from the Tensor :attr:`src` into self at the indices specified
		in the :attr:`index` Tensor. The indices are specified with respect to the
		given dimension, dim, in the manner described in :meth:`~Tensor.gather`.
		
		Note that, as for gather, the values of index must be between `0` and `(self.size(dim) -1)`
		inclusive and all values in a row along the specified dimension must be unique.
		
		Args:
		    input (Tensor): The source tensor
		    dim (int): The axis along which to index
		    index (LongTensor): The indices of elements to scatter
		    src (Tensor or float): The source element(s) to scatter
		
		Example::
		
		    >>> x = torch.rand(2, 5)
		    >>> x
		
		     0.4319  0.6500  0.4080  0.8760  0.2355
		     0.2609  0.4711  0.8486  0.8573  0.1029
		    [torch.FloatTensor of size 2x5]
		
		    >>> torch.zeros(3, 5).scatter_(0, torch.LongTensor([[0, 1, 2, 0, 0], [2, 0, 0, 1, 2]]), x)
		
		     0.4319  0.4711  0.8486  0.8760  0.2355
		     0.0000  0.6500  0.0000  0.8573  0.0000
		     0.2609  0.0000  0.4080  0.0000  0.1029
		    [torch.FloatTensor of size 3x5]
		
		    >>> z = torch.zeros(2, 4).scatter_(1, torch.LongTensor([[2], [3]]), 1.23)
		    >>> z
		
		     0.0000  0.0000  1.2300  0.0000
		     0.0000  0.0000  0.0000  1.2300
		    [torch.FloatTensor of size 2x4]
	**/
	public function scatter_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		select(dim, index) -> Tensor or number
		
		Slices the tensor along the selected dimension at the given index. If this
		tensor is one dimensional, this function returns a number. Otherwise, it
		returns a tensor with the given dimension removed.
		
		Args:
		    dim (int): Dimension to slice
		    index (int): Index to select
		
		.. note::
		
		    :meth:`select` is equivalent to slicing. For example, ``tensor.select(0, index)``
		    is equivalent to ``tensor[index]`` and ``tensor.select(2, index)`` is equivalent
		    to ``tensor[:,:,index]``.
	**/
	public function select(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		set_(source=None, storage_offset=0, size=None, stride=None)
		
		Sets the underlying storage, size, and strides. If :attr:`source` is a tensor,
		this tensor will share the same storage and have the same size and strides
		as the given tensor. Changes to elements in one tensor will be reflected in the
		other.
		
		If :attr:`source` is a :class:`~torch.Storage`, the method sets the underlying
		storage, offset, size, and stride.
		
		Args:
		    source (Tensor or Storage): The tensor or storage to use
		    storage_offset (int): The offset in the storage
		    size (torch.Size): The desired size. Defaults to the size of the source.
		    stride (tuple): The desired stride. Defaults to C-contiguous strides.
	**/
	public function set_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Moves the underlying storage to shared memory.
		
		This is a no-op if the underlying storage is already in shared memory
		and for CUDA tensors. Tensors in shared memory cannot be resized.
	**/
	public function share_memory_():Dynamic;
	/**
		Casts this tensor to short type
	**/
	public function short():Dynamic;
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
		
		Returns the size of the tensor. The returned value is a subclass of
		:class:`tuple`.
		
		Example:
		    >>> torch.Tensor(3, 4, 5).size()
		    torch.Size([3, 4, 5])
	**/
	public function size(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		sort(dim=None, descending=False) -> (Tensor, LongTensor)
		
		See :func:`torch.sort`
	**/
	public function sort(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function sparse_mask(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Splits this tensor into a tuple of tensors.
		
		See :func:`torch.split`.
	**/
	public function split(split_size:Dynamic, ?dim:Dynamic):Dynamic;
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
		squeeze(dim=None)
		
		See :func:`torch.squeeze`
	**/
	public function squeeze(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		squeeze_(dim=None)
		
		In-place version of :meth:`~Tensor.squeeze`
	**/
	public function squeeze_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		std() -> float
		
		See :func:`torch.std`
	**/
	public function std(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		storage() -> torch.Storage
		
		Returns the underlying storage
	**/
	public function storage(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		storage_offset() -> int
		
		Returns this tensor's offset in the underlying storage in terms of number of
		storage elements (not bytes).
		
		Example:
		    >>> x = torch.Tensor([1, 2, 3, 4, 5])
		    >>> x.storage_offset()
		    0
		    >>> x[3:].storage_offset()
		    3
	**/
	public function storage_offset(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function storage_type():Dynamic;
	/**
		stride() -> tuple
		
		Returns the stride of the tensor.
	**/
	public function stride(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		sub(value, other) -> Tensor
		
		Subtracts a scalar or tensor from this tensor. If both :attr:`value` and
		:attr:`other` are specified, each element of :attr:`other` is scaled by
		:attr:`value` before being used.
	**/
	public function sub(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		sub_(x) -> Tensor
		
		In-place version of :meth:`~Tensor.sub`
	**/
	public function sub_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		sum(dim=None) -> float
		
		See :func:`torch.sum`
	**/
	public function sum(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		svd(some=True) -> (Tensor, Tensor, Tensor)
		
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
		tan() -> Tensor
		
		See :func:`torch.tan`
	**/
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
		Returns a nested list represenation of this tensor.
	**/
	public function tolist():Dynamic;
	/**
		topk(k, dim=None, largest=True, sorted=True) -> (Tensor, LongTensor)
		
		See :func:`torch.topk`
	**/
	public function topk(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		trace() -> float
		
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
		Casts this object to the specified type.
		
		If this is already of the correct type, no copy is performed and the
		original object is returned.
		
		Args:
		    new_type (type or string): The desired type
		    async (bool): If True, and the source is in pinned memory and
		                  destination is on the GPU or vice versa, the copy is
		                  performed asynchronously with respect to the host.
		                  Otherwise, the argument has no effect.
	**/
	public function type(?new_type:Dynamic, ?async:Dynamic):Dynamic;
	/**
		Returns this tensor cast to the type of the given tensor.
		
		This is a no-op if the tensor is already of the correct type. This is
		equivalent to::
		
		    self.type(tensor.type())
		
		Params:
		    tensor (Tensor): the tensor which has the desired type
	**/
	public function type_as(tensor:Dynamic):Dynamic;
	/**
		unfold(dim, size, step) -> Tensor
		
		Returns a tensor which contains all slices of size :attr:`size` in
		the dimension :attr:`dim`.
		
		Step between two slices is given by :attr:`step`.
		
		If `sizedim` is the original size of dimension dim, the size of dimension `dim`
		in the returned tensor will be `(sizedim - size) / step + 1`
		
		An additional dimension of size size is appended in the returned tensor.
		
		Args:
		    dim (int): dimension in which unfolding happens
		    size (int): size of each slice that is unfolded
		    step (int): the step between each slice
		
		Example::
		
		    >>> x = torch.arange(1, 8)
		    >>> x
		
		     1
		     2
		     3
		     4
		     5
		     6
		     7
		    [torch.FloatTensor of size 7]
		
		    >>> x.unfold(0, 2, 1)
		
		     1  2
		     2  3
		     3  4
		     4  5
		     5  6
		     6  7
		    [torch.FloatTensor of size 6x2]
		
		    >>> x.unfold(0, 2, 2)
		
		     1  2
		     3  4
		     5  6
		    [torch.FloatTensor of size 3x2]
	**/
	public function unfold(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		uniform_(from=0, to=1) -> Tensor
		
		Fills this tensor with numbers sampled from the uniform distribution:
		
		.. math:
		
		    P(x) = \dfrac{1}{to - from}
	**/
	public function uniform_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		unsqueeze(dim)
		
		See :func:`torch.unsqueeze`
	**/
	public function unsqueeze(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		unsqueeze_(dim)
		
		In-place version of :meth:`~Tensor.unsqueeze`
	**/
	public function unsqueeze_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		var() -> float
		
		See :func:`torch.var`
	**/
	@:native("var")
	public function _var(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		view(*args) -> Tensor
		
		Returns a new tensor with the same data but different size.
		
		The returned tensor shares the same data and must have the same number
		of elements, but may have a different size. A tensor must be
		:func:`contiguous` to be viewed.
		
		Args:
		    args (torch.Size or int...): Desired size
		
		Example:
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
		Returns this tensor viewed as the size as the specified tensor.
		
		This is equivalent to::
		
		        self.view(tensor.size())
	**/
	public function view_as(tensor:Dynamic):Dynamic;
	/**
		zero_()
		
		Fills this tensor with zeros.
	**/
	public function zero_(args:haxe.extern.Rest<Dynamic>):Dynamic;
}