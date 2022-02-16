/* This file is generated, do not edit! */
package tensorflow.lite.python.schema_py_generated;
@:pythonImport("tensorflow.lite.python.schema_py_generated", "BuiltinOptions") extern class BuiltinOptions {
	static public var AbsOptions : Dynamic;
	static public var AddNOptions : Dynamic;
	static public var AddOptions : Dynamic;
	static public var ArgMaxOptions : Dynamic;
	static public var ArgMinOptions : Dynamic;
	static public var AssignVariableOptions : Dynamic;
	static public var BatchMatMulOptions : Dynamic;
	static public var BatchToSpaceNDOptions : Dynamic;
	static public var BidirectionalSequenceLSTMOptions : Dynamic;
	static public var BidirectionalSequenceRNNOptions : Dynamic;
	static public var BroadcastToOptions : Dynamic;
	static public var CallOnceOptions : Dynamic;
	static public var CallOptions : Dynamic;
	static public var CastOptions : Dynamic;
	static public var ConcatEmbeddingsOptions : Dynamic;
	static public var ConcatenationOptions : Dynamic;
	static public var Conv2DOptions : Dynamic;
	static public var Conv3DOptions : Dynamic;
	static public var CosOptions : Dynamic;
	static public var CumsumOptions : Dynamic;
	static public var DensifyOptions : Dynamic;
	static public var DepthToSpaceOptions : Dynamic;
	static public var DepthwiseConv2DOptions : Dynamic;
	static public var DequantizeOptions : Dynamic;
	static public var DivOptions : Dynamic;
	static public var EmbeddingLookupSparseOptions : Dynamic;
	static public var EqualOptions : Dynamic;
	static public var ExpOptions : Dynamic;
	static public var ExpandDimsOptions : Dynamic;
	static public var FakeQuantOptions : Dynamic;
	static public var FillOptions : Dynamic;
	static public var FloorDivOptions : Dynamic;
	static public var FloorModOptions : Dynamic;
	static public var FullyConnectedOptions : Dynamic;
	static public var GatherNdOptions : Dynamic;
	static public var GatherOptions : Dynamic;
	static public var GreaterEqualOptions : Dynamic;
	static public var GreaterOptions : Dynamic;
	static public var HardSwishOptions : Dynamic;
	static public var HashtableFindOptions : Dynamic;
	static public var HashtableImportOptions : Dynamic;
	static public var HashtableOptions : Dynamic;
	static public var HashtableSizeOptions : Dynamic;
	static public var IfOptions : Dynamic;
	static public var L2NormOptions : Dynamic;
	static public var LSHProjectionOptions : Dynamic;
	static public var LSTMOptions : Dynamic;
	static public var LeakyReluOptions : Dynamic;
	static public var LessEqualOptions : Dynamic;
	static public var LessOptions : Dynamic;
	static public var LocalResponseNormalizationOptions : Dynamic;
	static public var LogSoftmaxOptions : Dynamic;
	static public var LogicalAndOptions : Dynamic;
	static public var LogicalNotOptions : Dynamic;
	static public var LogicalOrOptions : Dynamic;
	static public var MatrixDiagOptions : Dynamic;
	static public var MatrixSetDiagOptions : Dynamic;
	static public var MaximumMinimumOptions : Dynamic;
	static public var MirrorPadOptions : Dynamic;
	static public var MulOptions : Dynamic;
	static public var NONE : Dynamic;
	static public var NegOptions : Dynamic;
	static public var NonMaxSuppressionV4Options : Dynamic;
	static public var NonMaxSuppressionV5Options : Dynamic;
	static public var NotEqualOptions : Dynamic;
	static public var OneHotOptions : Dynamic;
	static public var PackOptions : Dynamic;
	static public var PadOptions : Dynamic;
	static public var PadV2Options : Dynamic;
	static public var Pool2DOptions : Dynamic;
	static public var PowOptions : Dynamic;
	static public var QuantizeOptions : Dynamic;
	static public var RNNOptions : Dynamic;
	static public var RandomOptions : Dynamic;
	static public var RangeOptions : Dynamic;
	static public var RankOptions : Dynamic;
	static public var ReadVariableOptions : Dynamic;
	static public var ReducerOptions : Dynamic;
	static public var ReshapeOptions : Dynamic;
	static public var ResizeBilinearOptions : Dynamic;
	static public var ResizeNearestNeighborOptions : Dynamic;
	static public var ReverseSequenceOptions : Dynamic;
	static public var ReverseV2Options : Dynamic;
	static public var Rfft2dOptions : Dynamic;
	static public var SVDFOptions : Dynamic;
	static public var ScatterNdOptions : Dynamic;
	static public var SegmentSumOptions : Dynamic;
	static public var SelectOptions : Dynamic;
	static public var SelectV2Options : Dynamic;
	static public var SequenceRNNOptions : Dynamic;
	static public var ShapeOptions : Dynamic;
	static public var SkipGramOptions : Dynamic;
	static public var SliceOptions : Dynamic;
	static public var SoftmaxOptions : Dynamic;
	static public var SpaceToBatchNDOptions : Dynamic;
	static public var SpaceToDepthOptions : Dynamic;
	static public var SparseToDenseOptions : Dynamic;
	static public var SplitOptions : Dynamic;
	static public var SplitVOptions : Dynamic;
	static public var SquareOptions : Dynamic;
	static public var SquaredDifferenceOptions : Dynamic;
	static public var SqueezeOptions : Dynamic;
	static public var StridedSliceOptions : Dynamic;
	static public var SubOptions : Dynamic;
	static public var TileOptions : Dynamic;
	static public var TopKV2Options : Dynamic;
	static public var TransposeConvOptions : Dynamic;
	static public var TransposeOptions : Dynamic;
	static public var UnidirectionalSequenceLSTMOptions : Dynamic;
	static public var UniqueOptions : Dynamic;
	static public var UnpackOptions : Dynamic;
	static public var VarHandleOptions : Dynamic;
	static public var WhereOptions : Dynamic;
	static public var WhileOptions : Dynamic;
	static public var ZerosLikeOptions : Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		Default dir() implementation.
	**/
	public function __dir__():Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		Default object formatter.
	**/
	public function __format__(format_spec:Dynamic):Dynamic;
	/**
		Return self>=value.
	**/
	public function __ge__(value:Dynamic):Dynamic;
	/**
		Return getattr(self, name).
	**/
	public function __getattribute__(name:Dynamic):Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(value:Dynamic):Dynamic;
	static public var __module__ : Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce__():Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce_ex__(protocol:Dynamic):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		Size of object in memory, in bytes.
	**/
	public function __sizeof__():Dynamic;
	/**
		Return str(self).
	**/
	public function __str__():Dynamic;
	/**
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
}