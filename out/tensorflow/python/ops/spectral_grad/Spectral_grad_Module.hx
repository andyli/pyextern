/* This file is generated, do not edit! */
package tensorflow.python.ops.spectral_grad;
@:pythonImport("tensorflow.python.ops.spectral_grad") extern class Spectral_grad_Module {
	static public function _FFT2DGrad(_:Dynamic, grad:Dynamic):Dynamic;
	static public function _FFT3DGrad(_:Dynamic, grad:Dynamic):Dynamic;
	static public function _FFTGrad(_:Dynamic, grad:Dynamic):Dynamic;
	static public function _FFTSizeForGrad(grad:Dynamic, rank:Dynamic):Dynamic;
	static public function _IFFT2DGrad(_:Dynamic, grad:Dynamic):Dynamic;
	static public function _IFFT3DGrad(_:Dynamic, grad:Dynamic):Dynamic;
	static public function _IFFTGrad(_:Dynamic, grad:Dynamic):Dynamic;
	/**
		Returns a gradient function for an IRFFT of the provided rank.
	**/
	static public function _IRFFTGradHelper(rank:Dynamic, rfft_fn:Dynamic):Dynamic;
	/**
		Returns a gradient function for an RFFT of the provided rank.
	**/
	static public function _RFFTGradHelper(rank:Dynamic, irfft_fn:Dynamic):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}