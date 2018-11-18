/* This file is generated, do not edit! */
package torch.onnx.symbolic;
@:pythonImport("torch.onnx.symbolic") extern class Symbolic_Module {
	static public function RNN_symbolic_builder(cell_type:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function RNN_variant_symbolic_builder(variant:Dynamic, input_size:Dynamic, hidden_size:Dynamic, num_layers:Dynamic, batch_first:Dynamic, dropout:Dynamic, bidirectional:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _avg_pool(name:Dynamic, tuple_fn:Dynamic):Dynamic;
	/**
		Return kwargs enabling broadcasting if 'x' is a scalar.
	**/
	static public function _broadcast_if_scalar(x:Dynamic):Dynamic;
	static public function _cast_Byte(g:Dynamic, input:Dynamic, non_blocking:Dynamic):Dynamic;
	static public function _cast_Char(g:Dynamic, input:Dynamic, non_blocking:Dynamic):Dynamic;
	static public function _cast_Double(g:Dynamic, input:Dynamic, non_blocking:Dynamic):Dynamic;
	static public function _cast_Float(g:Dynamic, input:Dynamic, non_blocking:Dynamic):Dynamic;
	static public function _cast_Half(g:Dynamic, input:Dynamic, non_blocking:Dynamic):Dynamic;
	static public function _cast_Int(g:Dynamic, input:Dynamic, non_blocking:Dynamic):Dynamic;
	static public function _cast_Long(g:Dynamic, input:Dynamic, non_blocking:Dynamic):Dynamic;
	static public function _cast_Short(g:Dynamic, input:Dynamic, non_blocking:Dynamic):Dynamic;
	static public function _cast_func_template(to_i:Dynamic, g:Dynamic, input:Dynamic, non_blocking:Dynamic):Dynamic;
	static public function _convolution(g:Dynamic, input:Dynamic, weight:Dynamic, bias:Dynamic, stride:Dynamic, padding:Dynamic, dilation:Dynamic, transposed:Dynamic, output_padding:Dynamic, groups:Dynamic, benchmark:Dynamic, deterministic:Dynamic, cudnn_enabled:Dynamic):Dynamic;
	static public function _dim_arange(g:Dynamic, like:Dynamic, dim:Dynamic):Dynamic;
	/**
		Convert self into the same type of tensor, as necessary.
		
		We only support implicit casting for scalars, so we never
		actually need to insert an ONNX cast operator here; just
		fix up the scalar.
	**/
	static public function _if_scalar_type_as(self:Dynamic, tensor:Dynamic):Dynamic;
	static public function _is_value(x:Dynamic):Dynamic;
	static public var _onnx_opset_version : Dynamic;
	static public function _pair(x:Dynamic):Dynamic;
	static public function _reduce_op_symbolic(onnx_op_name:Dynamic):Dynamic;
	/**
		Convert a scalar tensor into a Python value.
	**/
	static public function _scalar(x:Dynamic):Dynamic;
	static public function _single(x:Dynamic):Dynamic;
	static public function _triple(x:Dynamic):Dynamic;
	static public function _unimplemented(op:Dynamic, msg:Dynamic):Dynamic;
	static public function _unique(g:Dynamic, input:Dynamic, sorted:Dynamic, return_inverse:Dynamic):Dynamic;
	static public function abs(g:Dynamic, self:Dynamic):Dynamic;
	static public function add(g:Dynamic, self:Dynamic, other:Dynamic, alpha:Dynamic):Dynamic;
	static public function addmm(g:Dynamic, self:Dynamic, mat1:Dynamic, mat2:Dynamic, beta:Dynamic, alpha:Dynamic):Dynamic;
	static public function alias(g:Dynamic, self:Dynamic):Dynamic;
	static public function avg_pool1d(g:Dynamic, input:Dynamic, kernel_size:Dynamic, stride:Dynamic, padding:Dynamic, ceil_mode:Dynamic, count_include_pad:Dynamic):Dynamic;
	static public function avg_pool2d(g:Dynamic, input:Dynamic, kernel_size:Dynamic, stride:Dynamic, padding:Dynamic, ceil_mode:Dynamic, count_include_pad:Dynamic):Dynamic;
	static public function avg_pool3d(g:Dynamic, input:Dynamic, kernel_size:Dynamic, stride:Dynamic, padding:Dynamic, ceil_mode:Dynamic, count_include_pad:Dynamic):Dynamic;
	static public function batch_norm(g:Dynamic, input:Dynamic, weight:Dynamic, bias:Dynamic, running_mean:Dynamic, running_var:Dynamic, training:Dynamic, momentum:Dynamic, eps:Dynamic, cudnn_enabled:Dynamic):Dynamic;
	static public function bmm(g:Dynamic, self:Dynamic, other:Dynamic):Dynamic;
	static public var cast_pytorch_to_onnx : Dynamic;
	static public function cat(g:Dynamic, ?tensors:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function chunk(g:Dynamic, self:Dynamic, chunks:Dynamic, dim:Dynamic):Dynamic;
	static public function clamp(g:Dynamic, self:Dynamic, min:Dynamic, max:Dynamic):Dynamic;
	static public function clamp_max(g:Dynamic, self:Dynamic, max:Dynamic):Dynamic;
	static public function clamp_min(g:Dynamic, self:Dynamic, min:Dynamic):Dynamic;
	static public function clone(g:Dynamic, input:Dynamic):Dynamic;
	static public function conv_tbc(g:Dynamic, input:Dynamic, weight:Dynamic, bias:Dynamic, pad:Dynamic):Dynamic;
	static public function cumsum(g:Dynamic, input:Dynamic, dim:Dynamic):Dynamic;
	static public function div(g:Dynamic, self:Dynamic, other:Dynamic):Dynamic;
	static public function elu(g:Dynamic, input:Dynamic, alpha:Dynamic, scale:Dynamic):Dynamic;
	static public function embedding(g:Dynamic, weight:Dynamic, indices:Dynamic, padding_idx:Dynamic, scale_grad_by_freq:Dynamic, sparse:Dynamic):Dynamic;
	static public function embedding_bag(g:Dynamic, embedding_matrix:Dynamic, indices:Dynamic, offsets:Dynamic, scale_grad_by_freq:Dynamic, mode:Dynamic, sparse:Dynamic):Dynamic;
	static public function eq(g:Dynamic, self:Dynamic, other:Dynamic):Dynamic;
	static public function exp(g:Dynamic, self:Dynamic):Dynamic;
	static public function expand(g:Dynamic, self:Dynamic, size:Dynamic, implicit:Dynamic):Dynamic;
	static public function ge(g:Dynamic, input:Dynamic, other:Dynamic):Dynamic;
	static public function glu(g:Dynamic, input:Dynamic, dim:Dynamic):Dynamic;
	static public function gt(g:Dynamic, input:Dynamic, other:Dynamic):Dynamic;
	static public function hardtanh(g:Dynamic, self:Dynamic, min_val:Dynamic, max_val:Dynamic):Dynamic;
	static public function index_put(g:Dynamic, ?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function index_select(g:Dynamic, self:Dynamic, index:Dynamic, dim:Dynamic):Dynamic;
	static public function instance_norm(g:Dynamic, input:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var k : Dynamic;
	static public function le(g:Dynamic, input:Dynamic, other:Dynamic):Dynamic;
	static public function leaky_relu(g:Dynamic, input:Dynamic, negative_slope:Dynamic, ?inplace:Dynamic):Dynamic;
	static public function log_softmax(g:Dynamic, input:Dynamic, ?dim:Dynamic):Dynamic;
	static public function lt(g:Dynamic, input:Dynamic, other:Dynamic):Dynamic;
	static public function matmul(g:Dynamic, self:Dynamic, other:Dynamic):Dynamic;
	static public function max(g:Dynamic, self:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function max_pool1d_with_indices(g:Dynamic, input:Dynamic, kernel_size:Dynamic, stride:Dynamic, padding:Dynamic, dilation:Dynamic, ceil_mode:Dynamic):Dynamic;
	static public function max_pool2d_with_indices(g:Dynamic, input:Dynamic, kernel_size:Dynamic, stride:Dynamic, padding:Dynamic, dilation:Dynamic, ceil_mode:Dynamic):Dynamic;
	static public function max_pool3d_with_indices(g:Dynamic, input:Dynamic, kernel_size:Dynamic, stride:Dynamic, padding:Dynamic, dilation:Dynamic, ceil_mode:Dynamic):Dynamic;
	static public function mean(g:Dynamic, self:Dynamic, ?dim:Dynamic, ?keepdim:Dynamic):Dynamic;
	static public function min(g:Dynamic, self:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function mm(g:Dynamic, self:Dynamic, other:Dynamic):Dynamic;
	static public function mul(g:Dynamic, self:Dynamic, other:Dynamic):Dynamic;
	static public var name : Dynamic;
	static public function neg(g:Dynamic, self:Dynamic):Dynamic;
	static public function norm(g:Dynamic, self:Dynamic, p:Dynamic, dim:Dynamic, keepdim:Dynamic):Dynamic;
	static public function permute(g:Dynamic, self:Dynamic, dims:Dynamic):Dynamic;
	static public function pow(g:Dynamic, self:Dynamic, exponent:Dynamic):Dynamic;
	static public function prelu(g:Dynamic, self:Dynamic, weight:Dynamic):Dynamic;
	static public function prod(g:Dynamic, self:Dynamic, ?dim:Dynamic, ?keepdim:Dynamic):Dynamic;
	static public function reciprocal(g:Dynamic, self:Dynamic):Dynamic;
	static public function reflection_pad(g:Dynamic, input:Dynamic, padding:Dynamic):Dynamic;
	static public function reflection_pad1d(g:Dynamic, input:Dynamic, padding:Dynamic):Dynamic;
	static public function reflection_pad2d(g:Dynamic, input:Dynamic, padding:Dynamic):Dynamic;
	static public function reflection_pad3d(g:Dynamic, input:Dynamic, padding:Dynamic):Dynamic;
	static public function reform_weights(g:Dynamic, w:Dynamic, n:Dynamic, intervals:Dynamic):Dynamic;
	static public function relu(g:Dynamic, input:Dynamic):Dynamic;
	static public function repeat(g:Dynamic, self:Dynamic, repeats:Dynamic):Dynamic;
	static public function replication_pad(g:Dynamic, input:Dynamic, padding:Dynamic):Dynamic;
	static public function replication_pad1d(g:Dynamic, input:Dynamic, padding:Dynamic):Dynamic;
	static public function replication_pad2d(g:Dynamic, input:Dynamic, padding:Dynamic):Dynamic;
	static public function replication_pad3d(g:Dynamic, input:Dynamic, padding:Dynamic):Dynamic;
	static public function rnn_trace_override_symbolic(cell_type:Dynamic, func:Dynamic, sym:Dynamic, g:Dynamic, input:Dynamic, weights:Dynamic, hiddens:Dynamic, batch_sizes:Dynamic):Dynamic;
	static public var scalar_name_to_pytorch : Dynamic;
	static public function select(g:Dynamic, self:Dynamic, dim:Dynamic, index:Dynamic):Dynamic;
	static public function selu(g:Dynamic, input:Dynamic):Dynamic;
	static public function sigmoid(g:Dynamic, self:Dynamic):Dynamic;
	static public function size(g:Dynamic, self:Dynamic, dim:Dynamic):Dynamic;
	static public function slice(g:Dynamic, self:Dynamic, dim:Dynamic, start:Dynamic, end:Dynamic, step:Dynamic):Dynamic;
	static public function softmax(g:Dynamic, input:Dynamic, ?dim:Dynamic):Dynamic;
	static public function softplus(g:Dynamic, self:Dynamic, beta:Dynamic, threshold:Dynamic):Dynamic;
	static public function split(g:Dynamic, self:Dynamic, split_size:Dynamic, dim:Dynamic):Dynamic;
	static public function sqrt(g:Dynamic, self:Dynamic):Dynamic;
	static public function squeeze(g:Dynamic, self:Dynamic, ?dim:Dynamic):Dynamic;
	static public function stack(g:Dynamic, ?tensors:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function sub(g:Dynamic, self:Dynamic, other:Dynamic, alpha:Dynamic):Dynamic;
	static public function sum(g:Dynamic, self:Dynamic, ?dim:Dynamic, ?keepdim:Dynamic):Dynamic;
	static public function t(g:Dynamic, self:Dynamic):Dynamic;
	static public function tanh(g:Dynamic, self:Dynamic):Dynamic;
	static public function threshold(g:Dynamic, self:Dynamic, threshold:Dynamic, value:Dynamic):Dynamic;
	static public function topk(g:Dynamic, self:Dynamic, k:Dynamic, ?dim:Dynamic, ?largest:Dynamic, ?sorted:Dynamic, ?out:Dynamic):Dynamic;
	static public function transpose(g:Dynamic, self:Dynamic, dim0:Dynamic, dim1:Dynamic):Dynamic;
	static public function type_as(g:Dynamic, self:Dynamic, other:Dynamic):Dynamic;
	static public function unfold(g:Dynamic, input:Dynamic, dimension:Dynamic, size:Dynamic, step:Dynamic):Dynamic;
	static public function unsqueeze(g:Dynamic, self:Dynamic, dim:Dynamic):Dynamic;
	static public function unused(g:Dynamic):Dynamic;
	static public function upsample_bilinear2d(g:Dynamic, input:Dynamic, output_size:Dynamic, align_corners:Dynamic):Dynamic;
	static public function upsample_nearest2d(g:Dynamic, input:Dynamic, output_size:Dynamic):Dynamic;
	static public var v : Dynamic;
	static public function view(g:Dynamic, self:Dynamic, size:Dynamic):Dynamic;
}