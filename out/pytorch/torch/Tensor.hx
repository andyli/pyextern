/* This file is generated, do not edit! */
package torch;
@:pythonImport("torch", "Tensor") extern class Tensor {
	/**
		Is this Tensor with its dimensions reversed.
		
		If ``n`` is the number of dimensions in ``x``,
		``x.T`` is equivalent to ``x.permute(n-1, n-2, ..., 0)``.
	**/
	public var T : Dynamic;
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
	public function __complex__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Check if `element` is present in tensor
		
		Args:
		    element (Tensor or scalar): element to be checked
		        for presence in current tensor"
	**/
	public function __contains__(element:Dynamic):Dynamic;
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
		Default dir() implementation.
	**/
	public function __dir__():Dynamic;
	public function __div__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Creates a DLpack `capsule https://data-apis.org/array-api/latest/design_topics/data_interchange.html#data-interchange`_
		of the current tensor to be exported to other libraries.
		
		This function will be called from the `from_dlpack` method
		of the library that will consume the capsule. `from_dlpack` passes the current
		stream to this method as part of the specification.
		
		Args:
		    stream (integer or None): An optional Python integer representing a
		    pointer to a CUDA stream. The current stream is synchronized with
		    this stream before the capsule is created, and since the capsule
		    shares its storage with the tensor this make it safe to access from
		    both streams.  If None or -1 is passed then no synchronization is performed.
	**/
	public function __dlpack__(?stream:Dynamic):Dynamic;
	public function __dlpack_device__():Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __float__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __floordiv__(other:Dynamic):Dynamic;
	/**
		Default object formatter.
	**/
	public function __format__(format_spec:Dynamic):Dynamic;
	/**
		Return self>=value.
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
		Return self>value.
	**/
	public function __gt__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	public function __iadd__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __iand__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __idiv__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __ifloordiv__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __ilshift__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __imod__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Return self<=value.
	**/
	public function __le__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return len(self).
	**/
	public function __len__():Dynamic;
	public function __long__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __lshift__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __matmul__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __mod__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __module__ : Dynamic;
	public function __mul__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self!=value.
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
		positive() -> Tensor
		
		See :func:`torch.positive`
	**/
	public function __pos__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __pow__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __radd__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __rand__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __rdiv__(other:Dynamic):Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce__():Dynamic;
	/**
		Helper for pickle.
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
	public function __rlshift__(other:Dynamic):Dynamic;
	public function __rmatmul__(other:Dynamic):Dynamic;
	public function __rmod__(other:Dynamic):Dynamic;
	public function __rmul__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __ror__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __rpow__(other:Dynamic):Dynamic;
	public function __rrshift__(other:Dynamic):Dynamic;
	public function __rshift__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __rsub__(other:Dynamic):Dynamic;
	public function __rtruediv__(other:Dynamic):Dynamic;
	public function __rxor__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Size of object in memory, in bytes.
	**/
	public function __sizeof__():Dynamic;
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
	/**
		This __torch_function__ implementation wraps subclasses such that
		methods called on subclasses return a subclass instance instead of
		a ``torch.Tensor`` instance.
		
		One corollary to this is that you need coverage for torch.Tensor
		methods if implementing __torch_function__ for subclasses.
		
		We recommend always calling ``super().__torch_function__`` as the base
		case when doing the above.
		
		While not mandatory, we recommend making `__torch_function__` a classmethod.
	**/
	static public function __torch_function__(func:Dynamic, types:Dynamic, ?args:Dynamic, ?kwargs:Dynamic):Dynamic;
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
	public function _conj(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function _conj_physical(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function _dimI(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function _dimV(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function _fix_weakref(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var _grad : Dynamic;
	public var _grad_fn : Dynamic;
	public function _indices(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function _is_view(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _make_subclass(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function _neg_view(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function _nnz(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var _python_dispatch : Dynamic;
	public function _reduce_ex_internal(proto:Dynamic):Dynamic;
	public function _update_names(names:Dynamic, inplace:Dynamic):Dynamic;
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
		absolute() -> Tensor
		
		Alias for :func:`abs`
	**/
	public function absolute(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		absolute_() -> Tensor
		
		In-place version of :meth:`~Tensor.absolute`
		Alias for :func:`abs_`
	**/
	public function absolute_(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		acosh() -> Tensor
		
		See :func:`torch.acosh`
	**/
	public function acosh(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		acosh_() -> Tensor
		
		In-place version of :meth:`~Tensor.acosh`
	**/
	public function acosh_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		add(other, *, alpha=1) -> Tensor
		
		Add a scalar or tensor to :attr:`self` tensor. If both :attr:`alpha`
		and :attr:`other` are specified, each element of :attr:`other` is scaled by
		:attr:`alpha` before being used.
		
		When :attr:`other` is a tensor, the shape of :attr:`other` must be
		:ref:`broadcastable <broadcasting-semantics>` with the shape of the underlying
		tensor
		
		See :func:`torch.add`
	**/
	public function add(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		add_(other, *, alpha=1) -> Tensor
		
		In-place version of :meth:`~Tensor.add`
	**/
	public function add_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		addbmm(batch1, batch2, *, beta=1, alpha=1) -> Tensor
		
		See :func:`torch.addbmm`
	**/
	public function addbmm(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		addbmm_(batch1, batch2, *, beta=1, alpha=1) -> Tensor
		
		In-place version of :meth:`~Tensor.addbmm`
	**/
	public function addbmm_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		addcdiv(tensor1, tensor2, *, value=1) -> Tensor
		
		See :func:`torch.addcdiv`
	**/
	public function addcdiv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		addcdiv_(tensor1, tensor2, *, value=1) -> Tensor
		
		In-place version of :meth:`~Tensor.addcdiv`
	**/
	public function addcdiv_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		addcmul(tensor1, tensor2, *, value=1) -> Tensor
		
		See :func:`torch.addcmul`
	**/
	public function addcmul(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		addcmul_(tensor1, tensor2, *, value=1) -> Tensor
		
		In-place version of :meth:`~Tensor.addcmul`
	**/
	public function addcmul_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		addmm(mat1, mat2, *, beta=1, alpha=1) -> Tensor
		
		See :func:`torch.addmm`
	**/
	public function addmm(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		addmm_(mat1, mat2, *, beta=1, alpha=1) -> Tensor
		
		In-place version of :meth:`~Tensor.addmm`
	**/
	public function addmm_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		addmv(mat, vec, *, beta=1, alpha=1) -> Tensor
		
		See :func:`torch.addmv`
	**/
	public function addmv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		addmv_(mat, vec, *, beta=1, alpha=1) -> Tensor
		
		In-place version of :meth:`~Tensor.addmv`
	**/
	public function addmv_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		addr(vec1, vec2, *, beta=1, alpha=1) -> Tensor
		
		See :func:`torch.addr`
	**/
	public function addr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		addr_(vec1, vec2, *, beta=1, alpha=1) -> Tensor
		
		In-place version of :meth:`~Tensor.addr`
	**/
	public function addr_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		align_as(other) -> Tensor
		
		Permutes the dimensions of the :attr:`self` tensor to match the dimension order
		in the :attr:`other` tensor, adding size-one dims for any new names.
		
		This operation is useful for explicit broadcasting by names (see examples).
		
		All of the dims of :attr:`self` must be named in order to use this method.
		The resulting tensor is a view on the original tensor.
		
		All dimension names of :attr:`self` must be present in ``other.names``.
		:attr:`other` may contain named dimensions that are not in ``self.names``;
		the output tensor has a size-one dimension for each of those new names.
		
		To align a tensor to a specific order, use :meth:`~Tensor.align_to`.
		
		Examples::
		
		    # Example 1: Applying a mask
		    >>> mask = torch.randint(2, [127, 128], dtype=torch.bool).refine_names('W', 'H')
		    >>> imgs = torch.randn(32, 128, 127, 3, names=('N', 'H', 'W', 'C'))
		    >>> imgs.masked_fill_(mask.align_as(imgs), 0)
		
		
		    # Example 2: Applying a per-channel-scale
		    >>> def scale_channels(input, scale):
		    >>>    scale = scale.refine_names('C')
		    >>>    return input * scale.align_as(input)
		
		    >>> num_channels = 3
		    >>> scale = torch.randn(num_channels, names=('C',))
		    >>> imgs = torch.rand(32, 128, 128, num_channels, names=('N', 'H', 'W', 'C'))
		    >>> more_imgs = torch.rand(32, num_channels, 128, 128, names=('N', 'C', 'H', 'W'))
		    >>> videos = torch.randn(3, num_channels, 128, 128, 128, names=('N', 'C', 'H', 'W', 'D'))
		
		    # scale_channels is agnostic to the dimension order of the input
		    >>> scale_channels(imgs, scale)
		    >>> scale_channels(more_imgs, scale)
		    >>> scale_channels(videos, scale)
		
		.. warning::
		    The named tensor API is experimental and subject to change.
	**/
	public function align_as(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Permutes the dimensions of the :attr:`self` tensor to match the order
		specified in :attr:`names`, adding size-one dims for any new names.
		
		All of the dims of :attr:`self` must be named in order to use this method.
		The resulting tensor is a view on the original tensor.
		
		All dimension names of :attr:`self` must be present in :attr:`names`.
		:attr:`names` may contain additional names that are not in ``self.names``;
		the output tensor has a size-one dimension for each of those new names.
		
		:attr:`names` may contain up to one Ellipsis (``...``).
		The Ellipsis is expanded to be equal to all dimension names of :attr:`self`
		that are not mentioned in :attr:`names`, in the order that they appear
		in :attr:`self`.
		
		Python 2 does not support Ellipsis but one may use a string literal
		instead (``'...'``).
		
		Args:
		    names (iterable of str): The desired dimension ordering of the
		        output tensor. May contain up to one Ellipsis that is expanded
		        to all unmentioned dim names of :attr:`self`.
		
		Examples::
		
		    >>> tensor = torch.randn(2, 2, 2, 2, 2, 2)
		    >>> named_tensor = tensor.refine_names('A', 'B', 'C', 'D', 'E', 'F')
		
		    # Move the F and E dims to the front while keeping the rest in order
		    >>> named_tensor.align_to('F', 'E', ...)
		
		.. warning::
		    The named tensor API is experimental and subject to change.
	**/
	public function align_to(?names:python.VarArgs<Dynamic>):Dynamic;
	/**
		all(dim=None, keepdim=False) -> Tensor
		
		See :func:`torch.all`
	**/
	public function all(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		allclose(other, rtol=1e-05, atol=1e-08, equal_nan=False) -> Tensor
		
		See :func:`torch.allclose`
	**/
	public function allclose(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		amax(dim=None, keepdim=False) -> Tensor
		
		See :func:`torch.amax`
	**/
	public function amax(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		amin(dim=None, keepdim=False) -> Tensor
		
		See :func:`torch.amin`
	**/
	public function amin(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		aminmax(*, dim=None, keepdim=False) -> (Tensor min, Tensor max)
		
		See :func:`torch.aminmax`
	**/
	public function aminmax(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		angle() -> Tensor
		
		See :func:`torch.angle`
	**/
	public function angle(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		any(dim=None, keepdim=False) -> Tensor
		
		See :func:`torch.any`
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
		arccos() -> Tensor
		
		See :func:`torch.arccos`
	**/
	public function arccos(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		arccos_() -> Tensor
		
		In-place version of :meth:`~Tensor.arccos`
	**/
	public function arccos_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		acosh() -> Tensor
		
		See :func:`torch.arccosh`
	**/
	public function arccosh(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		acosh_() -> Tensor
		
		In-place version of :meth:`~Tensor.arccosh`
	**/
	public function arccosh_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		arcsin() -> Tensor
		
		See :func:`torch.arcsin`
	**/
	public function arcsin(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		arcsin_() -> Tensor
		
		In-place version of :meth:`~Tensor.arcsin`
	**/
	public function arcsin_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		arcsinh() -> Tensor
		
		See :func:`torch.arcsinh`
	**/
	public function arcsinh(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		arcsinh_() -> Tensor
		
		In-place version of :meth:`~Tensor.arcsinh`
	**/
	public function arcsinh_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		arctan() -> Tensor
		
		See :func:`torch.arctan`
	**/
	public function arctan(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		arctan_() -> Tensor
		
		In-place version of :meth:`~Tensor.arctan`
	**/
	public function arctan_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		arctanh() -> Tensor
		
		See :func:`torch.arctanh`
	**/
	public function arctanh(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		arctanh_(other) -> Tensor
		
		In-place version of :meth:`~Tensor.arctanh`
	**/
	public function arctanh_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		argmax(dim=None, keepdim=False) -> LongTensor
		
		See :func:`torch.argmax`
	**/
	public function argmax(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		argmin(dim=None, keepdim=False) -> LongTensor
		
		See :func:`torch.argmin`
	**/
	public function argmin(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		argsort(dim=-1, descending=False) -> LongTensor
		
		See :func:`torch.argsort`
	**/
	public function argsort(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		as_strided(size, stride, storage_offset=0) -> Tensor
		
		See :func:`torch.as_strided`
	**/
	public function as_strided(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function as_strided_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		as_subclass(cls) -> Tensor
		
		Makes a ``cls`` instance with the same data pointer as ``self``. Changes
		in the output mirror changes in ``self``, and the output stays attached
		to the autograd graph. ``cls`` must be a subclass of ``Tensor``.
	**/
	public function as_subclass(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		asinh() -> Tensor
		
		See :func:`torch.asinh`
	**/
	public function asinh(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		asinh_() -> Tensor
		
		In-place version of :meth:`~Tensor.asinh`
	**/
	public function asinh_(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		atanh() -> Tensor
		
		See :func:`torch.atanh`
	**/
	public function atanh(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		atanh_(other) -> Tensor
		
		In-place version of :meth:`~Tensor.atanh`
	**/
	public function atanh_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Computes the gradient of current tensor w.r.t. graph leaves.
		
		The graph is differentiated using the chain rule. If the tensor is
		non-scalar (i.e. its data has more than one element) and requires
		gradient, the function additionally requires specifying ``gradient``.
		It should be a tensor of matching type and location, that contains
		the gradient of the differentiated function w.r.t. ``self``.
		
		This function accumulates gradients in the leaves - you might need to zero
		``.grad`` attributes or set them to ``None`` before calling it.
		See :ref:`Default gradient layouts<default-grad-layouts>`
		for details on the memory layout of accumulated gradients.
		
		.. note::
		
		    If you run any forward ops, create ``gradient``, and/or call ``backward``
		    in a user-specified CUDA stream context, see
		    :ref:`Stream semantics of backward passes<bwd-cuda-stream-semantics>`.
		
		.. note::
		
		    When ``inputs`` are provided and a given input is not a leaf,
		    the current implementation will call its grad_fn (though it is not strictly needed to get this gradients).
		    It is an implementation detail on which the user should not rely.
		    See https://github.com/pytorch/pytorch/pull/60521#issuecomment-867061780 for more details.
		
		Args:
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
		    inputs (sequence of Tensor): Inputs w.r.t. which the gradient will be
		        accumulated into ``.grad``. All other Tensors will be ignored. If not
		        provided, the gradient is accumulated into all the leaf Tensors that were
		        used to compute the attr::tensors.
	**/
	public function backward(?gradient:Dynamic, ?retain_graph:Dynamic, ?create_graph:Dynamic, ?inputs:Dynamic):Dynamic;
	/**
		baddbmm(batch1, batch2, *, beta=1, alpha=1) -> Tensor
		
		See :func:`torch.baddbmm`
	**/
	public function baddbmm(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		baddbmm_(batch1, batch2, *, beta=1, alpha=1) -> Tensor
		
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
		bernoulli_(p=0.5, *, generator=None) -> Tensor
		
		Fills each location of :attr:`self` with an independent sample from
		:math:`\text{Bernoulli}(\texttt{p})`. :attr:`self` can have integral
		``dtype``.
		
		:attr:`p` should either be a scalar or tensor containing probabilities to be
		used for drawing the binary random number.
		
		If it is a tensor, the :math:`\text{i}^{th}` element of :attr:`self` tensor
		will be set to a value sampled from
		:math:`\text{Bernoulli}(\texttt{p\_tensor[i]})`. In this case `p` must have
		floating point ``dtype``.
		
		See also :meth:`~Tensor.bernoulli` and :func:`torch.bernoulli`
	**/
	public function bernoulli_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		bfloat16(memory_format=torch.preserve_format) -> Tensor
		``self.bfloat16()`` is equivalent to ``self.to(torch.bfloat16)``. See :func:`to`.
		
		Args:
		    memory_format (:class:`torch.memory_format`, optional): the desired memory format of
		        returned Tensor. Default: ``torch.preserve_format``.
	**/
	public function bfloat16(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		bincount(weights=None, minlength=0) -> Tensor
		
		See :func:`torch.bincount`
	**/
	public function bincount(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		bitwise_and() -> Tensor
		
		See :func:`torch.bitwise_and`
	**/
	public function bitwise_and(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		bitwise_and_() -> Tensor
		
		In-place version of :meth:`~Tensor.bitwise_and`
	**/
	public function bitwise_and_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		bitwise_left_shift(other) -> Tensor
		
		See :func:`torch.bitwise_left_shift`
	**/
	public function bitwise_left_shift(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		bitwise_left_shift_(other) -> Tensor
		
		In-place version of :meth:`~Tensor.bitwise_left_shift`
	**/
	public function bitwise_left_shift_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		bitwise_not() -> Tensor
		
		See :func:`torch.bitwise_not`
	**/
	public function bitwise_not(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		bitwise_not_() -> Tensor
		
		In-place version of :meth:`~Tensor.bitwise_not`
	**/
	public function bitwise_not_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		bitwise_or() -> Tensor
		
		See :func:`torch.bitwise_or`
	**/
	public function bitwise_or(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		bitwise_or_() -> Tensor
		
		In-place version of :meth:`~Tensor.bitwise_or`
	**/
	public function bitwise_or_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		bitwise_right_shift(other) -> Tensor
		
		See :func:`torch.bitwise_right_shift`
	**/
	public function bitwise_right_shift(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		bitwise_right_shift_(other) -> Tensor
		
		In-place version of :meth:`~Tensor.bitwise_right_shift`
	**/
	public function bitwise_right_shift_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		bitwise_xor() -> Tensor
		
		See :func:`torch.bitwise_xor`
	**/
	public function bitwise_xor(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		bitwise_xor_() -> Tensor
		
		In-place version of :meth:`~Tensor.bitwise_xor`
	**/
	public function bitwise_xor_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		bmm(batch2) -> Tensor
		
		See :func:`torch.bmm`
	**/
	public function bmm(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		bool(memory_format=torch.preserve_format) -> Tensor
		
		``self.bool()`` is equivalent to ``self.to(torch.bool)``. See :func:`to`.
		
		Args:
		    memory_format (:class:`torch.memory_format`, optional): the desired memory format of
		        returned Tensor. Default: ``torch.preserve_format``.
	**/
	public function bool(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		broadcast_to(shape) -> Tensor
		
		See :func:`torch.broadcast_to`.
	**/
	public function broadcast_to(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		byte(memory_format=torch.preserve_format) -> Tensor
		
		``self.byte()`` is equivalent to ``self.to(torch.uint8)``. See :func:`to`.
		
		Args:
		    memory_format (:class:`torch.memory_format`, optional): the desired memory format of
		        returned Tensor. Default: ``torch.preserve_format``.
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
		cdouble(memory_format=torch.preserve_format) -> Tensor
		
		``self.cdouble()`` is equivalent to ``self.to(torch.complex128)``. See :func:`to`.
		
		Args:
		    memory_format (:class:`torch.memory_format`, optional): the desired memory format of
		        returned Tensor. Default: ``torch.preserve_format``.
	**/
	public function cdouble(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		cfloat(memory_format=torch.preserve_format) -> Tensor
		
		``self.cfloat()`` is equivalent to ``self.to(torch.complex64)``. See :func:`to`.
		
		Args:
		    memory_format (:class:`torch.memory_format`, optional): the desired memory format of
		        returned Tensor. Default: ``torch.preserve_format``.
	**/
	public function cfloat(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		char(memory_format=torch.preserve_format) -> Tensor
		
		``self.char()`` is equivalent to ``self.to(torch.int8)``. See :func:`to`.
		
		Args:
		    memory_format (:class:`torch.memory_format`, optional): the desired memory format of
		        returned Tensor. Default: ``torch.preserve_format``.
	**/
	public function char(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		cholesky(upper=False) -> Tensor
		
		See :func:`torch.cholesky`
	**/
	public function cholesky(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		cholesky_inverse(upper=False) -> Tensor
		
		See :func:`torch.cholesky_inverse`
	**/
	public function cholesky_inverse(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		cholesky_solve(input2, upper=False) -> Tensor
		
		See :func:`torch.cholesky_solve`
	**/
	public function cholesky_solve(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		chunk(chunks, dim=0) -> List of Tensors
		
		See :func:`torch.chunk`
	**/
	public function chunk(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		clamp(min=None, max=None) -> Tensor
		
		See :func:`torch.clamp`
	**/
	public function clamp(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		clamp_(min=None, max=None) -> Tensor
		
		In-place version of :meth:`~Tensor.clamp`
	**/
	public function clamp_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function clamp_max(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function clamp_max_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function clamp_min(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function clamp_min_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		clip(min=None, max=None) -> Tensor
		
		Alias for :meth:`~Tensor.clamp`.
	**/
	public function clip(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		clip_(min=None, max=None) -> Tensor
		
		Alias for :meth:`~Tensor.clamp_`.
	**/
	public function clip_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		clone(*, memory_format=torch.preserve_format) -> Tensor
		
		See :func:`torch.clone`
	**/
	public function clone(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		coalesce() -> Tensor
		
		Returns a coalesced copy of :attr:`self` if :attr:`self` is an
		:ref:`uncoalesced tensor <sparse-uncoalesced-coo-docs>`.
		
		Returns :attr:`self` if :attr:`self` is a coalesced tensor.
		
		.. warning::
		  Throws an error if :attr:`self` is not a sparse COO tensor.
	**/
	public function coalesce(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		col_indices() -> IntTensor
		
		Returns the tensor containing the column indices of the :attr:`self`
		tensor when :attr:`self` is a sparse CSR tensor of layout ``sparse_csr``.
		The ``col_indices`` tensor is strictly of shape (:attr:`self`.nnz())
		and of type ``int32`` or ``int64``.  When using MKL routines such as sparse
		matrix multiplication, it is necessary to use ``int32`` indexing in order
		to avoid downcasting and potentially losing information.
		
		Example::
		    >>> csr = torch.eye(5,5).to_sparse_csr()
		    >>> csr.col_indices()
		    tensor([0, 1, 2, 3, 4], dtype=torch.int32)
	**/
	public function col_indices(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		conj() -> Tensor
		
		See :func:`torch.conj`
	**/
	public function conj(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		conj_physical() -> Tensor
		
		See :func:`torch.conj_physical`
	**/
	public function conj_physical(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		conj_physical_() -> Tensor
		
		In-place version of :meth:`~Tensor.conj_physical`
	**/
	public function conj_physical_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		contiguous(memory_format=torch.contiguous_format) -> Tensor
		
		Returns a contiguous in memory tensor containing the same data as :attr:`self` tensor. If
		:attr:`self` tensor is already in the specified memory format, this function returns the
		:attr:`self` tensor.
		
		Args:
		    memory_format (:class:`torch.memory_format`, optional): the desired memory format of
		        returned Tensor. Default: ``torch.contiguous_format``.
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
		copysign(other) -> Tensor
		
		See :func:`torch.copysign`
	**/
	public function copysign(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		copysign_(other) -> Tensor
		
		In-place version of :meth:`~Tensor.copysign`
	**/
	public function copysign_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		corrcoef() -> Tensor
		
		See :func:`torch.corrcoef`
	**/
	public function corrcoef(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		count_nonzero(dim=None) -> Tensor
		
		See :func:`torch.count_nonzero`
	**/
	public function count_nonzero(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		cov(*, correction=1, fweights=None, aweights=None) -> Tensor
		
		See :func:`torch.cov`
	**/
	public function cov(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		cpu(memory_format=torch.preserve_format) -> Tensor
		
		Returns a copy of this object in CPU memory.
		
		If this object is already in CPU memory and on the correct device,
		then no copy is performed and the original object is returned.
		
		Args:
		    memory_format (:class:`torch.memory_format`, optional): the desired memory format of
		        returned Tensor. Default: ``torch.preserve_format``.
	**/
	public function cpu(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		cross(other, dim=-1) -> Tensor
		
		See :func:`torch.cross`
	**/
	public function cross(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		crow_indices() -> IntTensor
		
		Returns the tensor containing the compressed row indices of the :attr:`self`
		tensor when :attr:`self` is a sparse CSR tensor of layout ``sparse_csr``.
		The ``crow_indices`` tensor is strictly of shape (:attr:`self`.size(0) + 1)
		and of type ``int32`` or ``int64``. When using MKL routines such as sparse
		matrix multiplication, it is necessary to use ``int32`` indexing in order
		to avoid downcasting and potentially losing information.
		
		Example::
		    >>> csr = torch.eye(5,5).to_sparse_csr()
		    >>> csr.crow_indices()
		    tensor([0, 1, 2, 3, 4, 5], dtype=torch.int32)
	**/
	public function crow_indices(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		cuda(device=None, non_blocking=False, memory_format=torch.preserve_format) -> Tensor
		
		Returns a copy of this object in CUDA memory.
		
		If this object is already in CUDA memory and on the correct device,
		then no copy is performed and the original object is returned.
		
		Args:
		    device (:class:`torch.device`): The destination GPU device.
		        Defaults to the current CUDA device.
		    non_blocking (bool): If ``True`` and the source is in pinned memory,
		        the copy will be asynchronous with respect to the host.
		        Otherwise, the argument has no effect. Default: ``False``.
		    memory_format (:class:`torch.memory_format`, optional): the desired memory format of
		        returned Tensor. Default: ``torch.preserve_format``.
	**/
	public function cuda(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		cummax(dim) -> (Tensor, Tensor)
		
		See :func:`torch.cummax`
	**/
	public function cummax(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		cummin(dim) -> (Tensor, Tensor)
		
		See :func:`torch.cummin`
	**/
	public function cummin(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		cumprod(dim, dtype=None) -> Tensor
		
		See :func:`torch.cumprod`
	**/
	public function cumprod(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		cumprod_(dim, dtype=None) -> Tensor
		
		In-place version of :meth:`~Tensor.cumprod`
	**/
	public function cumprod_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		cumsum(dim, dtype=None) -> Tensor
		
		See :func:`torch.cumsum`
	**/
	public function cumsum(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		cumsum_(dim, dtype=None) -> Tensor
		
		In-place version of :meth:`~Tensor.cumsum`
	**/
	public function cumsum_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var data : Dynamic;
	/**
		data_ptr() -> int
		
		Returns the address of the first element of :attr:`self` tensor.
	**/
	public function data_ptr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		deg2rad() -> Tensor
		
		See :func:`torch.deg2rad`
	**/
	public function deg2rad(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		deg2rad_() -> Tensor
		
		In-place version of :meth:`~Tensor.deg2rad`
	**/
	public function deg2rad_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		dense_dim() -> int
		
		Return the number of dense dimensions in a :ref:`sparse tensor <sparse-docs>` :attr:`self`.
		
		.. warning::
		  Throws an error if :attr:`self` is not a sparse tensor.
		
		See also :meth:`Tensor.sparse_dim` and :ref:`hybrid tensors <sparse-hybrid-coo-docs>`.
	**/
	public function dense_dim(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		dequantize() -> Tensor
		
		Given a quantized Tensor, dequantize it and return the dequantized float Tensor.
	**/
	public function dequantize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		det() -> Tensor
		
		See :func:`torch.det`
	**/
	public function det(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Returns a new Tensor, detached from the current graph.
		
		The result will never require gradient.
		
		This method also affects forward mode AD gradients and the result will never
		have forward mode AD gradients.
		
		.. note::
		
		  Returned Tensor shares the same storage with the original one.
		  In-place modifications on either of them will be seen, and may trigger
		  errors in correctness checks.
		  IMPORTANT NOTE: Previously, in-place size / stride / storage changes
		  (such as `resize_` / `resize_as_` / `set_` / `transpose_`) to the returned tensor
		  also update the original tensor. Now, these in-place changes will not update the
		  original tensor anymore, and will instead trigger an error.
		  For sparse tensors:
		  In-place indices / values changes (such as `zero_` / `copy_` / `add_`) to the
		  returned tensor will not update the original tensor anymore, and will instead
		  trigger an error.
	**/
	public function detach(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Detaches the Tensor from the graph that created it, making it a leaf.
		Views cannot be detached in-place.
		
		This method also affects forward mode AD gradients and the result will never
		have forward mode AD gradients.
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
		diagflat(offset=0) -> Tensor
		
		See :func:`torch.diagflat`
	**/
	public function diagflat(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		diagonal(offset=0, dim1=0, dim2=1) -> Tensor
		
		See :func:`torch.diagonal`
	**/
	public function diagonal(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		diff(n=1, dim=-1, prepend=None, append=None) -> Tensor
		
		See :func:`torch.diff`
	**/
	public function diff(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		div(value, *, rounding_mode=None) -> Tensor
		
		See :func:`torch.div`
	**/
	public function div(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		div_(value, *, rounding_mode=None) -> Tensor
		
		In-place version of :meth:`~Tensor.div`
	**/
	public function div_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		divide(value, *, rounding_mode=None) -> Tensor
		
		See :func:`torch.divide`
	**/
	public function divide(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		divide_(value, *, rounding_mode=None) -> Tensor
		
		In-place version of :meth:`~Tensor.divide`
	**/
	public function divide_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		dot(other) -> Tensor
		
		See :func:`torch.dot`
	**/
	public function dot(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		double(memory_format=torch.preserve_format) -> Tensor
		
		``self.double()`` is equivalent to ``self.to(torch.float64)``. See :func:`to`.
		
		Args:
		    memory_format (:class:`torch.memory_format`, optional): the desired memory format of
		        returned Tensor. Default: ``torch.preserve_format``.
	**/
	public function double(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		dsplit(split_size_or_sections) -> List of Tensors
		
		See :func:`torch.dsplit`
	**/
	public function dsplit(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var dtype : Dynamic;
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
		exp2() -> Tensor
		
		See :func:`torch.exp2`
	**/
	public function exp2(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		exp2_() -> Tensor
		
		In-place version of :meth:`~Tensor.exp2`
	**/
	public function exp2_(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		
		.. warning::
		
		    More than one element of an expanded tensor may refer to a single
		    memory location. As a result, in-place operations (especially ones that
		    are vectorized) may result in incorrect behavior. If you need to write
		    to the tensors, please clone them first.
		
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
		fill_(value) -> Tensor
		
		Fills :attr:`self` tensor with the specified value.
	**/
	public function fill_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		fill_diagonal_(fill_value, wrap=False) -> Tensor
		
		Fill the main diagonal of a tensor that has at least 2-dimensions.
		When dims>2, all dimensions of input must be of equal length.
		This function modifies the input tensor in-place, and returns the input tensor.
		
		Arguments:
		    fill_value (Scalar): the fill value
		    wrap (bool): the diagonal 'wrapped' after N columns for tall matrices.
		
		Example::
		
		    >>> a = torch.zeros(3, 3)
		    >>> a.fill_diagonal_(5)
		    tensor([[5., 0., 0.],
		            [0., 5., 0.],
		            [0., 0., 5.]])
		    >>> b = torch.zeros(7, 3)
		    >>> b.fill_diagonal_(5)
		    tensor([[5., 0., 0.],
		            [0., 5., 0.],
		            [0., 0., 5.],
		            [0., 0., 0.],
		            [0., 0., 0.],
		            [0., 0., 0.],
		            [0., 0., 0.]])
		    >>> c = torch.zeros(7, 3)
		    >>> c.fill_diagonal_(5, wrap=True)
		    tensor([[5., 0., 0.],
		            [0., 5., 0.],
		            [0., 0., 5.],
		            [0., 0., 0.],
		            [5., 0., 0.],
		            [0., 5., 0.],
		            [0., 0., 5.]])
	**/
	public function fill_diagonal_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		fix() -> Tensor
		
		See :func:`torch.fix`.
	**/
	public function fix(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		fix_() -> Tensor
		
		In-place version of :meth:`~Tensor.fix`
	**/
	public function fix_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		flatten(start_dim=0, end_dim=-1) -> Tensor
		
		See :func:`torch.flatten`
	**/
	public function flatten(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		flip(dims) -> Tensor
		
		See :func:`torch.flip`
	**/
	public function flip(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		fliplr() -> Tensor
		
		See :func:`torch.fliplr`
	**/
	public function fliplr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		flipud() -> Tensor
		
		See :func:`torch.flipud`
	**/
	public function flipud(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		float(memory_format=torch.preserve_format) -> Tensor
		
		``self.float()`` is equivalent to ``self.to(torch.float32)``. See :func:`to`.
		
		Args:
		    memory_format (:class:`torch.memory_format`, optional): the desired memory format of
		        returned Tensor. Default: ``torch.preserve_format``.
	**/
	public function float(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		float_power(exponent) -> Tensor
		
		See :func:`torch.float_power`
	**/
	public function float_power(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		float_power_(exponent) -> Tensor
		
		In-place version of :meth:`~Tensor.float_power`
	**/
	public function float_power_(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		floor_divide(value) -> Tensor
		
		See :func:`torch.floor_divide`
	**/
	public function floor_divide(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		floor_divide_(value) -> Tensor
		
		In-place version of :meth:`~Tensor.floor_divide`
	**/
	public function floor_divide_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		fmax(other) -> Tensor
		
		See :func:`torch.fmax`
	**/
	public function fmax(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		fmin(other) -> Tensor
		
		See :func:`torch.fmin`
	**/
	public function fmin(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		frexp(input) -> (Tensor mantissa, Tensor exponent)
		
		See :func:`torch.frexp`
	**/
	public function frexp(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		gather(dim, index) -> Tensor
		
		See :func:`torch.gather`
	**/
	public function gather(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		gcd(other) -> Tensor
		
		See :func:`torch.gcd`
	**/
	public function gcd(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		gcd_(other) -> Tensor
		
		In-place version of :meth:`~Tensor.gcd`
	**/
	public function gcd_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ge(other) -> Tensor
		
		See :func:`torch.ge`.
	**/
	public function ge(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ge_(other) -> Tensor
		
		In-place version of :meth:`~Tensor.ge`.
	**/
	public function ge_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		geometric_(p, *, generator=None) -> Tensor
		
		Fills :attr:`self` tensor with elements drawn from the geometric distribution:
		
		.. math::
		
		    f(X=k) = p^{k - 1} (1 - p)
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
		greater(other) -> Tensor
		
		See :func:`torch.greater`.
	**/
	public function greater(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		greater_(other) -> Tensor
		
		In-place version of :meth:`~Tensor.greater`.
	**/
	public function greater_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		greater_equal(other) -> Tensor
		
		See :func:`torch.greater_equal`.
	**/
	public function greater_equal(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		greater_equal_(other) -> Tensor
		
		In-place version of :meth:`~Tensor.greater_equal`.
	**/
	public function greater_equal_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		gt(other) -> Tensor
		
		See :func:`torch.gt`.
	**/
	public function gt(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		gt_(other) -> Tensor
		
		In-place version of :meth:`~Tensor.gt`.
	**/
	public function gt_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		half(memory_format=torch.preserve_format) -> Tensor
		
		``self.half()`` is equivalent to ``self.to(torch.float16)``. See :func:`to`.
		
		Args:
		    memory_format (:class:`torch.memory_format`, optional): the desired memory format of
		        returned Tensor. Default: ``torch.preserve_format``.
	**/
	public function half(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		hardshrink(lambd=0.5) -> Tensor
		
		See :func:`torch.nn.functional.hardshrink`
	**/
	public function hardshrink(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Is ``True`` if any of this tensor's dimensions are named. Otherwise, is ``False``.
	**/
	public function has_names(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		heaviside(values) -> Tensor
		
		See :func:`torch.heaviside`
	**/
	public function heaviside(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		heaviside_(values) -> Tensor
		
		In-place version of :meth:`~Tensor.heaviside`
	**/
	public function heaviside_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		histc(bins=100, min=0, max=0) -> Tensor
		
		See :func:`torch.histc`
	**/
	public function histc(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		histogram(input, bins, *, range=None, weight=None, density=False) -> (Tensor, Tensor)
		
		See :func:`torch.histogram`
	**/
	public function histogram(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		hsplit(split_size_or_sections) -> List of Tensors
		
		See :func:`torch.hsplit`
	**/
	public function hsplit(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		hypot(other) -> Tensor
		
		See :func:`torch.hypot`
	**/
	public function hypot(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		hypot_(other) -> Tensor
		
		In-place version of :meth:`~Tensor.hypot`
	**/
	public function hypot_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		i0() -> Tensor
		
		See :func:`torch.i0`
	**/
	public function i0(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		i0_() -> Tensor
		
		In-place version of :meth:`~Tensor.i0`
	**/
	public function i0_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		igamma(other) -> Tensor
		
		See :func:`torch.igamma`
	**/
	public function igamma(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		igamma_(other) -> Tensor
		
		In-place version of :meth:`~Tensor.igamma`
	**/
	public function igamma_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		igammac(other) -> Tensor
		See :func:`torch.igammac`
	**/
	public function igammac(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		igammac_(other) -> Tensor
		In-place version of :meth:`~Tensor.igammac`
	**/
	public function igammac_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Returns a new tensor containing imaginary values of the :attr:`self` tensor.
		The returned tensor and :attr:`self` share the same underlying storage.
		
		.. warning::
		    :func:`imag` is only supported for tensors with complex dtypes.
		
		Example::
		    >>> x=torch.randn(4, dtype=torch.cfloat)
		    >>> x
		    tensor([(0.3100+0.3553j), (-0.5445-0.7896j), (-1.6492-0.0633j), (-0.0638-0.8119j)])
		    >>> x.imag
		    tensor([ 0.3553, -0.7896, -0.0633, -0.8119])
	**/
	public var imag : Dynamic;
	/**
		index_add(dim, index, tensor2) -> Tensor
		
		Out-of-place version of :meth:`torch.Tensor.index_add_`.
	**/
	public function index_add(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		index_add_(dim, index, tensor, *, alpha=1) -> Tensor
		
		Accumulate the elements of :attr:`alpha` times :attr:`tensor` into the :attr:`self`
		tensor by adding to the indices in the order given in :attr:`index`. For example,
		if ``dim == 0``, ``index[i] == j``, and ``alpha=-1``, then the ``i``\ th row of
		:attr:`tensor` is subtracted from the ``j``\ th row of :attr:`self`.
		
		The :attr:`dim`\ th dimension of :attr:`tensor` must have the same size as the
		length of :attr:`index` (which must be a vector), and all other dimensions must
		match :attr:`self`, or an error will be raised.
		
		Note:
		    This operation may behave nondeterministically when given tensors on a CUDA device. See :doc:`/notes/randomness` for more information.
		
		Args:
		    dim (int): dimension along which to index
		    index (IntTensor or LongTensor): indices of :attr:`tensor` to select from
		    tensor (Tensor): the tensor containing values to add
		
		Keyword args:
		    alpha (Number): the scalar multiplier for :attr:`tensor`
		
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
		    >>> x.index_add_(0, index, t, alpha=-1)
		    tensor([[  1.,   1.,   1.],
		            [  1.,   1.,   1.],
		            [  1.,   1.,   1.],
		            [  1.,   1.,   1.],
		            [  1.,   1.,   1.]])
	**/
	public function index_add_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		index_copy(dim, index, tensor2) -> Tensor
		
		Out-of-place version of :meth:`torch.Tensor.index_copy_`.
	**/
	public function index_copy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		index_copy_(dim, index, tensor) -> Tensor
		
		Copies the elements of :attr:`tensor` into the :attr:`self` tensor by selecting
		the indices in the order given in :attr:`index`. For example, if ``dim == 0``
		and ``index[i] == j``, then the ``i``\ th row of :attr:`tensor` is copied to the
		``j``\ th row of :attr:`self`.
		
		The :attr:`dim`\ th dimension of :attr:`tensor` must have the same size as the
		length of :attr:`index` (which must be a vector), and all other dimensions must
		match :attr:`self`, or an error will be raised.
		
		.. note::
		    If :attr:`index` contains duplicate entries, multiple elements from
		    :attr:`tensor` will be copied to the same index of :attr:`self`. The result
		    is nondeterministic since it depends on which copy occurs last.
		
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
		index_fill(dim, index, value) -> Tensor
		
		Out-of-place version of :meth:`torch.Tensor.index_fill_`.
	**/
	public function index_fill(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		index_fill_(dim, index, value) -> Tensor
		
		Fills the elements of the :attr:`self` tensor with value :attr:`value` by
		selecting the indices in the order given in :attr:`index`.
		
		Args:
		    dim (int): dimension along which to index
		    index (LongTensor): indices of :attr:`self` tensor to fill in
		    value (float): the value to fill with
		
		Example::
		    >>> x = torch.tensor([[1, 2, 3], [4, 5, 6], [7, 8, 9]], dtype=torch.float)
		    >>> index = torch.tensor([0, 2])
		    >>> x.index_fill_(1, index, -1)
		    tensor([[-1.,  2., -1.],
		            [-1.,  5., -1.],
		            [-1.,  8., -1.]])
	**/
	public function index_fill_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		index_put(indices, values, accumulate=False) -> Tensor
		
		Out-place version of :meth:`~Tensor.index_put_`.
	**/
	public function index_put(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		index_put_(indices, values, accumulate=False) -> Tensor
		
		Puts values from the tensor :attr:`values` into the tensor :attr:`self` using
		the indices specified in :attr:`indices` (which is a tuple of Tensors). The
		expression ``tensor.index_put_(indices, values)`` is equivalent to
		``tensor[indices] = values``. Returns :attr:`self`.
		
		If :attr:`accumulate` is ``True``, the elements in :attr:`values` are added to
		:attr:`self`. If accumulate is ``False``, the behavior is undefined if indices
		contain duplicate elements.
		
		Args:
		    indices (tuple of LongTensor): tensors used to index into `self`.
		    values (Tensor): tensor of same dtype as `self`.
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
		
		Return the indices tensor of a :ref:`sparse COO tensor <sparse-coo-docs>`.
		
		.. warning::
		  Throws an error if :attr:`self` is not a sparse COO tensor.
		
		See also :meth:`Tensor.values`.
		
		.. note::
		  This method can only be called on a coalesced sparse tensor. See
		  :meth:`Tensor.coalesce` for details.
	**/
	public function indices(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		inner(other) -> Tensor
		
		See :func:`torch.inner`.
	**/
	public function inner(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		int(memory_format=torch.preserve_format) -> Tensor
		
		``self.int()`` is equivalent to ``self.to(torch.int32)``. See :func:`to`.
		
		Args:
		    memory_format (:class:`torch.memory_format`, optional): the desired memory format of
		        returned Tensor. Default: ``torch.preserve_format``.
	**/
	public function int(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		int_repr() -> Tensor
		
		Given a quantized Tensor,
		``self.int_repr()`` returns a CPU Tensor with uint8_t as data type that stores the
		underlying uint8_t values of the given Tensor.
	**/
	public function int_repr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		inverse() -> Tensor
		
		See :func:`torch.inverse`
	**/
	public function inverse(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		is_coalesced() -> bool
		
		Returns ``True`` if :attr:`self` is a :ref:`sparse COO tensor
		<sparse-coo-docs>` that is coalesced, ``False`` otherwise.
		
		.. warning::
		  Throws an error if :attr:`self` is not a sparse COO tensor.
		
		See :meth:`coalesce` and :ref:`uncoalesced tensors <sparse-uncoalesced-coo-docs>`.
	**/
	public function is_coalesced(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		is_complex() -> bool
		
		Returns True if the data type of :attr:`self` is a complex data type.
	**/
	public function is_complex(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		is_conj() -> bool
		
		Returns True if the conjugate bit of :attr:`self` is set to true.
	**/
	public function is_conj(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		is_contiguous(memory_format=torch.contiguous_format) -> bool
		
		Returns True if :attr:`self` tensor is contiguous in memory in the order specified
		by memory format.
		
		Args:
		    memory_format (:class:`torch.memory_format`, optional): Specifies memory allocation
		        order. Default: ``torch.contiguous_format``.
	**/
	public function is_contiguous(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Is ``True`` if the Tensor is stored on the GPU, ``False`` otherwise.
	**/
	public var is_cuda : Dynamic;
	public function is_distributed(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		is_floating_point() -> bool
		
		Returns True if the data type of :attr:`self` is a floating point data type.
	**/
	public function is_floating_point(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		is_inference() -> bool
		
		See :func:`torch.is_inference`
	**/
	public function is_inference(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		    # f requires grad, has no operation creating it
	**/
	public var is_leaf : Dynamic;
	/**
		Is ``True`` if the Tensor is a meta tensor, ``False`` otherwise.  Meta tensors
		are like normal tensors, but they carry no data.
	**/
	public var is_meta : Dynamic;
	public var is_mkldnn : Dynamic;
	public var is_mlc : Dynamic;
	/**
		is_neg() -> bool
		
		Returns True if the negative bit of :attr:`self` is set to true.
	**/
	public function is_neg(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function is_nonzero(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var is_ort : Dynamic;
	/**
		Returns true if this tensor resides in pinned memory.
	**/
	public function is_pinned(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Is ``True`` if the Tensor is quantized, ``False`` otherwise.
	**/
	public var is_quantized : Dynamic;
	public function is_same_size(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		is_set_to(tensor) -> bool
		
		Returns True if both tensors are pointing to the exact same memory (same
		storage, offset, size and stride).
	**/
	public function is_set_to(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Checks if tensor is in shared memory.
		
		This is always ``True`` for CUDA tensors.
	**/
	public function is_shared():Dynamic;
	/**
		is_signed() -> bool
		
		Returns True if the data type of :attr:`self` is a signed data type.
	**/
	public function is_signed(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Is ``True`` if the Tensor uses sparse storage layout, ``False`` otherwise.
	**/
	public var is_sparse : Dynamic;
	/**
		Is ``True`` if the Tensor uses sparse CSR storage layout, ``False`` otherwise.
	**/
	public var is_sparse_csr : Dynamic;
	public var is_vulkan : Dynamic;
	/**
		Is ``True`` if the Tensor is stored on the XPU, ``False`` otherwise.
	**/
	public var is_xpu : Dynamic;
	/**
		isclose(other, rtol=1e-05, atol=1e-08, equal_nan=False) -> Tensor
		
		See :func:`torch.isclose`
	**/
	public function isclose(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		isfinite() -> Tensor
		
		See :func:`torch.isfinite`
	**/
	public function isfinite(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		isinf() -> Tensor
		
		See :func:`torch.isinf`
	**/
	public function isinf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		isnan() -> Tensor
		
		See :func:`torch.isnan`
	**/
	public function isnan(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		isneginf() -> Tensor
		
		See :func:`torch.isneginf`
	**/
	public function isneginf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		isposinf() -> Tensor
		
		See :func:`torch.isposinf`
	**/
	public function isposinf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		isreal() -> Tensor
		
		See :func:`torch.isreal`
	**/
	public function isreal(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		See :func:`torch.istft`
	**/
	public function istft(n_fft:Dynamic, ?hop_length:Dynamic, ?win_length:Dynamic, ?window:Dynamic, ?center:Dynamic, ?normalized:Dynamic, ?onesided:Dynamic, ?length:Dynamic, ?return_complex:Dynamic):Dynamic;
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
		kron(other) -> Tensor
		
		See :func:`torch.kron`
	**/
	public function kron(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		kthvalue(k, dim=None, keepdim=False) -> (Tensor, LongTensor)
		
		See :func:`torch.kthvalue`
	**/
	public function kthvalue(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var layout : Dynamic;
	/**
		lcm(other) -> Tensor
		
		See :func:`torch.lcm`
	**/
	public function lcm(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		lcm_(other) -> Tensor
		
		In-place version of :meth:`~Tensor.lcm`
	**/
	public function lcm_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ldexp(other) -> Tensor
		
		See :func:`torch.ldexp`
	**/
	public function ldexp(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ldexp_(other) -> Tensor
		
		In-place version of :meth:`~Tensor.ldexp`
	**/
	public function ldexp_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		le(other) -> Tensor
		
		See :func:`torch.le`.
	**/
	public function le(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		le_(other) -> Tensor
		
		In-place version of :meth:`~Tensor.le`.
	**/
	public function le_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		lerp(end, weight) -> Tensor
		
		See :func:`torch.lerp`
	**/
	public function lerp(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		lerp_(end, weight) -> Tensor
		
		In-place version of :meth:`~Tensor.lerp`
	**/
	public function lerp_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		lt(other) -> Tensor
		
		See :func:`torch.less`.
	**/
	public function less(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		less_(other) -> Tensor
		
		In-place version of :meth:`~Tensor.less`.
	**/
	public function less_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		less_equal(other) -> Tensor
		
		See :func:`torch.less_equal`.
	**/
	public function less_equal(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		less_equal_(other) -> Tensor
		
		In-place version of :meth:`~Tensor.less_equal`.
	**/
	public function less_equal_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		lgamma() -> Tensor
		
		See :func:`torch.lgamma`
	**/
	public function lgamma(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		lgamma_() -> Tensor
		
		In-place version of :meth:`~Tensor.lgamma`
	**/
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
		logaddexp(other) -> Tensor
		
		See :func:`torch.logaddexp`
	**/
	public function logaddexp(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		logaddexp2(other) -> Tensor
		
		See :func:`torch.logaddexp2`
	**/
	public function logaddexp2(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		logcumsumexp(dim) -> Tensor
		
		See :func:`torch.logcumsumexp`
	**/
	public function logcumsumexp(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		logdet() -> Tensor
		
		See :func:`torch.logdet`
	**/
	public function logdet(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		logical_and() -> Tensor
		
		See :func:`torch.logical_and`
	**/
	public function logical_and(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		logical_and_() -> Tensor
		
		In-place version of :meth:`~Tensor.logical_and`
	**/
	public function logical_and_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		logical_not() -> Tensor
		
		See :func:`torch.logical_not`
	**/
	public function logical_not(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		logical_not_() -> Tensor
		
		In-place version of :meth:`~Tensor.logical_not`
	**/
	public function logical_not_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		logical_or() -> Tensor
		
		See :func:`torch.logical_or`
	**/
	public function logical_or(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		logical_or_() -> Tensor
		
		In-place version of :meth:`~Tensor.logical_or`
	**/
	public function logical_or_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		logical_xor() -> Tensor
		
		See :func:`torch.logical_xor`
	**/
	public function logical_xor(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		logical_xor_() -> Tensor
		
		In-place version of :meth:`~Tensor.logical_xor`
	**/
	public function logical_xor_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		logit() -> Tensor
		
		See :func:`torch.logit`
	**/
	public function logit(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		logit_() -> Tensor
		
		In-place version of :meth:`~Tensor.logit`
	**/
	public function logit_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		logsumexp(dim, keepdim=False) -> Tensor
		
		See :func:`torch.logsumexp`
	**/
	public function logsumexp(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		long(memory_format=torch.preserve_format) -> Tensor
		
		``self.long()`` is equivalent to ``self.to(torch.int64)``. See :func:`to`.
		
		Args:
		    memory_format (:class:`torch.memory_format`, optional): the desired memory format of
		        returned Tensor. Default: ``torch.preserve_format``.
	**/
	public function long(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		lstsq(A) -> (Tensor, Tensor)
		
		See :func:`torch.lstsq`
	**/
	public function lstsq(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		lt(other) -> Tensor
		
		See :func:`torch.lt`.
	**/
	public function lt(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		lt_(other) -> Tensor
		
		In-place version of :meth:`~Tensor.lt`.
	**/
	public function lt_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		See :func:`torch.lu`
	**/
	public function lu(?pivot:Dynamic, ?get_infos:Dynamic):Dynamic;
	/**
		lu_solve(LU_data, LU_pivots) -> Tensor
		
		See :func:`torch.lu_solve`
	**/
	public function lu_solve(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		masked_fill(mask, value) -> Tensor
		
		Out-of-place version of :meth:`torch.Tensor.masked_fill_`
	**/
	public function masked_fill(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		masked_fill_(mask, value)
		
		Fills elements of :attr:`self` tensor with :attr:`value` where :attr:`mask` is
		True. The shape of :attr:`mask` must be
		:ref:`broadcastable <broadcasting-semantics>` with the shape of the underlying
		tensor.
		
		Args:
		    mask (BoolTensor): the boolean mask
		    value (float): the value to fill in with
	**/
	public function masked_fill_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		masked_scatter(mask, tensor) -> Tensor
		
		Out-of-place version of :meth:`torch.Tensor.masked_scatter_`
	**/
	public function masked_scatter(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		masked_scatter_(mask, source)
		
		Copies elements from :attr:`source` into :attr:`self` tensor at positions where
		the :attr:`mask` is True.
		The shape of :attr:`mask` must be :ref:`broadcastable <broadcasting-semantics>`
		with the shape of the underlying tensor. The :attr:`source` should have at least
		as many elements as the number of ones in :attr:`mask`
		
		Args:
		    mask (BoolTensor): the boolean mask
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
		matrix_exp() -> Tensor
		
		See :func:`torch.matrix_exp`
	**/
	public function matrix_exp(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		matrix_power(n) -> Tensor
		
		.. note:: :meth:`~Tensor.matrix_power` is deprecated, use :func:`torch.linalg.matrix_power` instead.
		
		Alias for :func:`torch.linalg.matrix_power`
	**/
	public function matrix_power(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		max(dim=None, keepdim=False) -> Tensor or (Tensor, Tensor)
		
		See :func:`torch.max`
	**/
	public function max(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		maximum(other) -> Tensor
		
		See :func:`torch.maximum`
	**/
	public function maximum(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		mean(dim=None, keepdim=False, *, dtype=None) -> Tensor
		
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
		minimum(other) -> Tensor
		
		See :func:`torch.minimum`
	**/
	public function minimum(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		moveaxis(source, destination) -> Tensor
		
		See :func:`torch.moveaxis`
	**/
	public function moveaxis(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		movedim(source, destination) -> Tensor
		
		See :func:`torch.movedim`
	**/
	public function movedim(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		msort() -> Tensor
		
		See :func:`torch.msort`
	**/
	public function msort(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		mul(value) -> Tensor
		
		See :func:`torch.mul`.
	**/
	public function mul(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		mul_(value) -> Tensor
		
		In-place version of :meth:`~Tensor.mul`.
	**/
	public function mul_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		multinomial(num_samples, replacement=False, *, generator=None) -> Tensor
		
		See :func:`torch.multinomial`
	**/
	public function multinomial(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		multiply(value) -> Tensor
		
		See :func:`torch.multiply`.
	**/
	public function multiply(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		multiply_(value) -> Tensor
		
		In-place version of :meth:`~Tensor.multiply`.
	**/
	public function multiply_(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Stores names for each of this tensor's dimensions.
		
		``names[idx]`` corresponds to the name of tensor dimension ``idx``.
		Names are either a string if the dimension is named or ``None`` if the
		dimension is unnamed.
		
		Dimension names may contain characters or underscore. Furthermore, a dimension
		name must be a valid Python variable name (i.e., does not start with underscore).
		
		Tensors may not have two named dimensions with the same name.
		
		.. warning::
		    The named tensor API is experimental and subject to change.
	**/
	public var names : Dynamic;
	/**
		nan_to_num(nan=0.0, posinf=None, neginf=None) -> Tensor
		
		See :func:`torch.nan_to_num`.
	**/
	public function nan_to_num(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		nan_to_num_(nan=0.0, posinf=None, neginf=None) -> Tensor
		
		In-place version of :meth:`~Tensor.nan_to_num`.
	**/
	public function nan_to_num_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		nanmean(dim=None, keepdim=False, *, dtype=None) -> Tensor
		
		See :func:`torch.nanmean`
	**/
	public function nanmean(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		nanmedian(dim=None, keepdim=False) -> (Tensor, LongTensor)
		
		See :func:`torch.nanmedian`
	**/
	public function nanmedian(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		nanquantile(q, dim=None, keepdim=False) -> Tensor
		
		See :func:`torch.nanquantile`
	**/
	public function nanquantile(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		nansum(dim=None, keepdim=False, dtype=None) -> Tensor
		
		See :func:`torch.nansum`
	**/
	public function nansum(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		do not have a shared-storage narrow method.  Calling ``narrow_copy``
		with ``dimemsion > self.sparse_dim()`` will return a copy with the
		relevant dense dimension narrowed, and ``self.shape`` updated accordingly.
	**/
	public function narrow_copy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Alias for :meth:`~Tensor.dim()`
	**/
	public var ndim : Dynamic;
	/**
		ndimension() -> int
		
		Alias for :meth:`~Tensor.dim()`
	**/
	public function ndimension(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ne(other) -> Tensor
		
		See :func:`torch.ne`.
	**/
	public function ne(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ne_(other) -> Tensor
		
		In-place version of :meth:`~Tensor.ne`.
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
		negative() -> Tensor
		
		See :func:`torch.negative`
	**/
	public function negative(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		negative_() -> Tensor
		
		In-place version of :meth:`~Tensor.negative`
	**/
	public function negative_(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		new_empty_strided(size, stride, dtype=None, device=None, requires_grad=False) -> Tensor
		
		Returns a Tensor of size :attr:`size` and strides :attr:`stride` filled with
		uninitialized data. By default, the returned Tensor has the same
		:class:`torch.dtype` and :class:`torch.device` as this tensor.
		
		Args:
		    dtype (:class:`torch.dtype`, optional): the desired type of returned tensor.
		        Default: if None, same :class:`torch.dtype` as this tensor.
		    device (:class:`torch.device`, optional): the desired device of returned tensor.
		        Default: if None, same :class:`torch.device` as this tensor.
		    requires_grad (bool, optional): If autograd should record operations on the
		        returned tensor. Default: ``False``.
		
		Example::
		
		    >>> tensor = torch.ones(())
		    >>> tensor.new_empty_strided((2, 3), (3, 1))
		    tensor([[ 5.8182e-18,  4.5765e-41, -1.0545e+30],
		            [ 3.0949e-41,  4.4842e-44,  0.0000e+00]])
	**/
	public function new_empty_strided(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		nextafter(other) -> Tensor
		See :func:`torch.nextafter`
	**/
	public function nextafter(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		nextafter_(other) -> Tensor
		In-place version of :meth:`~Tensor.nextafter`
	**/
	public function nextafter_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		nonzero() -> LongTensor
		
		See :func:`torch.nonzero`
	**/
	public function nonzero(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		See :func:`torch.norm`
	**/
	public function norm(?p:Dynamic, ?dim:Dynamic, ?keepdim:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		normal_(mean=0, std=1, *, generator=None) -> Tensor
		
		Fills :attr:`self` tensor with elements samples from the normal distribution
		parameterized by :attr:`mean` and :attr:`std`.
	**/
	public function normal_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		not_equal(other) -> Tensor
		
		See :func:`torch.not_equal`.
	**/
	public function not_equal(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		not_equal_(other) -> Tensor
		
		In-place version of :meth:`~Tensor.not_equal`.
	**/
	public function not_equal_(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	/**
		outer(vec2) -> Tensor
		
		See :func:`torch.outer`.
	**/
	public function outer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var output_nr : Dynamic;
	/**
		permute(*dims) -> Tensor
		
		See :func:`torch.permute`
	**/
	public function permute(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		pin_memory() -> Tensor
		
		Copies the tensor to pinned memory, if it's not already pinned.
	**/
	public function pin_memory(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		pinverse() -> Tensor
		
		See :func:`torch.pinverse`
	**/
	public function pinverse(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		polygamma(n) -> Tensor
		
		See :func:`torch.polygamma`
	**/
	public function polygamma(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		polygamma_(n) -> Tensor
		
		In-place version of :meth:`~Tensor.polygamma`
	**/
	public function polygamma_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		positive() -> Tensor
		
		See :func:`torch.positive`
	**/
	public function positive(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		put(input, index, source, accumulate=False) -> Tensor
		
		Out-of-place version of :meth:`torch.Tensor.put_`.
		`input` corresponds to `self` in :meth:`torch.Tensor.put_`.
	**/
	public function put(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		put_(index, source, accumulate=False) -> Tensor
		
		Copies the elements from :attr:`source` into the positions specified by
		:attr:`index`. For the purpose of indexing, the :attr:`self` tensor is treated as if
		it were a 1-D tensor.
		
		:attr:`index` and :attr:`source` need to have the same number of elements, but not necessarily
		the same shape.
		
		If :attr:`accumulate` is ``True``, the elements in :attr:`source` are added to
		:attr:`self`. If accumulate is ``False``, the behavior is undefined if :attr:`index`
		contain duplicate elements.
		
		Args:
		    index (LongTensor): the indices into self
		    source (Tensor): the tensor containing values to copy from
		    accumulate (bool): whether to accumulate into self
		
		Example::
		
		    >>> src = torch.tensor([[4, 3, 5],
		    ...                     [6, 7, 8]])
		    >>> src.put_(torch.tensor([1, 3]), torch.tensor([9, 10]))
		    tensor([[  4,   9,   5],
		            [ 10,   7,   8]])
	**/
	public function put_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		q_per_channel_axis() -> int
		
		Given a Tensor quantized by linear (affine) per-channel quantization,
		returns the index of dimension on which per-channel quantization is applied.
	**/
	public function q_per_channel_axis(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		q_per_channel_scales() -> Tensor
		
		Given a Tensor quantized by linear (affine) per-channel quantization,
		returns a Tensor of scales of the underlying quantizer. It has the number of
		elements that matches the corresponding dimensions (from q_per_channel_axis) of
		the tensor.
	**/
	public function q_per_channel_scales(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		q_per_channel_zero_points() -> Tensor
		
		Given a Tensor quantized by linear (affine) per-channel quantization,
		returns a tensor of zero_points of the underlying quantizer. It has the number of
		elements that matches the corresponding dimensions (from q_per_channel_axis) of
		the tensor.
	**/
	public function q_per_channel_zero_points(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		q_scale() -> float
		
		Given a Tensor quantized by linear(affine) quantization,
		returns the scale of the underlying quantizer().
	**/
	public function q_scale(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		q_zero_point() -> int
		
		Given a Tensor quantized by linear(affine) quantization,
		returns the zero_point of the underlying quantizer().
	**/
	public function q_zero_point(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		qr(some=True) -> (Tensor, Tensor)
		
		See :func:`torch.qr`
	**/
	public function qr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		qscheme() -> torch.qscheme
		
		Returns the quantization scheme of a given QTensor.
	**/
	public function qscheme(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		quantile(q, dim=None, keepdim=False) -> Tensor
		
		See :func:`torch.quantile`
	**/
	public function quantile(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		rad2deg() -> Tensor
		
		See :func:`torch.rad2deg`
	**/
	public function rad2deg(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		rad2deg_() -> Tensor
		
		In-place version of :meth:`~Tensor.rad2deg`
	**/
	public function rad2deg_(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		ravel(input) -> Tensor
		
		see :func:`torch.ravel`
	**/
	public function ravel(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Returns a new tensor containing real values of the :attr:`self` tensor.
		The returned tensor and :attr:`self` share the same underlying storage.
		
		.. warning::
		    :func:`real` is only supported for tensors with complex dtypes.
		
		Example::
		    >>> x=torch.randn(4, dtype=torch.cfloat)
		    >>> x
		    tensor([(0.3100+0.3553j), (-0.5445-0.7896j), (-1.6492-0.0633j), (-0.0638-0.8119j)])
		    >>> x.real
		    tensor([ 0.3100, -0.5445, -1.6492, -0.0638])
	**/
	public var real : Dynamic;
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
		record_stream(stream)
		
		Ensures that the tensor memory is not reused for another tensor until all
		current work queued on :attr:`stream` are complete.
		
		.. note::
		
		    The caching allocator is aware of only the stream where a tensor was
		    allocated. Due to the awareness, it already correctly manages the life
		    cycle of tensors on only one stream. But if a tensor is used on a stream
		    different from the stream of origin, the allocator might reuse the memory
		    unexpectedly. Calling this method lets the allocator know which streams
		    have used the tensor.
	**/
	public function record_stream(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Refines the dimension names of :attr:`self` according to :attr:`names`.
		
		Refining is a special case of renaming that "lifts" unnamed dimensions.
		A ``None`` dim can be refined to have any name; a named dim can only be
		refined to have the same name.
		
		Because named tensors can coexist with unnamed tensors, refining names
		gives a nice way to write named-tensor-aware code that works with both
		named and unnamed tensors.
		
		:attr:`names` may contain up to one Ellipsis (``...``).
		The Ellipsis is expanded greedily; it is expanded in-place to fill
		:attr:`names` to the same length as ``self.dim()`` using names from the
		corresponding indices of ``self.names``.
		
		Python 2 does not support Ellipsis but one may use a string literal
		instead (``'...'``).
		
		Args:
		    names (iterable of str): The desired names of the output tensor. May
		        contain up to one Ellipsis.
		
		Examples::
		
		    >>> imgs = torch.randn(32, 3, 128, 128)
		    >>> named_imgs = imgs.refine_names('N', 'C', 'H', 'W')
		    >>> named_imgs.names
		    ('N', 'C', 'H', 'W')
		
		    >>> tensor = torch.randn(2, 3, 5, 7, 11)
		    >>> tensor = tensor.refine_names('A', ..., 'B', 'C')
		    >>> tensor.names
		    ('A', None, None, 'B', 'C')
		
		.. warning::
		    The named tensor API is experimental and subject to change.
	**/
	public function refine_names(?names:python.VarArgs<Dynamic>):Dynamic;
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
		Renames dimension names of :attr:`self`.
		
		There are two main usages:
		
		``self.rename(**rename_map)`` returns a view on tensor that has dims
		renamed as specified in the mapping :attr:`rename_map`.
		
		``self.rename(*names)`` returns a view on tensor, renaming all
		dimensions positionally using :attr:`names`.
		Use ``self.rename(None)`` to drop names on a tensor.
		
		One cannot specify both positional args :attr:`names` and keyword args
		:attr:`rename_map`.
		
		Examples::
		
		    >>> imgs = torch.rand(2, 3, 5, 7, names=('N', 'C', 'H', 'W'))
		    >>> renamed_imgs = imgs.rename(N='batch', C='channels')
		    >>> renamed_imgs.names
		    ('batch', 'channels', 'H', 'W')
		
		    >>> renamed_imgs = imgs.rename(None)
		    >>> renamed_imgs.names
		    (None,)
		
		    >>> renamed_imgs = imgs.rename('batch', 'channel', 'height', 'width')
		    >>> renamed_imgs.names
		    ('batch', 'channel', 'height', 'width')
		
		.. warning::
		    The named tensor API is experimental and subject to change.
	**/
	public function rename(?names:python.VarArgs<Dynamic>, ?rename_map:python.KwArgs<Dynamic>):Dynamic;
	/**
		In-place version of :meth:`~Tensor.rename`.
	**/
	public function rename_(?names:python.VarArgs<Dynamic>, ?rename_map:python.KwArgs<Dynamic>):Dynamic;
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
		
		    :meth:`~Tensor.repeat` behaves differently from
		    `numpy.repeat <https://docs.scipy.org/doc/numpy/reference/generated/numpy.repeat.html>`_,
		    but is more similar to
		    `numpy.tile <https://docs.scipy.org/doc/numpy/reference/generated/numpy.tile.html>`_.
		    For the operator similar to `numpy.repeat`, see :func:`torch.repeat_interleave`.
		
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
		repeat_interleave(repeats, dim=None, *, output_size=None) -> Tensor
		
		See :func:`torch.repeat_interleave`.
	**/
	public function repeat_interleave(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		
		:func:`requires_grad_`'s main use case is to tell autograd to begin recording
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
		resize_(*sizes, memory_format=torch.contiguous_format) -> Tensor
		
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
		    memory_format (:class:`torch.memory_format`, optional): the desired memory format of
		        Tensor. Default: ``torch.contiguous_format``. Note that memory format of
		        :attr:`self` is going to be unaffected if ``self.size()`` matches ``sizes``.
		
		Example::
		
		    >>> x = torch.tensor([[1, 2], [3, 4], [5, 6]])
		    >>> x.resize_(2, 2)
		    tensor([[ 1,  2],
		            [ 3,  4]])
	**/
	public function resize_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function resize_as(tensor:Dynamic):Dynamic;
	/**
		resize_as_(tensor, memory_format=torch.contiguous_format) -> Tensor
		
		Resizes the :attr:`self` tensor to be the same size as the specified
		:attr:`tensor`. This is equivalent to ``self.resize_(tensor.size())``.
		
		Args:
		    memory_format (:class:`torch.memory_format`, optional): the desired memory format of
		        Tensor. Default: ``torch.contiguous_format``. Note that memory format of
		        :attr:`self` is going to be unaffected if ``self.size()`` matches ``tensor.size()``.
	**/
	public function resize_as_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		resolve_conj() -> Tensor
		
		See :func:`torch.resolve_conj`
	**/
	public function resolve_conj(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		resolve_neg() -> Tensor
		
		See :func:`torch.resolve_neg`
	**/
	public function resolve_neg(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		retain_grad() -> None
		
		Enables this Tensor to have their :attr:`grad` populated during
		:func:`backward`. This is a no-op for leaf tensors.
	**/
	public function retain_grad(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Is ``True`` if this Tensor is non-leaf and its :attr:`grad` is enabled to be
		populated during :func:`backward`, ``False`` otherwise.
	**/
	public var retains_grad : Dynamic;
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
		scatter(dim, index, src) -> Tensor
		
		Out-of-place version of :meth:`torch.Tensor.scatter_`
	**/
	public function scatter(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		scatter_(dim, index, src, reduce=None) -> Tensor
		
		Writes all values from the tensor :attr:`src` into :attr:`self` at the indices
		specified in the :attr:`index` tensor. For each value in :attr:`src`, its output
		index is specified by its index in :attr:`src` for ``dimension != dim`` and by
		the corresponding value in :attr:`index` for ``dimension = dim``.
		
		For a 3-D tensor, :attr:`self` is updated as::
		
		    self[index[i][j][k]][j][k] = src[i][j][k]  # if dim == 0
		    self[i][index[i][j][k]][k] = src[i][j][k]  # if dim == 1
		    self[i][j][index[i][j][k]] = src[i][j][k]  # if dim == 2
		
		This is the reverse operation of the manner described in :meth:`~Tensor.gather`.
		
		:attr:`self`, :attr:`index` and :attr:`src` (if it is a Tensor) should all have
		the same number of dimensions. It is also required that
		``index.size(d) <= src.size(d)`` for all dimensions ``d``, and that
		``index.size(d) <= self.size(d)`` for all dimensions ``d != dim``.
		Note that ``index`` and ``src`` do not broadcast.
		
		Moreover, as for :meth:`~Tensor.gather`, the values of :attr:`index` must be
		between ``0`` and ``self.size(dim) - 1`` inclusive.
		
		.. warning::
		
		    When indices are not unique, the behavior is non-deterministic (one of the
		    values from ``src`` will be picked arbitrarily) and the gradient will be
		    incorrect (it will be propagated to all locations in the source that
		    correspond to the same index)!
		
		.. note::
		
		    The backward pass is implemented only for ``src.shape == index.shape``.
		
		Additionally accepts an optional :attr:`reduce` argument that allows
		specification of an optional reduction operation, which is applied to all
		values in the tensor :attr:`src` into :attr:`self` at the indicies
		specified in the :attr:`index`. For each value in :attr:`src`, the reduction
		operation is applied to an index in :attr:`self` which is specified by
		its index in :attr:`src` for ``dimension != dim`` and by the corresponding
		value in :attr:`index` for ``dimension = dim``.
		
		Given a 3-D tensor and reduction using the multiplication operation, :attr:`self`
		is updated as::
		
		    self[index[i][j][k]][j][k] *= src[i][j][k]  # if dim == 0
		    self[i][index[i][j][k]][k] *= src[i][j][k]  # if dim == 1
		    self[i][j][index[i][j][k]] *= src[i][j][k]  # if dim == 2
		
		Reducing with the addition operation is the same as using
		:meth:`~torch.Tensor.scatter_add_`.
		
		Args:
		    dim (int): the axis along which to index
		    index (LongTensor): the indices of elements to scatter, can be either empty
		        or of the same dimensionality as ``src``. When empty, the operation
		        returns ``self`` unchanged.
		    src (Tensor or float): the source element(s) to scatter.
		    reduce (str, optional): reduction operation to apply, can be either
		        ``'add'`` or ``'multiply'``.
		
		Example::
		
		    >>> src = torch.arange(1, 11).reshape((2, 5))
		    >>> src
		    tensor([[ 1,  2,  3,  4,  5],
		            [ 6,  7,  8,  9, 10]])
		    >>> index = torch.tensor([[0, 1, 2, 0]])
		    >>> torch.zeros(3, 5, dtype=src.dtype).scatter_(0, index, src)
		    tensor([[1, 0, 0, 4, 0],
		            [0, 2, 0, 0, 0],
		            [0, 0, 3, 0, 0]])
		    >>> index = torch.tensor([[0, 1, 2], [0, 1, 4]])
		    >>> torch.zeros(3, 5, dtype=src.dtype).scatter_(1, index, src)
		    tensor([[1, 2, 3, 0, 0],
		            [6, 7, 0, 0, 8],
		            [0, 0, 0, 0, 0]])
		
		    >>> torch.full((2, 4), 2.).scatter_(1, torch.tensor([[2], [3]]),
		    ...            1.23, reduce='multiply')
		    tensor([[2.0000, 2.0000, 2.4600, 2.0000],
		            [2.0000, 2.0000, 2.0000, 2.4600]])
		    >>> torch.full((2, 4), 2.).scatter_(1, torch.tensor([[2], [3]]),
		    ...            1.23, reduce='add')
		    tensor([[2.0000, 2.0000, 3.2300, 2.0000],
		            [2.0000, 2.0000, 2.0000, 3.2300]])
	**/
	public function scatter_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		scatter_add(dim, index, src) -> Tensor
		
		Out-of-place version of :meth:`torch.Tensor.scatter_add_`
	**/
	public function scatter_add(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		scatter_add_(dim, index, src) -> Tensor
		
		Adds all values from the tensor :attr:`other` into :attr:`self` at the indices
		specified in the :attr:`index` tensor in a similar fashion as
		:meth:`~torch.Tensor.scatter_`. For each value in :attr:`src`, it is added to
		an index in :attr:`self` which is specified by its index in :attr:`src`
		for ``dimension != dim`` and by the corresponding value in :attr:`index` for
		``dimension = dim``.
		
		For a 3-D tensor, :attr:`self` is updated as::
		
		    self[index[i][j][k]][j][k] += src[i][j][k]  # if dim == 0
		    self[i][index[i][j][k]][k] += src[i][j][k]  # if dim == 1
		    self[i][j][index[i][j][k]] += src[i][j][k]  # if dim == 2
		
		:attr:`self`, :attr:`index` and :attr:`src` should have same number of
		dimensions. It is also required that ``index.size(d) <= src.size(d)`` for all
		dimensions ``d``, and that ``index.size(d) <= self.size(d)`` for all dimensions
		``d != dim``. Note that ``index`` and ``src`` do not broadcast.
		
		Note:
		    This operation may behave nondeterministically when given tensors on a CUDA device. See :doc:`/notes/randomness` for more information.
		
		.. note::
		
		    The backward pass is implemented only for ``src.shape == index.shape``.
		
		Args:
		    dim (int): the axis along which to index
		    index (LongTensor): the indices of elements to scatter and add, can be
		        either empty or of the same dimensionality as ``src``. When empty, the
		        operation returns ``self`` unchanged.
		    src (Tensor): the source elements to scatter and add
		
		Example::
		
		    >>> src = torch.ones((2, 5))
		    >>> index = torch.tensor([[0, 1, 2, 0, 0]])
		    >>> torch.zeros(3, 5, dtype=src.dtype).scatter_add_(0, index, src)
		    tensor([[1., 0., 0., 1., 1.],
		            [0., 1., 0., 0., 0.],
		            [0., 0., 1., 0., 0.]])
		    >>> index = torch.tensor([[0, 1, 2, 0, 0], [0, 1, 2, 2, 2]])
		    >>> torch.zeros(3, 5, dtype=src.dtype).scatter_add_(0, index, src)
		    tensor([[2., 0., 0., 1., 1.],
		            [0., 2., 0., 0., 0.],
		            [0., 0., 2., 1., 1.]])
	**/
	public function scatter_add_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		select(dim, index) -> Tensor
		
		Slices the :attr:`self` tensor along the selected dimension at the given index.
		This function returns a view of the original tensor with the given dimension removed.
		
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
	/**
		sgn() -> Tensor
		
		See :func:`torch.sgn`
	**/
	public function sgn(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		sgn_() -> Tensor
		
		In-place version of :meth:`~Tensor.sgn`
	**/
	public function sgn_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var shape : Dynamic;
	/**
		Moves the underlying storage to shared memory.
		
		This is a no-op if the underlying storage is already in shared memory
		and for CUDA tensors. Tensors in shared memory cannot be resized.
	**/
	public function share_memory_():Dynamic;
	/**
		short(memory_format=torch.preserve_format) -> Tensor
		
		``self.short()`` is equivalent to ``self.to(torch.int16)``. See :func:`to`.
		
		Args:
		    memory_format (:class:`torch.memory_format`, optional): the desired memory format of
		        returned Tensor. Default: ``torch.preserve_format``.
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
		signbit() -> Tensor
		
		See :func:`torch.signbit`
	**/
	public function signbit(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		sinc() -> Tensor
		
		See :func:`torch.sinc`
	**/
	public function sinc(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		sinc_() -> Tensor
		
		In-place version of :meth:`~Tensor.sinc`
	**/
	public function sinc_(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		size(dim=None) -> torch.Size or int
		
		Returns the size of the :attr:`self` tensor. If ``dim`` is not specified,
		the returned value is a :class:`torch.Size`, a subclass of :class:`tuple`.
		If ``dim`` is specified, returns an int holding the size of that dimension.
		
		Args:
		  dim (int, optional): The dimension for which to retrieve the size.
		
		Example::
		
		    >>> t = torch.empty(3, 4, 5)
		    >>> t.size()
		    torch.Size([3, 4, 5])
		    >>> t.size(dim=1)
		    4
	**/
	public function size(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		slogdet() -> (Tensor, Tensor)
		
		See :func:`torch.slogdet`
	**/
	public function slogdet(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		smm(mat) -> Tensor
		
		See :func:`torch.smm`
	**/
	public function smm(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function softmax(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		solve(A) -> Tensor, Tensor
		
		See :func:`torch.solve`
	**/
	public function solve(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		sort(dim=-1, descending=False) -> (Tensor, LongTensor)
		
		See :func:`torch.sort`
	**/
	public function sort(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		sparse_dim() -> int
		
		Return the number of sparse dimensions in a :ref:`sparse tensor <sparse-docs>` :attr:`self`.
		
		.. warning::
		  Throws an error if :attr:`self` is not a sparse tensor.
		
		See also :meth:`Tensor.dense_dim` and :ref:`hybrid tensors <sparse-hybrid-coo-docs>`.
	**/
	public function sparse_dim(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		sparse_mask(mask) -> Tensor
		
		Returns a new :ref:`sparse tensor <sparse-docs>` with values from a
		strided tensor :attr:`self` filtered by the indices of the sparse
		tensor :attr:`mask`. The values of :attr:`mask` sparse tensor are
		ignored. :attr:`self` and :attr:`mask` tensors must have the same
		shape.
		
		.. note::
		
		  The returned sparse tensor has the same indices as the sparse tensor
		  :attr:`mask`, even when the corresponding values in :attr:`self` are
		  zeros.
		
		Args:
		    mask (Tensor): a sparse tensor whose indices are used as a filter
		
		Example::
		
		    >>> nse = 5
		    >>> dims = (5, 5, 2, 2)
		    >>> I = torch.cat([torch.randint(0, dims[0], size=(nse,)),
		    ...                torch.randint(0, dims[1], size=(nse,))], 0).reshape(2, nse)
		    >>> V = torch.randn(nse, dims[2], dims[3])
		    >>> S = torch.sparse_coo_tensor(I, V, dims).coalesce()
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
	/**
		sparse_resize_(size, sparse_dim, dense_dim) -> Tensor
		
		Resizes :attr:`self` :ref:`sparse tensor <sparse-docs>` to the desired
		size and the number of sparse and dense dimensions.
		
		.. note::
		  If the number of specified elements in :attr:`self` is zero, then
		  :attr:`size`, :attr:`sparse_dim`, and :attr:`dense_dim` can be any
		  size and positive integers such that ``len(size) == sparse_dim +
		  dense_dim``.
		
		  If :attr:`self` specifies one or more elements, however, then each
		  dimension in :attr:`size` must not be smaller than the corresponding
		  dimension of :attr:`self`, :attr:`sparse_dim` must equal the number
		  of sparse dimensions in :attr:`self`, and :attr:`dense_dim` must
		  equal the number of dense dimensions in :attr:`self`.
		
		.. warning::
		  Throws an error if :attr:`self` is not a sparse tensor.
		
		Args:
		    size (torch.Size): the desired size. If :attr:`self` is non-empty
		      sparse tensor, the desired size cannot be smaller than the
		      original size.
		    sparse_dim (int): the number of sparse dimensions
		    dense_dim (int): the number of dense dimensions
	**/
	public function sparse_resize_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		sparse_resize_and_clear_(size, sparse_dim, dense_dim) -> Tensor
		
		Removes all specified elements from a :ref:`sparse tensor
		<sparse-docs>` :attr:`self` and resizes :attr:`self` to the desired
		size and the number of sparse and dense dimensions.
		
		.. warning:
		  Throws an error if :attr:`self` is not a sparse tensor.
		
		Args:
		    size (torch.Size): the desired size.
		    sparse_dim (int): the number of sparse dimensions
		    dense_dim (int): the number of dense dimensions
	**/
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
		square() -> Tensor
		
		See :func:`torch.square`
	**/
	public function square(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		square_() -> Tensor
		
		In-place version of :meth:`~Tensor.square`
	**/
	public function square_(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	/**
		sspaddmm(mat1, mat2, *, beta=1, alpha=1) -> Tensor
		
		See :func:`torch.sspaddmm`
	**/
	public function sspaddmm(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		std(dim, unbiased=True, keepdim=False) -> Tensor
		
		See :func:`torch.std`
		
		.. function:: std(unbiased=True) -> Tensor
		   :noindex:
		
		See :func:`torch.std`
	**/
	public function std(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		See :func:`torch.stft`
		
		.. warning::
		  This function changed signature at version 0.4.1. Calling with
		  the previous signature may cause error or return incorrect result.
	**/
	public function stft(n_fft:Dynamic, ?hop_length:Dynamic, ?win_length:Dynamic, ?window:Dynamic, ?center:Dynamic, ?pad_mode:Dynamic, ?normalized:Dynamic, ?onesided:Dynamic, ?return_complex:Dynamic):Dynamic;
	/**
		storage() -> torch.Storage
		
		Returns the underlying storage.
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
	/**
		storage_type() -> type
		
		Returns the type of the underlying storage.
	**/
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
		    >>> x.stride(0)
		    5
		    >>> x.stride(-1)
		    1
	**/
	public function stride(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		sub(other, *, alpha=1) -> Tensor
		
		See :func:`torch.sub`.
	**/
	public function sub(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		sub_(other, *, alpha=1) -> Tensor
		
		In-place version of :meth:`~Tensor.sub`
	**/
	public function sub_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		subtract(other, *, alpha=1) -> Tensor
		
		See :func:`torch.subtract`.
	**/
	public function subtract(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		subtract_(other, *, alpha=1) -> Tensor
		
		In-place version of :meth:`~Tensor.subtract`.
	**/
	public function subtract_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		sum(dim=None, keepdim=False, dtype=None) -> Tensor
		
		See :func:`torch.sum`
	**/
	public function sum(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		sum_to_size(*size) -> Tensor
		
		Sum ``this`` tensor to :attr:`size`.
		:attr:`size` must be broadcastable to ``this`` tensor size.
		
		Args:
		    size (int...): a sequence of integers defining the shape of the output tensor.
	**/
	public function sum_to_size(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		svd(some=True, compute_uv=True) -> (Tensor, Tensor, Tensor)
		
		See :func:`torch.svd`
	**/
	public function svd(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		swapaxes(axis0, axis1) -> Tensor
		
		See :func:`torch.swapaxes`
	**/
	public function swapaxes(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		swapaxes_(axis0, axis1) -> Tensor
		
		In-place version of :meth:`~Tensor.swapaxes`
	**/
	public function swapaxes_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		swapdims(dim0, dim1) -> Tensor
		
		See :func:`torch.swapdims`
	**/
	public function swapdims(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		swapdims_(dim0, dim1) -> Tensor
		
		In-place version of :meth:`~Tensor.swapdims`
	**/
	public function swapdims_(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	/**
		take_along_dim(indices, dim) -> Tensor
		
		See :func:`torch.take_along_dim`
	**/
	public function take_along_dim(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		tensor_split(indices_or_sections, dim=0) -> List of Tensors
		
		See :func:`torch.tensor_split`
	**/
	public function tensor_split(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		tile(*reps) -> Tensor
		
		See :func:`torch.tile`
	**/
	public function tile(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		
		.. method:: to(dtype, non_blocking=False, copy=False, memory_format=torch.preserve_format) -> Tensor
		   :noindex:
		
		    Returns a Tensor with the specified :attr:`dtype`
		
		    Args:
		        memory_format (:class:`torch.memory_format`, optional): the desired memory format of
		        returned Tensor. Default: ``torch.preserve_format``.
		
		.. method:: to(device=None, dtype=None, non_blocking=False, copy=False, memory_format=torch.preserve_format) -> Tensor
		   :noindex:
		
		    Returns a Tensor with the specified :attr:`device` and (optional)
		    :attr:`dtype`. If :attr:`dtype` is ``None`` it is inferred to be ``self.dtype``.
		    When :attr:`non_blocking`, tries to convert asynchronously with respect to
		    the host if possible, e.g., converting a CPU Tensor with pinned memory to a
		    CUDA Tensor.
		    When :attr:`copy` is set, a new Tensor is created even when the Tensor
		    already matches the desired conversion.
		
		    Args:
		        memory_format (:class:`torch.memory_format`, optional): the desired memory format of
		        returned Tensor. Default: ``torch.preserve_format``.
		
		.. method:: to(other, non_blocking=False, copy=False) -> Tensor
		   :noindex:
		
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
	/**
		to_dense() -> Tensor
		
		Creates a strided copy of :attr:`self`.
		
		.. warning::
		  Throws an error if :attr:`self` is a strided tensor.
		
		Example::
		
		    >>> s = torch.sparse_coo_tensor(
		    ...        torch.tensor([[1, 1],
		    ...                      [0, 2]]),
		    ...        torch.tensor([9, 10]),
		    ...        size=(3, 3))
		    >>> s.to_dense()
		    tensor([[ 0,  0,  0],
		            [ 9,  0, 10],
		            [ 0,  0,  0]])
	**/
	public function to_dense(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		to_mkldnn() -> Tensor
		Returns a copy of the tensor in ``torch.mkldnn`` layout.
	**/
	public function to_mkldnn(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		to_sparse(sparseDims) -> Tensor
		Returns a sparse copy of the tensor.  PyTorch supports sparse tensors in
		:ref:`coordinate format <sparse-coo-docs>`.
		
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
		Convert a tensor to compressed row storage format. Only works with 2D tensors.
		
		Examples::
		
		    >>> dense = torch.randn(5, 5)
		    >>> sparse = dense.to_sparse_csr()
		    >>> sparse._nnz()
		    25
	**/
	public function to_sparse_csr():Dynamic;
	/**
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
		triangular_solve(A, upper=True, transpose=False, unitriangular=False) -> (Tensor, Tensor)
		
		See :func:`torch.triangular_solve`
	**/
	public function triangular_solve(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		true_divide(value) -> Tensor
		
		See :func:`torch.true_divide`
	**/
	public function true_divide(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		true_divide_(value) -> Tensor
		
		In-place version of :meth:`~Tensor.true_divide_`
	**/
	public function true_divide_(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		equivalent to ``self.type(tensor.type())``
		
		Args:
		    tensor (Tensor): the tensor which has the desired type
	**/
	public function type_as(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		unbind(dim=0) -> seq
		
		See :func:`torch.unbind`
	**/
	public function unbind(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Expands the dimension :attr:`dim` of the :attr:`self` tensor over multiple dimensions
		of sizes given by :attr:`sizes`.
		
		* :attr:`sizes` is the new shape of the unflattened dimension and it can be a `Tuple[int]` as well
		  as `torch.Size` if :attr:`self` is a `Tensor`, or `namedshape` (Tuple[(name: str, size: int)])
		  if :attr:`self` is a `NamedTensor`. The total number of elements in sizes must match the number
		  of elements in the original dim being unflattened.
		
		Args:
		    dim (Union[int, str]): Dimension to unflatten
		    sizes (Union[Tuple[int] or torch.Size, Tuple[Tuple[str, int]]]): New shape of the unflattened dimension
		
		Examples:
		    >>> torch.randn(3, 4, 1).unflatten(1, (2, 2)).shape
		    torch.Size([3, 2, 2, 1])
		    >>> torch.randn(3, 4, 1).unflatten(1, (-1, 2)).shape # the size -1 is inferred from the size of dimension 1
		    torch.Size([3, 2, 2, 1])
		    >>> torch.randn(2, 4, names=('A', 'B')).unflatten('B', (('B1', 2), ('B2', 2)))
		    tensor([[[-1.1772,  0.0180],
		            [ 0.2412,  0.1431]],
		            [[-1.1819, -0.8899],
		            [ 1.5813,  0.2274]]], names=('A', 'B1', 'B2'))
		    >>> torch.randn(2, names=('A',)).unflatten('A', (('B1', -1), ('B2', 1)))
		    tensor([[-0.8591],
		            [ 0.3100]], names=('B1', 'B2'))
		
		.. warning::
		    The named tensor API is experimental and subject to change.
	**/
	public function unflatten(dim:Dynamic, sizes:Dynamic):Dynamic;
	/**
		unfold(dimension, size, step) -> Tensor
		
		Returns a view of the original tensor which contains all slices of size :attr:`size` from
		:attr:`self` tensor in the dimension :attr:`dimension`.
		
		Step between two slices is given by :attr:`step`.
		
		If `sizedim` is the size of dimension :attr:`dimension` for :attr:`self`, the size of
		dimension :attr:`dimension` in the returned tensor will be
		`(sizedim - size) / step + 1`.
		
		An additional dimension of size :attr:`size` is appended in the returned tensor.
		
		Args:
		    dimension (int): dimension in which unfolding happens
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
		Returns the unique elements of the input tensor.
		
		See :func:`torch.unique`
	**/
	public function unique(?sorted:Dynamic, ?return_inverse:Dynamic, ?return_counts:Dynamic, ?dim:Dynamic):Dynamic;
	/**
		Eliminates all but the first element from every consecutive group of equivalent elements.
		
		See :func:`torch.unique_consecutive`
	**/
	public function unique_consecutive(?return_inverse:Dynamic, ?return_counts:Dynamic, ?dim:Dynamic):Dynamic;
	/**
		unsafe_chunk(chunks, dim=0) -> List of Tensors
		
		See :func:`torch.unsafe_chunk`
	**/
	public function unsafe_chunk(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		unsafe_split(split_size, dim=0) -> List of Tensors
		
		See :func:`torch.unsafe_split`
	**/
	public function unsafe_split(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function unsafe_split_with_sizes(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		
		Return the values tensor of a :ref:`sparse COO tensor <sparse-coo-docs>`.
		
		.. warning::
		  Throws an error if :attr:`self` is not a sparse COO tensor.
		
		See also :meth:`Tensor.indices`.
		
		.. note::
		  This method can only be called on a coalesced sparse tensor. See
		  :meth:`Tensor.coalesce` for details.
	**/
	public function values(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		var(dim, unbiased=True, keepdim=False) -> Tensor
		
		See :func:`torch.var`
		
		.. function:: var(unbiased=True) -> Tensor
		   :noindex:
		
		See :func:`torch.var`
	**/
	@:native("var")
	public function _var(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		vdot(other) -> Tensor
		
		See :func:`torch.vdot`
	**/
	public function vdot(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		view(*shape) -> Tensor
		
		Returns a new tensor with the same data as the :attr:`self` tensor but of a
		different :attr:`shape`.
		
		The returned tensor shares the same data and must have the same number
		of elements, but may have a different size. For a tensor to be viewed, the new
		view size must be compatible with its original size and stride, i.e., each new
		view dimension must either be a subspace of an original dimension, or only span
		across original dimensions :math:`d, d+1, \dots, d+k` that satisfy the following
		contiguity-like condition that :math:`\forall i = d, \dots, d+k-1`,
		
		.. math::
		
		  \text{stride}[i] = \text{stride}[i+1] \times \text{size}[i+1]
		
		Otherwise, it will not be possible to view :attr:`self` tensor as :attr:`shape`
		without copying it (e.g., via :meth:`contiguous`). When it is unclear whether a
		:meth:`view` can be performed, it is advisable to use :meth:`reshape`, which
		returns a view if the shapes are compatible, and copies (equivalent to calling
		:meth:`contiguous`) otherwise.
		
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
		
		    >>> a = torch.randn(1, 2, 3, 4)
		    >>> a.size()
		    torch.Size([1, 2, 3, 4])
		    >>> b = a.transpose(1, 2)  # Swaps 2nd and 3rd dimension
		    >>> b.size()
		    torch.Size([1, 3, 2, 4])
		    >>> c = a.view(1, 3, 2, 4)  # Does not change tensor layout in memory
		    >>> c.size()
		    torch.Size([1, 3, 2, 4])
		    >>> torch.equal(b, c)
		    False
		
		
		.. method:: view(dtype) -> Tensor
		   :noindex:
		
		Returns a new tensor with the same data as the :attr:`self` tensor but of a
		different :attr:`dtype`. :attr:`dtype` must have the same number of bytes per
		element as :attr:`self`'s dtype.
		
		.. warning::
		
		    This overload is not supported by TorchScript, and using it in a Torchscript
		    program will cause undefined behavior.
		
		
		Args:
		    dtype (:class:`torch.dtype`): the desired dtype
		
		Example::
		
		    >>> x = torch.randn(4, 4)
		    >>> x
		    tensor([[ 0.9482, -0.0310,  1.4999, -0.5316],
		            [-0.1520,  0.7472,  0.5617, -0.8649],
		            [-2.4724, -0.0334, -0.2976, -0.8499],
		            [-0.2109,  1.9913, -0.9607, -0.6123]])
		    >>> x.dtype
		    torch.float32
		
		    >>> y = x.view(torch.int32)
		    >>> y
		    tensor([[ 1064483442, -1124191867,  1069546515, -1089989247],
		            [-1105482831,  1061112040,  1057999968, -1084397505],
		            [-1071760287, -1123489973, -1097310419, -1084649136],
		            [-1101533110,  1073668768, -1082790149, -1088634448]],
		        dtype=torch.int32)
		    >>> y[0, 0] = 1000000000
		    >>> x
		    tensor([[ 0.0047, -0.0310,  1.4999, -0.5316],
		            [-0.1520,  0.7472,  0.5617, -0.8649],
		            [-2.4724, -0.0334, -0.2976, -0.8499],
		            [-0.2109,  1.9913, -0.9607, -0.6123]])
		
		    >>> x.view(torch.int16)
		    Traceback (most recent call last):
		      File "<stdin>", line 1, in <module>
		    RuntimeError: Viewing a tensor as a new dtype with a different number of bytes per element is not supported.
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
		vsplit(split_size_or_sections) -> List of Tensors
		
		See :func:`torch.vsplit`
	**/
	public function vsplit(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		where(condition, y) -> Tensor
		
		``self.where(condition, y)`` is equivalent to ``torch.where(condition, self, y)``.
		See :func:`torch.where`
	**/
	public function where(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		xlogy(other) -> Tensor
		
		See :func:`torch.xlogy`
	**/
	public function xlogy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		xlogy_(other) -> Tensor
		
		In-place version of :meth:`~Tensor.xlogy`
	**/
	public function xlogy_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		xpu(device=None, non_blocking=False, memory_format=torch.preserve_format) -> Tensor
		
		Returns a copy of this object in XPU memory.
		
		If this object is already in XPU memory and on the correct device,
		then no copy is performed and the original object is returned.
		
		Args:
		    device (:class:`torch.device`): The destination XPU device.
		        Defaults to the current XPU device.
		    non_blocking (bool): If ``True`` and the source is in pinned memory,
		        the copy will be asynchronous with respect to the host.
		        Otherwise, the argument has no effect. Default: ``False``.
		    memory_format (:class:`torch.memory_format`, optional): the desired memory format of
		        returned Tensor. Default: ``torch.preserve_format``.
	**/
	public function xpu(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		zero_() -> Tensor
		
		Fills :attr:`self` tensor with zeros.
	**/
	public function zero_(args:haxe.extern.Rest<Dynamic>):Dynamic;
}