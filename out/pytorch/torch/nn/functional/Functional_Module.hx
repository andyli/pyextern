/* This file is generated, do not edit! */
package torch.nn.functional;
@:pythonImport("torch.nn.functional") extern class Functional_Module {
	static public var BroadcastingList1 : Dynamic;
	static public var BroadcastingList2 : Dynamic;
	static public var BroadcastingList3 : Dynamic;
	/**
		Callable type; Callable[[int], str] is a function of (int) -> str.
		
		The subscription syntax must always be used with exactly two
		values: the argument list and the return type.  The argument list
		must be a list of types or ellipsis; the return type must be a single type.
		
		There is no syntax to indicate optional or keyword arguments,
		such function types are rarely used as callback types.
	**/
	static public function Callable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var GRID_SAMPLE_INTERPOLATION_MODES : Dynamic;
	static public var GRID_SAMPLE_PADDING_MODES : Dynamic;
	static public function List(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Optional(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Tuple type; Tuple[X, Y] is the cross-product type of X and Y.
		
		Example: Tuple[T1, T2] is a tuple of two elements corresponding
		to type variables T1 and T2.  Tuple[int, float, str] is a tuple
		of an int, a float and a string.
		
		To specify a variable-length tuple of homogeneous type, use Tuple[T, ...].
	**/
	static public function Tuple(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Applies a 1D adaptive max pooling over an input signal composed of
		several input planes.
		
		See :class:`~torch.nn.AdaptiveMaxPool1d` for details and output shape.
		
		Args:
		    output_size: the target output size (single integer)
		    return_indices: whether to return pooling indices. Default: ``False``
	**/
	static public function _adaptive_max_pool1d(input:Dynamic, output_size:Dynamic, ?return_indices:Dynamic):Dynamic;
	/**
		Applies a 2D adaptive max pooling over an input signal composed of
		several input planes.
		
		See :class:`~torch.nn.AdaptiveMaxPool2d` for details and output shape.
		
		Args:
		    output_size: the target output size (single integer or
		        double-integer tuple)
		    return_indices: whether to return pooling indices. Default: ``False``
	**/
	static public function _adaptive_max_pool2d(input:Dynamic, output_size:Dynamic, ?return_indices:Dynamic):Dynamic;
	/**
		Applies a 3D adaptive max pooling over an input signal composed of
		several input planes.
		
		See :class:`~torch.nn.AdaptiveMaxPool3d` for details and output shape.
		
		Args:
		    output_size: the target output size (single integer or
		        triple-integer tuple)
		    return_indices: whether to return pooling indices. Default: ``False``
	**/
	static public function _adaptive_max_pool3d(input:Dynamic, output_size:Dynamic, ?return_indices:Dynamic):Dynamic;
	static public function _add_docstr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Applies 2D fractional max pooling over an input signal composed of several input planes.
		
		Fractional MaxPooling is described in detail in the paper `Fractional MaxPooling`_ by Ben Graham
		
		The max-pooling operation is applied in :math:`kH \times kW` regions by a stochastic
		step size determined by the target output size.
		The number of output features is equal to the number of input planes.
		
		Args:
		    kernel_size: the size of the window to take a max over.
		                 Can be a single number :math:`k` (for a square kernel of :math:`k \times k`)
		                 or a tuple `(kH, kW)`
		    output_size: the target output size of the image of the form :math:`oH \times oW`.
		                 Can be a tuple `(oH, oW)` or a single number :math:`oH` for a square image :math:`oH \times oH`
		    output_ratio: If one wants to have an output size as a ratio of the input size, this option can be given.
		                  This has to be a number or tuple in the range (0, 1)
		    return_indices: if ``True``, will return the indices along with the outputs.
		                    Useful to pass to :func:`~torch.nn.functional.max_unpool2d`.
		
		Examples::
		    >>> input = torch.randn(20, 16, 50, 32)
		    >>> # pool of square window of size=3, and target output size 13x12
		    >>> F.fractional_max_pool2d(input, 3, output_size=(13, 12))
		    >>> # pool of square window and target output size being half of input image size
		    >>> F.fractional_max_pool2d(input, 3, output_ratio=(0.5, 0.5))
		
		.. _Fractional MaxPooling:
		    http://arxiv.org/abs/1412.6071
	**/
	static public function _fractional_max_pool2d(input:Dynamic, kernel_size:Dynamic, ?output_size:Dynamic, ?output_ratio:Dynamic, ?return_indices:Dynamic, ?_random_samples:Dynamic):Dynamic;
	/**
		Applies 3D fractional max pooling over an input signal composed of several input planes.
		
		Fractional MaxPooling is described in detail in the paper `Fractional MaxPooling`_ by Ben Graham
		
		The max-pooling operation is applied in :math:`kT \times kH \times kW` regions by a stochastic
		step size determined by the target output size.
		The number of output features is equal to the number of input planes.
		
		Args:
		    kernel_size: the size of the window to take a max over.
		                 Can be a single number :math:`k` (for a square kernel of :math:`k \times k \times k`)
		                 or a tuple `(kT, kH, kW)`
		    output_size: the target output size of the form :math:`oT \times oH \times oW`.
		                 Can be a tuple `(oT, oH, oW)` or a single number :math:`oH` for a cubic output
		                 :math:`oH \times oH \times oH`
		    output_ratio: If one wants to have an output size as a ratio of the input size, this option can be given.
		                  This has to be a number or tuple in the range (0, 1)
		    return_indices: if ``True``, will return the indices along with the outputs.
		                    Useful to pass to :func:`~torch.nn.functional.max_unpool3d`.
		
		Examples::
		    >>> input = torch.randn(20, 16, 50, 32, 16)
		    >>> # pool of cubic window of size=3, and target output size 13x12x11
		    >>> F.fractional_max_pool3d(input, 3, output_size=(13, 12, 11))
		    >>> # pool of cubic window and target output size being half of input size
		    >>> F.fractional_max_pool3d(input, 3, output_ratio=(0.5, 0.5, 0.5))
		
		.. _Fractional MaxPooling:
		    http://arxiv.org/abs/1412.6071
	**/
	static public function _fractional_max_pool3d(input:Dynamic, kernel_size:Dynamic, ?output_size:Dynamic, ?output_ratio:Dynamic, ?return_indices:Dynamic, ?_random_samples:Dynamic):Dynamic;
	static public function _get_softmax_dim(name:Dynamic, ndim:Dynamic, stacklevel:Dynamic):Dynamic;
	/**
		Performs the in-projection step of the attention operation. This is simply
		a triple of linear projections, with shape constraints on the weights which
		ensure embedding dimension uniformity in the projected outputs.
		Output is a triple containing projection tensors for query, key and value.
		
		Args:
		    q, k, v: query, key and value tensors to be projected.
		    w_q, w_k, w_v: weights for q, k and v, respectively.
		    b_q, b_k, b_v: optional biases for q, k and v, respectively.
		
		Shape:
		    Inputs:
		    - q: :math:`(Qdims..., Eq)` where Eq is the query embedding dimension and Qdims are any
		        number of leading dimensions.
		    - k: :math:`(Kdims..., Ek)` where Ek is the key embedding dimension and Kdims are any
		        number of leading dimensions.
		    - v: :math:`(Vdims..., Ev)` where Ev is the value embedding dimension and Vdims are any
		        number of leading dimensions.
		    - w_q: :math:`(Eq, Eq)`
		    - w_k: :math:`(Eq, Ek)`
		    - w_v: :math:`(Eq, Ev)`
		    - b_q: :math:`(Eq)`
		    - b_k: :math:`(Eq)`
		    - b_v: :math:`(Eq)`
		
		    Output: in output triple :math:`(q', k', v')`,
		     - q': :math:`[Qdims..., Eq]`
		     - k': :math:`[Kdims..., Eq]`
		     - v': :math:`[Vdims..., Eq]`
	**/
	static public function _in_projection(q:Dynamic, k:Dynamic, v:Dynamic, w_q:Dynamic, w_k:Dynamic, w_v:Dynamic, ?b_q:Dynamic, ?b_k:Dynamic, ?b_v:Dynamic):Dynamic;
	/**
		Performs the in-projection step of the attention operation, using packed weights.
		Output is a triple containing projection tensors for query, key and value.
		
		Args:
		    q, k, v: query, key and value tensors to be projected. For self-attention,
		        these are typically the same tensor; for encoder-decoder attention,
		        k and v are typically the same tensor. (We take advantage of these
		        identities for performance if they are present.) Regardless, q, k and v
		        must share a common embedding dimension; otherwise their shapes may vary.
		    w: projection weights for q, k and v, packed into a single tensor. Weights
		        are packed along dimension 0, in q, k, v order.
		    b: optional projection biases for q, k and v, packed into a single tensor
		        in q, k, v order.
		
		Shape:
		    Inputs:
		    - q: :math:`(..., E)` where E is the embedding dimension
		    - k: :math:`(..., E)` where E is the embedding dimension
		    - v: :math:`(..., E)` where E is the embedding dimension
		    - w: :math:`(E * 3, E)` where E is the embedding dimension
		    - b: :math:`E * 3` where E is the embedding dimension
		
		    Output:
		    - in output list :math:`[q', k', v']`, each output tensor will have the
		        same shape as the corresponding input tensor.
	**/
	static public function _in_projection_packed(q:Dynamic, k:Dynamic, v:Dynamic, w:Dynamic, ?b:Dynamic):Dynamic;
	static public function _infer_size(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _list_with_default(out_size:Dynamic, defaults:Dynamic):Dynamic;
	/**
		Applies a 1D max pooling over an input signal composed of several input
		planes.
		
		See :class:`~torch.nn.MaxPool1d` for details.
	**/
	static public function _max_pool1d(input:Dynamic, kernel_size:Dynamic, ?stride:Dynamic, ?padding:Dynamic, ?dilation:Dynamic, ?ceil_mode:Dynamic, ?return_indices:Dynamic):Dynamic;
	/**
		Applies a 2D max pooling over an input signal composed of several input
		planes.
		
		See :class:`~torch.nn.MaxPool2d` for details.
	**/
	static public function _max_pool2d(input:Dynamic, kernel_size:Dynamic, ?stride:Dynamic, ?padding:Dynamic, ?dilation:Dynamic, ?ceil_mode:Dynamic, ?return_indices:Dynamic):Dynamic;
	/**
		Applies a 3D max pooling over an input signal composed of several input
		planes.
		
		See :class:`~torch.nn.MaxPool3d` for details.
	**/
	static public function _max_pool3d(input:Dynamic, kernel_size:Dynamic, ?stride:Dynamic, ?padding:Dynamic, ?dilation:Dynamic, ?ceil_mode:Dynamic, ?return_indices:Dynamic):Dynamic;
	static public function _no_grad_embedding_renorm_(weight:Dynamic, input:Dynamic, max_norm:Dynamic, norm_type:Dynamic):Dynamic;
	static public function _overload(func:Dynamic):Dynamic;
	/**
		Pads tensor.
		
		Padding size:
		    The padding size by which to pad some dimensions of :attr:`input`
		    are described starting from the last dimension and moving forward.
		    :math:`\left\lfloor\frac{\text{len(pad)}}{2}\right\rfloor` dimensions
		    of ``input`` will be padded.
		    For example, to pad only the last dimension of the input tensor, then
		    :attr:`pad` has the form
		    :math:`(\text{padding\_left}, \text{padding\_right})`;
		    to pad the last 2 dimensions of the input tensor, then use
		    :math:`(\text{padding\_left}, \text{padding\_right},`
		    :math:`\text{padding\_top}, \text{padding\_bottom})`;
		    to pad the last 3 dimensions, use
		    :math:`(\text{padding\_left}, \text{padding\_right},`
		    :math:`\text{padding\_top}, \text{padding\_bottom}`
		    :math:`\text{padding\_front}, \text{padding\_back})`.
		
		Padding mode:
		    See :class:`torch.nn.ConstantPad2d`, :class:`torch.nn.ReflectionPad2d`, and
		    :class:`torch.nn.ReplicationPad2d` for concrete examples on how each of the
		    padding modes works. Constant padding is implemented for arbitrary dimensions.
		    Replicate and reflection padding is implemented for padding the last 3
		    dimensions of 5D input tensor, or the last 2 dimensions of 4D input
		    tensor, or the last dimension of 3D input tensor.
		
		Note:
		    When using the CUDA backend, this operation may induce nondeterministic
		    behaviour in its backward pass that is not easily switched off.
		    Please see the notes on :doc:`/notes/randomness` for background.
		
		Args:
		    input (Tensor): N-dimensional tensor
		    pad (tuple): m-elements tuple, where
		        :math:`\frac{m}{2} \leq` input dimensions and :math:`m` is even.
		    mode: ``'constant'``, ``'reflect'``, ``'replicate'`` or ``'circular'``.
		        Default: ``'constant'``
		    value: fill value for ``'constant'`` padding. Default: ``0``
		
		Examples::
		
		    >>> t4d = torch.empty(3, 3, 4, 2)
		    >>> p1d = (1, 1) # pad last dim by 1 on each side
		    >>> out = F.pad(t4d, p1d, "constant", 0)  # effectively zero padding
		    >>> print(out.size())
		    torch.Size([3, 3, 4, 4])
		    >>> p2d = (1, 1, 2, 2) # pad last dim by (1, 1) and 2nd to last by (2, 2)
		    >>> out = F.pad(t4d, p2d, "constant", 0)
		    >>> print(out.size())
		    torch.Size([3, 3, 8, 4])
		    >>> t4d = torch.empty(3, 3, 4, 2)
		    >>> p3d = (0, 1, 2, 1, 3, 3) # pad by (0, 1), (2, 1), and (3, 3)
		    >>> out = F.pad(t4d, p3d, "constant", 0)
		    >>> print(out.size())
		    torch.Size([3, 9, 7, 3])
	**/
	static public function _pad(input:Dynamic, pad:Dynamic, ?mode:Dynamic, ?value:Dynamic):Dynamic;
	/**
		Circularly pads tensor.
		
		Tensor values at the beginning are used to pad the end, and values at the
		end are used to pad the beginning. For example, consider a single dimension
		with values [0, 1, 2, 3]. With circular padding of (1, 1) it would be
		padded to [3, 0, 1, 2, 3, 0], and with padding (1, 2) it would be padded to
		[3, 0, 1, 2, 3, 0, 1]. If negative padding is applied then the ends of the
		tensor get removed. With circular padding of (-1, -1) the previous example
		would become [1, 2]. Circular padding of (-1, 1) would produce
		[1, 2, 3, 1].
		
		The first and second dimensions of the tensor are not padded.
		
		Args:
		    input: Tensor with shape :math:`(N, C, D[, H, W])`.
		    padding: Tuple containing the number of elements to pad each side of
		        the tensor. The length of padding must be twice the number of
		        paddable dimensions. For example, the length of padding should be 4
		        for a tensor of shape :math:`(N, C, H, W)`, and the length should
		        be 6 for a tensor of shape :math:`(N, C, D, H, W)`.
		
		Examples::
		
		    >>> x = torch.tensor([[[[0, 1, 2], [3, 4, 5]]]])  # Create tensor
		    >>> # Example 1
		    >>> padding = (1, 1, 1, 1)
		    >>> y = F.pad(x, padding, mode='circular')
		    >>> print(y)
		    tensor([[[[5, 3, 4, 5, 3],
		              [2, 0, 1, 2, 0],
		              [5, 3, 4, 5, 3],
		              [2, 0, 1, 2, 0]]]])
		    >>> print(y.shape)
		    torch.Size([1, 1, 4, 5])
		    >>> # Example 2
		    >>> padding = (1, 1, 2, 2)
		    >>> z = F.pad(x, padding, mode='circular')
		    >>> print(z)
		    tensor([[[[2, 0, 1, 2, 0],
		              [5, 3, 4, 5, 3],
		              [2, 0, 1, 2, 0],
		              [5, 3, 4, 5, 3],
		              [2, 0, 1, 2, 0],
		              [5, 3, 4, 5, 3]]]])
		    >>> print(z.shape)
		    torch.Size([1, 1, 6, 5])
	**/
	static public function _pad_circular(input:Dynamic, padding:Dynamic):Dynamic;
	static public function _pair(x:Dynamic):Dynamic;
	/**
		Computes scaled dot product attention on query, key and value tensors, using
		an optional attention mask if passed, and applying dropout if a probability
		greater than 0.0 is specified.
		Returns a tensor pair containing attended values and attention weights.
		
		Args:
		    q, k, v: query, key and value tensors. See Shape section for shape details.
		    attn_mask: optional tensor containing mask values to be added to calculated
		        attention. May be 2D or 3D; see Shape section for details.
		    dropout_p: dropout probability. If greater than 0.0, dropout is applied.
		
		Shape:
		    - q: :math:`(B, Nt, E)` where B is batch size, Nt is the target sequence length,
		        and E is embedding dimension.
		    - key: :math:`(B, Ns, E)` where B is batch size, Ns is the source sequence length,
		        and E is embedding dimension.
		    - value: :math:`(B, Ns, E)` where B is batch size, Ns is the source sequence length,
		        and E is embedding dimension.
		    - attn_mask: either a 3D tensor of shape :math:`(B, Nt, Ns)` or a 2D tensor of
		        shape :math:`(Nt, Ns)`.
		
		    - Output: attention values have shape :math:`(B, Nt, E)`; attention weights
		        have shape :math:`(B, Nt, Ns)`
	**/
	static public function _scaled_dot_product_attention(q:Dynamic, k:Dynamic, v:Dynamic, ?attn_mask:Dynamic, ?dropout_p:Dynamic):Dynamic;
	static public function _single(x:Dynamic):Dynamic;
	/**
		Thresholds each element of the input Tensor.
		
		See :class:`~torch.nn.Threshold` for more details.
	**/
	static public function _threshold(input:Dynamic, threshold:Dynamic, value:Dynamic, ?inplace:Dynamic):Dynamic;
	static public function _triple(x:Dynamic):Dynamic;
	static public function _unpool_output_size(input:Dynamic, kernel_size:Dynamic, stride:Dynamic, padding:Dynamic, output_size:Dynamic):Dynamic;
	static public function _verify_batch_size(size:Dynamic):Dynamic;
	static public function _verify_spatial_size(size:Dynamic):Dynamic;
	/**
		adaptive_avg_pool1d(input, output_size) -> Tensor
		
		Applies a 1D adaptive average pooling over an input signal composed of
		several input planes.
		
		See :class:`~torch.nn.AdaptiveAvgPool1d` for details and output shape.
		
		Args:
		    output_size: the target output size (single integer)
	**/
	static public function adaptive_avg_pool1d(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Applies a 2D adaptive average pooling over an input signal composed of
		several input planes.
		
		See :class:`~torch.nn.AdaptiveAvgPool2d` for details and output shape.
		
		Args:
		    output_size: the target output size (single integer or
		        double-integer tuple)
	**/
	static public function adaptive_avg_pool2d(input:Dynamic, output_size:Dynamic):Dynamic;
	/**
		Applies a 3D adaptive average pooling over an input signal composed of
		several input planes.
		
		See :class:`~torch.nn.AdaptiveAvgPool3d` for details and output shape.
		
		Args:
		    output_size: the target output size (single integer or
		        triple-integer tuple)
	**/
	static public function adaptive_avg_pool3d(input:Dynamic, output_size:Dynamic):Dynamic;
	/**
		Applies a 1D adaptive max pooling over an input signal composed of
		several input planes.
		
		See :class:`~torch.nn.AdaptiveMaxPool1d` for details and output shape.
		
		Args:
		    output_size: the target output size (single integer)
		    return_indices: whether to return pooling indices. Default: ``False``
	**/
	static public function adaptive_max_pool1d(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Applies a 1D adaptive max pooling over an input signal composed of
		several input planes.
		
		See :class:`~torch.nn.AdaptiveMaxPool1d` for details and output shape.
		
		Args:
		    output_size: the target output size (single integer)
		    return_indices: whether to return pooling indices. Default: ``False``
	**/
	static public function adaptive_max_pool1d_with_indices(input:Dynamic, output_size:Dynamic, ?return_indices:Dynamic):Dynamic;
	/**
		Applies a 2D adaptive max pooling over an input signal composed of
		several input planes.
		
		See :class:`~torch.nn.AdaptiveMaxPool2d` for details and output shape.
		
		Args:
		    output_size: the target output size (single integer or
		        double-integer tuple)
		    return_indices: whether to return pooling indices. Default: ``False``
	**/
	static public function adaptive_max_pool2d(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Applies a 2D adaptive max pooling over an input signal composed of
		several input planes.
		
		See :class:`~torch.nn.AdaptiveMaxPool2d` for details and output shape.
		
		Args:
		    output_size: the target output size (single integer or
		        double-integer tuple)
		    return_indices: whether to return pooling indices. Default: ``False``
	**/
	static public function adaptive_max_pool2d_with_indices(input:Dynamic, output_size:Dynamic, ?return_indices:Dynamic):Dynamic;
	/**
		Applies a 3D adaptive max pooling over an input signal composed of
		several input planes.
		
		See :class:`~torch.nn.AdaptiveMaxPool3d` for details and output shape.
		
		Args:
		    output_size: the target output size (single integer or
		        triple-integer tuple)
		    return_indices: whether to return pooling indices. Default: ``False``
	**/
	static public function adaptive_max_pool3d(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Applies a 3D adaptive max pooling over an input signal composed of
		several input planes.
		
		See :class:`~torch.nn.AdaptiveMaxPool3d` for details and output shape.
		
		Args:
		    output_size: the target output size (single integer or
		        triple-integer tuple)
		    return_indices: whether to return pooling indices. Default: ``False``
	**/
	static public function adaptive_max_pool3d_with_indices(input:Dynamic, output_size:Dynamic, ?return_indices:Dynamic):Dynamic;
	/**
		Generates a 2D or 3D flow field (sampling grid), given a batch of
		affine matrices :attr:`theta`.
		
		.. note::
		    This function is often used in conjunction with :func:`grid_sample`
		    to build `Spatial Transformer Networks`_ .
		
		Args:
		    theta (Tensor): input batch of affine matrices with shape
		        (:math:`N \times 2 \times 3`) for 2D or
		        (:math:`N \times 3 \times 4`) for 3D
		    size (torch.Size): the target output image size.
		        (:math:`N \times C \times H \times W` for 2D or
		        :math:`N \times C \times D \times H \times W` for 3D)
		        Example: torch.Size((32, 3, 24, 24))
		    align_corners (bool, optional): if ``True``, consider ``-1`` and ``1``
		        to refer to the centers of the corner pixels rather than the image corners.
		        Refer to :func:`grid_sample` for a more complete description.
		        A grid generated by :func:`affine_grid` should be passed to :func:`grid_sample`
		        with the same setting for this option.
		        Default: ``False``
		
		Returns:
		    output (Tensor): output Tensor of size (:math:`N \times H \times W \times 2`)
		
		.. _`Spatial Transformer Networks`:
		    https://arxiv.org/abs/1506.02025
		
		.. warning::
		    When ``align_corners = True``, the grid positions depend on the pixel
		    size relative to the input image size, and so the locations sampled by
		    :func:`grid_sample` will differ for the same input given at different
		    resolutions (that is, after being upsampled or downsampled).
		    The default behavior up to version 1.2.0 was ``align_corners = True``.
		    Since then, the default behavior has been changed to ``align_corners = False``,
		    in order to bring it in line with the default for :func:`interpolate`.
		.. warning::
		    When ``align_corners = True``, 2D affine transforms on 1D data and
		    3D affine transforms on 2D data (that is, when one of the spatial
		    dimensions has unit size) are ill-defined, and not an intended use case.
		    This is not a problem when ``align_corners = False``.
		    Up to version 1.2.0, all grid points along a unit dimension were
		    considered arbitrarily to be at ``-1``.
		    From version 1.3.0, under ``align_corners = True`` all grid points
		    along a unit dimension are considered to be at ``0``
		    (the center of the input image).
	**/
	static public function affine_grid(theta:Dynamic, size:Dynamic, ?align_corners:Dynamic):Dynamic;
	/**
		Applies alpha dropout to the input.
		
		See :class:`~torch.nn.AlphaDropout` for details.
	**/
	static public function alpha_dropout(input:Dynamic, ?p:Dynamic, ?training:Dynamic, ?inplace:Dynamic):Dynamic;
	static public function assert_int_or_pair(arg:Dynamic, arg_name:Dynamic, message:Dynamic):Dynamic;
	/**
		avg_pool1d(input, kernel_size, stride=None, padding=0, ceil_mode=False, count_include_pad=True) -> Tensor
		
		Applies a 1D average pooling over an input signal composed of several
		input planes.
		
		See :class:`~torch.nn.AvgPool1d` for details and output shape.
		
		Args:
		    input: input tensor of shape :math:`(\text{minibatch} , \text{in\_channels} , iW)`
		    kernel_size: the size of the window. Can be a single number or a
		      tuple `(kW,)`
		    stride: the stride of the window. Can be a single number or a tuple
		      `(sW,)`. Default: :attr:`kernel_size`
		    padding: implicit zero paddings on both sides of the input. Can be a
		      single number or a tuple `(padW,)`. Default: 0
		    ceil_mode: when True, will use `ceil` instead of `floor` to compute the
		        output shape. Default: ``False``
		    count_include_pad: when True, will include the zero-padding in the
		        averaging calculation. Default: ``True``
		
		Examples::
		
		    >>> # pool of square window of size=3, stride=2
		    >>> input = torch.tensor([[[1, 2, 3, 4, 5, 6, 7]]], dtype=torch.float32)
		    >>> F.avg_pool1d(input, kernel_size=3, stride=2)
		    tensor([[[ 2.,  4.,  6.]]])
	**/
	static public function avg_pool1d(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		avg_pool2d(input, kernel_size, stride=None, padding=0, ceil_mode=False, count_include_pad=True, divisor_override=None) -> Tensor
		
		Applies 2D average-pooling operation in :math:`kH \times kW` regions by step size
		:math:`sH \times sW` steps. The number of output features is equal to the number of
		input planes.
		
		See :class:`~torch.nn.AvgPool2d` for details and output shape.
		
		Args:
		    input: input tensor :math:`(\text{minibatch} , \text{in\_channels} , iH , iW)`
		    kernel_size: size of the pooling region. Can be a single number or a
		      tuple `(kH, kW)`
		    stride: stride of the pooling operation. Can be a single number or a
		      tuple `(sH, sW)`. Default: :attr:`kernel_size`
		    padding: implicit zero paddings on both sides of the input. Can be a
		      single number or a tuple `(padH, padW)`. Default: 0
		    ceil_mode: when True, will use `ceil` instead of `floor` in the formula
		        to compute the output shape. Default: ``False``
		    count_include_pad: when True, will include the zero-padding in the
		        averaging calculation. Default: ``True``
		    divisor_override: if specified, it will be used as divisor, otherwise
		         size of the pooling region will be used. Default: None
	**/
	static public function avg_pool2d(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		avg_pool3d(input, kernel_size, stride=None, padding=0, ceil_mode=False, count_include_pad=True, divisor_override=None) -> Tensor
		
		Applies 3D average-pooling operation in :math:`kT \times kH \times kW` regions by step
		size :math:`sT \times sH \times sW` steps. The number of output features is equal to
		:math:`\lfloor\frac{\text{input planes}}{sT}\rfloor`.
		
		See :class:`~torch.nn.AvgPool3d` for details and output shape.
		
		Args:
		    input: input tensor :math:`(\text{minibatch} , \text{in\_channels} , iT \times iH , iW)`
		    kernel_size: size of the pooling region. Can be a single number or a
		      tuple `(kT, kH, kW)`
		    stride: stride of the pooling operation. Can be a single number or a
		      tuple `(sT, sH, sW)`. Default: :attr:`kernel_size`
		    padding: implicit zero paddings on both sides of the input. Can be a
		      single number or a tuple `(padT, padH, padW)`, Default: 0
		    ceil_mode: when True, will use `ceil` instead of `floor` in the formula
		        to compute the output shape
		    count_include_pad: when True, will include the zero-padding in the
		        averaging calculation
		    divisor_override: if specified, it will be used as divisor, otherwise
		        size of the pooling region will be used. Default: None
	**/
	static public function avg_pool3d(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Applies Batch Normalization for each channel across a batch of data.
		
		See :class:`~torch.nn.BatchNorm1d`, :class:`~torch.nn.BatchNorm2d`,
		:class:`~torch.nn.BatchNorm3d` for details.
	**/
	static public function batch_norm(input:Dynamic, running_mean:Dynamic, running_var:Dynamic, ?weight:Dynamic, ?bias:Dynamic, ?training:Dynamic, ?momentum:Dynamic, ?eps:Dynamic):Dynamic;
	/**
		Applies a bilinear transformation to the incoming data:
		:math:`y = x_1^T A x_2 + b`
		
		Shape:
		
		    - input1: :math:`(N, *, H_{in1})` where :math:`H_{in1}=\text{in1\_features}`
		      and :math:`*` means any number of additional dimensions.
		      All but the last dimension of the inputs should be the same.
		    - input2: :math:`(N, *, H_{in2})` where :math:`H_{in2}=\text{in2\_features}`
		    - weight: :math:`(\text{out\_features}, \text{in1\_features},
		      \text{in2\_features})`
		    - bias: :math:`(\text{out\_features})`
		    - output: :math:`(N, *, H_{out})` where :math:`H_{out}=\text{out\_features}`
		      and all but the last dimension are the same shape as the input.
	**/
	static public function bilinear(input1:Dynamic, input2:Dynamic, weight:Dynamic, ?bias:Dynamic):Dynamic;
	/**
		Function that measures the Binary Cross Entropy between the target and input
		probabilities.
		
		See :class:`~torch.nn.BCELoss` for details.
		
		Args:
		    input: Tensor of arbitrary shape as probabilities.
		    target: Tensor of the same shape as input with values between 0 and 1.
		    weight (Tensor, optional): a manual rescaling weight
		            if provided it's repeated to match input tensor shape
		    size_average (bool, optional): Deprecated (see :attr:`reduction`). By default,
		        the losses are averaged over each loss element in the batch. Note that for
		        some losses, there multiple elements per sample. If the field :attr:`size_average`
		        is set to ``False``, the losses are instead summed for each minibatch. Ignored
		        when reduce is ``False``. Default: ``True``
		    reduce (bool, optional): Deprecated (see :attr:`reduction`). By default, the
		        losses are averaged or summed over observations for each minibatch depending
		        on :attr:`size_average`. When :attr:`reduce` is ``False``, returns a loss per
		        batch element instead and ignores :attr:`size_average`. Default: ``True``
		    reduction (string, optional): Specifies the reduction to apply to the output:
		        ``'none'`` | ``'mean'`` | ``'sum'``. ``'none'``: no reduction will be applied,
		        ``'mean'``: the sum of the output will be divided by the number of
		        elements in the output, ``'sum'``: the output will be summed. Note: :attr:`size_average`
		        and :attr:`reduce` are in the process of being deprecated, and in the meantime,
		        specifying either of those two args will override :attr:`reduction`. Default: ``'mean'``
		
		Examples::
		
		    >>> input = torch.randn((3, 2), requires_grad=True)
		    >>> target = torch.rand((3, 2), requires_grad=False)
		    >>> loss = F.binary_cross_entropy(F.sigmoid(input), target)
		    >>> loss.backward()
	**/
	static public function binary_cross_entropy(input:Dynamic, target:Dynamic, ?weight:Dynamic, ?size_average:Dynamic, ?reduce:Dynamic, ?reduction:Dynamic):Dynamic;
	/**
		Function that measures Binary Cross Entropy between target and input
		logits.
		
		See :class:`~torch.nn.BCEWithLogitsLoss` for details.
		
		Args:
		    input: Tensor of arbitrary shape as unnormalized scores (often referred to as logits).
		    target: Tensor of the same shape as input with values between 0 and 1
		    weight (Tensor, optional): a manual rescaling weight
		        if provided it's repeated to match input tensor shape
		    size_average (bool, optional): Deprecated (see :attr:`reduction`). By default,
		        the losses are averaged over each loss element in the batch. Note that for
		        some losses, there multiple elements per sample. If the field :attr:`size_average`
		        is set to ``False``, the losses are instead summed for each minibatch. Ignored
		        when reduce is ``False``. Default: ``True``
		    reduce (bool, optional): Deprecated (see :attr:`reduction`). By default, the
		        losses are averaged or summed over observations for each minibatch depending
		        on :attr:`size_average`. When :attr:`reduce` is ``False``, returns a loss per
		        batch element instead and ignores :attr:`size_average`. Default: ``True``
		    reduction (string, optional): Specifies the reduction to apply to the output:
		        ``'none'`` | ``'mean'`` | ``'sum'``. ``'none'``: no reduction will be applied,
		        ``'mean'``: the sum of the output will be divided by the number of
		        elements in the output, ``'sum'``: the output will be summed. Note: :attr:`size_average`
		        and :attr:`reduce` are in the process of being deprecated, and in the meantime,
		        specifying either of those two args will override :attr:`reduction`. Default: ``'mean'``
		    pos_weight (Tensor, optional): a weight of positive examples.
		            Must be a vector with length equal to the number of classes.
		
		Examples::
		
		     >>> input = torch.randn(3, requires_grad=True)
		     >>> target = torch.empty(3).random_(2)
		     >>> loss = F.binary_cross_entropy_with_logits(input, target)
		     >>> loss.backward()
	**/
	static public function binary_cross_entropy_with_logits(input:Dynamic, target:Dynamic, ?weight:Dynamic, ?size_average:Dynamic, ?reduce:Dynamic, ?reduction:Dynamic, ?pos_weight:Dynamic):Dynamic;
	/**
		Dispatches to either of 2 script functions based on a boolean argument.
		In TorchScript, the boolean argument must be constant so that the correct
		function to use can be determined at compile time.
	**/
	static public function boolean_dispatch(arg_name:Dynamic, arg_index:Dynamic, _default:Dynamic, if_true:Dynamic, if_false:Dynamic, module_name:Dynamic, func_name:Dynamic):Dynamic;
	/**
		celu(input, alpha=1., inplace=False) -> Tensor
		
		Applies element-wise,
		:math:`\text{CELU}(x) = \max(0,x) + \min(0, \alpha * (\exp(x/\alpha) - 1))`.
		
		See :class:`~torch.nn.CELU` for more details.
	**/
	static public function celu(input:Dynamic, ?alpha:Dynamic, ?inplace:Dynamic):Dynamic;
	/**
		celu_(input, alpha=1.) -> Tensor
		
		In-place version of :func:`~celu`.
	**/
	static public function celu_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		channel_shuffle(input, groups) -> Tensor
		
		Divide the channels in a tensor of shape :math:`(*, C , H, W)`
		into g groups and rearrange them as :math:`(*, C \frac g, g, H, W)`,
		while keeping the original tensor shape.
		
		See :class:`~torch.nn.ChannelShuffle` for details.
		
		Args:
		    input (Tensor): the input tensor
		    groups (int): number of groups to divide channels in and rearrange.
		
		Examples::
		
		    >>> input = torch.randn(1, 4, 2, 2)
		    >>> print(input)
		    [[[[1, 2],
		       [3, 4]],
		      [[5, 6],
		       [7, 8]],
		      [[9, 10],
		       [11, 12]],
		      [[13, 14],
		       [15, 16]],
		     ]]
		    >>> output = torch.nn.functional.channel_shuffle(input, 2)
		    >>> print(output)
		    [[[[1, 2],
		       [3, 4]],
		      [[9, 10],
		       [11, 12]],
		      [[5, 6],
		       [7, 8]],
		      [[13, 14],
		       [15, 16]],
		     ]]
	**/
	static public function channel_shuffle(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		conv1d(input, weight, bias=None, stride=1, padding=0, dilation=1, groups=1) -> Tensor
		
		Applies a 1D convolution over an input signal composed of several input
		planes.
		
		This operator supports :ref:`TensorFloat32<tf32_on_ampere>`.
		
		See :class:`~torch.nn.Conv1d` for details and output shape.
		
		Note:
		    In some circumstances when given tensors on a CUDA device and using CuDNN, this operator may select a nondeterministic algorithm to increase performance. If this is undesirable, you can try to make the operation deterministic (potentially at a performance cost) by setting ``torch.backends.cudnn.deterministic = True``. See :doc:`/notes/randomness` for more information.
		
		
		Args:
		    input: input tensor of shape :math:`(\text{minibatch} , \text{in\_channels} , iW)`
		    weight: filters of shape :math:`(\text{out\_channels} , \frac{\text{in\_channels}}{\text{groups}} , kW)`
		    bias: optional bias of shape :math:`(\text{out\_channels})`. Default: ``None``
		    stride: the stride of the convolving kernel. Can be a single number or
		      a one-element tuple `(sW,)`. Default: 1
		    padding: implicit paddings on both sides of the input. Can be a string {'valid', 'same'},
		      single number or a one-element tuple `(padW,)`. Default: 0
		      ``padding='valid'`` is the same as no padding. ``padding='same'`` pads
		      the input so the output has the shape as the input. However, this mode
		      doesn't support any stride values other than 1.
		
		      .. warning::
		          For ``padding='same'``, if the ``weight`` is even-length and
		          ``dilation`` is odd in any dimension, a full :func:`pad` operation
		          may be needed internally. Lowering performance.
		    dilation: the spacing between kernel elements. Can be a single number or
		      a one-element tuple `(dW,)`. Default: 1
		    groups: split input into groups, :math:`\text{in\_channels}` should be divisible by
		      the number of groups. Default: 1
		
		Examples::
		
		    >>> inputs = torch.randn(33, 16, 30)
		    >>> filters = torch.randn(20, 16, 5)
		    >>> F.conv1d(inputs, filters)
	**/
	static public function conv1d(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		conv2d(input, weight, bias=None, stride=1, padding=0, dilation=1, groups=1) -> Tensor
		
		Applies a 2D convolution over an input image composed of several input
		planes.
		
		This operator supports :ref:`TensorFloat32<tf32_on_ampere>`.
		
		See :class:`~torch.nn.Conv2d` for details and output shape.
		
		Note:
		    In some circumstances when given tensors on a CUDA device and using CuDNN, this operator may select a nondeterministic algorithm to increase performance. If this is undesirable, you can try to make the operation deterministic (potentially at a performance cost) by setting ``torch.backends.cudnn.deterministic = True``. See :doc:`/notes/randomness` for more information.
		
		
		Args:
		    input: input tensor of shape :math:`(\text{minibatch} , \text{in\_channels} , iH , iW)`
		    weight: filters of shape :math:`(\text{out\_channels} , \frac{\text{in\_channels}}{\text{groups}} , kH , kW)`
		    bias: optional bias tensor of shape :math:`(\text{out\_channels})`. Default: ``None``
		    stride: the stride of the convolving kernel. Can be a single number or a
		      tuple `(sH, sW)`. Default: 1
		    padding: implicit paddings on both sides of the input. Can be a string {'valid', 'same'},
		      single number or a tuple `(padH, padW)`. Default: 0
		      ``padding='valid'`` is the same as no padding. ``padding='same'`` pads
		      the input so the output has the shape as the input. However, this mode
		      doesn't support any stride values other than 1.
		
		      .. warning::
		          For ``padding='same'``, if the ``weight`` is even-length and
		          ``dilation`` is odd in any dimension, a full :func:`pad` operation
		          may be needed internally. Lowering performance.
		
		    dilation: the spacing between kernel elements. Can be a single number or
		      a tuple `(dH, dW)`. Default: 1
		    groups: split input into groups, :math:`\text{in\_channels}` should be divisible by the
		      number of groups. Default: 1
		
		Examples::
		
		    >>> # With square kernels and equal stride
		    >>> filters = torch.randn(8, 4, 3, 3)
		    >>> inputs = torch.randn(1, 4, 5, 5)
		    >>> F.conv2d(inputs, filters, padding=1)
	**/
	static public function conv2d(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		conv3d(input, weight, bias=None, stride=1, padding=0, dilation=1, groups=1) -> Tensor
		
		Applies a 3D convolution over an input image composed of several input
		planes.
		
		This operator supports :ref:`TensorFloat32<tf32_on_ampere>`.
		
		See :class:`~torch.nn.Conv3d` for details and output shape.
		
		Note:
		    In some circumstances when given tensors on a CUDA device and using CuDNN, this operator may select a nondeterministic algorithm to increase performance. If this is undesirable, you can try to make the operation deterministic (potentially at a performance cost) by setting ``torch.backends.cudnn.deterministic = True``. See :doc:`/notes/randomness` for more information.
		
		
		Args:
		    input: input tensor of shape :math:`(\text{minibatch} , \text{in\_channels} , iT , iH , iW)`
		    weight: filters of shape :math:`(\text{out\_channels} , \frac{\text{in\_channels}}{\text{groups}} , kT , kH , kW)`
		    bias: optional bias tensor of shape :math:`(\text{out\_channels})`. Default: None
		    stride: the stride of the convolving kernel. Can be a single number or a
		      tuple `(sT, sH, sW)`. Default: 1
		    padding: implicit paddings on both sides of the input. Can be a string {'valid', 'same'},
		      single number or a tuple `(padT, padH, padW)`. Default: 0
		      ``padding='valid'`` is the same as no padding. ``padding='same'`` pads
		      the input so the output has the shape as the input. However, this mode
		      doesn't support any stride values other than 1.
		
		      .. warning::
		          For ``padding='same'``, if the ``weight`` is even-length and
		          ``dilation`` is odd in any dimension, a full :func:`pad` operation
		          may be needed internally. Lowering performance.
		
		    dilation: the spacing between kernel elements. Can be a single number or
		      a tuple `(dT, dH, dW)`. Default: 1
		    groups: split input into groups, :math:`\text{in\_channels}` should be divisible by
		      the number of groups. Default: 1
		
		Examples::
		
		    >>> filters = torch.randn(33, 16, 3, 3, 3)
		    >>> inputs = torch.randn(20, 16, 50, 10, 20)
		    >>> F.conv3d(inputs, filters)
	**/
	static public function conv3d(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Applies a 1-dimensional sequence convolution over an input sequence.
		Input and output dimensions are (Time, Batch, Channels) - hence TBC.
		
		Args:
		    input: input tensor of shape :math:`(\text{sequence length} \times batch \times \text{in\_channels})`
		    weight: filter of shape (:math:`\text{kernel width} \times \text{in\_channels} \times \text{out\_channels}`)
		    bias: bias of shape (:math:`\text{out\_channels}`)
		    pad: number of timesteps to pad. Default: 0
	**/
	static public function conv_tbc(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		conv_transpose1d(input, weight, bias=None, stride=1, padding=0, output_padding=0, groups=1, dilation=1) -> Tensor
		
		Applies a 1D transposed convolution operator over an input signal
		composed of several input planes, sometimes also called "deconvolution".
		
		This operator supports :ref:`TensorFloat32<tf32_on_ampere>`.
		
		See :class:`~torch.nn.ConvTranspose1d` for details and output shape.
		
		Note:
		    In some circumstances when given tensors on a CUDA device and using CuDNN, this operator may select a nondeterministic algorithm to increase performance. If this is undesirable, you can try to make the operation deterministic (potentially at a performance cost) by setting ``torch.backends.cudnn.deterministic = True``. See :doc:`/notes/randomness` for more information.
		
		
		Args:
		    input: input tensor of shape :math:`(\text{minibatch} , \text{in\_channels} , iW)`
		    weight: filters of shape :math:`(\text{in\_channels} , \frac{\text{out\_channels}}{\text{groups}} , kW)`
		    bias: optional bias of shape :math:`(\text{out\_channels})`. Default: None
		    stride: the stride of the convolving kernel. Can be a single number or a
		      tuple ``(sW,)``. Default: 1
		    padding: ``dilation * (kernel_size - 1) - padding`` zero-padding will be added to both
		      sides of each dimension in the input. Can be a single number or a tuple
		      ``(padW,)``. Default: 0
		    output_padding: additional size added to one side of each dimension in the
		      output shape. Can be a single number or a tuple ``(out_padW)``. Default: 0
		    groups: split input into groups, :math:`\text{in\_channels}` should be divisible by the
		      number of groups. Default: 1
		    dilation: the spacing between kernel elements. Can be a single number or
		      a tuple ``(dW,)``. Default: 1
		
		Examples::
		
		    >>> inputs = torch.randn(20, 16, 50)
		    >>> weights = torch.randn(16, 33, 5)
		    >>> F.conv_transpose1d(inputs, weights)
	**/
	static public function conv_transpose1d(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		conv_transpose2d(input, weight, bias=None, stride=1, padding=0, output_padding=0, groups=1, dilation=1) -> Tensor
		
		Applies a 2D transposed convolution operator over an input image
		composed of several input planes, sometimes also called "deconvolution".
		
		This operator supports :ref:`TensorFloat32<tf32_on_ampere>`.
		
		See :class:`~torch.nn.ConvTranspose2d` for details and output shape.
		
		Note:
		    In some circumstances when given tensors on a CUDA device and using CuDNN, this operator may select a nondeterministic algorithm to increase performance. If this is undesirable, you can try to make the operation deterministic (potentially at a performance cost) by setting ``torch.backends.cudnn.deterministic = True``. See :doc:`/notes/randomness` for more information.
		
		
		Args:
		    input: input tensor of shape :math:`(\text{minibatch} , \text{in\_channels} , iH , iW)`
		    weight: filters of shape :math:`(\text{in\_channels} , \frac{\text{out\_channels}}{\text{groups}} , kH , kW)`
		    bias: optional bias of shape :math:`(\text{out\_channels})`. Default: None
		    stride: the stride of the convolving kernel. Can be a single number or a
		      tuple ``(sH, sW)``. Default: 1
		    padding: ``dilation * (kernel_size - 1) - padding`` zero-padding will be added to both
		      sides of each dimension in the input. Can be a single number or a tuple
		      ``(padH, padW)``. Default: 0
		    output_padding: additional size added to one side of each dimension in the
		      output shape. Can be a single number or a tuple ``(out_padH, out_padW)``.
		      Default: 0
		    groups: split input into groups, :math:`\text{in\_channels}` should be divisible by the
		      number of groups. Default: 1
		    dilation: the spacing between kernel elements. Can be a single number or
		      a tuple ``(dH, dW)``. Default: 1
		
		Examples::
		
		    >>> # With square kernels and equal stride
		    >>> inputs = torch.randn(1, 4, 5, 5)
		    >>> weights = torch.randn(4, 8, 3, 3)
		    >>> F.conv_transpose2d(inputs, weights, padding=1)
	**/
	static public function conv_transpose2d(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		conv_transpose3d(input, weight, bias=None, stride=1, padding=0, output_padding=0, groups=1, dilation=1) -> Tensor
		
		Applies a 3D transposed convolution operator over an input image
		composed of several input planes, sometimes also called "deconvolution"
		
		This operator supports :ref:`TensorFloat32<tf32_on_ampere>`.
		
		See :class:`~torch.nn.ConvTranspose3d` for details and output shape.
		
		Note:
		    In some circumstances when given tensors on a CUDA device and using CuDNN, this operator may select a nondeterministic algorithm to increase performance. If this is undesirable, you can try to make the operation deterministic (potentially at a performance cost) by setting ``torch.backends.cudnn.deterministic = True``. See :doc:`/notes/randomness` for more information.
		
		
		Args:
		    input: input tensor of shape :math:`(\text{minibatch} , \text{in\_channels} , iT , iH , iW)`
		    weight: filters of shape :math:`(\text{in\_channels} , \frac{\text{out\_channels}}{\text{groups}} , kT , kH , kW)`
		    bias: optional bias of shape :math:`(\text{out\_channels})`. Default: None
		    stride: the stride of the convolving kernel. Can be a single number or a
		      tuple ``(sT, sH, sW)``. Default: 1
		    padding: ``dilation * (kernel_size - 1) - padding`` zero-padding will be added to both
		      sides of each dimension in the input. Can be a single number or a tuple
		      ``(padT, padH, padW)``. Default: 0
		    output_padding: additional size added to one side of each dimension in the
		      output shape. Can be a single number or a tuple
		      ``(out_padT, out_padH, out_padW)``. Default: 0
		    groups: split input into groups, :math:`\text{in\_channels}` should be divisible by the
		      number of groups. Default: 1
		    dilation: the spacing between kernel elements. Can be a single number or
		      a tuple `(dT, dH, dW)`. Default: 1
		
		Examples::
		
		    >>> inputs = torch.randn(20, 16, 50, 10, 20)
		    >>> weights = torch.randn(16, 33, 3, 3, 3)
		    >>> F.conv_transpose3d(inputs, weights)
	**/
	static public function conv_transpose3d(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		cosine_embedding_loss(input1, input2, target, margin=0, size_average=None, reduce=None, reduction='mean') -> Tensor
		
		See :class:`~torch.nn.CosineEmbeddingLoss` for details.
	**/
	static public function cosine_embedding_loss(input1:Dynamic, input2:Dynamic, target:Dynamic, ?margin:Dynamic, ?size_average:Dynamic, ?reduce:Dynamic, ?reduction:Dynamic):Dynamic;
	/**
		cosine_similarity(x1, x2, dim=1, eps=1e-8) -> Tensor
		
		Returns cosine similarity between ``x1`` and ``x2``, computed along dim. ``x1`` and ``x2`` must be broadcastable
		to a common shape. ``dim`` refers to the dimension in this common shape. Dimension ``dim`` of the output is
		squeezed (see :func:`torch.squeeze`), resulting in the
		output tensor having 1 fewer dimension.
		
		.. math ::
		    \text{similarity} = \dfrac{x_1 \cdot x_2}{\max(\Vert x_1 \Vert _2 \cdot \Vert x_2 \Vert _2, \epsilon)}
		
		Supports :ref:`type promotion <type-promotion-doc>`.
		
		Args:
		    x1 (Tensor): First input.
		    x2 (Tensor): Second input.
		    dim (int, optional): Dimension along which cosine similarity is computed. Default: 1
		    eps (float, optional): Small value to avoid division by zero.
		        Default: 1e-8
		
		Example::
		
		    >>> input1 = torch.randn(100, 128)
		    >>> input2 = torch.randn(100, 128)
		    >>> output = F.cosine_similarity(input1, input2)
		    >>> print(output)
	**/
	static public function cosine_similarity(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		This criterion computes the cross entropy loss between input and target.
		
		See :class:`~torch.nn.CrossEntropyLoss` for details.
		
		Args:
		    input (Tensor) : :math:`(N, C)` where `C = number of classes` or :math:`(N, C, H, W)`
		        in case of 2D Loss, or :math:`(N, C, d_1, d_2, ..., d_K)` where :math:`K \geq 1`
		        in the case of K-dimensional loss. `input` is expected to contain unnormalized scores
		        (often referred to as logits).
		    target (Tensor) : If containing class indices, shape :math:`(N)` where each value is
		        :math:`0 \leq \text{targets}[i] \leq C-1`, or :math:`(N, d_1, d_2, ..., d_K)` with
		        :math:`K \geq 1` in the case of K-dimensional loss. If containing class probabilities,
		        same shape as the input.
		    weight (Tensor, optional): a manual rescaling weight given to each
		        class. If given, has to be a Tensor of size `C`
		    size_average (bool, optional): Deprecated (see :attr:`reduction`). By default,
		        the losses are averaged over each loss element in the batch. Note that for
		        some losses, there multiple elements per sample. If the field :attr:`size_average`
		        is set to ``False``, the losses are instead summed for each minibatch. Ignored
		        when reduce is ``False``. Default: ``True``
		    ignore_index (int, optional): Specifies a target value that is ignored
		        and does not contribute to the input gradient. When :attr:`size_average` is
		        ``True``, the loss is averaged over non-ignored targets. Note that
		        :attr:`ignore_index` is only applicable when the target contains class indices.
		        Default: -100
		    reduce (bool, optional): Deprecated (see :attr:`reduction`). By default, the
		        losses are averaged or summed over observations for each minibatch depending
		        on :attr:`size_average`. When :attr:`reduce` is ``False``, returns a loss per
		        batch element instead and ignores :attr:`size_average`. Default: ``True``
		    reduction (string, optional): Specifies the reduction to apply to the output:
		        ``'none'`` | ``'mean'`` | ``'sum'``. ``'none'``: no reduction will be applied,
		        ``'mean'``: the sum of the output will be divided by the number of
		        elements in the output, ``'sum'``: the output will be summed. Note: :attr:`size_average`
		        and :attr:`reduce` are in the process of being deprecated, and in the meantime,
		        specifying either of those two args will override :attr:`reduction`. Default: ``'mean'``
		    label_smoothing (float, optional): A float in [0.0, 1.0]. Specifies the amount
		        of smoothing when computing the loss, where 0.0 means no smoothing. The targets
		        become a mixture of the original ground truth and a uniform distribution as described in
		        `Rethinking the Inception Architecture for Computer Vision <https://arxiv.org/abs/1512.00567>`__. Default: :math:`0.0`.
		
		Examples::
		
		    >>> # Example of target with class indices
		    >>> input = torch.randn(3, 5, requires_grad=True)
		    >>> target = torch.randint(5, (3,), dtype=torch.int64)
		    >>> loss = F.cross_entropy(input, target)
		    >>> loss.backward()
		    >>>
		    >>> # Example of target with class probabilities
		    >>> input = torch.randn(3, 5, requires_grad=True)
		    >>> target = torch.randn(3, 5).softmax(dim=1)
		    >>> loss = F.cross_entropy(input, target)
		    >>> loss.backward()
	**/
	static public function cross_entropy(input:Dynamic, target:Dynamic, ?weight:Dynamic, ?size_average:Dynamic, ?ignore_index:Dynamic, ?reduce:Dynamic, ?reduction:Dynamic, ?label_smoothing:Dynamic):Dynamic;
	/**
		The Connectionist Temporal Classification loss.
		
		See :class:`~torch.nn.CTCLoss` for details.
		
		Note:
		    In some circumstances when given tensors on a CUDA device and using CuDNN, this operator may select a nondeterministic algorithm to increase performance. If this is undesirable, you can try to make the operation deterministic (potentially at a performance cost) by setting ``torch.backends.cudnn.deterministic = True``. See :doc:`/notes/randomness` for more information.
		
		Note:
		    This operation may produce nondeterministic gradients when given tensors on a CUDA device. See :doc:`/notes/randomness` for more information.
		
		Args:
		    log_probs: :math:`(T, N, C)` where `C = number of characters in alphabet including blank`,
		        `T = input length`, and `N = batch size`.
		        The logarithmized probabilities of the outputs
		        (e.g. obtained with :func:`torch.nn.functional.log_softmax`).
		    targets: :math:`(N, S)` or `(sum(target_lengths))`.
		        Targets cannot be blank. In the second form, the targets are assumed to be concatenated.
		    input_lengths: :math:`(N)`.
		        Lengths of the inputs (must each be :math:`\leq T`)
		    target_lengths: :math:`(N)`.
		        Lengths of the targets
		    blank (int, optional):
		        Blank label. Default :math:`0`.
		    reduction (string, optional): Specifies the reduction to apply to the output:
		        ``'none'`` | ``'mean'`` | ``'sum'``. ``'none'``: no reduction will be applied,
		        ``'mean'``: the output losses will be divided by the target lengths and
		        then the mean over the batch is taken, ``'sum'``: the output will be
		        summed. Default: ``'mean'``
		    zero_infinity (bool, optional):
		        Whether to zero infinite losses and the associated gradients.
		        Default: ``False``
		        Infinite losses mainly occur when the inputs are too short
		        to be aligned to the targets.
		
		Example::
		
		    >>> log_probs = torch.randn(50, 16, 20).log_softmax(2).detach().requires_grad_()
		    >>> targets = torch.randint(1, 20, (16, 30), dtype=torch.long)
		    >>> input_lengths = torch.full((16,), 50, dtype=torch.long)
		    >>> target_lengths = torch.randint(10,30,(16,), dtype=torch.long)
		    >>> loss = F.ctc_loss(log_probs, targets, input_lengths, target_lengths)
		    >>> loss.backward()
	**/
	static public function ctc_loss(log_probs:Dynamic, targets:Dynamic, input_lengths:Dynamic, target_lengths:Dynamic, ?blank:Dynamic, ?reduction:Dynamic, ?zero_infinity:Dynamic):Dynamic;
	/**
		During training, randomly zeroes some of the elements of the input
		tensor with probability :attr:`p` using samples from a Bernoulli
		distribution.
		
		See :class:`~torch.nn.Dropout` for details.
		
		Args:
		    p: probability of an element to be zeroed. Default: 0.5
		    training: apply dropout if is ``True``. Default: ``True``
		    inplace: If set to ``True``, will do this operation in-place. Default: ``False``
	**/
	static public function dropout(input:Dynamic, ?p:Dynamic, ?training:Dynamic, ?inplace:Dynamic):Dynamic;
	/**
		Randomly zero out entire channels (a channel is a 2D feature map,
		e.g., the :math:`j`-th channel of the :math:`i`-th sample in the
		batched input is a 2D tensor :math:`\text{input}[i, j]`) of the input tensor).
		Each channel will be zeroed out independently on every forward call with
		probability :attr:`p` using samples from a Bernoulli distribution.
		
		See :class:`~torch.nn.Dropout2d` for details.
		
		Args:
		    p: probability of a channel to be zeroed. Default: 0.5
		    training: apply dropout if is ``True``. Default: ``True``
		    inplace: If set to ``True``, will do this operation in-place. Default: ``False``
	**/
	static public function dropout2d(input:Dynamic, ?p:Dynamic, ?training:Dynamic, ?inplace:Dynamic):Dynamic;
	/**
		Randomly zero out entire channels (a channel is a 3D feature map,
		e.g., the :math:`j`-th channel of the :math:`i`-th sample in the
		batched input is a 3D tensor :math:`\text{input}[i, j]`) of the input tensor).
		Each channel will be zeroed out independently on every forward call with
		probability :attr:`p` using samples from a Bernoulli distribution.
		
		See :class:`~torch.nn.Dropout3d` for details.
		
		Args:
		    p: probability of a channel to be zeroed. Default: 0.5
		    training: apply dropout if is ``True``. Default: ``True``
		    inplace: If set to ``True``, will do this operation in-place. Default: ``False``
	**/
	static public function dropout3d(input:Dynamic, ?p:Dynamic, ?training:Dynamic, ?inplace:Dynamic):Dynamic;
	/**
		Applies element-wise,
		:math:`\text{ELU}(x) = \max(0,x) + \min(0, \alpha * (\exp(x) - 1))`.
		
		See :class:`~torch.nn.ELU` for more details.
	**/
	static public function elu(input:Dynamic, ?alpha:Dynamic, ?inplace:Dynamic):Dynamic;
	/**
		elu_(input, alpha=1.) -> Tensor
		
		In-place version of :func:`~elu`.
	**/
	static public function elu_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		A simple lookup table that looks up embeddings in a fixed dictionary and size.
		
		This module is often used to retrieve word embeddings using indices.
		The input to the module is a list of indices, and the embedding matrix,
		and the output is the corresponding word embeddings.
		
		See :class:`torch.nn.Embedding` for more details.
		
		Args:
		    input (LongTensor): Tensor containing indices into the embedding matrix
		    weight (Tensor): The embedding matrix with number of rows equal to the maximum possible index + 1,
		        and number of columns equal to the embedding size
		    padding_idx (int, optional): If specified, the entries at :attr:`padding_idx` do not contribute to the gradient;
		                                 therefore, the embedding vector at :attr:`padding_idx` is not updated during training,
		                                 i.e. it remains as a fixed "pad".
		    max_norm (float, optional): If given, each embedding vector with norm larger than :attr:`max_norm`
		                                is renormalized to have norm :attr:`max_norm`.
		                                Note: this will modify :attr:`weight` in-place.
		    norm_type (float, optional): The p of the p-norm to compute for the :attr:`max_norm` option. Default ``2``.
		    scale_grad_by_freq (boolean, optional): If given, this will scale gradients by the inverse of frequency of
		                                            the words in the mini-batch. Default ``False``.
		    sparse (bool, optional): If ``True``, gradient w.r.t. :attr:`weight` will be a sparse tensor. See Notes under
		                             :class:`torch.nn.Embedding` for more details regarding sparse gradients.
		
		Shape:
		    - Input: LongTensor of arbitrary shape containing the indices to extract
		    - Weight: Embedding matrix of floating point type with shape `(V, embedding_dim)`,
		      where V = maximum index + 1 and embedding_dim = the embedding size
		    - Output: `(*, embedding_dim)`, where `*` is the input shape
		
		Examples::
		
		    >>> # a batch of 2 samples of 4 indices each
		    >>> input = torch.tensor([[1,2,4,5],[4,3,2,9]])
		    >>> # an embedding matrix containing 10 tensors of size 3
		    >>> embedding_matrix = torch.rand(10, 3)
		    >>> F.embedding(input, embedding_matrix)
		    tensor([[[ 0.8490,  0.9625,  0.6753],
		             [ 0.9666,  0.7761,  0.6108],
		             [ 0.6246,  0.9751,  0.3618],
		             [ 0.4161,  0.2419,  0.7383]],
		
		            [[ 0.6246,  0.9751,  0.3618],
		             [ 0.0237,  0.7794,  0.0528],
		             [ 0.9666,  0.7761,  0.6108],
		             [ 0.3385,  0.8612,  0.1867]]])
		
		    >>> # example with padding_idx
		    >>> weights = torch.rand(10, 3)
		    >>> weights[0, :].zero_()
		    >>> embedding_matrix = weights
		    >>> input = torch.tensor([[0,2,0,5]])
		    >>> F.embedding(input, embedding_matrix, padding_idx=0)
		    tensor([[[ 0.0000,  0.0000,  0.0000],
		             [ 0.5609,  0.5384,  0.8720],
		             [ 0.0000,  0.0000,  0.0000],
		             [ 0.6262,  0.2438,  0.7471]]])
	**/
	static public function embedding(input:Dynamic, weight:Dynamic, ?padding_idx:Dynamic, ?max_norm:Dynamic, ?norm_type:Dynamic, ?scale_grad_by_freq:Dynamic, ?sparse:Dynamic):Dynamic;
	/**
		Computes sums, means or maxes of `bags` of embeddings, without instantiating the
		intermediate embeddings.
		
		See :class:`torch.nn.EmbeddingBag` for more details.
		
		Note:
		    This operation may produce nondeterministic gradients when given tensors on a CUDA device. See :doc:`/notes/randomness` for more information.
		
		Args:
		    input (LongTensor): Tensor containing bags of indices into the embedding matrix
		    weight (Tensor): The embedding matrix with number of rows equal to the maximum possible index + 1,
		        and number of columns equal to the embedding size
		    offsets (LongTensor, optional): Only used when :attr:`input` is 1D. :attr:`offsets` determines
		                         the starting index position of each bag (sequence) in :attr:`input`.
		    max_norm (float, optional): If given, each embedding vector with norm larger than :attr:`max_norm`
		                                is renormalized to have norm :attr:`max_norm`.
		                                Note: this will modify :attr:`weight` in-place.
		    norm_type (float, optional): The ``p`` in the ``p``-norm to compute for the :attr:`max_norm` option.
		                                 Default ``2``.
		    scale_grad_by_freq (boolean, optional): if given, this will scale gradients by the inverse of frequency of
		                                            the words in the mini-batch. Default ``False``.
		                                            Note: this option is not supported when ``mode="max"``.
		    mode (string, optional): ``"sum"``, ``"mean"`` or ``"max"``. Specifies the way to reduce the bag.
		                             Default: ``"mean"``
		    sparse (bool, optional): if ``True``, gradient w.r.t. :attr:`weight` will be a sparse tensor. See Notes under
		                             :class:`torch.nn.Embedding` for more details regarding sparse gradients.
		                             Note: this option is not supported when ``mode="max"``.
		    per_sample_weights (Tensor, optional): a tensor of float / double weights, or None
		        to indicate all weights should be taken to be 1. If specified, :attr:`per_sample_weights`
		        must have exactly the same shape as input and is treated as having the same
		        :attr:`offsets`, if those are not None.
		
		    include_last_offset (bool, optional): if ``True``, the size of offsets is equal to the number of bags + 1.
		        The last element is the size of the input, or the ending index position of the last bag (sequence).
		
		    padding_idx (int, optional): If specified, the entries at :attr:`padding_idx` do not contribute to the
		                                 gradient; therefore, the embedding vector at :attr:`padding_idx` is not updated
		                                 during training, i.e. it remains as a fixed "pad". Note that the embedding
		                                 vector at :attr:`padding_idx` is excluded from the reduction.
		
		Shape:
		    - :attr:`input` (LongTensor) and :attr:`offsets` (LongTensor, optional)
		
		      - If :attr:`input` is 2D of shape `(B, N)`, it will be treated as ``B`` bags (sequences)
		        each of fixed length ``N``, and this will return ``B`` values aggregated in a way
		        depending on the :attr:`mode`. :attr:`offsets` is ignored and required to be ``None`` in this case.
		
		      - If :attr:`input` is 1D of shape `(N)`, it will be treated as a concatenation of
		        multiple bags (sequences). :attr:`offsets` is required to be a 1D tensor containing
		        the starting index positions of each bag in :attr:`input`. Therefore, for :attr:`offsets`
		        of shape `(B)`, :attr:`input` will be viewed as having ``B`` bags.
		        Empty bags (i.e., having 0-length) will have returned vectors filled by zeros.
		
		    - :attr:`weight` (Tensor): the learnable weights of the module of shape `(num_embeddings, embedding_dim)`
		
		    - :attr:`per_sample_weights` (Tensor, optional). Has the same shape as :attr:`input`.
		
		    - :attr:`output`: aggregated embedding values of shape `(B, embedding_dim)`
		
		Examples::
		
		    >>> # an Embedding module containing 10 tensors of size 3
		    >>> embedding_matrix = torch.rand(10, 3)
		    >>> # a batch of 2 samples of 4 indices each
		    >>> input = torch.tensor([1,2,4,5,4,3,2,9])
		    >>> offsets = torch.tensor([0,4])
		    >>> F.embedding_bag(input, embedding_matrix, offsets)
		    tensor([[ 0.3397,  0.3552,  0.5545],
		            [ 0.5893,  0.4386,  0.5882]])
		
		    >>> # example with padding_idx
		    >>> embedding_matrix = torch.rand(10, 3)
		    >>> input = torch.tensor([2, 2, 2, 2, 4, 3, 2, 9])
		    >>> offsets = torch.tensor([0,4])
		    >>> F.embedding_bag(input, embedding_matrix, offsets, padding_idx=2, mode='sum')
		    tensor([[ 0.0000,  0.0000,  0.0000],
		            [-0.7082,  3.2145, -2.6251]])
	**/
	static public function embedding_bag(input:Dynamic, weight:Dynamic, ?offsets:Dynamic, ?max_norm:Dynamic, ?norm_type:Dynamic, ?scale_grad_by_freq:Dynamic, ?mode:Dynamic, ?sparse:Dynamic, ?per_sample_weights:Dynamic, ?include_last_offset:Dynamic, ?padding_idx:Dynamic):Dynamic;
	/**
		Randomly masks out entire channels (a channel is a feature map,
		e.g. the :math:`j`-th channel of the :math:`i`-th sample in the batch input
		is a tensor :math:`\text{input}[i, j]`) of the input tensor). Instead of
		setting activations to zero, as in regular Dropout, the activations are set
		to the negative saturation value of the SELU activation function.
		
		Each element will be masked independently on every forward call with
		probability :attr:`p` using samples from a Bernoulli distribution.
		The elements to be masked are randomized on every forward call, and scaled
		and shifted to maintain zero mean and unit variance.
		
		See :class:`~torch.nn.FeatureAlphaDropout` for details.
		
		Args:
		    p: dropout probability of a channel to be zeroed. Default: 0.5
		    training: apply dropout if is ``True``. Default: ``True``
		    inplace: If set to ``True``, will do this operation in-place. Default: ``False``
	**/
	static public function feature_alpha_dropout(input:Dynamic, ?p:Dynamic, ?training:Dynamic, ?inplace:Dynamic):Dynamic;
	/**
		Combines an array of sliding local blocks into a large containing
		tensor.
		
		.. warning::
		    Currently, only 3-D output tensors (unfolded batched image-like tensors) are
		    supported.
		
		See :class:`torch.nn.Fold` for details
	**/
	static public function fold(input:Dynamic, output_size:Dynamic, kernel_size:Dynamic, ?dilation:Dynamic, ?padding:Dynamic, ?stride:Dynamic):Dynamic;
	/**
		Applies 2D fractional max pooling over an input signal composed of several input planes.
		
		Fractional MaxPooling is described in detail in the paper `Fractional MaxPooling`_ by Ben Graham
		
		The max-pooling operation is applied in :math:`kH \times kW` regions by a stochastic
		step size determined by the target output size.
		The number of output features is equal to the number of input planes.
		
		Args:
		    kernel_size: the size of the window to take a max over.
		                 Can be a single number :math:`k` (for a square kernel of :math:`k \times k`)
		                 or a tuple `(kH, kW)`
		    output_size: the target output size of the image of the form :math:`oH \times oW`.
		                 Can be a tuple `(oH, oW)` or a single number :math:`oH` for a square image :math:`oH \times oH`
		    output_ratio: If one wants to have an output size as a ratio of the input size, this option can be given.
		                  This has to be a number or tuple in the range (0, 1)
		    return_indices: if ``True``, will return the indices along with the outputs.
		                    Useful to pass to :func:`~torch.nn.functional.max_unpool2d`.
		
		Examples::
		    >>> input = torch.randn(20, 16, 50, 32)
		    >>> # pool of square window of size=3, and target output size 13x12
		    >>> F.fractional_max_pool2d(input, 3, output_size=(13, 12))
		    >>> # pool of square window and target output size being half of input image size
		    >>> F.fractional_max_pool2d(input, 3, output_ratio=(0.5, 0.5))
		
		.. _Fractional MaxPooling:
		    http://arxiv.org/abs/1412.6071
	**/
	static public function fractional_max_pool2d(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Applies 2D fractional max pooling over an input signal composed of several input planes.
		
		Fractional MaxPooling is described in detail in the paper `Fractional MaxPooling`_ by Ben Graham
		
		The max-pooling operation is applied in :math:`kH \times kW` regions by a stochastic
		step size determined by the target output size.
		The number of output features is equal to the number of input planes.
		
		Args:
		    kernel_size: the size of the window to take a max over.
		                 Can be a single number :math:`k` (for a square kernel of :math:`k \times k`)
		                 or a tuple `(kH, kW)`
		    output_size: the target output size of the image of the form :math:`oH \times oW`.
		                 Can be a tuple `(oH, oW)` or a single number :math:`oH` for a square image :math:`oH \times oH`
		    output_ratio: If one wants to have an output size as a ratio of the input size, this option can be given.
		                  This has to be a number or tuple in the range (0, 1)
		    return_indices: if ``True``, will return the indices along with the outputs.
		                    Useful to pass to :func:`~torch.nn.functional.max_unpool2d`.
		
		Examples::
		    >>> input = torch.randn(20, 16, 50, 32)
		    >>> # pool of square window of size=3, and target output size 13x12
		    >>> F.fractional_max_pool2d(input, 3, output_size=(13, 12))
		    >>> # pool of square window and target output size being half of input image size
		    >>> F.fractional_max_pool2d(input, 3, output_ratio=(0.5, 0.5))
		
		.. _Fractional MaxPooling:
		    http://arxiv.org/abs/1412.6071
	**/
	static public function fractional_max_pool2d_with_indices(input:Dynamic, kernel_size:Dynamic, ?output_size:Dynamic, ?output_ratio:Dynamic, ?return_indices:Dynamic, ?_random_samples:Dynamic):Dynamic;
	/**
		Applies 3D fractional max pooling over an input signal composed of several input planes.
		
		Fractional MaxPooling is described in detail in the paper `Fractional MaxPooling`_ by Ben Graham
		
		The max-pooling operation is applied in :math:`kT \times kH \times kW` regions by a stochastic
		step size determined by the target output size.
		The number of output features is equal to the number of input planes.
		
		Args:
		    kernel_size: the size of the window to take a max over.
		                 Can be a single number :math:`k` (for a square kernel of :math:`k \times k \times k`)
		                 or a tuple `(kT, kH, kW)`
		    output_size: the target output size of the form :math:`oT \times oH \times oW`.
		                 Can be a tuple `(oT, oH, oW)` or a single number :math:`oH` for a cubic output
		                 :math:`oH \times oH \times oH`
		    output_ratio: If one wants to have an output size as a ratio of the input size, this option can be given.
		                  This has to be a number or tuple in the range (0, 1)
		    return_indices: if ``True``, will return the indices along with the outputs.
		                    Useful to pass to :func:`~torch.nn.functional.max_unpool3d`.
		
		Examples::
		    >>> input = torch.randn(20, 16, 50, 32, 16)
		    >>> # pool of cubic window of size=3, and target output size 13x12x11
		    >>> F.fractional_max_pool3d(input, 3, output_size=(13, 12, 11))
		    >>> # pool of cubic window and target output size being half of input size
		    >>> F.fractional_max_pool3d(input, 3, output_ratio=(0.5, 0.5, 0.5))
		
		.. _Fractional MaxPooling:
		    http://arxiv.org/abs/1412.6071
	**/
	static public function fractional_max_pool3d(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Applies 3D fractional max pooling over an input signal composed of several input planes.
		
		Fractional MaxPooling is described in detail in the paper `Fractional MaxPooling`_ by Ben Graham
		
		The max-pooling operation is applied in :math:`kT \times kH \times kW` regions by a stochastic
		step size determined by the target output size.
		The number of output features is equal to the number of input planes.
		
		Args:
		    kernel_size: the size of the window to take a max over.
		                 Can be a single number :math:`k` (for a square kernel of :math:`k \times k \times k`)
		                 or a tuple `(kT, kH, kW)`
		    output_size: the target output size of the form :math:`oT \times oH \times oW`.
		                 Can be a tuple `(oT, oH, oW)` or a single number :math:`oH` for a cubic output
		                 :math:`oH \times oH \times oH`
		    output_ratio: If one wants to have an output size as a ratio of the input size, this option can be given.
		                  This has to be a number or tuple in the range (0, 1)
		    return_indices: if ``True``, will return the indices along with the outputs.
		                    Useful to pass to :func:`~torch.nn.functional.max_unpool3d`.
		
		Examples::
		    >>> input = torch.randn(20, 16, 50, 32, 16)
		    >>> # pool of cubic window of size=3, and target output size 13x12x11
		    >>> F.fractional_max_pool3d(input, 3, output_size=(13, 12, 11))
		    >>> # pool of cubic window and target output size being half of input size
		    >>> F.fractional_max_pool3d(input, 3, output_ratio=(0.5, 0.5, 0.5))
		
		.. _Fractional MaxPooling:
		    http://arxiv.org/abs/1412.6071
	**/
	static public function fractional_max_pool3d_with_indices(input:Dynamic, kernel_size:Dynamic, ?output_size:Dynamic, ?output_ratio:Dynamic, ?return_indices:Dynamic, ?_random_samples:Dynamic):Dynamic;
	/**
		Gaussian negative log likelihood loss.
		
		See :class:`~torch.nn.GaussianNLLLoss` for details.
		
		Args:
		    input: expectation of the Gaussian distribution.
		    target: sample from the Gaussian distribution.
		    var: tensor of positive variance(s), one for each of the expectations
		        in the input (heteroscedastic), or a single one (homoscedastic).
		    full (bool, optional): include the constant term in the loss calculation. Default: ``False``.
		    eps (float, optional): value added to var, for stability. Default: 1e-6.
		    reduction (string, optional): specifies the reduction to apply to the output:
		        ``'none'`` | ``'mean'`` | ``'sum'``. ``'none'``: no reduction will be applied,
		        ``'mean'``: the output is the average of all batch member losses,
		        ``'sum'``: the output is the sum of all batch member losses.
		        Default: ``'mean'``.
	**/
	static public function gaussian_nll_loss(input:Dynamic, target:Dynamic, _var:Dynamic, ?full:Dynamic, ?eps:Dynamic, ?reduction:Dynamic):Dynamic;
	/**
		gelu(input) -> Tensor
		
		Applies element-wise the function
		:math:`\text{GELU}(x) = x * \Phi(x)`
		
		where :math:`\Phi(x)` is the Cumulative Distribution Function for Gaussian Distribution.
		
		See `Gaussian Error Linear Units (GELUs) <https://arxiv.org/abs/1606.08415>`_.
	**/
	static public function gelu(input:Dynamic):Dynamic;
	/**
		glu(input, dim=-1) -> Tensor
		
		The gated linear unit. Computes:
		
		.. math ::
		    \text{GLU}(a, b) = a \otimes \sigma(b)
		
		where `input` is split in half along `dim` to form `a` and `b`, :math:`\sigma`
		is the sigmoid function and :math:`\otimes` is the element-wise product between matrices.
		
		See `Language Modeling with Gated Convolutional Networks <https://arxiv.org/abs/1612.08083>`_.
		
		Args:
		    input (Tensor): input tensor
		    dim (int): dimension on which to split the input. Default: -1
	**/
	static public function glu(input:Dynamic, ?dim:Dynamic):Dynamic;
	/**
		Given an :attr:`input` and a flow-field :attr:`grid`, computes the
		``output`` using :attr:`input` values and pixel locations from :attr:`grid`.
		
		Currently, only spatial (4-D) and volumetric (5-D) :attr:`input` are
		supported.
		
		In the spatial (4-D) case, for :attr:`input` with shape
		:math:`(N, C, H_\text{in}, W_\text{in})` and :attr:`grid` with shape
		:math:`(N, H_\text{out}, W_\text{out}, 2)`, the output will have shape
		:math:`(N, C, H_\text{out}, W_\text{out})`.
		
		For each output location ``output[n, :, h, w]``, the size-2 vector
		``grid[n, h, w]`` specifies :attr:`input` pixel locations ``x`` and ``y``,
		which are used to interpolate the output value ``output[n, :, h, w]``.
		In the case of 5D inputs, ``grid[n, d, h, w]`` specifies the
		``x``, ``y``, ``z`` pixel locations for interpolating
		``output[n, :, d, h, w]``. :attr:`mode` argument specifies ``nearest`` or
		``bilinear`` interpolation method to sample the input pixels.
		
		:attr:`grid` specifies the sampling pixel locations normalized by the
		:attr:`input` spatial dimensions. Therefore, it should have most values in
		the range of ``[-1, 1]``. For example, values ``x = -1, y = -1`` is the
		left-top pixel of :attr:`input`, and values  ``x = 1, y = 1`` is the
		right-bottom pixel of :attr:`input`.
		
		If :attr:`grid` has values outside the range of ``[-1, 1]``, the corresponding
		outputs are handled as defined by :attr:`padding_mode`. Options are
		
		    * ``padding_mode="zeros"``: use ``0`` for out-of-bound grid locations,
		    * ``padding_mode="border"``: use border values for out-of-bound grid locations,
		    * ``padding_mode="reflection"``: use values at locations reflected by
		      the border for out-of-bound grid locations. For location far away
		      from the border, it will keep being reflected until becoming in bound,
		      e.g., (normalized) pixel location ``x = -3.5`` reflects by border ``-1``
		      and becomes ``x' = 1.5``, then reflects by border ``1`` and becomes
		      ``x'' = -0.5``.
		
		Note:
		    This function is often used in conjunction with :func:`affine_grid`
		    to build `Spatial Transformer Networks`_ .
		
		Note:
		    When using the CUDA backend, this operation may induce nondeterministic
		    behaviour in its backward pass that is not easily switched off.
		    Please see the notes on :doc:`/notes/randomness` for background.
		
		Note:
		    NaN values in :attr:`grid` would be interpreted as ``-1``.
		
		Args:
		    input (Tensor): input of shape :math:`(N, C, H_\text{in}, W_\text{in})` (4-D case)
		                    or :math:`(N, C, D_\text{in}, H_\text{in}, W_\text{in})` (5-D case)
		    grid (Tensor): flow-field of shape :math:`(N, H_\text{out}, W_\text{out}, 2)` (4-D case)
		                   or :math:`(N, D_\text{out}, H_\text{out}, W_\text{out}, 3)` (5-D case)
		    mode (str): interpolation mode to calculate output values
		        ``'bilinear'`` | ``'nearest'`` | ``'bicubic'``. Default: ``'bilinear'``
		        Note: ``mode='bicubic'`` supports only 4-D input.
		        When ``mode='bilinear'`` and the input is 5-D, the interpolation mode
		        used internally will actually be trilinear. However, when the input is 4-D,
		        the interpolation mode will legitimately be bilinear.
		    padding_mode (str): padding mode for outside grid values
		        ``'zeros'`` | ``'border'`` | ``'reflection'``. Default: ``'zeros'``
		    align_corners (bool, optional): Geometrically, we consider the pixels of the
		        input  as squares rather than points.
		        If set to ``True``, the extrema (``-1`` and ``1``) are considered as referring
		        to the center points of the input's corner pixels. If set to ``False``, they
		        are instead considered as referring to the corner points of the input's corner
		        pixels, making the sampling more resolution agnostic.
		        This option parallels the ``align_corners`` option in
		        :func:`interpolate`, and so whichever option is used here
		        should also be used there to resize the input image before grid sampling.
		        Default: ``False``
		
		Returns:
		    output (Tensor): output Tensor
		
		.. _`Spatial Transformer Networks`:
		    https://arxiv.org/abs/1506.02025
		
		.. warning::
		    When ``align_corners = True``, the grid positions depend on the pixel
		    size relative to the input image size, and so the locations sampled by
		    :func:`grid_sample` will differ for the same input given at different
		    resolutions (that is, after being upsampled or downsampled).
		    The default behavior up to version 1.2.0 was ``align_corners = True``.
		    Since then, the default behavior has been changed to ``align_corners = False``,
		    in order to bring it in line with the default for :func:`interpolate`.
		
		.. note::
		    ``mode='bicubic'`` is implemented using the `cubic convolution algorithm`_ with :math:`\alpha=-0.75`.
		    The constant :math:`\alpha` might be different from packages to packages.
		    For example, `PIL`_ and `OpenCV`_ use -0.5 and -0.75 respectively.
		    This algorithm may "overshoot" the range of values it's interpolating.
		    For example, it may produce negative values or values greater than 255 when interpolating input in [0, 255].
		    Clamp the results with :func: `torch.clamp` to ensure they are within the valid range.
		.. _`cubic convolution algorithm`: https://en.wikipedia.org/wiki/Bicubic_interpolation
		.. _`PIL`: https://github.com/python-pillow/Pillow/blob/4634eafe3c695a014267eefdce830b4a825beed7/src/libImaging/Resample.c#L51
		.. _`OpenCV`: https://github.com/opencv/opencv/blob/f345ed564a06178670750bad59526cfa4033be55/modules/imgproc/src/resize.cpp#L908
	**/
	static public function grid_sample(input:Dynamic, grid:Dynamic, ?mode:Dynamic, ?padding_mode:Dynamic, ?align_corners:Dynamic):Dynamic;
	/**
		Applies Group Normalization for last certain number of dimensions.
		
		See :class:`~torch.nn.GroupNorm` for details.
	**/
	static public function group_norm(input:Dynamic, num_groups:Dynamic, ?weight:Dynamic, ?bias:Dynamic, ?eps:Dynamic):Dynamic;
	/**
		Samples from the Gumbel-Softmax distribution (`Link 1`_  `Link 2`_) and optionally discretizes.
		
		Args:
		  logits: `[..., num_features]` unnormalized log probabilities
		  tau: non-negative scalar temperature
		  hard: if ``True``, the returned samples will be discretized as one-hot vectors,
		        but will be differentiated as if it is the soft sample in autograd
		  dim (int): A dimension along which softmax will be computed. Default: -1.
		
		Returns:
		  Sampled tensor of same shape as `logits` from the Gumbel-Softmax distribution.
		  If ``hard=True``, the returned samples will be one-hot, otherwise they will
		  be probability distributions that sum to 1 across `dim`.
		
		.. note::
		  This function is here for legacy reasons, may be removed from nn.Functional in the future.
		
		.. note::
		  The main trick for `hard` is to do  `y_hard - y_soft.detach() + y_soft`
		
		  It achieves two things:
		  - makes the output value exactly one-hot
		  (since we add then subtract y_soft value)
		  - makes the gradient equal to y_soft gradient
		  (since we strip all other gradients)
		
		Examples::
		    >>> logits = torch.randn(20, 32)
		    >>> # Sample soft categorical using reparametrization trick:
		    >>> F.gumbel_softmax(logits, tau=1, hard=False)
		    >>> # Sample hard categorical using "Straight-through" trick:
		    >>> F.gumbel_softmax(logits, tau=1, hard=True)
		
		.. _Link 1:
		    https://arxiv.org/abs/1611.00712
		.. _Link 2:
		    https://arxiv.org/abs/1611.01144
	**/
	static public function gumbel_softmax(logits:Dynamic, ?tau:Dynamic, ?hard:Dynamic, ?eps:Dynamic, ?dim:Dynamic):Dynamic;
	/**
		Implement a function with checks for ``__torch_function__`` overrides.
		
		See torch::autograd::handle_torch_function for the equivalent of this
		function in the C++ implementation.
		
		Arguments
		---------
		public_api : function
		    Function exposed by the public torch API originally called like
		    ``public_api(*args, **kwargs)`` on which arguments are now being
		    checked.
		relevant_args : iterable
		    Iterable of arguments to check for __torch_function__ methods.
		args : tuple
		    Arbitrary positional arguments originally passed into ``public_api``.
		kwargs : tuple
		    Arbitrary keyword arguments originally passed into ``public_api``.
		
		Returns
		-------
		object
		    Result from calling ``implementation`` or an ``__torch_function__``
		    method, as appropriate.
		
		Raises
		------
		TypeError : if no implementation is found.
		
		Example
		-------
		>>> def func(a):
		...     if type(a) is not torch.Tensor:  # This will make func dispatchable by __torch_function__
		...         return handle_torch_function(func, (a,), a)
		...     return a + 0
	**/
	static public function handle_torch_function(public_api:Dynamic, relevant_args:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		hardshrink(input, lambd=0.5) -> Tensor
		
		Applies the hard shrinkage function element-wise
		
		See :class:`~torch.nn.Hardshrink` for more details.
	**/
	static public function hardshrink(input:Dynamic, ?lambd:Dynamic):Dynamic;
	/**
		Applies the element-wise function
		
		.. math::
		    \text{Hardsigmoid}(x) = \begin{cases}
		        0 & \text{if~} x \le -3, \\
		        1 & \text{if~} x \ge +3, \\
		        x / 6 + 1 / 2 & \text{otherwise}
		    \end{cases}
		
		Args:
		    inplace: If set to ``True``, will do this operation in-place. Default: ``False``
		
		See :class:`~torch.nn.Hardsigmoid` for more details.
	**/
	static public function hardsigmoid(input:Dynamic, ?inplace:Dynamic):Dynamic;
	/**
		Applies the hardswish function, element-wise, as described in the paper:
		
		`Searching for MobileNetV3`_.
		
		.. math::
		    \text{Hardswish}(x) = \begin{cases}
		        0 & \text{if~} x \le -3, \\
		        x & \text{if~} x \ge +3, \\
		        x \cdot (x + 3) /6 & \text{otherwise}
		    \end{cases}
		
		See :class:`~torch.nn.Hardswish` for more details.
		
		.. _`Searching for MobileNetV3`:
		    https://arxiv.org/abs/1905.02244
	**/
	static public function hardswish(input:Dynamic, ?inplace:Dynamic):Dynamic;
	/**
		hardtanh(input, min_val=-1., max_val=1., inplace=False) -> Tensor
		
		Applies the HardTanh function element-wise. See :class:`~torch.nn.Hardtanh` for more
		details.
	**/
	static public function hardtanh(input:Dynamic, ?min_val:Dynamic, ?max_val:Dynamic, ?inplace:Dynamic):Dynamic;
	/**
		hardtanh_(input, min_val=-1., max_val=1.) -> Tensor
		
		In-place version of :func:`~hardtanh`.
	**/
	static public function hardtanh_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Check for __torch_function__ implementations in the elements of an iterable.
		Considers exact ``Tensor`` s and ``Parameter`` s non-dispatchable.
		Arguments
		---------
		relevant_args : iterable
		    Iterable or aguments to check for __torch_function__ methods.
		Returns
		-------
		bool
		    True if any of the elements of relevant_args have __torch_function__
		    implementations, False otherwise.
		See Also
		________
		torch.is_tensor_like
		    Checks if something is a Tensor-like, including an exact ``Tensor``.
	**/
	static public function has_torch_function(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Special case of `has_torch_function` for single inputs.
		Instead of:
		  `has_torch_function((t,))`
		call:
		  `has_torch_function_unary(t)`
		which skips unnecessary packing and unpacking work.
	**/
	static public function has_torch_function_unary(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Special case of `has_torch_function` that skips tuple creation.
		
		This uses the METH_FASTCALL protocol introduced in Python 3.7; for 3.6
		and before it has roughly equivilent performance compared to
		`has_torch_function`.
		
		Instead of:
		  `has_torch_function((a, b))`
		call:
		  `has_torch_function_variadic(a, b)`
		which skips unnecessary packing and unpacking work.
	**/
	static public function has_torch_function_variadic(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		hinge_embedding_loss(input, target, margin=1.0, size_average=None, reduce=None, reduction='mean') -> Tensor
		
		See :class:`~torch.nn.HingeEmbeddingLoss` for details.
	**/
	static public function hinge_embedding_loss(input:Dynamic, target:Dynamic, ?margin:Dynamic, ?size_average:Dynamic, ?reduce:Dynamic, ?reduction:Dynamic):Dynamic;
	/**
		Function that uses a squared term if the absolute
		element-wise error falls below delta and a delta-scaled L1 term otherwise.
		
		See :class:`~torch.nn.HuberLoss` for details.
	**/
	static public function huber_loss(input:Dynamic, target:Dynamic, ?reduction:Dynamic, ?delta:Dynamic):Dynamic;
	/**
		Applies Instance Normalization for each channel in each data sample in a
		batch.
		
		See :class:`~torch.nn.InstanceNorm1d`, :class:`~torch.nn.InstanceNorm2d`,
		:class:`~torch.nn.InstanceNorm3d` for details.
	**/
	static public function instance_norm(input:Dynamic, ?running_mean:Dynamic, ?running_var:Dynamic, ?weight:Dynamic, ?bias:Dynamic, ?use_input_stats:Dynamic, ?momentum:Dynamic, ?eps:Dynamic):Dynamic;
	/**
		Down/up samples the input to either the given :attr:`size` or the given
		:attr:`scale_factor`
		
		The algorithm used for interpolation is determined by :attr:`mode`.
		
		Currently temporal, spatial and volumetric sampling are supported, i.e.
		expected inputs are 3-D, 4-D or 5-D in shape.
		
		The input dimensions are interpreted in the form:
		`mini-batch x channels x [optional depth] x [optional height] x width`.
		
		The modes available for resizing are: `nearest`, `linear` (3D-only),
		`bilinear`, `bicubic` (4D-only), `trilinear` (5D-only), `area`
		
		Args:
		    input (Tensor): the input tensor
		    size (int or Tuple[int] or Tuple[int, int] or Tuple[int, int, int]):
		        output spatial size.
		    scale_factor (float or Tuple[float]): multiplier for spatial size. If `scale_factor` is a tuple,
		        its length has to match `input.dim()`.
		    mode (str): algorithm used for upsampling:
		        ``'nearest'`` | ``'linear'`` | ``'bilinear'`` | ``'bicubic'`` |
		        ``'trilinear'`` | ``'area'``. Default: ``'nearest'``
		    align_corners (bool, optional): Geometrically, we consider the pixels of the
		        input and output as squares rather than points.
		        If set to ``True``, the input and output tensors are aligned by the
		        center points of their corner pixels, preserving the values at the corner pixels.
		        If set to ``False``, the input and output tensors are aligned by the corner
		        points of their corner pixels, and the interpolation uses edge value padding
		        for out-of-boundary values, making this operation *independent* of input size
		        when :attr:`scale_factor` is kept the same. This only has an effect when :attr:`mode`
		        is ``'linear'``, ``'bilinear'``, ``'bicubic'`` or ``'trilinear'``.
		        Default: ``False``
		    recompute_scale_factor (bool, optional): recompute the scale_factor for use in the
		        interpolation calculation. If `recompute_scale_factor` is ``True``, then
		        `scale_factor` must be passed in and `scale_factor` is used to compute the
		        output `size`. The computed output `size` will be used to infer new scales for
		        the interpolation. Note that when `scale_factor` is floating-point, it may differ
		        from the recomputed `scale_factor` due to rounding and precision issues.
		        If `recomputed_scale_factor` is ``False``, then `size` or `scale_factor` will
		        be used directly for interpolation.
		
		.. note::
		    With ``mode='bicubic'``, it's possible to cause overshoot, in other words it can produce
		    negative values or values greater than 255 for images.
		    Explicitly call ``result.clamp(min=0, max=255)`` if you want to reduce the overshoot
		    when displaying the image.
		
		.. warning::
		    With ``align_corners = True``, the linearly interpolating modes
		    (`linear`, `bilinear`, and `trilinear`) don't proportionally align the
		    output and input pixels, and thus the output values can depend on the
		    input size. This was the default behavior for these modes up to version
		    0.3.1. Since then, the default behavior is ``align_corners = False``.
		    See :class:`~torch.nn.Upsample` for concrete examples on how this
		    affects the outputs.
		
		.. warning::
		    When scale_factor is specified, if recompute_scale_factor=True,
		    scale_factor is used to compute the output_size which will then
		    be used to infer new scales for the interpolation.
		    The default behavior for recompute_scale_factor changed to False
		    in 1.6.0, and scale_factor is used in the interpolation
		    calculation.
		
		Note:
		    This operation may produce nondeterministic gradients when given tensors on a CUDA device. See :doc:`/notes/randomness` for more information.
	**/
	static public function interpolate(input:Dynamic, ?size:Dynamic, ?scale_factor:Dynamic, ?mode:Dynamic, ?align_corners:Dynamic, ?recompute_scale_factor:Dynamic):Dynamic;
	/**
		The `Kullback-Leibler divergence Loss
		<https://en.wikipedia.org/wiki/Kullback-Leibler_divergence>`__
		
		See :class:`~torch.nn.KLDivLoss` for details.
		
		Args:
		    input: Tensor of arbitrary shape in log-probabilities.
		    target: Tensor of the same shape as input. See :attr:`log_target` for
		        the target's interpretation.
		    size_average (bool, optional): Deprecated (see :attr:`reduction`). By default,
		        the losses are averaged over each loss element in the batch. Note that for
		        some losses, there multiple elements per sample. If the field :attr:`size_average`
		        is set to ``False``, the losses are instead summed for each minibatch. Ignored
		        when reduce is ``False``. Default: ``True``
		    reduce (bool, optional): Deprecated (see :attr:`reduction`). By default, the
		        losses are averaged or summed over observations for each minibatch depending
		        on :attr:`size_average`. When :attr:`reduce` is ``False``, returns a loss per
		        batch element instead and ignores :attr:`size_average`. Default: ``True``
		    reduction (string, optional): Specifies the reduction to apply to the output:
		        ``'none'`` | ``'batchmean'`` | ``'sum'`` | ``'mean'``.
		        ``'none'``: no reduction will be applied
		        ``'batchmean'``: the sum of the output will be divided by the batchsize
		        ``'sum'``: the output will be summed
		        ``'mean'``: the output will be divided by the number of elements in the output
		        Default: ``'mean'``
		    log_target (bool): A flag indicating whether ``target`` is passed in the log space.
		        It is recommended to pass certain distributions (like ``softmax``)
		        in the log space to avoid numerical issues caused by explicit ``log``.
		        Default: ``False``
		
		.. note::
		    :attr:`size_average` and :attr:`reduce` are in the process of being deprecated,
		    and in the meantime, specifying either of those two args will override :attr:`reduction`.
		
		.. note::
		    :attr:`reduction` = ``'mean'`` doesn't return the true kl divergence value, please use
		    :attr:`reduction` = ``'batchmean'`` which aligns with KL math definition.
		    In the next major release, ``'mean'`` will be changed to be the same as 'batchmean'.
	**/
	static public function kl_div(input:Dynamic, target:Dynamic, ?size_average:Dynamic, ?reduce:Dynamic, ?reduction:Dynamic, ?log_target:Dynamic):Dynamic;
	/**
		l1_loss(input, target, size_average=None, reduce=None, reduction='mean') -> Tensor
		
		Function that takes the mean element-wise absolute value difference.
		
		See :class:`~torch.nn.L1Loss` for details.
	**/
	static public function l1_loss(input:Dynamic, target:Dynamic, ?size_average:Dynamic, ?reduce:Dynamic, ?reduction:Dynamic):Dynamic;
	/**
		Applies Layer Normalization for last certain number of dimensions.
		
		See :class:`~torch.nn.LayerNorm` for details.
	**/
	static public function layer_norm(input:Dynamic, normalized_shape:Dynamic, ?weight:Dynamic, ?bias:Dynamic, ?eps:Dynamic):Dynamic;
	/**
		leaky_relu(input, negative_slope=0.01, inplace=False) -> Tensor
		
		Applies element-wise,
		:math:`\text{LeakyReLU}(x) = \max(0, x) + \text{negative\_slope} * \min(0, x)`
		
		See :class:`~torch.nn.LeakyReLU` for more details.
	**/
	static public function leaky_relu(input:Dynamic, ?negative_slope:Dynamic, ?inplace:Dynamic):Dynamic;
	/**
		leaky_relu_(input, negative_slope=0.01) -> Tensor
		
		In-place version of :func:`~leaky_relu`.
	**/
	static public function leaky_relu_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Applies a linear transformation to the incoming data: :math:`y = xA^T + b`.
		
		This operator supports :ref:`TensorFloat32<tf32_on_ampere>`.
		
		Shape:
		
		    - Input: :math:`(N, *, in\_features)` N is the batch size, `*` means any number of
		      additional dimensions
		    - Weight: :math:`(out\_features, in\_features)`
		    - Bias: :math:`(out\_features)`
		    - Output: :math:`(N, *, out\_features)`
	**/
	static public function linear(input:Dynamic, weight:Dynamic, ?bias:Dynamic):Dynamic;
	/**
		Applies local response normalization over an input signal composed of
		several input planes, where channels occupy the second dimension.
		Applies normalization across channels.
		
		See :class:`~torch.nn.LocalResponseNorm` for details.
	**/
	static public function local_response_norm(input:Dynamic, size:Dynamic, ?alpha:Dynamic, ?beta:Dynamic, ?k:Dynamic):Dynamic;
	/**
		Applies a softmax followed by a logarithm.
		
		While mathematically equivalent to log(softmax(x)), doing these two
		operations separately is slower and numerically unstable. This function
		uses an alternative formulation to compute the output and gradient correctly.
		
		See :class:`~torch.nn.LogSoftmax` for more details.
		
		Args:
		    input (Tensor): input
		    dim (int): A dimension along which log_softmax will be computed.
		    dtype (:class:`torch.dtype`, optional): the desired data type of returned tensor.
		      If specified, the input tensor is cast to :attr:`dtype` before the operation
		      is performed. This is useful for preventing data type overflows. Default: None.
	**/
	static public function log_softmax(input:Dynamic, ?dim:Dynamic, ?_stacklevel:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		logsigmoid(input) -> Tensor
		
		Applies element-wise :math:`\text{LogSigmoid}(x_i) = \log \left(\frac{1}{1 + \exp(-x_i)}\right)`
		
		See :class:`~torch.nn.LogSigmoid` for more details.
	**/
	static public function logsigmoid(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Applies a 1D power-average pooling over an input signal composed of
		several input planes. If the sum of all inputs to the power of `p` is
		zero, the gradient is set to zero as well.
		
		See :class:`~torch.nn.LPPool1d` for details.
	**/
	static public function lp_pool1d(input:Dynamic, norm_type:Dynamic, kernel_size:Dynamic, ?stride:Dynamic, ?ceil_mode:Dynamic):Dynamic;
	/**
		Applies a 2D power-average pooling over an input signal composed of
		several input planes. If the sum of all inputs to the power of `p` is
		zero, the gradient is set to zero as well.
		
		See :class:`~torch.nn.LPPool2d` for details.
	**/
	static public function lp_pool2d(input:Dynamic, norm_type:Dynamic, kernel_size:Dynamic, ?stride:Dynamic, ?ceil_mode:Dynamic):Dynamic;
	/**
		margin_ranking_loss(input1, input2, target, margin=0, size_average=None, reduce=None, reduction='mean') -> Tensor
		
		See :class:`~torch.nn.MarginRankingLoss` for details.
	**/
	static public function margin_ranking_loss(input1:Dynamic, input2:Dynamic, target:Dynamic, ?margin:Dynamic, ?size_average:Dynamic, ?reduce:Dynamic, ?reduction:Dynamic):Dynamic;
	/**
		Applies a 1D max pooling over an input signal composed of several input
		planes.
		
		See :class:`~torch.nn.MaxPool1d` for details.
	**/
	static public function max_pool1d(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Applies a 1D max pooling over an input signal composed of several input
		planes.
		
		See :class:`~torch.nn.MaxPool1d` for details.
	**/
	static public function max_pool1d_with_indices(input:Dynamic, kernel_size:Dynamic, ?stride:Dynamic, ?padding:Dynamic, ?dilation:Dynamic, ?ceil_mode:Dynamic, ?return_indices:Dynamic):Dynamic;
	/**
		Applies a 2D max pooling over an input signal composed of several input
		planes.
		
		See :class:`~torch.nn.MaxPool2d` for details.
	**/
	static public function max_pool2d(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Applies a 2D max pooling over an input signal composed of several input
		planes.
		
		See :class:`~torch.nn.MaxPool2d` for details.
	**/
	static public function max_pool2d_with_indices(input:Dynamic, kernel_size:Dynamic, ?stride:Dynamic, ?padding:Dynamic, ?dilation:Dynamic, ?ceil_mode:Dynamic, ?return_indices:Dynamic):Dynamic;
	/**
		Applies a 3D max pooling over an input signal composed of several input
		planes.
		
		See :class:`~torch.nn.MaxPool3d` for details.
	**/
	static public function max_pool3d(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Applies a 3D max pooling over an input signal composed of several input
		planes.
		
		See :class:`~torch.nn.MaxPool3d` for details.
	**/
	static public function max_pool3d_with_indices(input:Dynamic, kernel_size:Dynamic, ?stride:Dynamic, ?padding:Dynamic, ?dilation:Dynamic, ?ceil_mode:Dynamic, ?return_indices:Dynamic):Dynamic;
	/**
		Computes a partial inverse of :class:`MaxPool1d`.
		
		See :class:`~torch.nn.MaxUnpool1d` for details.
	**/
	static public function max_unpool1d(input:Dynamic, indices:Dynamic, kernel_size:Dynamic, ?stride:Dynamic, ?padding:Dynamic, ?output_size:Dynamic):Dynamic;
	/**
		Computes a partial inverse of :class:`MaxPool2d`.
		
		See :class:`~torch.nn.MaxUnpool2d` for details.
	**/
	static public function max_unpool2d(input:Dynamic, indices:Dynamic, kernel_size:Dynamic, ?stride:Dynamic, ?padding:Dynamic, ?output_size:Dynamic):Dynamic;
	/**
		Computes a partial inverse of :class:`MaxPool3d`.
		
		See :class:`~torch.nn.MaxUnpool3d` for details.
	**/
	static public function max_unpool3d(input:Dynamic, indices:Dynamic, kernel_size:Dynamic, ?stride:Dynamic, ?padding:Dynamic, ?output_size:Dynamic):Dynamic;
	/**
		Applies the Mish function, element-wise.
		Mish: A Self Regularized Non-Monotonic Neural Activation Function.
		
		.. math::
		    \text{Mish}(x) = x * \text{Tanh}(\text{Softplus}(x))
		
		.. note::
		    See `Mish: A Self Regularized Non-Monotonic Neural Activation Function <https://arxiv.org/abs/1908.08681>`_
		
		See :class:`~torch.nn.Mish` for more details.
	**/
	static public function mish(input:Dynamic, ?inplace:Dynamic):Dynamic;
	/**
		mse_loss(input, target, size_average=None, reduce=None, reduction='mean') -> Tensor
		
		Measures the element-wise mean squared error.
		
		See :class:`~torch.nn.MSELoss` for details.
	**/
	static public function mse_loss(input:Dynamic, target:Dynamic, ?size_average:Dynamic, ?reduce:Dynamic, ?reduction:Dynamic):Dynamic;
	/**
		Args:
		    query, key, value: map a query and a set of key-value pairs to an output.
		        See "Attention Is All You Need" for more details.
		    embed_dim_to_check: total dimension of the model.
		    num_heads: parallel attention heads.
		    in_proj_weight, in_proj_bias: input projection weight and bias.
		    bias_k, bias_v: bias of the key and value sequences to be added at dim=0.
		    add_zero_attn: add a new batch of zeros to the key and
		                   value sequences at dim=1.
		    dropout_p: probability of an element to be zeroed.
		    out_proj_weight, out_proj_bias: the output projection weight and bias.
		    training: apply dropout if is ``True``.
		    key_padding_mask: if provided, specified padding elements in the key will
		        be ignored by the attention. This is an binary mask. When the value is True,
		        the corresponding value on the attention layer will be filled with -inf.
		    need_weights: output attn_output_weights.
		    attn_mask: 2D or 3D mask that prevents attention to certain positions. A 2D mask will be broadcasted for all
		        the batches while a 3D mask allows to specify a different mask for the entries of each batch.
		    use_separate_proj_weight: the function accept the proj. weights for query, key,
		        and value in different forms. If false, in_proj_weight will be used, which is
		        a combination of q_proj_weight, k_proj_weight, v_proj_weight.
		    q_proj_weight, k_proj_weight, v_proj_weight, in_proj_bias: input projection weight and bias.
		    static_k, static_v: static key and value used for attention operators.
		
		
		Shape:
		    Inputs:
		    - query: :math:`(L, N, E)` where L is the target sequence length, N is the batch size, E is
		      the embedding dimension.
		    - key: :math:`(S, N, E)`, where S is the source sequence length, N is the batch size, E is
		      the embedding dimension.
		    - value: :math:`(S, N, E)` where S is the source sequence length, N is the batch size, E is
		      the embedding dimension.
		    - key_padding_mask: :math:`(N, S)` where N is the batch size, S is the source sequence length.
		      If a ByteTensor is provided, the non-zero positions will be ignored while the zero positions
		      will be unchanged. If a BoolTensor is provided, the positions with the
		      value of ``True`` will be ignored while the position with the value of ``False`` will be unchanged.
		    - attn_mask: 2D mask :math:`(L, S)` where L is the target sequence length, S is the source sequence length.
		      3D mask :math:`(N*num_heads, L, S)` where N is the batch size, L is the target sequence length,
		      S is the source sequence length. attn_mask ensures that position i is allowed to attend the unmasked
		      positions. If a ByteTensor is provided, the non-zero positions are not allowed to attend
		      while the zero positions will be unchanged. If a BoolTensor is provided, positions with ``True``
		      are not allowed to attend while ``False`` values will be unchanged. If a FloatTensor
		      is provided, it will be added to the attention weight.
		    - static_k: :math:`(N*num_heads, S, E/num_heads)`, where S is the source sequence length,
		      N is the batch size, E is the embedding dimension. E/num_heads is the head dimension.
		    - static_v: :math:`(N*num_heads, S, E/num_heads)`, where S is the source sequence length,
		      N is the batch size, E is the embedding dimension. E/num_heads is the head dimension.
		
		    Outputs:
		    - attn_output: :math:`(L, N, E)` where L is the target sequence length, N is the batch size,
		      E is the embedding dimension.
		    - attn_output_weights: :math:`(N, L, S)` where N is the batch size,
		      L is the target sequence length, S is the source sequence length.
	**/
	static public function multi_head_attention_forward(query:Dynamic, key:Dynamic, value:Dynamic, embed_dim_to_check:Dynamic, num_heads:Dynamic, in_proj_weight:Dynamic, in_proj_bias:Dynamic, bias_k:Dynamic, bias_v:Dynamic, add_zero_attn:Dynamic, dropout_p:Dynamic, out_proj_weight:Dynamic, out_proj_bias:Dynamic, ?training:Dynamic, ?key_padding_mask:Dynamic, ?need_weights:Dynamic, ?attn_mask:Dynamic, ?use_separate_proj_weight:Dynamic, ?q_proj_weight:Dynamic, ?k_proj_weight:Dynamic, ?v_proj_weight:Dynamic, ?static_k:Dynamic, ?static_v:Dynamic):Dynamic;
	/**
		multi_margin_loss(input, target, p=1, margin=1, weight=None, size_average=None,
		                      reduce=None, reduction='mean') -> Tensor
		
		See :class:`~torch.nn.MultiMarginLoss` for details.
	**/
	static public function multi_margin_loss(input:Dynamic, target:Dynamic, ?p:Dynamic, ?margin:Dynamic, ?weight:Dynamic, ?size_average:Dynamic, ?reduce:Dynamic, ?reduction:Dynamic):Dynamic;
	/**
		multilabel_margin_loss(input, target, size_average=None, reduce=None, reduction='mean') -> Tensor
		
		See :class:`~torch.nn.MultiLabelMarginLoss` for details.
	**/
	static public function multilabel_margin_loss(input:Dynamic, target:Dynamic, ?size_average:Dynamic, ?reduce:Dynamic, ?reduction:Dynamic):Dynamic;
	/**
		multilabel_soft_margin_loss(input, target, weight=None, size_average=None) -> Tensor
		
		See :class:`~torch.nn.MultiLabelSoftMarginLoss` for details.
	**/
	static public function multilabel_soft_margin_loss(input:Dynamic, target:Dynamic, ?weight:Dynamic, ?size_average:Dynamic, ?reduce:Dynamic, ?reduction:Dynamic):Dynamic;
	/**
		The negative log likelihood loss.
		
		See :class:`~torch.nn.NLLLoss` for details.
		
		Args:
		    input: :math:`(N, C)` where `C = number of classes` or :math:`(N, C, H, W)`
		        in case of 2D Loss, or :math:`(N, C, d_1, d_2, ..., d_K)` where :math:`K \geq 1`
		        in the case of K-dimensional loss. `input` is expected to be log-probabilities.
		    target: :math:`(N)` where each value is :math:`0 \leq \text{targets}[i] \leq C-1`,
		        or :math:`(N, d_1, d_2, ..., d_K)` where :math:`K \geq 1` for
		        K-dimensional loss.
		    weight (Tensor, optional): a manual rescaling weight given to each
		        class. If given, has to be a Tensor of size `C`
		    size_average (bool, optional): Deprecated (see :attr:`reduction`). By default,
		        the losses are averaged over each loss element in the batch. Note that for
		        some losses, there multiple elements per sample. If the field :attr:`size_average`
		        is set to ``False``, the losses are instead summed for each minibatch. Ignored
		        when reduce is ``False``. Default: ``True``
		    ignore_index (int, optional): Specifies a target value that is ignored
		        and does not contribute to the input gradient. When :attr:`size_average` is
		        ``True``, the loss is averaged over non-ignored targets. Default: -100
		    reduce (bool, optional): Deprecated (see :attr:`reduction`). By default, the
		        losses are averaged or summed over observations for each minibatch depending
		        on :attr:`size_average`. When :attr:`reduce` is ``False``, returns a loss per
		        batch element instead and ignores :attr:`size_average`. Default: ``True``
		    reduction (string, optional): Specifies the reduction to apply to the output:
		        ``'none'`` | ``'mean'`` | ``'sum'``. ``'none'``: no reduction will be applied,
		        ``'mean'``: the sum of the output will be divided by the number of
		        elements in the output, ``'sum'``: the output will be summed. Note: :attr:`size_average`
		        and :attr:`reduce` are in the process of being deprecated, and in the meantime,
		        specifying either of those two args will override :attr:`reduction`. Default: ``'mean'``
		
		Example::
		
		    >>> # input is of size N x C = 3 x 5
		    >>> input = torch.randn(3, 5, requires_grad=True)
		    >>> # each element in target has to have 0 <= value < C
		    >>> target = torch.tensor([1, 0, 4])
		    >>> output = F.nll_loss(F.log_softmax(input), target)
		    >>> output.backward()
	**/
	static public function nll_loss(input:Dynamic, target:Dynamic, ?weight:Dynamic, ?size_average:Dynamic, ?ignore_index:Dynamic, ?reduce:Dynamic, ?reduction:Dynamic):Dynamic;
	/**
		Performs :math:`L_p` normalization of inputs over specified dimension.
		
		For a tensor :attr:`input` of sizes :math:`(n_0, ..., n_{dim}, ..., n_k)`, each
		:math:`n_{dim}` -element vector :math:`v` along dimension :attr:`dim` is transformed as
		
		.. math::
		    v = \frac{v}{\max(\lVert v \rVert_p, \epsilon)}.
		
		With the default arguments it uses the Euclidean norm over vectors along dimension :math:`1` for normalization.
		
		Args:
		    input: input tensor of any shape
		    p (float): the exponent value in the norm formulation. Default: 2
		    dim (int): the dimension to reduce. Default: 1
		    eps (float): small value to avoid division by zero. Default: 1e-12
		    out (Tensor, optional): the output tensor. If :attr:`out` is used, this
		                            operation won't be differentiable.
	**/
	static public function normalize(input:Dynamic, ?p:Dynamic, ?dim:Dynamic, ?eps:Dynamic, ?out:Dynamic):Dynamic;
	/**
		one_hot(tensor, num_classes=-1) -> LongTensor
		
		Takes LongTensor with index values of shape ``(*)`` and returns a tensor
		of shape ``(*, num_classes)`` that have zeros everywhere except where the
		index of last dimension matches the corresponding value of the input tensor,
		in which case it will be 1.
		
		See also `One-hot on Wikipedia`_ .
		
		.. _One-hot on Wikipedia:
		    https://en.wikipedia.org/wiki/One-hot
		
		Arguments:
		    tensor (LongTensor): class values of any shape.
		    num_classes (int):  Total number of classes. If set to -1, the number
		        of classes will be inferred as one greater than the largest class
		        value in the input tensor.
		
		Returns:
		    LongTensor that has one more dimension with 1 values at the
		    index of last dimension indicated by the input, and 0 everywhere
		    else.
		
		Examples:
		    >>> F.one_hot(torch.arange(0, 5) % 3)
		    tensor([[1, 0, 0],
		            [0, 1, 0],
		            [0, 0, 1],
		            [1, 0, 0],
		            [0, 1, 0]])
		    >>> F.one_hot(torch.arange(0, 5) % 3, num_classes=5)
		    tensor([[1, 0, 0, 0, 0],
		            [0, 1, 0, 0, 0],
		            [0, 0, 1, 0, 0],
		            [1, 0, 0, 0, 0],
		            [0, 1, 0, 0, 0]])
		    >>> F.one_hot(torch.arange(0, 6).view(3,2) % 3)
		    tensor([[[1, 0, 0],
		             [0, 1, 0]],
		            [[0, 0, 1],
		             [1, 0, 0]],
		            [[0, 1, 0],
		             [0, 0, 1]]])
	**/
	static public function one_hot(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Pads tensor.
		
		Padding size:
		    The padding size by which to pad some dimensions of :attr:`input`
		    are described starting from the last dimension and moving forward.
		    :math:`\left\lfloor\frac{\text{len(pad)}}{2}\right\rfloor` dimensions
		    of ``input`` will be padded.
		    For example, to pad only the last dimension of the input tensor, then
		    :attr:`pad` has the form
		    :math:`(\text{padding\_left}, \text{padding\_right})`;
		    to pad the last 2 dimensions of the input tensor, then use
		    :math:`(\text{padding\_left}, \text{padding\_right},`
		    :math:`\text{padding\_top}, \text{padding\_bottom})`;
		    to pad the last 3 dimensions, use
		    :math:`(\text{padding\_left}, \text{padding\_right},`
		    :math:`\text{padding\_top}, \text{padding\_bottom}`
		    :math:`\text{padding\_front}, \text{padding\_back})`.
		
		Padding mode:
		    See :class:`torch.nn.ConstantPad2d`, :class:`torch.nn.ReflectionPad2d`, and
		    :class:`torch.nn.ReplicationPad2d` for concrete examples on how each of the
		    padding modes works. Constant padding is implemented for arbitrary dimensions.
		    Replicate and reflection padding is implemented for padding the last 3
		    dimensions of 5D input tensor, or the last 2 dimensions of 4D input
		    tensor, or the last dimension of 3D input tensor.
		
		Note:
		    When using the CUDA backend, this operation may induce nondeterministic
		    behaviour in its backward pass that is not easily switched off.
		    Please see the notes on :doc:`/notes/randomness` for background.
		
		Args:
		    input (Tensor): N-dimensional tensor
		    pad (tuple): m-elements tuple, where
		        :math:`\frac{m}{2} \leq` input dimensions and :math:`m` is even.
		    mode: ``'constant'``, ``'reflect'``, ``'replicate'`` or ``'circular'``.
		        Default: ``'constant'``
		    value: fill value for ``'constant'`` padding. Default: ``0``
		
		Examples::
		
		    >>> t4d = torch.empty(3, 3, 4, 2)
		    >>> p1d = (1, 1) # pad last dim by 1 on each side
		    >>> out = F.pad(t4d, p1d, "constant", 0)  # effectively zero padding
		    >>> print(out.size())
		    torch.Size([3, 3, 4, 4])
		    >>> p2d = (1, 1, 2, 2) # pad last dim by (1, 1) and 2nd to last by (2, 2)
		    >>> out = F.pad(t4d, p2d, "constant", 0)
		    >>> print(out.size())
		    torch.Size([3, 3, 8, 4])
		    >>> t4d = torch.empty(3, 3, 4, 2)
		    >>> p3d = (0, 1, 2, 1, 3, 3) # pad by (0, 1), (2, 1), and (3, 3)
		    >>> out = F.pad(t4d, p3d, "constant", 0)
		    >>> print(out.size())
		    torch.Size([3, 9, 7, 3])
	**/
	static public function pad(input:Dynamic, pad:Dynamic, ?mode:Dynamic, ?value:Dynamic):Dynamic;
	/**
		See :class:`torch.nn.PairwiseDistance` for details
	**/
	static public function pairwise_distance(x1:Dynamic, x2:Dynamic, ?p:Dynamic, ?eps:Dynamic, ?keepdim:Dynamic):Dynamic;
	/**
		pdist(input, p=2) -> Tensor
		
		Computes the p-norm distance between every pair of row vectors in the input.
		This is identical to the upper triangular portion, excluding the diagonal, of
		`torch.norm(input[:, None] - input, dim=2, p=p)`. This function will be faster
		if the rows are contiguous.
		
		If input has shape :math:`N \times M` then the output will have shape
		:math:`\frac{1}{2} N (N - 1)`.
		
		This function is equivalent to `scipy.spatial.distance.pdist(input,
		'minkowski', p=p)` if :math:`p \in (0, \infty)`. When :math:`p = 0` it is
		equivalent to `scipy.spatial.distance.pdist(input, 'hamming') * M`.
		When :math:`p = \infty`, the closest scipy function is
		`scipy.spatial.distance.pdist(xn, lambda x, y: np.abs(x - y).max())`.
		
		Args:
		    input: input tensor of shape :math:`N \times M`.
		    p: p value for the p-norm distance to calculate between each vector pair
		        :math:`\in [0, \infty]`.
	**/
	static public function pdist(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		pixel_shuffle(input, upscale_factor) -> Tensor
		
		Rearranges elements in a tensor of shape :math:`(*, C \times r^2, H, W)` to a
		tensor of shape :math:`(*, C, H \times r, W \times r)`, where r is the :attr:`upscale_factor`.
		
		See :class:`~torch.nn.PixelShuffle` for details.
		
		Args:
		    input (Tensor): the input tensor
		    upscale_factor (int): factor to increase spatial resolution by
		
		Examples::
		
		    >>> input = torch.randn(1, 9, 4, 4)
		    >>> output = torch.nn.functional.pixel_shuffle(input, 3)
		    >>> print(output.size())
		    torch.Size([1, 1, 12, 12])
	**/
	static public function pixel_shuffle(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		pixel_unshuffle(input, downscale_factor) -> Tensor
		
		Reverses the :class:`~torch.nn.PixelShuffle` operation by rearranging elements in a
		tensor of shape :math:`(*, C, H \times r, W \times r)` to a tensor of shape
		:math:`(*, C \times r^2, H, W)`, where r is the :attr:`downscale_factor`.
		
		See :class:`~torch.nn.PixelUnshuffle` for details.
		
		Args:
		    input (Tensor): the input tensor
		    downscale_factor (int): factor to increase spatial resolution by
		
		Examples::
		
		    >>> input = torch.randn(1, 1, 12, 12)
		    >>> output = torch.nn.functional.pixel_unshuffle(input, 3)
		    >>> print(output.size())
		    torch.Size([1, 9, 4, 4])
	**/
	static public function pixel_unshuffle(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Poisson negative log likelihood loss.
		
		See :class:`~torch.nn.PoissonNLLLoss` for details.
		
		Args:
		    input: expectation of underlying Poisson distribution.
		    target: random sample :math:`target \sim \text{Poisson}(input)`.
		    log_input: if ``True`` the loss is computed as
		        :math:`\exp(\text{input}) - \text{target} * \text{input}`, if ``False`` then loss is
		        :math:`\text{input} - \text{target} * \log(\text{input}+\text{eps})`. Default: ``True``
		    full: whether to compute full loss, i. e. to add the Stirling
		        approximation term. Default: ``False``
		        :math:`\text{target} * \log(\text{target}) - \text{target} + 0.5 * \log(2 * \pi * \text{target})`.
		    size_average (bool, optional): Deprecated (see :attr:`reduction`). By default,
		        the losses are averaged over each loss element in the batch. Note that for
		        some losses, there multiple elements per sample. If the field :attr:`size_average`
		        is set to ``False``, the losses are instead summed for each minibatch. Ignored
		        when reduce is ``False``. Default: ``True``
		    eps (float, optional): Small value to avoid evaluation of :math:`\log(0)` when
		        :attr:`log_input`\ =\ ``False``. Default: 1e-8
		    reduce (bool, optional): Deprecated (see :attr:`reduction`). By default, the
		        losses are averaged or summed over observations for each minibatch depending
		        on :attr:`size_average`. When :attr:`reduce` is ``False``, returns a loss per
		        batch element instead and ignores :attr:`size_average`. Default: ``True``
		    reduction (string, optional): Specifies the reduction to apply to the output:
		        ``'none'`` | ``'mean'`` | ``'sum'``. ``'none'``: no reduction will be applied,
		        ``'mean'``: the sum of the output will be divided by the number of
		        elements in the output, ``'sum'``: the output will be summed. Note: :attr:`size_average`
		        and :attr:`reduce` are in the process of being deprecated, and in the meantime,
		        specifying either of those two args will override :attr:`reduction`. Default: ``'mean'``
	**/
	static public function poisson_nll_loss(input:Dynamic, target:Dynamic, ?log_input:Dynamic, ?full:Dynamic, ?size_average:Dynamic, ?eps:Dynamic, ?reduce:Dynamic, ?reduction:Dynamic):Dynamic;
	/**
		prelu(input, weight) -> Tensor
		
		Applies element-wise the function
		:math:`\text{PReLU}(x) = \max(0,x) + \text{weight} * \min(0,x)` where weight is a
		learnable parameter.
		
		See :class:`~torch.nn.PReLU` for more details.
	**/
	static public function prelu(input:Dynamic, weight:Dynamic):Dynamic;
	/**
		relu(input, inplace=False) -> Tensor
		
		Applies the rectified linear unit function element-wise. See
		:class:`~torch.nn.ReLU` for more details.
	**/
	static public function relu(input:Dynamic, ?inplace:Dynamic):Dynamic;
	/**
		relu6(input, inplace=False) -> Tensor
		
		Applies the element-wise function :math:`\text{ReLU6}(x) = \min(\max(0,x), 6)`.
		
		See :class:`~torch.nn.ReLU6` for more details.
	**/
	static public function relu6(input:Dynamic, ?inplace:Dynamic):Dynamic;
	/**
		relu_(input) -> Tensor
		
		In-place version of :func:`~relu`.
	**/
	static public function relu_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var reproducibility_notes : Dynamic;
	/**
		rrelu(input, lower=1./8, upper=1./3, training=False, inplace=False) -> Tensor
		
		Randomized leaky ReLU.
		
		See :class:`~torch.nn.RReLU` for more details.
	**/
	static public function rrelu(input:Dynamic, ?lower:Dynamic, ?upper:Dynamic, ?training:Dynamic, ?inplace:Dynamic):Dynamic;
	/**
		rrelu_(input, lower=1./8, upper=1./3, training=False) -> Tensor
		
		In-place version of :func:`~rrelu`.
	**/
	static public function rrelu_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		selu(input, inplace=False) -> Tensor
		
		Applies element-wise,
		:math:`\text{SELU}(x) = scale * (\max(0,x) + \min(0, \alpha * (\exp(x) - 1)))`,
		with :math:`\alpha=1.6732632423543772848170429916717` and
		:math:`scale=1.0507009873554804934193349852946`.
		
		See :class:`~torch.nn.SELU` for more details.
	**/
	static public function selu(input:Dynamic, ?inplace:Dynamic):Dynamic;
	/**
		selu_(input) -> Tensor
		
		In-place version of :func:`~selu`.
	**/
	static public function selu_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		sigmoid(input) -> Tensor
		
		Applies the element-wise function :math:`\text{Sigmoid}(x) = \frac{1}{1 + \exp(-x)}`
		
		See :class:`~torch.nn.Sigmoid` for more details.
	**/
	static public function sigmoid(input:Dynamic):Dynamic;
	/**
		Applies the Sigmoid Linear Unit (SiLU) function, element-wise.
		The SiLU function is also known as the swish function.
		
		.. math::
		    \text{silu}(x) = x * \sigma(x), \text{where } \sigma(x) \text{ is the logistic sigmoid.}
		
		.. note::
		    See `Gaussian Error Linear Units (GELUs) <https://arxiv.org/abs/1606.08415>`_
		    where the SiLU (Sigmoid Linear Unit) was originally coined, and see
		    `Sigmoid-Weighted Linear Units for Neural Network Function Approximation
		    in Reinforcement Learning <https://arxiv.org/abs/1702.03118>`_ and `Swish:
		    a Self-Gated Activation Function <https://arxiv.org/abs/1710.05941v1>`_
		    where the SiLU was experimented with later.
		
		See :class:`~torch.nn.SiLU` for more details.
	**/
	static public function silu(input:Dynamic, ?inplace:Dynamic):Dynamic;
	/**
		Function that uses a squared term if the absolute
		element-wise error falls below beta and an L1 term otherwise.
		
		See :class:`~torch.nn.SmoothL1Loss` for details.
	**/
	static public function smooth_l1_loss(input:Dynamic, target:Dynamic, ?size_average:Dynamic, ?reduce:Dynamic, ?reduction:Dynamic, ?beta:Dynamic):Dynamic;
	/**
		soft_margin_loss(input, target, size_average=None, reduce=None, reduction='mean') -> Tensor
		
		See :class:`~torch.nn.SoftMarginLoss` for details.
	**/
	static public function soft_margin_loss(input:Dynamic, target:Dynamic, ?size_average:Dynamic, ?reduce:Dynamic, ?reduction:Dynamic):Dynamic;
	/**
		Applies a softmax function.
		
		Softmax is defined as:
		
		:math:`\text{Softmax}(x_{i}) = \frac{\exp(x_i)}{\sum_j \exp(x_j)}`
		
		It is applied to all slices along dim, and will re-scale them so that the elements
		lie in the range `[0, 1]` and sum to 1.
		
		See :class:`~torch.nn.Softmax` for more details.
		
		Args:
		    input (Tensor): input
		    dim (int): A dimension along which softmax will be computed.
		    dtype (:class:`torch.dtype`, optional): the desired data type of returned tensor.
		      If specified, the input tensor is casted to :attr:`dtype` before the operation
		      is performed. This is useful for preventing data type overflows. Default: None.
		
		.. note::
		    This function doesn't work directly with NLLLoss,
		    which expects the Log to be computed between the Softmax and itself.
		    Use log_softmax instead (it's faster and has better numerical properties).
	**/
	static public function softmax(input:Dynamic, ?dim:Dynamic, ?_stacklevel:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Applies a softmin function.
		
		Note that :math:`\text{Softmin}(x) = \text{Softmax}(-x)`. See softmax definition for mathematical formula.
		
		See :class:`~torch.nn.Softmin` for more details.
		
		Args:
		    input (Tensor): input
		    dim (int): A dimension along which softmin will be computed (so every slice
		        along dim will sum to 1).
		    dtype (:class:`torch.dtype`, optional): the desired data type of returned tensor.
		      If specified, the input tensor is casted to :attr:`dtype` before the operation
		      is performed. This is useful for preventing data type overflows. Default: None.
	**/
	static public function softmin(input:Dynamic, ?dim:Dynamic, ?_stacklevel:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		softplus(input, beta=1, threshold=20) -> Tensor
		
		Applies element-wise, the function :math:`\text{Softplus}(x) = \frac{1}{\beta} * \log(1 + \exp(\beta * x))`.
		
		For numerical stability the implementation reverts to the linear function
		when :math:`input \times \beta > threshold`.
		
		See :class:`~torch.nn.Softplus` for more details.
	**/
	static public function softplus(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		softshrink(input, lambd=0.5) -> Tensor
		
		Applies the soft shrinkage function elementwise
		
		See :class:`~torch.nn.Softshrink` for more details.
	**/
	static public function softshrink(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		softsign(input) -> Tensor
		
		Applies element-wise, the function :math:`\text{SoftSign}(x) = \frac{x}{1 + |x|}`
		
		See :class:`~torch.nn.Softsign` for more details.
	**/
	static public function softsign(input:Dynamic):Dynamic;
	/**
		tanh(input) -> Tensor
		
		Applies element-wise,
		:math:`\text{Tanh}(x) = \tanh(x) = \frac{\exp(x) - \exp(-x)}{\exp(x) + \exp(-x)}`
		
		See :class:`~torch.nn.Tanh` for more details.
	**/
	static public function tanh(input:Dynamic):Dynamic;
	/**
		tanhshrink(input) -> Tensor
		
		Applies element-wise, :math:`\text{Tanhshrink}(x) = x - \text{Tanh}(x)`
		
		See :class:`~torch.nn.Tanhshrink` for more details.
	**/
	static public function tanhshrink(input:Dynamic):Dynamic;
	static public var tf32_notes : Dynamic;
	/**
		Thresholds each element of the input Tensor.
		
		See :class:`~torch.nn.Threshold` for more details.
	**/
	static public function threshold(input:Dynamic, threshold:Dynamic, value:Dynamic, ?inplace:Dynamic):Dynamic;
	/**
		threshold_(input, threshold, value) -> Tensor
		
		In-place version of :func:`~threshold`.
	**/
	static public function threshold_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		See :class:`~torch.nn.TripletMarginLoss` for details
	**/
	static public function triplet_margin_loss(anchor:Dynamic, positive:Dynamic, negative:Dynamic, ?margin:Dynamic, ?p:Dynamic, ?eps:Dynamic, ?swap:Dynamic, ?size_average:Dynamic, ?reduce:Dynamic, ?reduction:Dynamic):Dynamic;
	/**
		See :class:`~torch.nn.TripletMarginWithDistanceLoss` for details.
	**/
	static public function triplet_margin_with_distance_loss(anchor:Dynamic, positive:Dynamic, negative:Dynamic, ?distance_function:Dynamic, ?margin:Dynamic, ?swap:Dynamic, ?reduction:Dynamic):Dynamic;
	/**
		Extracts sliding local blocks from a batched input tensor.
		
		.. warning::
		    Currently, only 4-D input tensors (batched image-like tensors) are
		    supported.
		
		.. warning::
		
		    More than one element of the unfolded tensor may refer to a single
		    memory location. As a result, in-place operations (especially ones that
		    are vectorized) may result in incorrect behavior. If you need to write
		    to the tensor, please clone it first.
		
		
		See :class:`torch.nn.Unfold` for details
	**/
	static public function unfold(input:Dynamic, kernel_size:Dynamic, ?dilation:Dynamic, ?padding:Dynamic, ?stride:Dynamic):Dynamic;
	/**
		Upsamples the input to either the given :attr:`size` or the given
		:attr:`scale_factor`
		
		.. warning::
		    This function is deprecated in favor of :func:`torch.nn.functional.interpolate`.
		    This is equivalent with ``nn.functional.interpolate(...)``.
		
		Note:
		    This operation may produce nondeterministic gradients when given tensors on a CUDA device. See :doc:`/notes/randomness` for more information.
		
		The algorithm used for upsampling is determined by :attr:`mode`.
		
		Currently temporal, spatial and volumetric upsampling are supported, i.e.
		expected inputs are 3-D, 4-D or 5-D in shape.
		
		The input dimensions are interpreted in the form:
		`mini-batch x channels x [optional depth] x [optional height] x width`.
		
		The modes available for upsampling are: `nearest`, `linear` (3D-only),
		`bilinear`, `bicubic` (4D-only), `trilinear` (5D-only)
		
		Args:
		    input (Tensor): the input tensor
		    size (int or Tuple[int] or Tuple[int, int] or Tuple[int, int, int]):
		        output spatial size.
		    scale_factor (float or Tuple[float]): multiplier for spatial size. Has to match input size if it is a tuple.
		    mode (string): algorithm used for upsampling:
		        ``'nearest'`` | ``'linear'`` | ``'bilinear'`` | ``'bicubic'`` |
		        ``'trilinear'``. Default: ``'nearest'``
		    align_corners (bool, optional): Geometrically, we consider the pixels of the
		        input and output as squares rather than points.
		        If set to ``True``, the input and output tensors are aligned by the
		        center points of their corner pixels, preserving the values at the corner pixels.
		        If set to ``False``, the input and output tensors are aligned by the corner
		        points of their corner pixels, and the interpolation uses edge value padding
		        for out-of-boundary values, making this operation *independent* of input size
		        when :attr:`scale_factor` is kept the same. This only has an effect when :attr:`mode`
		        is ``'linear'``, ``'bilinear'``, ``'bicubic'`` or ``'trilinear'``.
		        Default: ``False``
		
		.. note::
		    With ``mode='bicubic'``, it's possible to cause overshoot, in other words it can produce
		    negative values or values greater than 255 for images.
		    Explicitly call ``result.clamp(min=0, max=255)`` if you want to reduce the overshoot
		    when displaying the image.
		
		.. warning::
		    With ``align_corners = True``, the linearly interpolating modes
		    (`linear`, `bilinear`, and `trilinear`) don't proportionally align the
		    output and input pixels, and thus the output values can depend on the
		    input size. This was the default behavior for these modes up to version
		    0.3.1. Since then, the default behavior is ``align_corners = False``.
		    See :class:`~torch.nn.Upsample` for concrete examples on how this
		    affects the outputs.
	**/
	static public function upsample(input:Dynamic, ?size:Dynamic, ?scale_factor:Dynamic, ?mode:Dynamic, ?align_corners:Dynamic):Dynamic;
	/**
		Upsamples the input, using bilinear upsampling.
		
		.. warning::
		    This function is deprecated in favor of :func:`torch.nn.functional.interpolate`.
		    This is equivalent with
		    ``nn.functional.interpolate(..., mode='bilinear', align_corners=True)``.
		
		Expected inputs are spatial (4 dimensional). Use `upsample_trilinear` fo
		volumetric (5 dimensional) inputs.
		
		Args:
		    input (Tensor): input
		    size (int or Tuple[int, int]): output spatial size.
		    scale_factor (int or Tuple[int, int]): multiplier for spatial size
		
		Note:
		    This operation may produce nondeterministic gradients when given tensors on a CUDA device. See :doc:`/notes/randomness` for more information.
	**/
	static public function upsample_bilinear(input:Dynamic, ?size:Dynamic, ?scale_factor:Dynamic):Dynamic;
	/**
		Upsamples the input, using nearest neighbours' pixel values.
		
		.. warning::
		    This function is deprecated in favor of :func:`torch.nn.functional.interpolate`.
		    This is equivalent with ``nn.functional.interpolate(..., mode='nearest')``.
		
		Currently spatial and volumetric upsampling are supported (i.e. expected
		inputs are 4 or 5 dimensional).
		
		Args:
		    input (Tensor): input
		    size (int or Tuple[int, int] or Tuple[int, int, int]): output spatia
		        size.
		    scale_factor (int): multiplier for spatial size. Has to be an integer.
		
		Note:
		    This operation may produce nondeterministic gradients when given tensors on a CUDA device. See :doc:`/notes/randomness` for more information.
	**/
	static public function upsample_nearest(input:Dynamic, ?size:Dynamic, ?scale_factor:Dynamic):Dynamic;
}