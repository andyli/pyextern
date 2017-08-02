/* This file is generated, do not edit! */
package theano.tensor.nnet;
@:pythonImport("theano.tensor.nnet") extern class Nnet_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		This function will build the symbolic graph for convolving a mini-batch of a
		stack of 2D inputs with a set of 2D filters. The implementation is modelled
		after Convolutional Neural Networks (CNN).
		
		Refer to :func:`nnet.conv2d <theano.tensor.nnet.conv2d>` for a more detailed documentation.
	**/
	static public function abstract_conv2d(input:Dynamic, filters:Dynamic, ?input_shape:Dynamic, ?filter_shape:Dynamic, ?border_mode:Dynamic, ?subsample:Dynamic, ?filter_flip:Dynamic, ?filter_dilation:Dynamic):Dynamic;
	/**
		This function will build the symbolic graph for applying batch normalization
		to a set of activations.
		Also works on GPUs, but is not optimized using cuDNN.
		
		.. versionadded:: 0.7.1
		
		Parameters
		----------
		inputs : symbolic tensor
		    Mini-batch of activations
		gamma: symbolic tensor
		    BN scale parameter, must be of same dimensionality as
		    inputs and broadcastable against it
		beta: symbolic tensor
		    BN shift parameter, must be of same dimensionality as
		    inputs and broadcastable against it
		mean: symbolic tensor
		    inputs means, must be of same dimensionality as
		    inputs and broadcastable against it
		std: symbolic tensor
		    inputs standard deviation, must be of same dimensionality as
		    inputs and broadcastable against it
		mode: 'low_mem' or 'high_mem'
		    Specify which batch_normalization implementation that will be
		    used.
		    As no intermediate representations are stored for the back-propagation,
		    'low_mem' implementation lower the memory usage, however,
		    it is 5-10% slower than 'high_mem' implementation. Note that 5-10% computation
		    time difference compare the batch_normalization operation only, time difference
		    between implementation is likely to be less important on the full model fprop/bprop.
	**/
	static public function batch_normalization(inputs:Dynamic, gamma:Dynamic, beta:Dynamic, mean:Dynamic, std:Dynamic, ?mode:Dynamic):Dynamic;
	/**
		Compute the crossentropy of binary random variables.
		
		Output and target are each expectations of binary random
		variables; target may be exactly 0 or 1 but output must
		lie strictly between 0 and 1.
		
		Notes
		-----
		We could use the x log y op to support output=0 and output=1.
		The gradient would still be undefined though.
		
		We do not sum, crossentropy is computed by component.
		TODO : Rewrite as a scalar, and then broadcast to tensor.
	**/
	static public function binary_crossentropy(output:Dynamic, target:Dynamic):Dynamic;
	/**
		C header for the fortran blas interface
	**/
	static public function blas_header_text():Dynamic;
	static public function blas_header_version():Dynamic;
	/**
		Return the cross-entropy between an approximating distribution and a true
		distribution.
		
		.. warning:: THIS FUNCTION IS UNNECESSARILY POLYMORPHIC.
		We ultimately don't want the polymorphism, and will move this function
		to pylearn.algorithms.cost. The 1hot version will be removed.
		The length of the documentation here is a form of code smell.
		
		The cross entropy between two probability distributions measures the average
		number of bits needed to identify an event from a set of possibilities, if a
		coding scheme is used based on a given probability distribution q, rather
		than the "true" distribution p.
		
		Mathematically it is defined as follows:
		
		.. math::
		
		    H(p,q) = - \sum_x p(x) \log(q(x))
		
		Parameters
		----------
		coding_dist : a dense matrix
		    Each slice along axis represents one distribution.
		true_dist : a dense matrix or sparse matrix or integer vector
		    In the case of a matrix argument, each slice along axis represents one
		    distribution. In the case of an integer vector argument, each element
		    represents the position of the '1' in a 1-of-N encoding.
		
		Returns
		-------
		tensor of rank one-less-than `coding_dist`
		    The cross entropy between each coding and true distribution.
		
		Notes
		-----
		axis : int
		    The dimension over which each distribution runs
		    (1 for row distributions, 0 for column distributions).
	**/
	static public function categorical_crossentropy(coding_dist:Dynamic, true_dist:Dynamic):Dynamic;
	static public function computeH(V:Dynamic, W:Dynamic, b:Dynamic, d:Dynamic):Dynamic;
	static public function computeR(W:Dynamic, b:Dynamic, d:Dynamic, H:Dynamic, ?Rshape:Dynamic):Dynamic;
	/**
		Computes the confusion matrix of given vectors containing
		actual observations and predicted observations.
		
		Parameters
		----------
		actual : 1-d tensor variable
		pred : 1-d tensor variable
		
		Returns
		-------
		conf_mat : Confusion matrix of actual and predictions observations as shown below.
		
		           | Predicted
		___________|___________
		   Actual  |
		           |
		
		order : 1-d array of order of entries in rows and columns
		
		Examples
		--------
		>>> import theano
		>>> from theano.tensor.nnet import confusion_matrix
		
		>>> x = theano.tensor.vector()
		>>> y = theano.tensor.vector()
		>>> f = theano.function([x, y], confusion_matrix(x, y))
		>>> y_true = [2, 0, 2, 2, 0, 1]
		>>> y_pred = [0, 0, 2, 2, 0, 2]
		>>> print(f(y_true, y_pred))
		[array([[2, 0, 0],
		   [0, 0, 1],
		   [1, 0, 2]]), array([ 0.,  1.,  2.])]
	**/
	static public function confusion_matrix(actual:Dynamic, pred:Dynamic):Dynamic;
	/**
		This function will build the symbolic graph for convolving a mini-batch of a
		stack of 2D inputs with a set of 2D filters. The implementation is modelled
		after Convolutional Neural Networks (CNN).
		
		
		Parameters
		----------
		input: symbolic 4D tensor
		    Mini-batch of feature map stacks, of shape
		    (batch size, input channels, input rows, input columns).
		    See the optional parameter ``input_shape``.
		
		filters: symbolic 4D tensor
		    Set of filters used in CNN layer of shape
		    (output channels, input channels, filter rows, filter columns).
		    See the optional parameter ``filter_shape``.
		
		input_shape: None, tuple/list of len 4 of int or Constant variable
		    The shape of the input parameter.
		    Optional, possibly used to choose an optimal implementation.
		    You can give ``None`` for any element of the list to specify that this
		    element is not known at compile time.
		
		filter_shape: None, tuple/list of len 4 of int or Constant variable
		    The shape of the filters parameter.
		    Optional, possibly used to choose an optimal implementation.
		    You can give ``None`` for any element of the list to specify that this
		    element is not known at compile time.
		
		border_mode: str, int or tuple of two int
		    Either of the following:
		
		    ``'valid'``: apply filter wherever it completely overlaps with the
		        input. Generates output of shape: input shape - filter shape + 1
		    ``'full'``: apply filter wherever it partly overlaps with the input.
		        Generates output of shape: input shape + filter shape - 1
		    ``'half'``: pad input with a symmetric border of ``filter rows // 2``
		        rows and ``filter columns // 2`` columns, then perform a valid
		        convolution. For filters with an odd number of rows and columns, this
		        leads to the output shape being equal to the input shape.
		    ``int``: pad input with a symmetric border of zeros of the given
		        width, then perform a valid convolution.
		    ``(int1, int2)``: pad input with a symmetric border of ``int1`` rows
		        and ``int2`` columns, then perform a valid convolution.
		
		subsample: tuple of len 2
		    Factor by which to subsample the output.
		    Also called strides elsewhere.
		
		filter_flip: bool
		    If ``True``, will flip the filter rows and columns
		    before sliding them over the input. This operation is normally referred
		    to as a convolution, and this is the default. If ``False``, the filters
		    are not flipped and the operation is referred to as a cross-correlation.
		
		image_shape: None, tuple/list of len 4 of int or Constant variable
		    Deprecated alias for input_shape.
		
		filter_dilation: tuple of len 2
		    Factor by which to subsample (stride) the input.
		    Also called dilation elsewhere.
		
		kwargs: Any other keyword arguments are accepted for backwards
		        compatibility, but will be ignored.
		
		Returns
		-------
		Symbolic 4D tensor
		    Set of feature maps generated by convolutional layer. Tensor is
		    of shape (batch size, output channels, output rows, output columns)
		
		Notes
		-----
		    If cuDNN is available, it will be used on the
		    GPU. Otherwise, it is the *CorrMM* convolution that will be used
		    "caffe style convolution".
		
		    This is only supported in Theano 0.8 or the development
		    version until it is released.
		
		    The parameter filter_dilation is an implementation of `dilated
		    convolution <https://arxiv.org/pdf/1511.07122v3.pdf>`_.
	**/
	static public function conv2d(input:Dynamic, filters:Dynamic, ?input_shape:Dynamic, ?filter_shape:Dynamic, ?border_mode:Dynamic, ?subsample:Dynamic, ?filter_flip:Dynamic, ?image_shape:Dynamic, ?filter_dilation:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Compute conv output gradient w.r.t its inputs
		
		This function builds the symbolic graph for getting the
		gradient of the output of a convolution (namely output_grad)
		w.r.t the input of the convolution, given a set of 2D filters
		used by the convolution, such that the output_grad is upsampled
		to the input_shape.
		
		Parameters
		----------
		output_grad : symbolic 4D tensor
		    mini-batch of feature map stacks, of shape (batch size, input
		    channels, input rows, input columns).  This is the tensor that
		    will be upsampled or the output gradient of the convolution
		    whose gradient will be taken with respect to the input of the
		    convolution.
		filters : symbolic 4D tensor
		    set of filters used in CNN layer of shape (output channels,
		    input channels, filter rows, filter columns).  See the
		    optional parameter ``filter_shape``.
		input_shape : [None/int/Constant] * 2 + [Tensor/int/Constant] * 2
		    The shape of the input (upsampled) parameter.
		    A tuple/list of len 4, with the first two dimensions
		    being None or int or Constant and the last two dimensions being
		    Tensor or int or Constant.
		    Not Optional, since given the output_grad shape
		    and the subsample values, multiple input_shape may be
		    plausible.
		filter_shape : None or [None/int/Constant] * 4
		    The shape of the filters parameter. None or a tuple/list of len 4.
		    Optional, possibly used  to choose an optimal implementation.
		    You can give ``None`` for any element of the list to specify that
		    this element is not known at compile time.
		border_mode : str, int or tuple of two int
		    Either of the following:
		
		      ``'valid'``
		        apply filter wherever it completely overlaps with the
		        input. Generates output of shape: input shape - filter
		        shape + 1
		
		      ``'full'``
		        apply filter wherever it partly overlaps with the input.
		        Generates output of shape: input shape + filter shape - 1
		
		      ``'half'``
		        pad input with a symmetric border of ``filter rows // 2``
		        rows and ``filter columns // 2`` columns, then perform a
		        valid convolution. For filters with an odd number of rows
		        and columns, this leads to the output shape being equal to
		        the input shape. It is known as 'same' elsewhere.
		
		      ``int``
		        pad input with a symmetric border of zeros of the given
		        width, then perform a valid convolution.
		
		      ``(int1, int2)``
		        pad input with a symmetric border of ``int1`` rows and
		        ``int2`` columns, then perform a valid convolution.
		
		subsample : tuple of len 2
		    The subsampling used in the forward pass.  Also called strides
		    elsewhere.
		filter_flip : bool
		    If ``True``, will flip the filter rows and columns before
		    sliding them over the input. This operation is normally
		    referred to as a convolution, and this is the default. If
		    ``False``, the filters are not flipped and the operation is
		    referred to as a cross-correlation.
		filter_dilation : tuple of len 2
		    The filter dilation used in the forward pass.
		    Also known as input striding.
		
		Returns
		-------
		symbolic 4D tensor
		    set of feature maps generated by convolutional layer. Tensor
		    is of shape (batch size, output channels, output rows, output
		    columns)
		
		Notes
		-----
		
		:note: If cuDNN is available, it will be used on the
		    GPU. Otherwise, it is the *CorrMM* convolution that will be used
		    "caffe style convolution".
		
		:note: This is only supported in Theano 0.8 or the development
		    version until it is released.
	**/
	static public function conv2d_grad_wrt_inputs(output_grad:Dynamic, filters:Dynamic, input_shape:Dynamic, ?filter_shape:Dynamic, ?border_mode:Dynamic, ?subsample:Dynamic, ?filter_flip:Dynamic, ?filter_dilation:Dynamic):Dynamic;
	/**
		This function will build the symbolic graph for applying a transposed
		convolution over a mini-batch of a stack of 2D inputs with a set of 2D
		filters.
		
		
		Parameters
		----------
		input: symbolic 4D tensor
		    Mini-batch of feature map stacks, of shape
		    (batch size, input channels, input rows, input columns).
		    See the optional parameter ``input_shape``.
		
		filters: symbolic 4D tensor
		    Set of filters used in CNN layer of shape
		    (input channels, output channels, filter rows, filter columns).
		    See the optional parameter ``filter_shape``. **Note: the order for
		    ``output_channels`` and ``input_channels`` is reversed with respect to
		    ``conv2d``.**
		
		output_shape: tuple/list of len 4 of int or Constant variable
		    The shape of the output of ``conv2d_transpose``. The last two elements
		    are allowed to be ``tensor.scalar`` variables.
		
		filter_shape: None, tuple/list of len 4 of int or Constant variable
		    The shape of the filters parameter.
		    Optional, possibly used to choose an optimal implementation.
		    You can give ``None`` for any element of the list to specify that this
		    element is not known at compile time.
		
		border_mode: str, int or tuple of two int
		    Refers to the ``border_mode`` argument of the corresponding forward
		    (non-transposed) convolution. See the argument description in
		    ``conv2d``.  What was ``padding`` for the forward convolution means
		    ``cropping`` the output of the transposed one. ``valid`` corresponds to
		    no cropping, ``full`` to maximal cropping.
		
		input_dilation: tuple of len 2
		    Corresponds to ``subsample`` (also called strides elsewhere) in the
		    non-transposed convolution.
		
		filter_flip: bool
		    If ``True``, will flip the filter rows and columns
		    before sliding them over the input. This operation is normally referred
		    to as a convolution, and this is the default. If ``False``, the filters
		    are not flipped and the operation is referred to as a cross-correlation.
		
		filter_dilation: tuple of len 2
		    Factor by which to subsample (stride) the input.
		    Also called dilation elsewhere.
		
		Returns
		-------
		Symbolic 4D tensor
		    Set of feature maps generated by the transposed convolution. Tensor is
		    of shape (batch size, output channels, output rows, output columns)
		
		Notes
		-----
		    If cuDNN is available, it will be used on the
		    GPU. Otherwise, it is the *CorrMM* convolution that will be used
		    "caffe style convolution".
		
		    This operation is also sometimes called "deconvolution".
		
		    The parameter filter_dilation is an implementation of `dilated
		    convolution <https://arxiv.org/pdf/1511.07122v3.pdf>`_.
	**/
	static public function conv2d_transpose(input:Dynamic, filters:Dynamic, output_shape:Dynamic, ?filter_shape:Dynamic, ?border_mode:Dynamic, ?input_dilation:Dynamic, ?filter_flip:Dynamic, ?filter_dilation:Dynamic):Dynamic;
	/**
		3D "convolution" of multiple filters on a minibatch.
		
		(does not flip the kernel, moves kernel with a user specified stride)
		
		Parameters
		----------
		V
		    Visible unit, input.
		    Dimensions: (batch, row, column, time, in channel).
		W
		    Weights, filter.
		    Dimensions: (out channel, row, column, time ,in channel).
		b
		    Bias, shape == (W.shape[0],).
		d
		    Strides when moving the filter over the input(dx, dy, dt).
		
		Notes
		-----
		The order of dimensions does not correspond to the one in `conv2d`.
		This is for optimization.
		
		The GPU implementation is very slow. You should use
		:func:`conv3d2d <theano.tensor.nnet.conv3d2d.conv3d>` or
		:func:`conv3d_fft <theano.sandbox.cuda.fftconv.conv3d_fft>` for a
		GPU graph instead.
		
		See Also
		--------
		Someone made a script that shows how to swap the axes
		between both 3d convolution implementations in Theano. See
		the last `attachment <https://groups.google.com/d/msg/theano-users/1S9_bZgHxVw/0cQR9a4riFUJ>`_
	**/
	static public function conv3D(V:Dynamic, W:Dynamic, b:Dynamic, d:Dynamic):Dynamic;
	/**
		This function will build the symbolic graph for convolving a mini-batch of a
		stack of 3D inputs with a set of 3D filters. The implementation is modelled
		after Convolutional Neural Networks (CNN).
		
		
		Parameters
		----------
		input: symbolic 5D tensor
		    Mini-batch of feature map stacks, of shape
		    (batch size, input channels, input depth, input rows, input columns).
		    See the optional parameter ``input_shape``.
		
		filters: symbolic 5D tensor
		    Set of filters used in CNN layer of shape
		    (output channels, input channels, filter depth, filter rows, filter columns).
		    See the optional parameter ``filter_shape``.
		
		input_shape: None, tuple/list of len 5 of int or Constant variable
		    The shape of the input parameter.
		    Optional, possibly used to choose an optimal implementation.
		    You can give ``None`` for any element of the list to specify that this
		    element is not known at compile time.
		
		filter_shape: None, tuple/list of len 5 of int or Constant variable
		    The shape of the filters parameter.
		    Optional, possibly used to choose an optimal implementation.
		    You can give ``None`` for any element of the list to specify that this
		    element is not known at compile time.
		
		border_mode: str, int or tuple of three int
		    Either of the following:
		
		    ``'valid'``: apply filter wherever it completely overlaps with the
		        input. Generates output of shape: input shape - filter shape + 1
		    ``'full'``: apply filter wherever it partly overlaps with the input.
		        Generates output of shape: input shape + filter shape - 1
		    ``'half'``: pad input with a symmetric border of ``filter // 2``,
		        then perform a valid convolution. For filters with an odd
		        number of slices, rows and columns, this leads to the output
		        shape being equal to the input shape.
		    ``int``: pad input with a symmetric border of zeros of the given
		        width, then perform a valid convolution.
		    ``(int1, int2, int3)``
		        pad input with a symmetric border of ``int1``, ``int2`` and
		        ``int3`` columns, then perform a valid convolution.
		
		subsample: tuple of len 3
		    Factor by which to subsample the output.
		    Also called strides elsewhere.
		
		filter_flip: bool
		    If ``True``, will flip the filter x, y and z dimensions before
		    sliding them over the input. This operation is normally
		    referred to as a convolution, and this is the default. If
		    ``False``, the filters are not flipped and the operation is
		    referred to as a cross-correlation.
		
		filter_dilation: tuple of len 3
		    Factor by which to subsample (stride) the input.
		    Also called dilation elsewhere.
		
		Returns
		-------
		Symbolic 5D tensor
		    Set of feature maps generated by convolutional layer. Tensor is
		    is of shape (batch size, output channels, output depth,
		    output rows, output columns)
		
		Notes
		-----
		    If cuDNN is available, it will be used on the
		    GPU. Otherwise, it is the *Corr3dMM* convolution that will be used
		    "caffe style convolution".
		
		    This is only supported in Theano 0.8 or the development
		    version until it is released.
	**/
	static public function conv3d(input:Dynamic, filters:Dynamic, ?input_shape:Dynamic, ?filter_shape:Dynamic, ?border_mode:Dynamic, ?subsample:Dynamic, ?filter_flip:Dynamic, ?filter_dilation:Dynamic):Dynamic;
	static public function convGrad3D(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function convTransp3D(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function crossentropy_categorical_1hot(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function crossentropy_categorical_1hot_grad(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function crossentropy_softmax_1hot(x:Dynamic, y_idx:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function crossentropy_softmax_1hot_with_bias(x:Dynamic, b:Dynamic, y_idx:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function crossentropy_softmax_1hot_with_bias_dx(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function crossentropy_softmax_argmax_1hot_with_bias(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function crossentropy_softmax_max_and_argmax_1hot(x:Dynamic, y_idx:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Returns
		-------
		object
		    The cross-entropy, the softmax output, the max probability,
		    and the argmax index.
		
		TODO: Since we are recomputing the argmax,
		       we might as well assert that it is correct.
		
		TODO: Make this entire function is
		unnecessary? e.g. CrossentropySoftmaxArgmax1HotWithBias should return
		the appropriate information (i.e. the max probability)?
	**/
	static public function crossentropy_softmax_max_and_argmax_1hot_with_bias(x:Dynamic, b:Dynamic, y_idx:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function crossentropy_to_crossentropy_with_softmax(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function crossentropy_to_crossentropy_with_softmax_with_bias(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var division : Dynamic;
	/**
		Compute the element-wise exponential linear activation function.
		
		.. versionadded:: 0.8.0
		
		Parameters
		----------
		x : symbolic tensor
		    Tensor to compute the activation function for.
		alpha : scalar
		
		
		Returns
		-------
		symbolic tensor
		    Element-wise exponential linear activation function applied to `x`.
		
		References
		-----
		.. [1] Djork-Arne Clevert,  Thomas Unterthiner, Sepp Hochreiter
		    "Fast and Accurate Deep Network Learning by
		    Exponential Linear Units (ELUs)" <http://arxiv.org/abs/1511.07289>`.
	**/
	static public function elu(x:Dynamic, ?alpha:Dynamic):Dynamic;
	/**
		Return an un-computable symbolic variable of type `x.type`.
		
		If any call to tensor.grad results in an expression containing this
		un-computable variable, an exception (GradUndefinedError) will be
		raised indicating that the gradient on the
		`x_pos`'th input of `op` is mathematically undefined. Likewise if
		any call to theano.function involves this variable.
		
		Optionally adds a comment to the exception explaining why this
		gradient is not defined.
	**/
	static public function grad_undefined(op:Dynamic, x_pos:Dynamic, x:Dynamic, ?comment:Dynamic):Dynamic;
	static public var graph_merge_softmax_with_crossentropy_softmax : Dynamic;
	/**
		Two-level hierarchical softmax.
		
		This function implements a two-layer hierarchical softmax. It is commonly
		used as an alternative of the softmax when the number of outputs is
		important (it is common to use it for millions of outputs). See
		reference [1]_ for more information about the computational gains.
		
		The `n_outputs` outputs are organized in `n_classes` classes, each class
		containing the same number `n_outputs_per_class` of outputs.
		For an input `x` (last hidden activation), the first softmax layer predicts
		its class and the second softmax layer predicts its output among its class.
		
		If `target` is specified, it will only compute the outputs of the
		corresponding targets. Otherwise, if `target` is `None`, it will compute
		all the outputs.
		
		The outputs are grouped in classes in the same order as they are initially
		defined: if `n_outputs=10` and `n_classes=2`, then the first class is
		composed of the outputs labeled `{0,1,2,3,4}` while the second class is
		composed of `{5,6,7,8,9}`. If you need to change the classes, you have to
		re-label your outputs.
		
		.. versionadded:: 0.7.1
		
		Parameters
		----------
		x: tensor of shape (batch_size, number of features)
		    the minibatch input of the two-layer hierarchical softmax.
		batch_size: int
		    the size of the minibatch input x.
		n_outputs: int
		    the number of outputs.
		n_classes: int
		    the number of classes of the two-layer hierarchical softmax. It
		    corresponds to the number of outputs of the first softmax. See note at
		    the end.
		n_outputs_per_class: int
		    the number of outputs per class. See note at the end.
		W1: tensor of shape (number of features of the input x, n_classes)
		    the weight matrix of the first softmax, which maps the input x to the
		    probabilities of the classes.
		b1: tensor of shape (n_classes,)
		    the bias vector of the first softmax layer.
		W2: tensor of shape (n_classes, number of features of the input x,
		        n_outputs_per_class)
		    the weight matrix of the second softmax, which maps the input x to
		    the probabilities of the outputs.
		b2: tensor of shape (n_classes, n_outputs_per_class)
		    the bias vector of the second softmax layer.
		target: tensor of shape either (batch_size,) or (batch_size, 1)
		    (optional, default None)
		    contains the indices of the targets for the minibatch
		    input x. For each input, the function computes the output for its
		    corresponding target. If target is None, then all the outputs are
		    computed for each input.
		
		Returns
		-------
		tensor of shape (`batch_size`, `n_outputs`) or (`batch_size`, 1)
		    Output tensor of the two-layer hierarchical softmax for input `x`.
		    Depending on argument `target`, it can have two different shapes.
		    If `target` is not specified (`None`), then all the outputs are
		    computed and the returned tensor has shape (`batch_size`, `n_outputs`).
		    Otherwise, when `target` is specified, only the corresponding outputs
		    are computed and the returned tensor has thus shape (`batch_size`, 1).
		
		Notes
		-----
		The product of `n_outputs_per_class` and `n_classes` has to be greater or
		equal to `n_outputs`. If it is strictly greater, then the irrelevant
		outputs will be ignored.
		`n_outputs_per_class` and `n_classes` have to be the same as the
		corresponding dimensions of the tensors of `W1`, `b1`, `W2` and `b2`.
		The most computational efficient configuration is when
		`n_outputs_per_class` and `n_classes` are equal to the square root of
		`n_outputs`.
		
		Examples
		--------
		The following example builds a simple hierarchical softmax layer.
		
		>>> import numpy as np
		>>> import theano
		>>> from theano import tensor
		>>> from theano.tensor.nnet import h_softmax
		>>>
		>>> # Parameters
		>>> batch_size = 32
		>>> n_outputs = 100
		>>> dim_x = 10  # dimension of the input
		>>> n_classes = int(np.ceil(np.sqrt(n_outputs)))
		>>> n_outputs_per_class = n_classes
		>>> output_size = n_outputs_per_class * n_outputs_per_class
		>>>
		>>> # First level of h_softmax
		>>> floatX = theano.config.floatX
		>>> W1 = theano.shared(
		...     np.random.normal(0, 0.001, (dim_x, n_classes)).astype(floatX))
		>>> b1 = theano.shared(np.zeros((n_classes,), floatX))
		>>>
		>>> # Second level of h_softmax
		>>> W2 = np.random.normal(0, 0.001,
		...     size=(n_classes, dim_x, n_outputs_per_class)).astype(floatX)
		>>> W2 = theano.shared(W2)
		>>> b2 = theano.shared(np.zeros((n_classes, n_outputs_per_class), floatX))
		>>>
		>>> # We can now build the graph to compute a loss function, typically the
		>>> # negative log-likelihood:
		>>>
		>>> x = tensor.imatrix('x')
		>>> target = tensor.imatrix('target')
		>>>
		>>> # This only computes the output corresponding to the target.
		>>> # The complexity is O(n_classes + n_outputs_per_class).
		>>> y_hat_tg = h_softmax(x, batch_size, output_size, n_classes,
		...                      n_outputs_per_class, W1, b1, W2, b2, target)
		>>>
		>>> negll = -tensor.mean(tensor.log(y_hat_tg))
		>>>
		>>> # We may need to compute all the outputs (at test time usually):
		>>>
		>>> # This computes all the outputs.
		>>> # The complexity is O(n_classes * n_outputs_per_class).
		>>> output = h_softmax(x, batch_size, output_size, n_classes,
		...                    n_outputs_per_class, W1, b1, W2, b2)
		
		
		References
		----------
		.. [1] J. Goodman, "Classes for Fast Maximum Entropy Training,"
		    ICASSP, 2001, <http://arxiv.org/abs/cs/0108006>`.
	**/
	static public function h_softmax(x:Dynamic, batch_size:Dynamic, n_outputs:Dynamic, n_classes:Dynamic, n_outputs_per_class:Dynamic, W1:Dynamic, b1:Dynamic, W2:Dynamic, b2:Dynamic, ?target:Dynamic):Dynamic;
	/**
		An approximation of sigmoid.
		
		More approximate and faster than ultra_fast_sigmoid.
		
		Approx in 3 parts: 0, scaled linear, 1.
		
		Removing the slope and shift does not make it faster.
	**/
	static public function hard_sigmoid(x:Dynamic):Dynamic;
	/**
		Extract a list of compilation flags from config.blas.ldflags.
		
		Depending on the options, different type of flags will be kept.
		It returns a list of libraries against which an Op's object file
		should be linked to benefit from a BLAS implementation.
		
		Parameters
		----------
		libs : bool, optional
		    Extract flags starting with "-l" (the default is True).
		libs_dir : bool, optional
		    Extract flags starting with "-L" (the default is False).
		include_dir : bool, optional
		    Extract flags starting with "-I" (the default is False).
		flags: bool, optional
		    Extract all the other flags (the default is False).
		
		Returns
		-------
		list of strings
		    Extracted flags.
	**/
	static public function ldflags(?libs:Dynamic, ?flags:Dynamic, ?libs_dir:Dynamic, ?include_dir:Dynamic):Dynamic;
	static public function logsoftmax(c:Dynamic):Dynamic;
	static public function logsoftmax_op(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function prepend_0_to_each_row(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function prepend_1_to_each_row(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function prepend_scalar_to_each_row(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var print_function : Dynamic;
	/**
		Compute the element-wise rectified linear activation function.
		
		.. versionadded:: 0.7.1
		
		Parameters
		----------
		x : symbolic tensor
		    Tensor to compute the activation function for.
		alpha : `scalar or tensor, optional`
		    Slope for negative input, usually between 0 and 1. The default value
		    of 0 will lead to the standard rectifier, 1 will lead to
		    a linear activation function, and any value in between will give a
		    leaky rectifier. A shared variable (broadcastable against `x`) will
		    result in a parameterized rectifier with learnable slope(s).
		
		Returns
		-------
		symbolic tensor
		    Element-wise rectifier applied to `x`.
		
		Notes
		-----
		This is numerically equivalent to ``T.switch(x > 0, x, alpha * x)``
		(or ``T.maximum(x, alpha * x)`` for ``alpha < 1``), but uses a faster
		formulation or an optimized Op, so we encourage to use this function.
	**/
	static public function relu(x:Dynamic, ?alpha:Dynamic):Dynamic;
	static public function scalar_sigmoid(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function sigmoid(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function sigmoid_inplace(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function softmax(c:Dynamic):Dynamic;
	static public function softmax_grad(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function softmax_graph(c:Dynamic):Dynamic;
	static public function softmax_op(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function softmax_simplifier(numerators:Dynamic, denominators:Dynamic):Dynamic;
	static public function softmax_with_bias(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function softplus(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function softsign(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function ultra_fast_sigmoid(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}