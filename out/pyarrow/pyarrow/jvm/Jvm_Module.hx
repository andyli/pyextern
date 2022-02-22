/* This file is generated, do not edit! */
package pyarrow.jvm;
@:pythonImport("pyarrow.jvm") extern class Jvm_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Convert a JVM date type to its Python equivalent
		
		Parameters
		----------
		jvm_type: org.apache.arrow.vector.types.pojo.ArrowType$Date
		
		Returns
		-------
		typ: pyarrow.DataType
	**/
	static public function _from_jvm_date_type(jvm_type:Dynamic):Dynamic;
	/**
		Convert a JVM float type to its Python equivalent.
		
		Parameters
		----------
		jvm_type: org.apache.arrow.vector.types.pojo.ArrowType$FloatingPoint
		
		Returns
		-------
		typ: pyarrow.DataType
	**/
	static public function _from_jvm_float_type(jvm_type:Dynamic):Dynamic;
	/**
		Convert a JVM int type to its Python equivalent.
		
		Parameters
		----------
		jvm_type : org.apache.arrow.vector.types.pojo.ArrowType$Int
		
		Returns
		-------
		typ : pyarrow.DataType
	**/
	static public function _from_jvm_int_type(jvm_type:Dynamic):Dynamic;
	/**
		Convert a JVM time type to its Python equivalent.
		
		Parameters
		----------
		jvm_type: org.apache.arrow.vector.types.pojo.ArrowType$Time
		
		Returns
		-------
		typ: pyarrow.DataType
	**/
	static public function _from_jvm_time_type(jvm_type:Dynamic):Dynamic;
	/**
		Convert a JVM timestamp type to its Python equivalent.
		
		Parameters
		----------
		jvm_type: org.apache.arrow.vector.types.pojo.ArrowType$Timestamp
		
		Returns
		-------
		typ: pyarrow.DataType
	**/
	static public function _from_jvm_timestamp_type(jvm_type:Dynamic):Dynamic;
	/**
		Construct an (Python) Array from its JVM equivalent.
		
		Parameters
		----------
		jvm_array : org.apache.arrow.vector.ValueVector
		
		Returns
		-------
		array : Array
	**/
	static public function array(jvm_array:Dynamic):Dynamic;
	/**
		Construct a Field from a org.apache.arrow.vector.types.pojo.Field
		instance.
		
		Parameters
		----------
		jvm_field: org.apache.arrow.vector.types.pojo.Field
		
		Returns
		-------
		pyarrow.Field
	**/
	static public function field(jvm_field:Dynamic):Dynamic;
	/**
		Construct an Arrow buffer from org.apache.arrow.memory.ArrowBuf
		
		Parameters
		----------
		
		jvm_buf: org.apache.arrow.memory.ArrowBuf
		    Arrow Buffer representation on the JVM.
		
		Returns
		-------
		pyarrow.Buffer
		    Python Buffer that references the JVM memory.
	**/
	static public function jvm_buffer(jvm_buf:Dynamic):Dynamic;
	/**
		Construct a (Python) RecordBatch from a JVM VectorSchemaRoot
		
		Parameters
		----------
		jvm_vector_schema_root : org.apache.arrow.vector.VectorSchemaRoot
		
		Returns
		-------
		record_batch: pyarrow.RecordBatch
	**/
	static public function record_batch(jvm_vector_schema_root:Dynamic):Dynamic;
	/**
		Construct a Schema from a org.apache.arrow.vector.types.pojo.Schema
		instance.
		
		Parameters
		----------
		jvm_schema: org.apache.arrow.vector.types.pojo.Schema
		
		Returns
		-------
		pyarrow.Schema
	**/
	static public function schema(jvm_schema:Dynamic):Dynamic;
}