/* This file is generated, do not edit! */
package theano.gpuarray.nnet;
@:pythonImport("theano.gpuarray.nnet") extern class Nnet_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		This will attempt to convert `x` into a variable on the GPU.
		
		It can take either a value of another variable.  If `x` is already
		suitable, it will be returned as-is.
		
		Parameters
		----------
		x
		    Object to convert
		context_name : str or None
		    target context name for the result
	**/
	static public function as_gpuarray_variable(x:Dynamic, context_name:Dynamic):Dynamic;
	static public var config : Dynamic;
	static public var division : Dynamic;
	static public function gpu_crossentropy_softmax_1hot_with_bias_dx(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function gpu_crossentropy_softmax_argmax_1hot_with_bias(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function gpu_softmax(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function gpu_softmax_with_bias(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Infer the context name to use from the inputs given
	**/
	static public function infer_context_name(?vars:python.VarArgs<Dynamic>):Dynamic;
	/**
		Generate code for a softmax.
		
		On entry, `buf` and `buf2` must contain two identical copies of
		the input to softmax.
		
		After the code returns `buf` contains the softmax, `buf2` contains
		un-normalized softmax.
		
		Parameters
		----------
		N
		    Length of the buffer.
		threadPos
		    Index of executing thread.
		threadCount
		    Number of executing threads.
		dtype
		    Dtype of the softmax's output.
		
		Notes
		-----
		`buf` and `buf2` should be in gpu shared memory, we access it many
		times.
		
		We use __i as an int variable in a loop.
	**/
	static public function inline_softmax(N:Dynamic, buf:Dynamic, buf2:Dynamic, threadPos:Dynamic, threadCount:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Generate code to perform softmax with a fixed amount of shared
		memory.
		
		On entry, `buf` is assumed to be empty.
		
		On exit, `buf[0]` contains the softmax, `buf2` contains
		un-normalized softmax.
		
		Parameters
		----------
		N
		    Length of the buffer, atleast waprSize(32).
		buf
		    A shared memory buffer of size warpSize * sizeof(dtype).
		x
		    A ptr to the gpu memory where the row is stored.
		stride_x
		    The stride between each element in x.
		load_x
		    Wrapper to read from x.
		sm
		    A ptr to the gpu memory to store the result.
		sm_stride
		    The stride between each sm element.
		write_sm
		    Wrapper before writing to sm.
		threadPos
		    Index of executing thread.
		threadCount
		    Number of executing threads.
		b
		    Optional, pointer to the bias.
		stride_b
		    Optional, the stride of b if b is provided.
		load_b
		    Optional, wrapper to read from b if b is provided.
		dtype
		    Optional, the dtype of the softmax's output if not float32.
		
		Notes
		-----
		`buf` should be in gpu shared memory, we access it many times.
		
		We use tx as an int variable in a loop.
	**/
	static public function inline_softmax_fixed_shared(N:Dynamic, buf:Dynamic, x:Dynamic, stride_x:Dynamic, load_x:Dynamic, sm:Dynamic, sm_stride:Dynamic, write_sm:Dynamic, threadPos:Dynamic, threadCount:Dynamic, ?b:Dynamic, ?stride_b:Dynamic, ?load_b:Dynamic, ?dtype:Dynamic):Dynamic;
	static public function load_w(dtype:Dynamic):Dynamic;
	/**
		Return the c code of a kernel function.
		
		Parameters
		----------
		params
		    The parameters to the function as one or more strings.
		body
		    The [nested] list of statements for the body of the function.
		    These will be separated by ';' characters.
	**/
	static public function nvcc_kernel(name:Dynamic, params:Dynamic, body:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public function work_dtype(dtype:Dynamic):Dynamic;
	static public function write_w(dtype:Dynamic):Dynamic;
}