/* This file is generated, do not edit! */
package theano.tensor.nnet.nnet;
@:pythonImport("theano.tensor.nnet.nnet") extern class Nnet_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Check that 'rows' is the same node as T.arange(labels.shape[0]).
		
		Also considers the case where labels.shape[0] is constant and equal
		to 1, and T.arange(labels.shape[0]) has been constant-folded into 0.
	**/
	static public function _check_rows_is_arange_len_labels(rows:Dynamic, labels:Dynamic):Dynamic;
	static public function _is_const(z:Dynamic, val:Dynamic, ?approx:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
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
		un-computable variable, an exception (NotImplementedError) will be
		raised indicating that the gradient on the
		`x_pos`'th input of `op` has not been implemented. Likewise if
		any call to theano.function involves this variable.
		
		Optionally adds a comment to the exception explaining why this
		gradient is not implemented.
	**/
	static public function grad_not_implemented(op:Dynamic, x_pos:Dynamic, x:Dynamic, ?comment:Dynamic):Dynamic;
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
	static public var local_advanced_indexing_crossentropy_onehot : Dynamic;
	static public var local_advanced_indexing_crossentropy_onehot_grad : Dynamic;
	static public var local_argmax_pushdown : Dynamic;
	static public var local_logsoftmax : Dynamic;
	static public var local_logsoftmax_grad : Dynamic;
	static public var local_softmax_grad_to_crossentropy_with_softmax_grad : Dynamic;
	static public var local_softmax_with_bias : Dynamic;
	static public var local_useless_crossentropy_softmax_1hot_with_bias_dx_alloc : Dynamic;
	static public function logsoftmax(c:Dynamic):Dynamic;
	static public function logsoftmax_op(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var optdb : Dynamic;
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
	static public function scalar_softsign(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function sigmoid(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function softmax(c:Dynamic):Dynamic;
	static public function softmax_grad(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function softmax_graph(c:Dynamic):Dynamic;
	static public function softmax_op(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function softmax_simplifier(numerators:Dynamic, denominators:Dynamic):Dynamic;
	static public function softmax_with_bias(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function softplus(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function softsign(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Compute the dot product (plus bias) of the specified pieces of vectors
		and matrices. See SparseBlockGemv to get more information.
		
		The parameter types are actually their expected shapes relative to
		each other.
		
		Parameters
		----------
		W : iBlocks, oBlocks, iSize, oSize
		    weight matrix
		h : batch, iWin, iSize
		    input from lower layer (sparse)
		inputIdx : batch, iWin
		    indexes of the input blocks
		b : oBlocks, oSize
		    bias vector
		outputIdx : batch, oWin
		    indexes of the output blocks
		
		Returns
		-------
		(batch, oWin, oSize)
		    dot(W[i, j], h[i]) + b[j] but b[j] is only added once
		
		Notes
		-----
		- `batch` is the number of examples in a minibatch (batch size).
		- `iBlocks` is the total number of blocks in the input (from lower layer).
		- `iSize` is the size of each of these input blocks.
		- `iWin` is the number of blocks that will be used as inputs. Which blocks
		   will be used is specified in `inputIdx`.
		- `oBlocks` is the number or possible output blocks.
		- `oSize` is the size of each of these output blocks.
		- `oWin` is the number of output blocks that will actually be computed.
		   Which blocks will be computed is specified in `outputIdx`.
	**/
	static public function sparse_block_dot(W:Dynamic, h:Dynamic, inputIdx:Dynamic, b:Dynamic, outputIdx:Dynamic):Dynamic;
	static public function values_eq_approx_remove_inf(a:Dynamic, b:Dynamic):Dynamic;
	static public function values_eq_approx_remove_nan(a:Dynamic, b:Dynamic):Dynamic;
}