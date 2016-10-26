/* This file is generated, do not edit! */
package tensorflow.python.ops.math_grad;
@:pythonImport("tensorflow.python.ops.math_grad") extern class Math_grad_Module {
	static public function _AbsGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Returns grad * -1/sqrt(1-x^2).
	**/
	static public function _AcosGrad(op:Dynamic, grad:Dynamic):Dynamic;
	static public function _AddGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Copies the gradient to all inputs.
	**/
	static public function _AddNGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Returns grad * 1/sqrt(1-x^2).
	**/
	static public function _AsinGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Returns grad * 1/ (1 + x^2)
	**/
	static public function _AtanGrad(op:Dynamic, grad:Dynamic):Dynamic;
	static public function _BatchFFT2DGrad(_:Dynamic, grad:Dynamic):Dynamic;
	static public function _BatchFFT3DGrad(_:Dynamic, grad:Dynamic):Dynamic;
	static public function _BatchFFTGrad(_:Dynamic, grad:Dynamic):Dynamic;
	static public function _BatchIFFT2DGrad(_:Dynamic, grad:Dynamic):Dynamic;
	static public function _BatchIFFT3DGrad(_:Dynamic, grad:Dynamic):Dynamic;
	static public function _BatchIFFTGrad(_:Dynamic, grad:Dynamic):Dynamic;
	/**
		Returns the gradient of x and y given the gradient of x * y.
	**/
	static public function _BatchMatMul(op:Dynamic, grad:Dynamic):Dynamic;
	static public function _CastGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Returns the gradient of ComplexAbs.
	**/
	static public function _ComplexAbsGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Returns the real and imaginary components of 'grad', respectively.
	**/
	static public function _ComplexGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Returns the complex conjugate of grad.
	**/
	static public function _ConjGrad(_:Dynamic, grad:Dynamic):Dynamic;
	/**
		Returns grad * -sin(x).
	**/
	static public function _CosGrad(op:Dynamic, grad:Dynamic):Dynamic;
	static public function _CrossGrad(op:Dynamic, grad:Dynamic):Dynamic;
	static public function _CumprodGrad(op:Dynamic, grad:Dynamic):Dynamic;
	static public function _CumsumGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Compute gradient of the digamma function with respect to its argument.
	**/
	static public function _DigammaGrad(op:Dynamic, grad:Dynamic):Dynamic;
	static public function _DivGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Returns grad * 2/sqrt(pi) * exp(-x**2).
	**/
	static public function _ErfGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Returns -grad * 2/sqrt(pi) * exp(-x**2).
	**/
	static public function _ErfcGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Returns grad * exp(x).
	**/
	static public function _ExpGrad(op:Dynamic, grad:Dynamic):Dynamic;
	static public function _FFT2DGrad(_:Dynamic, grad:Dynamic):Dynamic;
	static public function _FFT3DGrad(_:Dynamic, grad:Dynamic):Dynamic;
	static public function _FFTGrad(_:Dynamic, grad:Dynamic):Dynamic;
	static public function _FFTSizeForGrad(grad:Dynamic, rank:Dynamic):Dynamic;
	static public function _FloorGrad(_:Dynamic, unused_grad:Dynamic):Dynamic;
	static public function _IFFT2DGrad(_:Dynamic, grad:Dynamic):Dynamic;
	static public function _IFFT3DGrad(_:Dynamic, grad:Dynamic):Dynamic;
	static public function _IFFTGrad(_:Dynamic, grad:Dynamic):Dynamic;
	/**
		Returns gradient of igamma(a, x) with respect to a and x.
	**/
	static public function _IgammaGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Returns gradient of igammac(a, x) = 1 - igamma(a, x) w.r.t. a and x.
	**/
	static public function _IgammacGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Returns 'grad' as the imaginary part and set the real part 0.
	**/
	static public function _ImagGrad(_:Dynamic, grad:Dynamic):Dynamic;
	/**
		Returns -grad * (1 / x^2).
	**/
	static public function _InvGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Returns grad * digamma(x).
	**/
	static public function _LgammaGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Returns grad * (1/x).
	**/
	static public function _LogGrad(op:Dynamic, grad:Dynamic):Dynamic;
	static public function _MatMulGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Gradient for Max.
	**/
	static public function _MaxGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Returns grad*(x > y, x <= y) with type of grad.
	**/
	static public function _MaximumGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Factor out the code for the gradient of Maximum or Minimum.
	**/
	static public function _MaximumMinimumGrad(op:Dynamic, grad:Dynamic, selector_op:Dynamic):Dynamic;
	/**
		Gradient for Mean.
	**/
	static public function _MeanGrad(op:Dynamic, grad:Dynamic):Dynamic;
	static public function _MinGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Gradient for Min or Max. Amazingly it's precisely the same code.
	**/
	static public function _MinOrMaxGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Returns grad*(x < y, x >= y) with type of grad.
	**/
	static public function _MinimumGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		The gradient of scalar multiplication.
	**/
	static public function _MulGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Returns -grad.
	**/
	static public function _NegGrad(_:Dynamic, grad:Dynamic):Dynamic;
	/**
		Returns gradient of psi(n, x) with respect to n and x.
	**/
	static public function _PolygammaGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Returns grad * (y*x^(y-1), z*log(x)).
	**/
	static public function _PowGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Gradient for Prod.
	**/
	static public function _ProdGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Returns 'grad' as the real part and set the imaginary part 0.
	**/
	static public function _RealGrad(_:Dynamic, grad:Dynamic):Dynamic;
	static public function _RsqrtGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Gradient for SegmentMax.
	**/
	static public function _SegmentMaxGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Gradient for SegmentMean.
	**/
	static public function _SegmentMeanGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Gradient for SegmentMin.
	**/
	static public function _SegmentMinGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Gradient for SegmentMin and SegmentMax. Both share the same code.
	**/
	static public function _SegmentMinOrMaxGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Gradient for SegmentSum.
	**/
	static public function _SegmentSumGrad(op:Dynamic, grad:Dynamic):Dynamic;
	static public function _SelectGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Returns grad * sigmoid(x) * (1 - sigmoid(x)).
	**/
	static public function _SigmoidGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Returns 0.
	**/
	static public function _SignGrad(op:Dynamic, _:Dynamic):Dynamic;
	/**
		Returns grad * cos(x).
	**/
	static public function _SinGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Gradient for SparseMatMul.
	**/
	static public function _SparseMatMulGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Gradient for SparseSegmentMean.
	**/
	static public function _SparseSegmentMeanGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Gradient for SparseSegmentSqrtN.
	**/
	static public function _SparseSegmentSqrtNGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Gradient for SparseSegmentSum.
	**/
	static public function _SparseSegmentSumGrad(op:Dynamic, grad:Dynamic):Dynamic;
	static public function _SqrtGrad(op:Dynamic, grad:Dynamic):Dynamic;
	static public function _SquareGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Returns the gradient for (x-y)^2.
	**/
	static public function _SquaredDifferenceGrad(op:Dynamic, grad:Dynamic):Dynamic;
	static public function _SubGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Gradient for Sum.
	**/
	static public function _SumGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Returns grad * 1/sec^2(x).
	**/
	static public function _TanGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Returns grad * (1 - tanh(x) * tanh(x)).
	**/
	static public function _TanhGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Gradient for SegmentSum.
	**/
	static public function _UnsortedSegmentSumGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Returns gradient of zeta(x, q) with respect to x and q.
	**/
	static public function _ZetaGrad(op:Dynamic, grad:Dynamic):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Divides `x / y` assuming `x, y >= 0`, treating `0 / 0 = 0`.
	**/
	static public function _safe_shape_div(x:Dynamic, y:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}