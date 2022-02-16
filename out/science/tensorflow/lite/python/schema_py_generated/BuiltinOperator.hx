/* This file is generated, do not edit! */
package tensorflow.lite.python.schema_py_generated;
@:pythonImport("tensorflow.lite.python.schema_py_generated", "BuiltinOperator") extern class BuiltinOperator {
	static public var ABS : Dynamic;
	static public var ADD : Dynamic;
	static public var ADD_N : Dynamic;
	static public var ARG_MAX : Dynamic;
	static public var ARG_MIN : Dynamic;
	static public var ASSIGN_VARIABLE : Dynamic;
	static public var AVERAGE_POOL_2D : Dynamic;
	static public var BATCH_MATMUL : Dynamic;
	static public var BATCH_TO_SPACE_ND : Dynamic;
	static public var BIDIRECTIONAL_SEQUENCE_LSTM : Dynamic;
	static public var BIDIRECTIONAL_SEQUENCE_RNN : Dynamic;
	static public var BROADCAST_ARGS : Dynamic;
	static public var BROADCAST_TO : Dynamic;
	static public var CALL : Dynamic;
	static public var CALL_ONCE : Dynamic;
	static public var CAST : Dynamic;
	static public var CEIL : Dynamic;
	static public var COMPLEX_ABS : Dynamic;
	static public var CONCATENATION : Dynamic;
	static public var CONCAT_EMBEDDINGS : Dynamic;
	static public var CONV_2D : Dynamic;
	static public var CONV_3D : Dynamic;
	static public var CONV_3D_TRANSPOSE : Dynamic;
	static public var COS : Dynamic;
	static public var CUMSUM : Dynamic;
	static public var CUSTOM : Dynamic;
	static public var DELEGATE : Dynamic;
	static public var DENSIFY : Dynamic;
	static public var DEPTHWISE_CONV_2D : Dynamic;
	static public var DEPTH_TO_SPACE : Dynamic;
	static public var DEQUANTIZE : Dynamic;
	static public var DIV : Dynamic;
	static public var ELU : Dynamic;
	static public var EMBEDDING_LOOKUP : Dynamic;
	static public var EMBEDDING_LOOKUP_SPARSE : Dynamic;
	static public var EQUAL : Dynamic;
	static public var EXP : Dynamic;
	static public var EXPAND_DIMS : Dynamic;
	static public var FAKE_QUANT : Dynamic;
	static public var FILL : Dynamic;
	static public var FLOOR : Dynamic;
	static public var FLOOR_DIV : Dynamic;
	static public var FLOOR_MOD : Dynamic;
	static public var FULLY_CONNECTED : Dynamic;
	static public var GATHER : Dynamic;
	static public var GATHER_ND : Dynamic;
	static public var GREATER : Dynamic;
	static public var GREATER_EQUAL : Dynamic;
	static public var HARD_SWISH : Dynamic;
	static public var HASHTABLE : Dynamic;
	static public var HASHTABLE_FIND : Dynamic;
	static public var HASHTABLE_IMPORT : Dynamic;
	static public var HASHTABLE_LOOKUP : Dynamic;
	static public var HASHTABLE_SIZE : Dynamic;
	static public var IF : Dynamic;
	static public var IMAG : Dynamic;
	static public var L2_NORMALIZATION : Dynamic;
	static public var L2_POOL_2D : Dynamic;
	static public var LEAKY_RELU : Dynamic;
	static public var LESS : Dynamic;
	static public var LESS_EQUAL : Dynamic;
	static public var LOCAL_RESPONSE_NORMALIZATION : Dynamic;
	static public var LOG : Dynamic;
	static public var LOGICAL_AND : Dynamic;
	static public var LOGICAL_NOT : Dynamic;
	static public var LOGICAL_OR : Dynamic;
	static public var LOGISTIC : Dynamic;
	static public var LOG_SOFTMAX : Dynamic;
	static public var LSH_PROJECTION : Dynamic;
	static public var LSTM : Dynamic;
	static public var MATRIX_DIAG : Dynamic;
	static public var MATRIX_SET_DIAG : Dynamic;
	static public var MAXIMUM : Dynamic;
	static public var MAX_POOL_2D : Dynamic;
	static public var MEAN : Dynamic;
	static public var MINIMUM : Dynamic;
	static public var MIRROR_PAD : Dynamic;
	static public var MUL : Dynamic;
	static public var NEG : Dynamic;
	static public var NON_MAX_SUPPRESSION_V4 : Dynamic;
	static public var NON_MAX_SUPPRESSION_V5 : Dynamic;
	static public var NOT_EQUAL : Dynamic;
	static public var ONE_HOT : Dynamic;
	static public var PACK : Dynamic;
	static public var PAD : Dynamic;
	static public var PADV2 : Dynamic;
	static public var PLACEHOLDER_FOR_GREATER_OP_CODES : Dynamic;
	static public var POW : Dynamic;
	static public var PRELU : Dynamic;
	static public var QUANTIZE : Dynamic;
	static public var RANDOM_STANDARD_NORMAL : Dynamic;
	static public var RANGE : Dynamic;
	static public var RANK : Dynamic;
	static public var READ_VARIABLE : Dynamic;
	static public var REAL : Dynamic;
	static public var REDUCE_ALL : Dynamic;
	static public var REDUCE_ANY : Dynamic;
	static public var REDUCE_MAX : Dynamic;
	static public var REDUCE_MIN : Dynamic;
	static public var REDUCE_PROD : Dynamic;
	static public var RELU : Dynamic;
	static public var RELU6 : Dynamic;
	static public var RELU_N1_TO_1 : Dynamic;
	static public var RESHAPE : Dynamic;
	static public var RESIZE_BILINEAR : Dynamic;
	static public var RESIZE_NEAREST_NEIGHBOR : Dynamic;
	static public var REVERSE_SEQUENCE : Dynamic;
	static public var REVERSE_V2 : Dynamic;
	static public var RFFT2D : Dynamic;
	static public var RNN : Dynamic;
	static public var ROUND : Dynamic;
	static public var RSQRT : Dynamic;
	static public var SCATTER_ND : Dynamic;
	static public var SEGMENT_SUM : Dynamic;
	static public var SELECT : Dynamic;
	static public var SELECT_V2 : Dynamic;
	static public var SHAPE : Dynamic;
	static public var SIN : Dynamic;
	static public var SKIP_GRAM : Dynamic;
	static public var SLICE : Dynamic;
	static public var SOFTMAX : Dynamic;
	static public var SPACE_TO_BATCH_ND : Dynamic;
	static public var SPACE_TO_DEPTH : Dynamic;
	static public var SPARSE_TO_DENSE : Dynamic;
	static public var SPLIT : Dynamic;
	static public var SPLIT_V : Dynamic;
	static public var SQRT : Dynamic;
	static public var SQUARE : Dynamic;
	static public var SQUARED_DIFFERENCE : Dynamic;
	static public var SQUEEZE : Dynamic;
	static public var STRIDED_SLICE : Dynamic;
	static public var SUB : Dynamic;
	static public var SUM : Dynamic;
	static public var SVDF : Dynamic;
	static public var TANH : Dynamic;
	static public var TILE : Dynamic;
	static public var TOPK_V2 : Dynamic;
	static public var TRANSPOSE : Dynamic;
	static public var TRANSPOSE_CONV : Dynamic;
	static public var UNIDIRECTIONAL_SEQUENCE_LSTM : Dynamic;
	static public var UNIDIRECTIONAL_SEQUENCE_RNN : Dynamic;
	static public var UNIQUE : Dynamic;
	static public var UNPACK : Dynamic;
	static public var VAR_HANDLE : Dynamic;
	static public var WHERE : Dynamic;
	static public var WHILE : Dynamic;
	static public var ZEROS_LIKE : Dynamic;
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