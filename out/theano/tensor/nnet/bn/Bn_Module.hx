/* This file is generated, do not edit! */
package theano.tensor.nnet.bn;
@:pythonImport("theano.tensor.nnet.bn") extern class Bn_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _prepare_batch_normalization_axes(axes:Dynamic, ndim:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public function add(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		For for theano.scalar.Scalar and TensorVariable.
	**/
	static public function as_common_dtype(?vars:python.VarArgs<Dynamic>):Dynamic;
	/**
		Return `x`, transformed into a `TensorType`.
		
		This function is often used by `make_node` methods of `Op` subclasses
		to turn ndarrays, numbers, `Scalar` instances, `Apply` instances and
		`TensorType` instances into valid input list elements.
		
		Parameters
		----------
		x : Apply instance, Variable instance, numpy.ndarray, or number
		    This thing will be transformed into a `Variable` in a sensible way. An
		    ndarray argument will not be copied, but a list of numbers will be
		    copied to make an ndarray.
		name : str or None
		    If a new `Variable` instance is created, it will be named with this
		    string.
		ndim : None or integer
		    Return a Variable with this many dimensions.
		
		Raises
		------
		ValueError
		    If an `Apply` with more than one output is fetched or
		    if `x` cannot be made into a Variable with `ndim` dimensions.
		AsTensorError
		    If `x` cannot be converted to a TensorType Variable.
	**/
	static public function as_tensor_variable(x:Dynamic, ?name:Dynamic, ?ndim:Dynamic):Dynamic;
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
		Performs batch normalization of the given inputs, using the given mean and
		variance.
		
		Parameters
		----------
		axes : 'per-activation', 'spatial' or a tuple of ints
		    The axes along which the input should be normalized. ``'per-activation'``
		    normalizes per activation and is equal to ``axes=(0,)``.
		    ``'spatial'`` shares normalization factors across spatial dimensions
		    (i.e., all dimensions past the second), which for 4D inputs would be
		    equal to ``axes=(0, 2, 3)``.
		gamma : tensor
		    Scale factors. The shape must match the shape of `inputs`,
		    except for the axes in `axes`. These axes should be set to 1 or be
		    skipped altogether (such that `gamma.ndim == inputs.ndim - len(axes)`).
		beta : tensor
		    Biases. Must match the tensor layout of `gamma`.
		mean : tensor
		    Means. Usually these are running averages computed during training.
		    Must match the tensor layout of `gamma`.
		var : tensor
		    Variances. Usually these are running averages computed during training.
		    Must match the tensor layout of `gamma`.
		epsilon : float
		    Epsilon value used in the batch normalization formula. Minimum allowed
		    value is 1e-5 (imposed by cuDNN).
		
		Returns
		-------
		out : tensor
		    Batch-normalized inputs.
		
		Notes
		-----
		If per-activation or spatial normalization is selected, this operation
		will use the cuDNN implementation. (This requires cuDNN 5 or newer.)
		
		The returned value is equivalent to:
		
		.. code-block:: python
		
		    # for per-activation normalization
		    axes = (0,)
		    # for spatial normalization
		    axes = (0,) + tuple(range(2, inputs.ndim))
		    gamma, beta, mean, var = (T.addbroadcast(t, *axes)
		                              for t in (gamma, beta, mean, var))
		    out = (inputs - mean) * gamma / T.sqrt(var + epsilon) + beta
	**/
	static public function batch_normalization_test(inputs:Dynamic, gamma:Dynamic, beta:Dynamic, mean:Dynamic, _var:Dynamic, ?axes:Dynamic, ?epsilon:Dynamic):Dynamic;
	/**
		Performs batch normalization of the given inputs, using the mean and
		variance of the inputs.
		
		Parameters
		----------
		axes : 'per-activation', 'spatial' or a tuple of ints
		    The axes along which the input should be normalized. ``'per-activation'``
		    normalizes per activation and is equal to ``axes=(0,)``.
		    ``'spatial'`` shares normalization factors across spatial dimensions
		    (i.e., all dimensions past the second), which for 4D inputs would be
		    equal to ``axes=(0, 2, 3)``.
		gamma : tensor
		    Learnable scale factors. The shape must match the shape of `inputs`,
		    except for the axes in `axes`. These axes should be set to 1 or be
		    skipped altogether (such that `gamma.ndim == inputs.ndim - len(axes)`).
		beta : tensor
		    Learnable biases. Must match the tensor layout of `gamma`.
		epsilon : float
		    Epsilon value used in the batch normalization formula. Minimum allowed
		    value is 1e-5 (imposed by cuDNN).
		running_average_factor : float
		    Factor for updating the values or `running_mean` and `running_var`.
		    If the factor is close to one, the running averages will update quickly,
		    if the factor is close to zero it will update slowly.
		running_mean : tensor or None
		    Previous value of the running mean. If this is given, the new value
		    ``running_mean * (1 - r_a_factor) + batch mean * r_a_factor``
		    will be returned as one of the outputs of this function.
		    `running_mean` and `running_var` should either both be given or
		    both be None. The shape should match that of `gamma` and `beta`.
		running_var : tensor or None
		    Previous value of the running variance. If this is given, the new value
		    ``running_var * (1 - r_a_factor) + (m / (m - 1)) * batch var * r_a_factor``
		    will be returned as one of the outputs of this function,
		    where `m` is the product of lengths of the averaged-over dimensions.
		    `running_mean` and `running_var` should either both be given or
		    both be None. The shape should match that of `gamma` and `beta`.
		
		Returns
		-------
		out : tensor
		    Batch-normalized inputs.
		mean : tensor
		    Means of `inputs` across the normalization axes.
		invstd : tensor
		    Inverse standard deviations of `inputs` across the normalization axes.
		new_running_mean : tensor
		    New value of the running mean (only if both `running_mean` and
		    `running_var` were given).
		new_running_var : tensor
		    New value of the running variance (only if both `running_var` and
		    `running_mean` were given).
		
		Notes
		-----
		If per-activation or spatial normalization is selected, this operation
		will use the cuDNN implementation. (This requires cuDNN 5 or newer.)
		
		The returned values are equivalent to:
		
		.. code-block:: python
		
		    # for per-activation normalization
		    axes = (0,)
		    # for spatial normalization
		    axes = (0,) + tuple(range(2, inputs.ndim))
		    mean = inputs.mean(axes, keepdims=True)
		    var = inputs.var(axes, keepdims=True)
		    invstd = T.inv(T.sqrt(var + epsilon))
		    out = (inputs - mean) * gamma * invstd + beta
		
		    m = T.cast(T.prod(inputs.shape) / T.prod(mean.shape), 'float32')
		    running_mean = running_mean * (1 - running_average_factor) + \
		                   mean * running_average_factor
		    running_var = running_var * (1 - running_average_factor) + \
		                  (m / (m - 1)) * var * running_average_factor
	**/
	static public function batch_normalization_train(inputs:Dynamic, gamma:Dynamic, beta:Dynamic, ?axes:Dynamic, ?epsilon:Dynamic, ?running_average_factor:Dynamic, ?running_mean:Dynamic, ?running_var:Dynamic):Dynamic;
	static public var bn_groupopt : Dynamic;
	/**
		Copies the stack trace from one or more tensor variables to
		one or more tensor variables.
		
		Parameters
		----------
		from_var
		    Tensor variable or list of tensor variables to copy stack traces from.
		to_var
		    Tensor variable or list of tensor variables to copy stack traces to.
		
		Notes
		-----
		The stacktrace is assumed to be of the form of a list of lists
		of tuples. Each tuple contains the filename, line number, function name
		and so on. Each list of tuples contains the truples belonging to a
		particular variable.
	**/
	static public function copy_stack_trace(from_var:Dynamic, to_var:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var local_abstract_batch_norm_inference : Dynamic;
	static public var local_abstract_batch_norm_train : Dynamic;
	static public var local_abstract_batch_norm_train_grad : Dynamic;
	static public function local_optimizer(tracks:Dynamic, ?inplace:Dynamic, ?requirements:Dynamic):Dynamic;
	static public function mul(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var print_function : Dynamic;
	static public function register_specialize_device(lopt:Dynamic, ?tags:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function sub(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function true_div(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}