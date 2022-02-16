/* This file is generated, do not edit! */
package torch.backends.cuda;
@:pythonImport("torch.backends.cuda") extern class Cuda_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var cufft_plan_cache : Dynamic;
	/**
		Returns whether PyTorch is built with CUDA support.  Note that this
		doesn't necessarily mean CUDA is available; just that if this PyTorch
		binary were run a machine with working CUDA drivers and devices, we
		would be able to use it.
	**/
	static public function is_built():Dynamic;
	static public var matmul : Dynamic;
}