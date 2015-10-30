/* This file is generated, do not edit! */
package scipy.io.matlab.mio5_params;
@:pythonImport("scipy.io.matlab.mio5_params") extern class Mio5_params_Module {
	static public var MDTYPES : Dynamic;
	static public var NP_TO_MTYPES : Dynamic;
	static public var NP_TO_MXTYPES : Dynamic;
	static public var OPAQUE_DTYPE : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _bytecode : Dynamic;
	/**
		Convert codec template mapping to byte order
		
		Set codecs not on this system to None
		
		Parameters
		----------
		template : mapping
		   key, value are respectively codec name, and root name for codec
		   (without byte order suffix)
		byte_order : {'<', '>'}
		   code for little or big endian
		
		Returns
		-------
		codecs : dict
		   key, value are name, codec (as in .encode(codec))
	**/
	static public function _convert_codecs(template:Dynamic, byte_order:Dynamic):Dynamic;
	static public var _def : Dynamic;
	static public var absolute_import : Dynamic;
	static public var codecs_template : Dynamic;
	/**
		Convert dtypes in mapping to given order
		
		Parameters
		----------
		dtype_template : mapping
		   mapping with values returning numpy dtype from ``np.dtype(val)``
		order_code : str
		   an order code suitable for using in ``dtype.newbyteorder()``
		
		Returns
		-------
		dtypes : mapping
		   mapping where values have been replaced by
		   ``np.dtype(val).newbyteorder(order_code)``
	**/
	static public function convert_dtypes(dtype_template:Dynamic, order_code:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var mclass_dtypes_template : Dynamic;
	static public var mclass_info : Dynamic;
	static public var mdtypes_template : Dynamic;
	static public var miCOMPRESSED : Dynamic;
	static public var miDOUBLE : Dynamic;
	static public var miINT16 : Dynamic;
	static public var miINT32 : Dynamic;
	static public var miINT64 : Dynamic;
	static public var miINT8 : Dynamic;
	static public var miMATRIX : Dynamic;
	static public var miSINGLE : Dynamic;
	static public var miUINT16 : Dynamic;
	static public var miUINT32 : Dynamic;
	static public var miUINT64 : Dynamic;
	static public var miUINT8 : Dynamic;
	static public var miUTF16 : Dynamic;
	static public var miUTF32 : Dynamic;
	static public var miUTF8 : Dynamic;
	static public var mxCELL_CLASS : Dynamic;
	static public var mxCHAR_CLASS : Dynamic;
	static public var mxDOUBLE_CLASS : Dynamic;
	static public var mxFUNCTION_CLASS : Dynamic;
	static public var mxINT16_CLASS : Dynamic;
	static public var mxINT32_CLASS : Dynamic;
	static public var mxINT64_CLASS : Dynamic;
	static public var mxINT8_CLASS : Dynamic;
	static public var mxOBJECT_CLASS : Dynamic;
	static public var mxOBJECT_CLASS_FROM_MATRIX_H : Dynamic;
	static public var mxOPAQUE_CLASS : Dynamic;
	static public var mxSINGLE_CLASS : Dynamic;
	static public var mxSPARSE_CLASS : Dynamic;
	static public var mxSTRUCT_CLASS : Dynamic;
	static public var mxUINT16_CLASS : Dynamic;
	static public var mxUINT32_CLASS : Dynamic;
	static public var mxUINT64_CLASS : Dynamic;
	static public var mxUINT8_CLASS : Dynamic;
	static public var print_function : Dynamic;
}