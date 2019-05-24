/* This file is generated, do not edit! */
package tensorflow.python.ops.array_grad;
@:pythonImport("tensorflow.python.ops.array_grad") extern class Array_grad_Module {
	static public function _BatchToSpaceGrad(op:Dynamic, grad:Dynamic):Dynamic;
	static public function _BatchToSpaceNDGrad(op:Dynamic, grad:Dynamic):Dynamic;
	static public function _BroadcastToGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Gradient for check_numerics op.
	**/
	static public function _CheckNumericsGrad(op:Dynamic, grad:Dynamic):Dynamic;
	static public function _ConcatGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Gradient for concat op.
		
		Args:
		  op: An operation.
		  grad: `Tensor` or `IndexedSlices` representing the gradients with respect
		    to each output of the op.
		  start_value_index: An integer index of the first value in the op.inputs.
		  end_value_index: An integer index of the last value in the op.inputs.
		  dim_index: An interger index of concat_dim or axis parameter in op.inputs.
		
		Returns:
		  Tensors representing the partial gradients with respect to each input
		  of the op.
		
		Raises:
		  ValueError: if concat_dim/axis is not statically known.
	**/
	static public function _ConcatGradHelper(op:Dynamic, grad:Dynamic, start_value_index:Dynamic, end_value_index:Dynamic, dim_index:Dynamic):Dynamic;
	static public function _ConcatGradV2(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Returns conj(unshuffle(grad)).
	**/
	static public function _ConjugateTransposeGrad(op:Dynamic, grad:Dynamic):Dynamic;
	static public function _DepthToSpaceGrad(op:Dynamic, grad:Dynamic):Dynamic;
	static public function _DiagGrad(_:Dynamic, grad:Dynamic):Dynamic;
	static public function _DiagPartGrad(_:Dynamic, grad:Dynamic):Dynamic;
	static public function _ExpandDimsGrad(op:Dynamic, grad:Dynamic):Dynamic;
	static public function _ExtractImagePatchesGrad(op:Dynamic, grad:Dynamic):Dynamic;
	static public function _FillGrad(_:Dynamic, grad:Dynamic):Dynamic;
	/**
		Gradient for Gather op.
	**/
	static public function _GatherGrad(op:Dynamic, grad:Dynamic):Dynamic;
	static public function _GatherNdGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Gradient for GatherV2 op.
	**/
	static public function _GatherV2Grad(op:Dynamic, grad:Dynamic):Dynamic;
	static public function _IdGrad(_:Dynamic, grad:Dynamic):Dynamic;
	static public function _IdNGrad(_:Dynamic, ?grad:python.VarArgs<Dynamic>):Dynamic;
	static public function _MatrixBandPartGrad(op:Dynamic, grad:Dynamic):Dynamic;
	static public function _MatrixDiagGrad(_:Dynamic, grad:Dynamic):Dynamic;
	static public function _MatrixDiagPartGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Gradient for MatrixSetDiag.
	**/
	static public function _MatrixSetDiagGrad(op:Dynamic, grad:Dynamic):Dynamic;
	static public function _MirrorPadGrad(op:Dynamic, grad:Dynamic):Dynamic;
	static public function _MirrorPadGradGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Gradient for pack op.
	**/
	static public function _PackGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Gradient for Pad.
	**/
	static public function _PadGrad(op:Dynamic, grad:Dynamic):Dynamic;
	static public function _PreventGradientGrad(op:Dynamic, _:Dynamic):Dynamic;
	static public function _QuantizeAndDequantizeGrad(_:Dynamic, grad:Dynamic):Dynamic;
	static public function _QuantizeAndDequantizeV2Grad(_:Dynamic, grad:Dynamic):Dynamic;
	static public function _QuantizeAndDequantizeV3Grad(_:Dynamic, grad:Dynamic):Dynamic;
	static public function _RefIdGrad(_:Dynamic, grad:Dynamic):Dynamic;
	static public function _ReshapeGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Reshapes the gradient to the shape of the original input.
	**/
	static public function _ReshapeToInput(op:Dynamic, grad:Dynamic):Dynamic;
	static public function _ReverseGrad(op:Dynamic, grad:Dynamic):Dynamic;
	static public function _ReverseSequenceGrad(op:Dynamic, grad:Dynamic):Dynamic;
	static public function _ReverseV2Grad(op:Dynamic, grad:Dynamic):Dynamic;
	static public function _ScatterNdGrad(op:Dynamic, grad:Dynamic):Dynamic;
	static public function _ScatterNdNonAliasingAddGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Gradient for Slice op.
	**/
	static public function _SliceGrad(op:Dynamic, grad:Dynamic):Dynamic;
	static public function _SpaceToBatchGrad(op:Dynamic, grad:Dynamic):Dynamic;
	static public function _SpaceToBatchNDGrad(op:Dynamic, grad:Dynamic):Dynamic;
	static public function _SpaceToDepthGrad(op:Dynamic, grad:Dynamic):Dynamic;
	static public function _SplitGrad(op:Dynamic, ?grads:python.VarArgs<Dynamic>):Dynamic;
	static public function _SplitVGrad(op:Dynamic, ?grads:python.VarArgs<Dynamic>):Dynamic;
	static public function _SqueezeGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Gradient for StridedSlice op.
	**/
	static public function _StridedSliceGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Gradient for StridedSliceGrad op.
	**/
	static public function _StridedSliceGradGrad(op:Dynamic, grad:Dynamic):Dynamic;
	static public function _TensorScatterAddGrad(op:Dynamic, grad:Dynamic):Dynamic;
	static public function _TensorScatterSubGrad(op:Dynamic, grad:Dynamic):Dynamic;
	static public function _TensorScatterUpdateGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Sum reduces grad along the tiled dimensions.
	**/
	static public function _TileGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Returns unshuffle(grad).
	**/
	static public function _TransposeGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Gradient for unpack op.
	**/
	static public function _UnpackGrad(op:Dynamic, ?grads:python.VarArgs<Dynamic>):Dynamic;
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