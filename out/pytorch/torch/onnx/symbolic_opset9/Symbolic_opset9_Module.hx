/* This file is generated, do not edit! */
package torch.onnx.symbolic_opset9;
@:pythonImport("torch.onnx.symbolic_opset9") extern class Symbolic_opset9_Module {
	static public function Optional(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function __and_(g:Dynamic, input:Dynamic, other:Dynamic):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public function __derive_index(g:Dynamic, index:Dynamic, start:Dynamic, step:Dynamic):Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public function __getitem_(g:Dynamic, self:Dynamic, i:Dynamic):Dynamic;
	static public function __interpolate(g:Dynamic, input:Dynamic, size:Dynamic, scale_factor:Dynamic, mode:Dynamic, align_corners:Dynamic, recompute_scale_factor:Dynamic):Dynamic;
	static public function __isnot_(g:Dynamic, self:Dynamic, other:Dynamic):Dynamic;
	static public var __loader__ : Dynamic;
	static public function __lshift_(g:Dynamic, self:Dynamic, other:Dynamic):Dynamic;
	static public var __name__ : Dynamic;
	static public function __not_(g:Dynamic, self:Dynamic):Dynamic;
	static public function __or_(g:Dynamic, input:Dynamic, other:Dynamic):Dynamic;
	static public var __package__ : Dynamic;
	static public function __range_length(g:Dynamic, lo:Dynamic, hi:Dynamic, step:Dynamic):Dynamic;
	static public function __rshift_(g:Dynamic, self:Dynamic, other:Dynamic):Dynamic;
	static public var __spec__ : Dynamic;
	static public function _adaptive_pool(name:Dynamic, type:Dynamic, tuple_fn:Dynamic, ?fn:Dynamic):Dynamic;
	static public function _all(g:Dynamic, input:Dynamic):Dynamic;
	static public function _any(g:Dynamic, input:Dynamic):Dynamic;
	static public function _avg_pool(name:Dynamic, tuple_fn:Dynamic):Dynamic;
	/**
		partial(func, *args, **keywords) - new function with partial application
		of the given arguments and keywords.
	**/
	static public function _cast_Bool(g:Dynamic, input:Dynamic, non_blocking:Dynamic):Dynamic;
	/**
		partial(func, *args, **keywords) - new function with partial application
		of the given arguments and keywords.
	**/
	static public function _cast_Byte(g:Dynamic, input:Dynamic, non_blocking:Dynamic):Dynamic;
	/**
		partial(func, *args, **keywords) - new function with partial application
		of the given arguments and keywords.
	**/
	static public function _cast_Char(g:Dynamic, input:Dynamic, non_blocking:Dynamic):Dynamic;
	/**
		partial(func, *args, **keywords) - new function with partial application
		of the given arguments and keywords.
	**/
	static public function _cast_ComplexDouble(g:Dynamic, input:Dynamic, non_blocking:Dynamic):Dynamic;
	/**
		partial(func, *args, **keywords) - new function with partial application
		of the given arguments and keywords.
	**/
	static public function _cast_ComplexFloat(g:Dynamic, input:Dynamic, non_blocking:Dynamic):Dynamic;
	/**
		partial(func, *args, **keywords) - new function with partial application
		of the given arguments and keywords.
	**/
	static public function _cast_Double(g:Dynamic, input:Dynamic, non_blocking:Dynamic):Dynamic;
	/**
		partial(func, *args, **keywords) - new function with partial application
		of the given arguments and keywords.
	**/
	static public function _cast_Float(g:Dynamic, input:Dynamic, non_blocking:Dynamic):Dynamic;
	/**
		partial(func, *args, **keywords) - new function with partial application
		of the given arguments and keywords.
	**/
	static public function _cast_Half(g:Dynamic, input:Dynamic, non_blocking:Dynamic):Dynamic;
	/**
		partial(func, *args, **keywords) - new function with partial application
		of the given arguments and keywords.
	**/
	static public function _cast_Int(g:Dynamic, input:Dynamic, non_blocking:Dynamic):Dynamic;
	/**
		partial(func, *args, **keywords) - new function with partial application
		of the given arguments and keywords.
	**/
	static public function _cast_Long(g:Dynamic, input:Dynamic, non_blocking:Dynamic):Dynamic;
	/**
		partial(func, *args, **keywords) - new function with partial application
		of the given arguments and keywords.
	**/
	static public function _cast_Short(g:Dynamic, input:Dynamic, non_blocking:Dynamic):Dynamic;
	/**
		partial(func, *args, **keywords) - new function with partial application
		of the given arguments and keywords.
	**/
	static public function _cast_Undefined(g:Dynamic, input:Dynamic, non_blocking:Dynamic):Dynamic;
	static public function _convert_padding_node(padding:Dynamic):Dynamic;
	static public function _convolution(g:Dynamic, input:Dynamic, weight:Dynamic, bias:Dynamic, stride:Dynamic, padding:Dynamic, dilation:Dynamic, transposed:Dynamic, output_padding:Dynamic, groups:Dynamic, benchmark:Dynamic, deterministic:Dynamic, cudnn_enabled:Dynamic, allow_tf32:Dynamic):Dynamic;
	static public function _dim_arange(g:Dynamic, like:Dynamic, dim:Dynamic):Dynamic;
	static public function _div_rounding_mode(g:Dynamic, self:Dynamic, other:Dynamic, rounding_mode:Dynamic):Dynamic;
	static public function _floor_divide(g:Dynamic, self:Dynamic, other:Dynamic):Dynamic;
	static public function _generic_rnn(g:Dynamic, variant:Dynamic, input:Dynamic, initial_states:Dynamic, all_weights:Dynamic, has_biases:Dynamic, num_layers:Dynamic, dropout:Dynamic, train:Dynamic, bidirectional:Dynamic, ?batch_first:Dynamic, ?batch_sizes:Dynamic):Dynamic;
	static public function _interpolate(name:Dynamic, dim:Dynamic, interpolate_mode:Dynamic):Dynamic;
	static public function _kl_div_log_target_impl(g:Dynamic, input:Dynamic, target:Dynamic):Dynamic;
	static public function _kl_div_non_log_target_impl(g:Dynamic, input:Dynamic, target:Dynamic):Dynamic;
	static public function _len(g:Dynamic, self:Dynamic):Dynamic;
	static public function _list(g:Dynamic, self:Dynamic):Dynamic;
	static public function _lstm_full(g:Dynamic, input:Dynamic, hidden_v:Dynamic, weight_v:Dynamic, has_biases:Dynamic, num_layers:Dynamic, dropout:Dynamic, train:Dynamic, bidirectional:Dynamic, batch_first:Dynamic):Dynamic;
	static public function _lstm_packed(g:Dynamic, input:Dynamic, batch_sizes:Dynamic, hidden_v:Dynamic, weight_v:Dynamic, has_biases:Dynamic, num_layers:Dynamic, dropout:Dynamic, train:Dynamic, bidirectional:Dynamic):Dynamic;
	static public function _max_pool(name:Dynamic, tuple_fn:Dynamic, ndims:Dynamic, return_indices:Dynamic):Dynamic;
	static public function _maybe_cast_reduce_op_input(g:Dynamic, self:Dynamic):Dynamic;
	static public function _one_hidden_rnn(kind:Dynamic):Dynamic;
	static public function _pack_padded_sequence(g:Dynamic, input:Dynamic, lengths:Dynamic, batch_first:Dynamic):Dynamic;
	static public function _pad_packed_sequence(g:Dynamic, data:Dynamic, batch_sizes:Dynamic, batch_first:Dynamic, padding_value:Dynamic, total_length:Dynamic):Dynamic;
	static public function _pair(x:Dynamic):Dynamic;
	static public function _parse_arg(value:Dynamic, desc:Dynamic, ?arg_name:Dynamic, ?node_name:Dynamic):Dynamic;
	static public function _prepare_onnx_paddings(dim:Dynamic, pad:Dynamic):Dynamic;
	static public function _reduce_op_symbolic(onnx_op_name:Dynamic, ?allow_multi_dim_support:Dynamic):Dynamic;
	static public function _reduce_with_dtype(onnx_op:Dynamic, name:Dynamic, ?allow_multi_dim_support:Dynamic):Dynamic;
	static public function _reshape_from_tensor(g:Dynamic, input:Dynamic, shape:Dynamic):Dynamic;
	static public function _sample_dirichlet(g:Dynamic, self:Dynamic, generator:Dynamic):Dynamic;
	static public function _shape_as_tensor(g:Dynamic, input:Dynamic):Dynamic;
	static public function _single(x:Dynamic):Dynamic;
	static public function _slice(g:Dynamic, input:Dynamic, axes:Dynamic, starts:Dynamic, ends:Dynamic):Dynamic;
	static public function _standard_gamma(g:Dynamic, self:Dynamic, generator:Dynamic):Dynamic;
	static public function _triple(x:Dynamic):Dynamic;
	static public function _trunc_divide(g:Dynamic, self:Dynamic, other:Dynamic):Dynamic;
	static public function _unimplemented(op:Dynamic, msg:Dynamic):Dynamic;
	static public function _unique(g:Dynamic, input:Dynamic, sorted:Dynamic, return_inverse:Dynamic):Dynamic;
	static public function _unique2(g:Dynamic, input:Dynamic, sorted:Dynamic, return_inverse:Dynamic, return_counts:Dynamic):Dynamic;
	static public function _unsupported_dropout(name:Dynamic):Dynamic;
	static public function _var_mean(g:Dynamic, input:Dynamic, dim:Dynamic, correction:Dynamic, keepdim:Dynamic):Dynamic;
	static public function _weight_norm(g:Dynamic, weight_v:Dynamic, weight_g:Dynamic, dim:Dynamic):Dynamic;
	static public function abs(g:Dynamic, self:Dynamic):Dynamic;
	static public function acos(g:Dynamic, self:Dynamic):Dynamic;
	static public function adaptive_avg_pool1d(g:Dynamic, input:Dynamic, output_size:Dynamic):Dynamic;
	static public function adaptive_avg_pool2d(g:Dynamic, input:Dynamic, output_size:Dynamic):Dynamic;
	static public function adaptive_avg_pool3d(g:Dynamic, input:Dynamic, output_size:Dynamic):Dynamic;
	static public function adaptive_max_pool1d(g:Dynamic, input:Dynamic, output_size:Dynamic):Dynamic;
	static public function adaptive_max_pool2d(g:Dynamic, input:Dynamic, output_size:Dynamic):Dynamic;
	static public function adaptive_max_pool3d(g:Dynamic, input:Dynamic, output_size:Dynamic):Dynamic;
	static public function add(g:Dynamic, self:Dynamic, other:Dynamic, ?alpha:Dynamic):Dynamic;
	static public function addmm(g:Dynamic, self:Dynamic, mat1:Dynamic, mat2:Dynamic, beta:Dynamic, alpha:Dynamic):Dynamic;
	static public function alias(g:Dynamic, self:Dynamic):Dynamic;
	static public function alpha_dropout(g:Dynamic, input:Dynamic, p:Dynamic, train:Dynamic):Dynamic;
	static public function alpha_dropout_(g:Dynamic, input:Dynamic, p:Dynamic, train:Dynamic):Dynamic;
	static public function arange(g:Dynamic, ?args:python.VarArgs<Dynamic>):Dynamic;
	static public function argmax(g:Dynamic, input:Dynamic, dim:Dynamic, keepdim:Dynamic):Dynamic;
	static public function argmin(g:Dynamic, input:Dynamic, dim:Dynamic, keepdim:Dynamic):Dynamic;
	static public function as_strided(g:Dynamic, self:Dynamic, sizes:Dynamic, strides:Dynamic, ?offset:Dynamic):Dynamic;
	static public function as_tensor(g:Dynamic, data:Dynamic, ?dtype:Dynamic, ?device:Dynamic):Dynamic;
	static public function asin(g:Dynamic, self:Dynamic):Dynamic;
	static public function atan(g:Dynamic, self:Dynamic):Dynamic;
	static public function avg_pool1d(g:Dynamic, input:Dynamic, kernel_size:Dynamic, stride:Dynamic, padding:Dynamic, ceil_mode:Dynamic, count_include_pad:Dynamic, ?divisor_override:Dynamic):Dynamic;
	static public function avg_pool2d(g:Dynamic, input:Dynamic, kernel_size:Dynamic, stride:Dynamic, padding:Dynamic, ceil_mode:Dynamic, count_include_pad:Dynamic, ?divisor_override:Dynamic):Dynamic;
	static public function avg_pool3d(g:Dynamic, input:Dynamic, kernel_size:Dynamic, stride:Dynamic, padding:Dynamic, ceil_mode:Dynamic, count_include_pad:Dynamic, ?divisor_override:Dynamic):Dynamic;
	static public function baddbmm(g:Dynamic, self:Dynamic, batch1:Dynamic, batch2:Dynamic, beta:Dynamic, alpha:Dynamic):Dynamic;
	static public function batch_norm(g:Dynamic, input:Dynamic, weight:Dynamic, bias:Dynamic, running_mean:Dynamic, running_var:Dynamic, training:Dynamic, momentum:Dynamic, eps:Dynamic, cudnn_enabled:Dynamic):Dynamic;
	static public function bernoulli(g:Dynamic, input:Dynamic, ?generator:Dynamic, ?out:Dynamic):Dynamic;
	static public function bitwise_not(g:Dynamic, inp:Dynamic):Dynamic;
	static public function bmm(g:Dynamic, self:Dynamic, other:Dynamic):Dynamic;
	static public function broadcast_tensors(g:Dynamic, self:Dynamic):Dynamic;
	static public function cat(g:Dynamic, tensor_list:Dynamic, dim:Dynamic):Dynamic;
	static public function ceil(g:Dynamic, input:Dynamic):Dynamic;
	static public function clamp(g:Dynamic, self:Dynamic, min:Dynamic, max:Dynamic):Dynamic;
	static public function clamp_max(g:Dynamic, self:Dynamic, max:Dynamic):Dynamic;
	static public function clamp_min(g:Dynamic, self:Dynamic, min:Dynamic):Dynamic;
	static public function clone(g:Dynamic, input:Dynamic, unused_memory_format:Dynamic):Dynamic;
	static public function constant_pad_nd(g:Dynamic, input:Dynamic, padding:Dynamic, value:Dynamic):Dynamic;
	static public function contiguous(g:Dynamic, input:Dynamic, memory_format:Dynamic):Dynamic;
	static public function conv1d(g:Dynamic, input:Dynamic, weight:Dynamic, bias:Dynamic, stride:Dynamic, padding:Dynamic, dilation:Dynamic, groups:Dynamic):Dynamic;
	static public function conv2d(g:Dynamic, input:Dynamic, weight:Dynamic, bias:Dynamic, stride:Dynamic, padding:Dynamic, dilation:Dynamic, groups:Dynamic):Dynamic;
	static public function conv3d(g:Dynamic, input:Dynamic, weight:Dynamic, bias:Dynamic, stride:Dynamic, padding:Dynamic, dilation:Dynamic, groups:Dynamic):Dynamic;
	static public function conv_tbc(g:Dynamic, input:Dynamic, weight:Dynamic, bias:Dynamic, pad:Dynamic):Dynamic;
	static public function conv_transpose1d(g:Dynamic, input:Dynamic, weight:Dynamic, bias:Dynamic, stride:Dynamic, padding:Dynamic, output_padding:Dynamic, groups:Dynamic, dilation:Dynamic):Dynamic;
	static public function conv_transpose2d(g:Dynamic, input:Dynamic, weight:Dynamic, bias:Dynamic, stride:Dynamic, padding:Dynamic, output_padding:Dynamic, groups:Dynamic, dilation:Dynamic):Dynamic;
	static public function conv_transpose3d(g:Dynamic, input:Dynamic, weight:Dynamic, bias:Dynamic, stride:Dynamic, padding:Dynamic, output_padding:Dynamic, groups:Dynamic, dilation:Dynamic):Dynamic;
	static public function cos(g:Dynamic, self:Dynamic):Dynamic;
	static public function cosine_similarity(g:Dynamic, x1:Dynamic, x2:Dynamic, dim:Dynamic, eps:Dynamic):Dynamic;
	static public function cumsum(g:Dynamic, input:Dynamic, dim:Dynamic, dtype:Dynamic):Dynamic;
	static public function detach(g:Dynamic, input:Dynamic):Dynamic;
	/**
		Implement the dim functionality available for a pytorch tensor in ONNX
	**/
	static public function dim(g:Dynamic, self:Dynamic):Dynamic;
	static public function div(g:Dynamic, self:Dynamic, other:Dynamic, ?args:python.VarArgs<Dynamic>):Dynamic;
	static public function dot(g:Dynamic, self:Dynamic, other:Dynamic):Dynamic;
	static public function dropout(g:Dynamic, input:Dynamic, p:Dynamic, train:Dynamic):Dynamic;
	static public function dropout_(g:Dynamic, input:Dynamic, p:Dynamic, train:Dynamic):Dynamic;
	static public function elu(g:Dynamic, input:Dynamic, alpha:Dynamic, scale:Dynamic, input_scale:Dynamic):Dynamic;
	static public function embedding(g:Dynamic, weight:Dynamic, indices:Dynamic, padding_idx:Dynamic, scale_grad_by_freq:Dynamic, sparse:Dynamic):Dynamic;
	static public function embedding_bag(g:Dynamic, embedding_matrix:Dynamic, indices:Dynamic, offsets:Dynamic, scale_grad_by_freq:Dynamic, mode:Dynamic, sparse:Dynamic, per_sample_weights:Dynamic, include_last_offset:Dynamic, padding_idx:Dynamic):Dynamic;
	static public function empty(g:Dynamic, sizes:Dynamic, dtype:Dynamic, layout:Dynamic, device:Dynamic, ?pin_memory:Dynamic, ?memory_format:Dynamic):Dynamic;
	static public function empty_like(g:Dynamic, input:Dynamic, ?dtype:Dynamic, ?layout:Dynamic, ?device:Dynamic, ?pin_memory:Dynamic, ?memory_format:Dynamic):Dynamic;
	static public function eq(g:Dynamic, self:Dynamic, other:Dynamic):Dynamic;
	static public function erf(g:Dynamic, input:Dynamic):Dynamic;
	static public function exp(g:Dynamic, self:Dynamic):Dynamic;
	static public function expand(g:Dynamic, self:Dynamic, size:Dynamic, implicit:Dynamic):Dynamic;
	static public function expand_as(g:Dynamic, self:Dynamic, other:Dynamic):Dynamic;
	static public function eye(g:Dynamic, ?args:python.VarArgs<Dynamic>):Dynamic;
	static public function feature_alpha_dropout(g:Dynamic, input:Dynamic, p:Dynamic, train:Dynamic):Dynamic;
	static public function feature_alpha_dropout_(g:Dynamic, input:Dynamic, p:Dynamic, train:Dynamic):Dynamic;
	static public function feature_dropout(g:Dynamic, input:Dynamic, p:Dynamic, train:Dynamic):Dynamic;
	static public function feature_dropout_(g:Dynamic, input:Dynamic, p:Dynamic, train:Dynamic):Dynamic;
	static public function fill(g:Dynamic, self:Dynamic, value:Dynamic):Dynamic;
	static public function flatten(g:Dynamic, input:Dynamic, start_dim:Dynamic, end_dim:Dynamic):Dynamic;
	static public function floor(g:Dynamic, input:Dynamic):Dynamic;
	static public function floor_divide(g:Dynamic, self:Dynamic, other:Dynamic):Dynamic;
	static public function floordiv(g:Dynamic, self:Dynamic, other:Dynamic):Dynamic;
	static public function frobenius_norm(g:Dynamic, self:Dynamic, ?dim:Dynamic, ?keepdim:Dynamic):Dynamic;
	static public function full(g:Dynamic, sizes:Dynamic, value:Dynamic, dtype:Dynamic, layout:Dynamic, device:Dynamic, ?pin_memory:Dynamic):Dynamic;
	static public function full_like(g:Dynamic, input:Dynamic, fill_value:Dynamic, ?dtype:Dynamic, ?layout:Dynamic, ?device:Dynamic, ?pin_memory:Dynamic, ?memory_format:Dynamic):Dynamic;
	static public function gather(g:Dynamic, self:Dynamic, dim:Dynamic, index:Dynamic, ?sparse_grad:Dynamic):Dynamic;
	static public function ge(g:Dynamic, input:Dynamic, other:Dynamic):Dynamic;
	static public function gelu(g:Dynamic, self:Dynamic):Dynamic;
	static public function get_pool_ceil_padding(input:Dynamic, kernel_size:Dynamic, stride:Dynamic, padding:Dynamic):Dynamic;
	static public function glu(g:Dynamic, input:Dynamic, dim:Dynamic):Dynamic;
	static public function group_norm(g:Dynamic, input:Dynamic, num_groups:Dynamic, weight:Dynamic, bias:Dynamic, eps:Dynamic, cudnn_enabled:Dynamic):Dynamic;
	static public function gru(g:Dynamic, ?args:python.VarArgs<Dynamic>):Dynamic;
	static public function gt(g:Dynamic, input:Dynamic, other:Dynamic):Dynamic;
	static public function gt_impl(g:Dynamic, input:Dynamic, other:Dynamic):Dynamic;
	static public function hann_window(g:Dynamic, window_length:Dynamic, ?periodic:Dynamic, ?dtype:Dynamic, ?layout:Dynamic, ?device:Dynamic, ?pin_memory:Dynamic, ?requires_grad:Dynamic):Dynamic;
	static public function hardsigmoid(g:Dynamic, self:Dynamic):Dynamic;
	static public function hardswish(g:Dynamic, self:Dynamic):Dynamic;
	static public function hardtanh(g:Dynamic, self:Dynamic, min_val:Dynamic, max_val:Dynamic):Dynamic;
	static public function index(g:Dynamic, self:Dynamic, index:Dynamic):Dynamic;
	static public function index_add(g:Dynamic, self:Dynamic, dim:Dynamic, index:Dynamic, other:Dynamic):Dynamic;
	static public function index_copy(g:Dynamic, self:Dynamic, dim:Dynamic, index:Dynamic, source:Dynamic):Dynamic;
	static public function index_fill(g:Dynamic, self:Dynamic, dim:Dynamic, index:Dynamic, value:Dynamic):Dynamic;
	static public function index_put(g:Dynamic, self:Dynamic, indices_list_value:Dynamic, values:Dynamic, accumulate:Dynamic):Dynamic;
	static public function index_select(g:Dynamic, self:Dynamic, dim:Dynamic, index:Dynamic):Dynamic;
	static public function instance_norm(g:Dynamic, input:Dynamic, weight:Dynamic, bias:Dynamic, running_mean:Dynamic, running_var:Dynamic, use_input_stats:Dynamic, momentum:Dynamic, eps:Dynamic, cudnn_enabled:Dynamic):Dynamic;
	static public function is_floating_point(g:Dynamic, self:Dynamic):Dynamic;
	static public function isnan(g:Dynamic, input:Dynamic):Dynamic;
	static public function item(g:Dynamic, self:Dynamic):Dynamic;
	static public var k : Dynamic;
	static public function kl_div(g:Dynamic, input:Dynamic, target:Dynamic, reduction:Dynamic, log_target:Dynamic):Dynamic;
	static public function layer_norm(g:Dynamic, input:Dynamic, normalized_shape:Dynamic, weight:Dynamic, bias:Dynamic, eps:Dynamic, cudnn_enable:Dynamic):Dynamic;
	static public function le(g:Dynamic, input:Dynamic, other:Dynamic):Dynamic;
	static public function leaky_relu(g:Dynamic, input:Dynamic, negative_slope:Dynamic, ?inplace:Dynamic):Dynamic;
	static public function linear(g:Dynamic, input:Dynamic, weight:Dynamic, bias:Dynamic):Dynamic;
	static public function linspace(g:Dynamic, start:Dynamic, end:Dynamic, steps:Dynamic, dtype:Dynamic, layout:Dynamic, device:Dynamic, pin_memory:Dynamic):Dynamic;
	static public function log(g:Dynamic, self:Dynamic):Dynamic;
	static public function log1p(g:Dynamic, self:Dynamic):Dynamic;
	static public function log2(g:Dynamic, self:Dynamic):Dynamic;
	static public function log_sigmoid(g:Dynamic, input:Dynamic):Dynamic;
	static public function log_softmax(g:Dynamic, input:Dynamic, dim:Dynamic, ?dtype:Dynamic):Dynamic;
	static public function logical_and(g:Dynamic, input:Dynamic, other:Dynamic):Dynamic;
	static public function logical_or(g:Dynamic, input:Dynamic, other:Dynamic):Dynamic;
	static public function logical_xor(g:Dynamic, input:Dynamic, other:Dynamic):Dynamic;
	static public function logsumexp(g:Dynamic, input:Dynamic, dim:Dynamic, keepdim:Dynamic):Dynamic;
	static public function lstm(g:Dynamic, ?args:python.VarArgs<Dynamic>):Dynamic;
	static public function lstm_cell(g:Dynamic, self:Dynamic, hidden:Dynamic, w_ih:Dynamic, w_hh:Dynamic, b_ih:Dynamic, b_hh:Dynamic):Dynamic;
	static public function lt(g:Dynamic, input:Dynamic, other:Dynamic):Dynamic;
	static public function lt_impl(g:Dynamic, input:Dynamic, other:Dynamic):Dynamic;
	static public function masked_fill(g:Dynamic, self:Dynamic, mask:Dynamic, value:Dynamic):Dynamic;
	static public function matmul(g:Dynamic, self:Dynamic, other:Dynamic):Dynamic;
	static public function max(g:Dynamic, self:Dynamic, ?dim_or_y:Dynamic, ?keepdim:Dynamic):Dynamic;
	static public function max_pool1d(g:Dynamic, input:Dynamic, kernel_size:Dynamic, stride:Dynamic, padding:Dynamic, dilation:Dynamic, ceil_mode:Dynamic):Dynamic;
	static public function max_pool1d_with_indices(g:Dynamic, input:Dynamic, kernel_size:Dynamic, stride:Dynamic, padding:Dynamic, dilation:Dynamic, ceil_mode:Dynamic):Dynamic;
	static public function max_pool2d(g:Dynamic, input:Dynamic, kernel_size:Dynamic, stride:Dynamic, padding:Dynamic, dilation:Dynamic, ceil_mode:Dynamic):Dynamic;
	static public function max_pool2d_with_indices(g:Dynamic, input:Dynamic, kernel_size:Dynamic, stride:Dynamic, padding:Dynamic, dilation:Dynamic, ceil_mode:Dynamic):Dynamic;
	static public function max_pool3d(g:Dynamic, input:Dynamic, kernel_size:Dynamic, stride:Dynamic, padding:Dynamic, dilation:Dynamic, ceil_mode:Dynamic):Dynamic;
	static public function max_pool3d_with_indices(g:Dynamic, input:Dynamic, kernel_size:Dynamic, stride:Dynamic, padding:Dynamic, dilation:Dynamic, ceil_mode:Dynamic):Dynamic;
	static public var maxsize : Dynamic;
	static public function mean(g:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function meshgrid(g:Dynamic, tensor_list:Dynamic, ?indexing:Dynamic):Dynamic;
	static public function min(g:Dynamic, self:Dynamic, ?dim_or_y:Dynamic, ?keepdim:Dynamic):Dynamic;
	static public function mish(g:Dynamic, input:Dynamic):Dynamic;
	static public function mm(g:Dynamic, self:Dynamic, other:Dynamic):Dynamic;
	static public function mul(g:Dynamic, self:Dynamic, other:Dynamic):Dynamic;
	static public function multinomial(g:Dynamic, input:Dynamic, num_samples:Dynamic, ?replacement:Dynamic, ?generator:Dynamic):Dynamic;
	static public function mv(g:Dynamic, self:Dynamic, vec:Dynamic):Dynamic;
	static public var name : Dynamic;
	static public function narrow(g:Dynamic, input:Dynamic, dim:Dynamic, start:Dynamic, length:Dynamic):Dynamic;
	static public function ne(g:Dynamic, input:Dynamic, other:Dynamic):Dynamic;
	static public function neg(g:Dynamic, self:Dynamic):Dynamic;
	static public function new_empty(g:Dynamic, self:Dynamic, sizes:Dynamic, dtype:Dynamic, layout:Dynamic, device:Dynamic, ?pin_memory:Dynamic):Dynamic;
	static public function new_full(g:Dynamic, self:Dynamic, size:Dynamic, fill_value:Dynamic, dtype:Dynamic, layout:Dynamic, device:Dynamic, ?pin_memory:Dynamic):Dynamic;
	static public function new_ones(g:Dynamic, self:Dynamic, sizes:Dynamic, dtype:Dynamic, layout:Dynamic, device:Dynamic, ?pin_memory:Dynamic):Dynamic;
	static public function new_zeros(g:Dynamic, self:Dynamic, sizes:Dynamic, dtype:Dynamic, layout:Dynamic, device:Dynamic, ?pin_memory:Dynamic):Dynamic;
	static public function nonzero(g:Dynamic, input:Dynamic):Dynamic;
	static public function nonzero_numpy(g:Dynamic, input:Dynamic, ?_outputs:Dynamic):Dynamic;
	static public function norm(g:Dynamic, self:Dynamic, p:Dynamic, dim:Dynamic, keepdim:Dynamic):Dynamic;
	static public function numel(g:Dynamic, self:Dynamic):Dynamic;
	static public function one_hot(g:Dynamic, self:Dynamic, num_classes:Dynamic):Dynamic;
	static public function ones(g:Dynamic, sizes:Dynamic, dtype:Dynamic, layout:Dynamic, device:Dynamic, ?pin_memory:Dynamic):Dynamic;
	static public function ones_like(g:Dynamic, input:Dynamic, ?dtype:Dynamic, ?layout:Dynamic, ?device:Dynamic, ?pin_memory:Dynamic, ?memory_format:Dynamic):Dynamic;
	static public function overload_by_arg_count(fn:Dynamic):Dynamic;
	/**
		A decorator which converts args from torch._C.Value to built-in types.
		
		For example:
		@parse_args('v', 'i', 'fs')
		foo(g, a, b, c):
		  assert isinstance(a, torch._C.Value)
		  assert isinstance(b, int)
		  assert isinstance(c, list)
		  assert isinstance(c[0], float)
		
		Args:
		  arg_descriptors: list of str, where each element is
		    a string that specifies the type to convert to. Valid descriptors:
		    "v": no conversion, keep torch._C.Value.
		    "i": int
		    "is": list(int)
		    "f": float
		    "fs": list of float
		    "b": bool
		    "s": str
		    "t": torch.Tensor
	**/
	static public function parse_args(?arg_descriptors:python.VarArgs<Dynamic>):Dynamic;
	static public function permute(g:Dynamic, self:Dynamic, dims:Dynamic):Dynamic;
	static public function pixel_shuffle(g:Dynamic, self:Dynamic, upscale_factor:Dynamic):Dynamic;
	static public function pow(g:Dynamic, self:Dynamic, exponent:Dynamic):Dynamic;
	static public function prelu(g:Dynamic, self:Dynamic, weight:Dynamic):Dynamic;
	static public function prim_ConstantChunk(g:Dynamic, self:Dynamic, chunks:Dynamic, dim:Dynamic):Dynamic;
	static public function prim_ConstantSplit(g:Dynamic, self:Dynamic, split_size:Dynamic, dim:Dynamic):Dynamic;
	static public function prim_data(g:Dynamic, self:Dynamic):Dynamic;
	static public function prim_dtype(g:Dynamic, self:Dynamic):Dynamic;
	static public function prim_max(g:Dynamic, self:Dynamic, other:Dynamic):Dynamic;
	static public function prim_min(g:Dynamic, self:Dynamic, ?other:Dynamic):Dynamic;
	static public function prim_shape(g:Dynamic, self:Dynamic):Dynamic;
	static public function prim_tolist(g:Dynamic, input:Dynamic, dim_val:Dynamic, elem_ty_val:Dynamic):Dynamic;
	static public function prim_unchecked_cast(g:Dynamic, self:Dynamic):Dynamic;
	static public function prod(g:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function rand(g:Dynamic, shapes:Dynamic, dtype:Dynamic, ?options:python.VarArgs<Dynamic>):Dynamic;
	static public function rand_like(g:Dynamic, self:Dynamic, dtype:Dynamic, ?layout:Dynamic, ?device:Dynamic, ?pin_memory:Dynamic, ?memory_format:Dynamic):Dynamic;
	static public function randn(g:Dynamic, shapes:Dynamic, dtype:Dynamic, ?options:python.VarArgs<Dynamic>):Dynamic;
	static public function randn_like(g:Dynamic, self:Dynamic, dtype:Dynamic, ?layout:Dynamic, ?device:Dynamic, ?pin_memory:Dynamic, ?memory_format:Dynamic):Dynamic;
	static public function reciprocal(g:Dynamic, self:Dynamic):Dynamic;
	static public function reflection_pad(g:Dynamic, input:Dynamic, padding:Dynamic):Dynamic;
	static public function reflection_pad1d(g:Dynamic, input:Dynamic, padding:Dynamic):Dynamic;
	static public function reflection_pad2d(g:Dynamic, input:Dynamic, padding:Dynamic):Dynamic;
	static public function reflection_pad3d(g:Dynamic, input:Dynamic, padding:Dynamic):Dynamic;
	static public function relu(g:Dynamic, input:Dynamic):Dynamic;
	static public function relu6(g:Dynamic, input:Dynamic):Dynamic;
	static public function remainder(g:Dynamic, input:Dynamic, other:Dynamic):Dynamic;
	static public function repeat(g:Dynamic, self:Dynamic, repeats:Dynamic):Dynamic;
	static public function repeat_interleave(g:Dynamic, self:Dynamic, repeats:Dynamic, ?dim:Dynamic, ?output_size:Dynamic):Dynamic;
	static public function replication_pad(g:Dynamic, input:Dynamic, padding:Dynamic):Dynamic;
	static public function replication_pad1d(g:Dynamic, input:Dynamic, padding:Dynamic):Dynamic;
	static public function replication_pad2d(g:Dynamic, input:Dynamic, padding:Dynamic):Dynamic;
	static public function replication_pad3d(g:Dynamic, input:Dynamic, padding:Dynamic):Dynamic;
	static public function reshape(g:Dynamic, self:Dynamic, shape:Dynamic):Dynamic;
	static public function reshape_as(g:Dynamic, self:Dynamic, other:Dynamic):Dynamic;
	static public function rnn_relu(g:Dynamic, ?args:python.VarArgs<Dynamic>):Dynamic;
	static public function rnn_tanh(g:Dynamic, ?args:python.VarArgs<Dynamic>):Dynamic;
	static public function roll(g:Dynamic, self:Dynamic, shifts:Dynamic, dims:Dynamic):Dynamic;
	static public function rrelu(g:Dynamic, input:Dynamic, lower:Dynamic, upper:Dynamic, training:Dynamic, generator:Dynamic):Dynamic;
	static public function rsqrt(g:Dynamic, self:Dynamic):Dynamic;
	static public function rsub(g:Dynamic, self:Dynamic, other:Dynamic, ?alpha:Dynamic):Dynamic;
	static public function scalar_tensor(g:Dynamic, scalar:Dynamic, dtype:Dynamic, ?options:python.VarArgs<Dynamic>):Dynamic;
	static public function scatter(g:Dynamic, self:Dynamic, dim:Dynamic, index:Dynamic, src:Dynamic):Dynamic;
	static public function scatter_add(g:Dynamic, self:Dynamic, dim:Dynamic, index:Dynamic, src:Dynamic):Dynamic;
	static public function select(g:Dynamic, self:Dynamic, dim:Dynamic, index:Dynamic):Dynamic;
	static public function selu(g:Dynamic, input:Dynamic):Dynamic;
	static public function sigmoid(g:Dynamic, self:Dynamic):Dynamic;
	static public function sign(g:Dynamic, self:Dynamic):Dynamic;
	static public function silu(g:Dynamic, input:Dynamic):Dynamic;
	static public function sin(g:Dynamic, self:Dynamic):Dynamic;
	static public function size(g:Dynamic, self:Dynamic, ?dim:Dynamic):Dynamic;
	static public function slice(g:Dynamic, self:Dynamic, ?args:python.VarArgs<Dynamic>):Dynamic;
	static public function softmax(g:Dynamic, input:Dynamic, dim:Dynamic, ?dtype:Dynamic):Dynamic;
	static public function softplus(g:Dynamic, self:Dynamic, beta:Dynamic, threshold:Dynamic):Dynamic;
	static public function sort(g:Dynamic, self:Dynamic, dim:Dynamic, decending:Dynamic, ?out:Dynamic):Dynamic;
	static public function split(g:Dynamic, self:Dynamic, split_size_or_sizes:Dynamic, dim:Dynamic, ?_outputs:Dynamic):Dynamic;
	static public function split_with_sizes(g:Dynamic, self:Dynamic, split_sizes:Dynamic, dim:Dynamic, ?_outputs:Dynamic):Dynamic;
	static public function sqrt(g:Dynamic, self:Dynamic):Dynamic;
	static public function square(g:Dynamic, self:Dynamic):Dynamic;
	static public function squeeze(g:Dynamic, self:Dynamic, ?dim:Dynamic):Dynamic;
	static public function stack(g:Dynamic, tensor_list:Dynamic, dim:Dynamic):Dynamic;
	static public function std(g:Dynamic, input:Dynamic, ?args:python.VarArgs<Dynamic>):Dynamic;
	static public function std_mean(g:Dynamic, input:Dynamic, ?args:python.VarArgs<Dynamic>):Dynamic;
	static public function sub(g:Dynamic, self:Dynamic, other:Dynamic, ?alpha:Dynamic):Dynamic;
	static public function sum(g:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function t(g:Dynamic, self:Dynamic):Dynamic;
	static public function take(g:Dynamic, self:Dynamic, index:Dynamic):Dynamic;
	static public function tan(g:Dynamic, self:Dynamic):Dynamic;
	static public function tanh(g:Dynamic, self:Dynamic):Dynamic;
	static public function tensor(g:Dynamic, data:Dynamic, ?dtype:Dynamic, ?device:Dynamic, ?requires_grad:Dynamic):Dynamic;
	static public function threshold(g:Dynamic, self:Dynamic, threshold:Dynamic, value:Dynamic):Dynamic;
	static public function to(g:Dynamic, self:Dynamic, ?args:python.VarArgs<Dynamic>):Dynamic;
	static public function topk(g:Dynamic, self:Dynamic, k:Dynamic, dim:Dynamic, largest:Dynamic, sorted:Dynamic, ?out:Dynamic):Dynamic;
	static public function transpose(g:Dynamic, self:Dynamic, dim0:Dynamic, dim1:Dynamic):Dynamic;
	static public function true_divide(g:Dynamic, self:Dynamic, other:Dynamic):Dynamic;
	static public function type_as(g:Dynamic, self:Dynamic, other:Dynamic):Dynamic;
	static public function unbind(g:Dynamic, self:Dynamic, ?dim:Dynamic, ?_outputs:Dynamic):Dynamic;
	static public function unfold(g:Dynamic, input:Dynamic, dimension:Dynamic, size:Dynamic, step:Dynamic):Dynamic;
	static public function unsafe_chunk(g:Dynamic, self:Dynamic, chunks:Dynamic, dim:Dynamic, ?_outputs:Dynamic):Dynamic;
	static public function unsafe_split(g:Dynamic, self:Dynamic, split_size_or_sizes:Dynamic, dim:Dynamic, ?_outputs:Dynamic):Dynamic;
	static public function unsafe_split_with_sizes(g:Dynamic, self:Dynamic, split_sizes:Dynamic, dim:Dynamic, ?_outputs:Dynamic):Dynamic;
	static public function unsqueeze(g:Dynamic, self:Dynamic, dim:Dynamic):Dynamic;
	static public function unused(g:Dynamic):Dynamic;
	static public function upsample_bilinear2d(g:Dynamic, input:Dynamic, output_size:Dynamic, ?args:python.VarArgs<Dynamic>):Dynamic;
	static public function upsample_linear1d(g:Dynamic, input:Dynamic, output_size:Dynamic, ?args:python.VarArgs<Dynamic>):Dynamic;
	static public function upsample_nearest1d(g:Dynamic, input:Dynamic, output_size:Dynamic, ?args:python.VarArgs<Dynamic>):Dynamic;
	static public function upsample_nearest2d(g:Dynamic, input:Dynamic, output_size:Dynamic, ?args:python.VarArgs<Dynamic>):Dynamic;
	static public function upsample_nearest3d(g:Dynamic, input:Dynamic, output_size:Dynamic, ?args:python.VarArgs<Dynamic>):Dynamic;
	static public function upsample_trilinear3d(g:Dynamic, input:Dynamic, output_size:Dynamic, ?args:python.VarArgs<Dynamic>):Dynamic;
	static public var v : Dynamic;
	@:native("var")
	static public function _var(g:Dynamic, input:Dynamic, ?args:python.VarArgs<Dynamic>):Dynamic;
	static public function var_mean(g:Dynamic, input:Dynamic, ?args:python.VarArgs<Dynamic>):Dynamic;
	static public function view(g:Dynamic, self:Dynamic, size:Dynamic):Dynamic;
	static public function view_as(g:Dynamic, self:Dynamic, other:Dynamic):Dynamic;
	static public function where(g:Dynamic, condition:Dynamic, ?self:Dynamic, ?other:Dynamic, ?_outputs:Dynamic):Dynamic;
	static public function wrap_logical_op_with_cast_to(to_type:Dynamic):Dynamic;
	static public function wrap_logical_op_with_cast_to_and_from(to_type:Dynamic):Dynamic;
	static public function wrap_logical_op_with_negation(func:Dynamic):Dynamic;
	/**
		Decorator factory to apply update_wrapper() to a wrapper function
		
		Returns a decorator that invokes update_wrapper() with the decorated
		function as the wrapper argument and the arguments to wraps() as the
		remaining arguments. Default arguments are as for update_wrapper().
		This is a convenience function to simplify applying partial() to
		update_wrapper().
	**/
	static public function wraps(wrapped:Dynamic, ?assigned:Dynamic, ?updated:Dynamic):Dynamic;
	static public function zeros(g:Dynamic, sizes:Dynamic, dtype:Dynamic, layout:Dynamic, device:Dynamic, ?pin_memory:Dynamic):Dynamic;
	static public function zeros_like(g:Dynamic, input:Dynamic, ?dtype:Dynamic, ?layout:Dynamic, ?device:Dynamic, ?pin_memory:Dynamic, ?memory_format:Dynamic):Dynamic;
}