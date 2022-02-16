/* This file is generated, do not edit! */
package tensorflow.python.ops.math_grad;
@:pythonImport("tensorflow.python.ops.math_grad") extern class Math_grad_Module {
	/**
		Optimized version of `broadcast_gradient_args` that caches results.
		
		This implementation avoids creating `broadcast_gradient_args` ops in the case
		that the input shapes are fully defined, and provides hints to the calling
		code that can be used to avoid creating reduction and reshaping ops.
		
		Args:
		  x: The left input tensor to a broadcasting binary op.
		  y: The right input tensor to a broadcasting binary op.
		  grad: The incoming gradient tensor for a broadcasting binary op.
		
		Returns:
		  A pair of tuples, containing:
		    * A 3-tuple of broadcast information for x, containing:
		      * The shape of x (as a tuple or Tensor).
		      * The reduction indices for x (as a tuple or Tensor).
		      * A boolean, which if True, indicates that x's shape differs from grad's
		        shape (and so x's gradient must be reduced and/or reshaped).
		    * A 3-tuple of broadcast information for y, containing the respective
		      details for y.
	**/
	static public function SmartBroadcastGradientArgs(x:Dynamic, y:Dynamic, grad:Dynamic):Dynamic;
	static public function _AbsGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Returns grad * -1/sqrt(1-x^2).
	**/
	static public function _AcosGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Returns grad * 1/sinh(y).
	**/
	static public function _AcoshGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Gradient for Add.
	**/
	static public function _AddGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Copies the gradient to all inputs.
	**/
	static public function _AddNGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Returns -grad / (Im(x) + iRe(x))
	**/
	static public function _AngleGrad(op:Dynamic, grad:Dynamic):Dynamic;
	static public function _ArgMaxGrad(op:Dynamic, grad:Dynamic):Dynamic;
	static public function _ArgMinGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Returns grad * 1/sqrt(1-x^2).
	**/
	static public function _AsinGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Returns grad * 1/cosh(y).
	**/
	static public function _AsinhGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Returns grad * x / (x^2 + y^2), grad * -y / (x^2 + y^2).
	**/
	static public function _Atan2Grad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Returns grad * 1/ (1 + x^2).
	**/
	static public function _AtanGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Returns grad * 1/ (1 - x^2).
	**/
	static public function _AtanhGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Returns the gradient of x and y given the gradient of x * y.
	**/
	static public function _BatchMatMul(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Returns the gradient of x and y given the gradient of x * y.
	**/
	static public function _BatchMatMulV2(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Compute gradient of bessel_i0(x) with respect to its argument.
	**/
	static public function _BesselI0Grad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Compute gradient of bessel_i0e(x) with respect to its argument.
	**/
	static public function _BesselI0eGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Compute gradient of bessel_i1(x) with respect to its argument.
	**/
	static public function _BesselI1Grad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Compute gradient of bessel_i1e(x) with respect to its argument.
	**/
	static public function _BesselI1eGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Compute gradient of bessel_j0(x) with respect to its argument.
	**/
	static public function _BesselJ0Grad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Compute gradient of bessel_j1(x) with respect to its argument.
	**/
	static public function _BesselJ1Grad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Compute gradient of bessel_k0(x) with respect to its argument.
	**/
	static public function _BesselK0Grad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Compute gradient of bessel_k0e(x) with respect to its argument.
	**/
	static public function _BesselK0eGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Compute gradient of bessel_k1(x) with respect to its argument.
	**/
	static public function _BesselK1Grad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Compute gradient of bessel_k1e(x) with respect to its argument.
	**/
	static public function _BesselK1eGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Compute gradient of bessel_y0(x) with respect to its argument.
	**/
	static public function _BesselY0Grad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Compute gradient of bessel_y1(x) with respect to its argument.
	**/
	static public function _BesselY1Grad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Returns gradient of betainc(a, b, x) with respect to x.
	**/
	static public function _BetaincGrad(op:Dynamic, grad:Dynamic):Dynamic;
	static public function _CastGrad(op:Dynamic, grad:Dynamic):Dynamic;
	static public function _CeilGrad(_:Dynamic, unused_grad:Dynamic):Dynamic;
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
	/**
		Returns grad * sinh(x).
	**/
	static public function _CoshGrad(op:Dynamic, grad:Dynamic):Dynamic;
	static public function _CrossGrad(op:Dynamic, grad:Dynamic):Dynamic;
	static public function _CumprodGrad(op:Dynamic, grad:Dynamic):Dynamic;
	static public function _CumsumGrad(op:Dynamic, grad:Dynamic):Dynamic;
	static public function _CumulativeLogsumexpGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Compute gradient of dawsn(x) with respect to its argument.
	**/
	static public function _DawsnGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Compute gradient of the digamma function with respect to its argument.
	**/
	static public function _DigammaGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		The gradient for the Div operator.
	**/
	static public function _DivGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		DivNoNan op gradient.
	**/
	static public function _DivNoNanGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Returns grad * 2/sqrt(pi) * exp(-x**2).
	**/
	static public function _ErfGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Returns -grad * 2/sqrt(pi) * exp(-x**2).
	**/
	static public function _ErfcGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Returns grad * sqrt(pi) / 2 * exp(erfinv(x)**2).
	**/
	static public function _ErfinvGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Gradient for EuclideanNorm.
	**/
	static public function _EuclideanNormGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Returns grad * exp(x).
	**/
	static public function _ExpGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Compute gradient of expint(x) with respect to its argument.
	**/
	static public function _ExpintGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Returns grad * exp(x).
	**/
	static public function _Expm1Grad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		The gradient for the FloorDiv operator.
	**/
	static public function _FloorDivGrad(_:Dynamic, unused_grad:Dynamic):Dynamic;
	static public function _FloorGrad(_:Dynamic, unused_grad:Dynamic):Dynamic;
	/**
		Returns grad * (1, -floor(x/y)).
	**/
	static public function _FloorModGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Compute gradient of fresnel_cos(x) with respect to its argument.
	**/
	static public function _FresnelCosGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Compute gradient of fresnel_sin(x) with respect to its argument.
	**/
	static public function _FresnelSinGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Helper function for unsorted segment ops.
		
		Gathers params for
		    positive segment ids and gathers 0 for inputs with negative segment id.
		    Also returns the clipped indices and a boolean mask with the same shape
		    as ids where a positive id is masked as true. With this, the latter two
		    can be passed as arguments to this function to reuse them.
	**/
	static public function _GatherDropNegatives(params:Dynamic, ids:Dynamic, ?zero_clipped_indices:Dynamic, ?is_positive:Dynamic):Dynamic;
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
	static public function _InvGradGrad(op:Dynamic, grad:Dynamic):Dynamic;
	static public function _IsScalar(x:Dynamic):Dynamic;
	/**
		Returns grad * digamma(x).
	**/
	static public function _LgammaGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Returns grad * (1/(1 + x)).
	**/
	static public function _Log1pGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Returns grad * (1/x).
	**/
	static public function _LogGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Gradient for MatMul.
	**/
	static public function _MatMulGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Gradient for MatMul, only for the first input.
	**/
	static public function _MatMulGradAgainstFirstOnly(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Gradient for MatMul, only for the second input.
	**/
	static public function _MatMulGradAgainstSecondOnly(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Gradient for Max.
	**/
	static public function _MaxGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Returns grad*(x >= y, x < y) with type of grad.
	**/
	static public function _MaximumGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Factor out the code for the gradient of Maximum or Minimum.
	**/
	static public function _MaximumMinimumGrad(op:Dynamic, grad:Dynamic, selector_op:Dynamic):Dynamic;
	static public function _MaximumMinimumGradInputOnly(op:Dynamic, grad:Dynamic, selector_op:Dynamic):Dynamic;
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
		Returns grad*(x <= y, x > y) with type of grad.
	**/
	static public function _MinimumGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		The gradient of scalar multiplication.
	**/
	static public function _MulGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		The gradient of scalar multiplication with NaN-suppression.
	**/
	static public function _MulNoNanGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Returns grad * sqrt(2 * pi) * exp(ndtri(x)**2 / 2).
	**/
	static public function _NdtriGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Returns -grad.
	**/
	static public function _NegGrad(_:Dynamic, grad:Dynamic):Dynamic;
	/**
		Returns gradient of nextafter(x1, x2) with respect to x1 and x2.
	**/
	static public function _NextAfterGrad(op:Dynamic, grad:Dynamic):Dynamic;
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
		RealDiv op gradient.
	**/
	static public function _RealDivGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Returns 'grad' as the real part and set the imaginary part 0.
	**/
	static public function _RealGrad(_:Dynamic, grad:Dynamic):Dynamic;
	/**
		Returns -grad * (1 / x^2).
	**/
	static public function _ReciprocalGrad(op:Dynamic, grad:Dynamic):Dynamic;
	static public function _ReciprocalGradGrad(op:Dynamic, grad:Dynamic):Dynamic;
	static public function _RintGrad(_:Dynamic, unused_grad:Dynamic):Dynamic;
	static public function _RoundGrad(_:Dynamic, unused_grad:Dynamic):Dynamic;
	/**
		Returns -0.5 * grad * conj(y)^3.
	**/
	static public function _RsqrtGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Returns backprop gradient for f(a,b) = -0.5 * b * conj(a)^3.
	**/
	static public function _RsqrtGradGrad(op:Dynamic, grad:Dynamic):Dynamic;
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
		Gradient for SegmentMin and SegmentMax. 
	**/
	static public function _SegmentMinOrMaxGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Gradient for SegmentProd.
		
		The gradient can be expressed for each segment by dividing the segment's
		product by each element of the segment input tensor, but this approach can't
		deal with zeros in the input.
		Unlike reduce_prod we can't use cumsum here as individual segments may have
		a different number of elements. Therefore we consider three cases:
		1) A segment input contains no zeros and we can safely divide by the input
		   tensor.
		2) A segment contains exactly one zero. Then the gradient of each input of
		   the segment is zero except for the 0-input, there the gradient is
		   the product of the remaining segment entries.
		3) A segment contains at least two zeros. The gradient is zero for all
		   segment inputs.
	**/
	static public function _SegmentProdGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Gradient for SegmentSum.
	**/
	static public function _SegmentSumGrad(op:Dynamic, grad:Dynamic):Dynamic;
	static public function _SelectGrad(op:Dynamic, grad:Dynamic):Dynamic;
	static public function _SelectGradV2(op:Dynamic, grad:Dynamic):Dynamic;
	static public function _ShapesFullySpecifiedAndEqual(x:Dynamic, y:Dynamic, grad:Dynamic):Dynamic;
	/**
		Returns grad * sigmoid(x) * (1 - sigmoid(x)).
	**/
	static public function _SigmoidGrad(op:Dynamic, grad:Dynamic):Dynamic;
	static public function _SigmoidGradGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Returns 0.
	**/
	static public function _SignGrad(op:Dynamic, _:Dynamic):Dynamic;
	/**
		Returns grad * cos(x).
	**/
	static public function _SinGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Returns grad * cosh(x).
	**/
	static public function _SinhGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Gradient for SparseMatMul.
	**/
	static public function _SparseMatMulGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Gradient for SparseSegmentMean.
	**/
	static public function _SparseSegmentMeanGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Gradient for SparseSegmentMeanWithNumSegments.
	**/
	static public function _SparseSegmentMeanWithNumSegmentsGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Gradient for SparseSegmentSqrtN.
	**/
	static public function _SparseSegmentSqrtNGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Gradient for SparseSegmentSqrtNWithNumSegments.
	**/
	static public function _SparseSegmentSqrtNWithNumSegmentsGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Gradient for SparseSegmentSum.
	**/
	static public function _SparseSegmentSumGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Gradient for SparseSegmentSumWithNumSegments.
	**/
	static public function _SparseSegmentSumWithNumSegmentsGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Compute gradient of spence(x) with respect to its argument.
	**/
	static public function _SpenceGrad(op:Dynamic, grad:Dynamic):Dynamic;
	static public function _SqrtGrad(op:Dynamic, grad:Dynamic):Dynamic;
	static public function _SqrtGradGrad(op:Dynamic, grad:Dynamic):Dynamic;
	static public function _SquareGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Returns the gradient for (x-y)^2.
	**/
	static public function _SquaredDifferenceGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Gradient for Sub.
	**/
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
	static public function _TanhGradGrad(op:Dynamic, grad:Dynamic):Dynamic;
	static public function _TruncateDivGrad(_:Dynamic, unused_grad:Dynamic):Dynamic;
	/**
		Gradient for UnsortedSegmentMax. 
	**/
	static public function _UnsortedSegmentMaxGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Gradient for UnsortedSegmentMin. 
	**/
	static public function _UnsortedSegmentMinGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Gradient for UnsortedSegmentMin and UnsortedSegmentMax. 
	**/
	static public function _UnsortedSegmentMinOrMaxGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Gradient for UnsortedSegmentProd.
		
		The gradient can be expressed for each segment by dividing the segment's
		product by each element of the segment input tensor, but this approach can't
		deal with zeros in the input.
		Unlike reduce_prod we can't use cumsum here as individual segments may have
		a different number of elements. Therefore we consider three cases:
		1) A segment input contains no zeros and we can safely divide by the input
		   tensor.
		2) A segment contains exactly one zero. Then the gradient of each input of
		   the segment is zero except for the 0-input, there the gradient is
		   the product of the remaining segment entries.
		3) A segment contains at least two zeros. The gradient is zero for all
		   segment inputs.
	**/
	static public function _UnsortedSegmentProdGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Gradient for UnsortedSegmentSum.
	**/
	static public function _UnsortedSegmentSumGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Returns gradient of xdivy(x, y) with respect to x and y.
	**/
	static public function _XDivyGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Returns gradient of xlog1py(x, y) with respect to x and y.
	**/
	static public function _XLog1pyGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Returns gradient of xlogy(x, y) with respect to x and y.
	**/
	static public function _XLogyGrad(op:Dynamic, grad:Dynamic):Dynamic;
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
	static public var _empty_tuple : Dynamic;
	/**
		Divides `x / y` assuming `x, y >= 0`, treating `0 / 0 = 0`.
	**/
	static public function _safe_shape_div(x:Dynamic, y:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}