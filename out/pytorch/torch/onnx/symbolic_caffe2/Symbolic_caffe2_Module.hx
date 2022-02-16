/* This file is generated, do not edit! */
package torch.onnx.symbolic_caffe2;
@:pythonImport("torch.onnx.symbolic_caffe2") extern class Symbolic_caffe2_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _empty_affine_quantized(g:Dynamic, input:Dynamic, shape:Dynamic, scale:Dynamic, zero_point:Dynamic, dtype:Dynamic, pin_memory:Dynamic, memory_format:Dynamic, layout:Dynamic):Dynamic;
	static public function _permute_helper(g:Dynamic, input:Dynamic, axes:Dynamic):Dynamic;
	static public function add(g:Dynamic, input_a:Dynamic, input_b:Dynamic, scale:Dynamic, zero_point:Dynamic):Dynamic;
	static public function avg_pool2d(g:Dynamic, input:Dynamic, kernel_size:Dynamic, stride:Dynamic, padding:Dynamic, ceil_mode:Dynamic, count_include_pad:Dynamic, ?divisor_override:Dynamic):Dynamic;
	static public function cat(g:Dynamic, tensor_list:Dynamic, dim:Dynamic, ?scale:Dynamic, ?zero_point:Dynamic):Dynamic;
	static public function conv2d(g:Dynamic, input:Dynamic, weight:Dynamic, bias:Dynamic, stride:Dynamic, padding:Dynamic, dilation:Dynamic, groups:Dynamic, scale:Dynamic, zero_point:Dynamic):Dynamic;
	static public function conv2d_relu(g:Dynamic, input:Dynamic, weight:Dynamic, bias:Dynamic, stride:Dynamic, padding:Dynamic, dilation:Dynamic, groups:Dynamic, scale:Dynamic, zero_point:Dynamic):Dynamic;
	static public function conv_prepack(g:Dynamic, input:Dynamic, weight:Dynamic, bias:Dynamic, stride:Dynamic, padding:Dynamic, dilation:Dynamic, groups:Dynamic):Dynamic;
	static public function dequantize(g:Dynamic, input:Dynamic):Dynamic;
	/**
		Return all members of an object as (name, value) pairs sorted by name.
		Optionally, only return members that satisfy a given predicate.
	**/
	static public function getmembers(object:Dynamic, ?predicate:Dynamic):Dynamic;
	/**
		Return true if the object is a user-defined function.
		
		Function objects provide these attributes:
		    __doc__         documentation string
		    __name__        name with which this function was defined
		    __code__        code object containing compiled function bytecode
		    __defaults__    tuple of any default values for arguments
		    __globals__     global namespace in which this function was defined
		    __annotations__ dict of parameter annotations
		    __kwdefaults__  dict of keyword only parameters with defaults
	**/
	static public function isfunction(object:Dynamic):Dynamic;
	static public function linear(g:Dynamic, input:Dynamic, weight:Dynamic, bias:Dynamic, scale:Dynamic, zero_point:Dynamic):Dynamic;
	static public function linear_prepack(g:Dynamic, weight:Dynamic, bias:Dynamic):Dynamic;
	static public function max_pool2d(g:Dynamic, input:Dynamic, kernel_size:Dynamic, stride:Dynamic, padding:Dynamic, dilation:Dynamic, ceil_mode:Dynamic):Dynamic;
	static public function nchw2nhwc(g:Dynamic, input:Dynamic):Dynamic;
	static public function nhwc2nchw(g:Dynamic, input:Dynamic):Dynamic;
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
	static public function quantize_per_tensor(g:Dynamic, input:Dynamic, scale:Dynamic, zero_point:Dynamic, dtype:Dynamic):Dynamic;
	static public function register_quantized_ops(domain:Dynamic, version:Dynamic):Dynamic;
	static public function relu(g:Dynamic, input:Dynamic):Dynamic;
	static public function reshape(g:Dynamic, input:Dynamic, shape:Dynamic):Dynamic;
	static public function sigmoid(g:Dynamic, input:Dynamic):Dynamic;
	static public function slice(g:Dynamic, input:Dynamic, dim:Dynamic, start:Dynamic, end:Dynamic, step:Dynamic):Dynamic;
	static public function upsample_nearest2d(g:Dynamic, input:Dynamic, output_size:Dynamic, ?align_corners:Dynamic, ?scales_h:Dynamic, ?scales_w:Dynamic):Dynamic;
}