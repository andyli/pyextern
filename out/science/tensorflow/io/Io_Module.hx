/* This file is generated, do not edit! */
package tensorflow.io;
@:pythonImport("tensorflow.io") extern class Io_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Decode and Crop a JPEG-encoded image to a uint8 tensor.
		
		The attr `channels` indicates the desired number of color channels for the
		decoded image.
		
		Accepted values are:
		
		*   0: Use the number of channels in the JPEG-encoded image.
		*   1: output a grayscale image.
		*   3: output an RGB image.
		
		If needed, the JPEG-encoded image is transformed to match the requested number
		of color channels.
		
		The attr `ratio` allows downscaling the image by an integer factor during
		decoding.  Allowed values are: 1, 2, 4, and 8.  This is much faster than
		downscaling the image later.
		
		
		It is equivalent to a combination of decode and crop, but much faster by only
		decoding partial jpeg image.
		
		Args:
		  contents: A `Tensor` of type `string`. 0-D.  The JPEG-encoded image.
		  crop_window: A `Tensor` of type `int32`.
		    1-D.  The crop window: [crop_y, crop_x, crop_height, crop_width].
		  channels: An optional `int`. Defaults to `0`.
		    Number of color channels for the decoded image.
		  ratio: An optional `int`. Defaults to `1`. Downscaling ratio.
		  fancy_upscaling: An optional `bool`. Defaults to `True`.
		    If true use a slower but nicer upscaling of the
		    chroma planes (yuv420/422 only).
		  try_recover_truncated: An optional `bool`. Defaults to `False`.
		    If true try to recover an image from truncated input.
		  acceptable_fraction: An optional `float`. Defaults to `1`.
		    The minimum required fraction of lines before a truncated
		    input is accepted.
		  dct_method: An optional `string`. Defaults to `""`.
		    string specifying a hint about the algorithm used for
		    decompression.  Defaults to "" which maps to a system-specific
		    default.  Currently valid values are ["INTEGER_FAST",
		    "INTEGER_ACCURATE"].  The hint may be ignored (e.g., the internal
		    jpeg library changes to a version that does not have that specific
		    option.)
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `uint8`.
	**/
	static public function decode_and_crop_jpeg(contents:Dynamic, crop_window:Dynamic, ?channels:Dynamic, ?ratio:Dynamic, ?fancy_upscaling:Dynamic, ?try_recover_truncated:Dynamic, ?acceptable_fraction:Dynamic, ?dct_method:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Decode web-safe base64-encoded strings.
		
		Input may or may not have padding at the end. See EncodeBase64 for padding.
		Web-safe means that input must use - and _ instead of + and /.
		
		Args:
		  input: A `Tensor` of type `string`. Base64 strings to decode.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `string`.
	**/
	static public function decode_base64(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Decode the first frame of a BMP-encoded image to a uint8 tensor.
		
		The attr `channels` indicates the desired number of color channels for the
		decoded image.
		
		Accepted values are:
		
		*   0: Use the number of channels in the BMP-encoded image.
		*   3: output an RGB image.
		*   4: output an RGBA image.
		
		Args:
		  contents: A `Tensor` of type `string`. 0-D.  The BMP-encoded image.
		  channels: An optional `int`. Defaults to `0`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `uint8`.
	**/
	static public function decode_bmp(contents:Dynamic, ?channels:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Decompress strings.
		
		This op decompresses each element of the `bytes` input `Tensor`, which
		is assumed to be compressed using the given `compression_type`.
		
		The `output` is a string `Tensor` of the same shape as `bytes`,
		each element containing the decompressed data from the corresponding
		element in `bytes`.
		
		Args:
		  bytes: A `Tensor` of type `string`.
		    A Tensor of string which is compressed.
		  compression_type: An optional `string`. Defaults to `""`.
		    A scalar containing either (i) the empty string (no
		    compression), (ii) "ZLIB", or (iii) "GZIP".
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `string`.
	**/
	static public function decode_compressed(bytes:Dynamic, ?compression_type:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Convert CSV records to tensors. Each column maps to one tensor.
		
		RFC 4180 format is expected for the CSV records.
		(https://tools.ietf.org/html/rfc4180)
		Note that we allow leading and trailing spaces with int or float field.
		
		Args:
		  records: A `Tensor` of type `string`.
		    Each string is a record/row in the csv and all records should have
		    the same format.
		  record_defaults: A list of `Tensor` objects with specific types.
		    Acceptable types are `float32`, `float64`, `int32`, `int64`, `string`.
		    One tensor per column of the input record, with either a
		    scalar default value for that column or an empty vector if the column is
		    required.
		  field_delim: An optional `string`. Defaults to `","`.
		    char delimiter to separate fields in a record.
		  use_quote_delim: An optional `bool`. Defaults to `True`.
		    If false, treats double quotation marks as regular
		    characters inside of the string fields (ignoring RFC 4180, Section 2,
		    Bullet 5).
		  na_value: Additional string to recognize as NA/NaN.
		  select_cols: Optional sorted list of column indices to select. If specified,
		    only this subset of columns will be parsed and returned.
		  name: A name for the operation (optional).
		
		Returns:
		  A list of `Tensor` objects. Has the same type as `record_defaults`.
		  Each tensor will have the same shape as records.
		
		Raises:
		  ValueError: If any of the arguments is malformed.
	**/
	static public function decode_csv(records:Dynamic, record_defaults:Dynamic, ?field_delim:Dynamic, ?use_quote_delim:Dynamic, ?na_value:Dynamic, ?select_cols:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Decode the frame(s) of a GIF-encoded image to a uint8 tensor.
		
		GIF images with frame or transparency compression are not supported.
		On Linux and MacOS systems, convert animated GIFs from compressed to
		uncompressed by running:
		
		    convert $src.gif -coalesce $dst.gif
		
		This op also supports decoding JPEGs and PNGs, though it is cleaner to use
		`tf.io.decode_image`.
		
		Args:
		  contents: A `Tensor` of type `string`. 0-D.  The GIF-encoded image.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `uint8`.
	**/
	static public function decode_gif(contents:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Function for `decode_bmp`, `decode_gif`, `decode_jpeg`, and `decode_png`.
		
		Detects whether an image is a BMP, GIF, JPEG, or PNG, and performs the
		appropriate operation to convert the input bytes `string` into a `Tensor`
		of type `dtype`.
		
		Note: `decode_gif` returns a 4-D array `[num_frames, height, width, 3]`, as
		opposed to `decode_bmp`, `decode_jpeg` and `decode_png`, which return 3-D
		arrays `[height, width, num_channels]`. Make sure to take this into account
		when constructing your graph if you are intermixing GIF files with BMP, JPEG,
		and/or PNG files. Alternately, set the `expand_animations` argument of this
		function to `False`, in which case the op will return 3-dimensional tensors
		and will truncate animated GIF files to the first frame.
		
		NOTE: If the first frame of an animated GIF does not occupy the entire
		canvas (maximum frame width x maximum frame height), then it fills the
		unoccupied areas (in the first frame) with zeros (black). For frames after the
		first frame that does not occupy the entire canvas, it uses the previous
		frame to fill the unoccupied areas.
		
		Args:
		  contents: A `Tensor` of type `string`. 0-D. The encoded image bytes.
		  channels: An optional `int`. Defaults to `0`. Number of color channels for
		    the decoded image.
		  dtype: The desired DType of the returned `Tensor`.
		  name: A name for the operation (optional)
		  expand_animations: An optional `bool`. Defaults to `True`. Controls the
		    shape of the returned op's output. If `True`, the returned op will produce
		    a 3-D tensor for PNG, JPEG, and BMP files; and a 4-D tensor for all GIFs,
		    whether animated or not. If, `False`, the returned op will produce a 3-D
		    tensor for all file types and will truncate animated GIFs to the first
		    frame.
		
		Returns:
		  `Tensor` with type `dtype` and a 3- or 4-dimensional shape, depending on
		  the file type and the value of the `expand_animations` parameter.
		
		Raises:
		  ValueError: On incorrect number of channels.
	**/
	static public function decode_image(contents:Dynamic, ?channels:Dynamic, ?dtype:Dynamic, ?name:Dynamic, ?expand_animations:Dynamic):Dynamic;
	/**
		Decode a JPEG-encoded image to a uint8 tensor.
		
		The attr `channels` indicates the desired number of color channels for the
		decoded image.
		
		Accepted values are:
		
		*   0: Use the number of channels in the JPEG-encoded image.
		*   1: output a grayscale image.
		*   3: output an RGB image.
		
		If needed, the JPEG-encoded image is transformed to match the requested number
		of color channels.
		
		The attr `ratio` allows downscaling the image by an integer factor during
		decoding.  Allowed values are: 1, 2, 4, and 8.  This is much faster than
		downscaling the image later.
		
		
		This op also supports decoding PNGs and non-animated GIFs since the interface is
		the same, though it is cleaner to use `tf.io.decode_image`.
		
		Args:
		  contents: A `Tensor` of type `string`. 0-D.  The JPEG-encoded image.
		  channels: An optional `int`. Defaults to `0`.
		    Number of color channels for the decoded image.
		  ratio: An optional `int`. Defaults to `1`. Downscaling ratio.
		  fancy_upscaling: An optional `bool`. Defaults to `True`.
		    If true use a slower but nicer upscaling of the
		    chroma planes (yuv420/422 only).
		  try_recover_truncated: An optional `bool`. Defaults to `False`.
		    If true try to recover an image from truncated input.
		  acceptable_fraction: An optional `float`. Defaults to `1`.
		    The minimum required fraction of lines before a truncated
		    input is accepted.
		  dct_method: An optional `string`. Defaults to `""`.
		    string specifying a hint about the algorithm used for
		    decompression.  Defaults to "" which maps to a system-specific
		    default.  Currently valid values are ["INTEGER_FAST",
		    "INTEGER_ACCURATE"].  The hint may be ignored (e.g., the internal
		    jpeg library changes to a version that does not have that specific
		    option.)
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `uint8`.
	**/
	static public function decode_jpeg(contents:Dynamic, ?channels:Dynamic, ?ratio:Dynamic, ?fancy_upscaling:Dynamic, ?try_recover_truncated:Dynamic, ?acceptable_fraction:Dynamic, ?dct_method:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Convert JSON-encoded Example records to binary protocol buffer strings.
		
		Note: This is **not** a general purpose JSON parsing op.
		
		This op converts JSON-serialized `tf.train.Example` (maybe created with
		`json_format.MessageToJson`, following the
		[standard JSON mapping](
		https://developers.google.com/protocol-buffers/docs/proto3#json))
		to a binary-serialized `tf.train.Example` (equivalent to
		`Example.SerializeToString()`) suitable for conversion to tensors with
		`tf.io.parse_example`.
		
		Here is a `tf.train.Example` proto:
		
		>>> example = tf.train.Example(
		...   features=tf.train.Features(
		...       feature={
		...           "a": tf.train.Feature(
		...               int64_list=tf.train.Int64List(
		...                   value=[1, 1, 3]))}))
		
		Here it is converted to JSON:
		
		>>> from google.protobuf import json_format
		>>> example_json = json_format.MessageToJson(example)
		>>> print(example_json)
		{
		  "features": {
		    "feature": {
		      "a": {
		        "int64List": {
		          "value": [
		            "1",
		            "1",
		            "3"
		          ]
		        }
		      }
		    }
		  }
		}
		
		This op converts the above json string to a binary proto:
		
		>>> example_binary = tf.io.decode_json_example(example_json)
		>>> example_binary.numpy()
		b'\n\x0f\n\r\n\x01a\x12\x08\x1a\x06\x08\x01\x08\x01\x08\x03'
		
		The OP works on string tensors of andy shape:
		
		>>> tf.io.decode_json_example([
		...     [example_json, example_json],
		...     [example_json, example_json]]).shape.as_list()
		[2, 2]
		
		This resulting binary-string is equivalent to `Example.SerializeToString()`,
		and can be converted to Tensors using `tf.io.parse_example` and related
		functions:
		
		>>> tf.io.parse_example(
		...   serialized=[example_binary.numpy(),
		...              example.SerializeToString()],
		...   features = {'a': tf.io.FixedLenFeature(shape=[3], dtype=tf.int64)})
		{'a': <tf.Tensor: shape=(2, 3), dtype=int64, numpy=
		 array([[1, 1, 3],
		        [1, 1, 3]])>}
		
		Args:
		  json_examples: A string tensor containing json-serialized `tf.Example`
		    protos.
		  name: A name for the op.
		
		Returns:
		  A string Tensor containing the binary-serialized `tf.Example` protos.
		
		Raises:
		   `tf.errors.InvalidArgumentError`: If the JSON could not be converted to a
		   `tf.Example`
	**/
	static public function decode_json_example(json_examples:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Decode a PNG-encoded image to a uint8 or uint16 tensor.
		
		The attr `channels` indicates the desired number of color channels for the
		decoded image.
		
		Accepted values are:
		
		*   0: Use the number of channels in the PNG-encoded image.
		*   1: output a grayscale image.
		*   3: output an RGB image.
		*   4: output an RGBA image.
		
		If needed, the PNG-encoded image is transformed to match the requested number
		of color channels.
		
		This op also supports decoding JPEGs and non-animated GIFs since the interface
		is the same, though it is cleaner to use `tf.io.decode_image`.
		
		Args:
		  contents: A `Tensor` of type `string`. 0-D.  The PNG-encoded image.
		  channels: An optional `int`. Defaults to `0`.
		    Number of color channels for the decoded image.
		  dtype: An optional `tf.DType` from: `tf.uint8, tf.uint16`. Defaults to `tf.uint8`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `dtype`.
	**/
	static public function decode_png(contents:Dynamic, ?channels:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		The op extracts fields from a serialized protocol buffers message into tensors.
		
		The `decode_proto` op extracts fields from a serialized protocol buffers
		message into tensors.  The fields in `field_names` are decoded and converted
		to the corresponding `output_types` if possible.
		
		A `message_type` name must be provided to give context for the field names.
		The actual message descriptor can be looked up either in the linked-in
		descriptor pool or a filename provided by the caller using the
		`descriptor_source` attribute.
		
		Each output tensor is a dense tensor. This means that it is padded to hold
		the largest number of repeated elements seen in the input minibatch. (The
		shape is also padded by one to prevent zero-sized dimensions). The actual
		repeat counts for each example in the minibatch can be found in the `sizes`
		output. In many cases the output of `decode_proto` is fed immediately into
		tf.squeeze if missing values are not a concern. When using tf.squeeze, always
		pass the squeeze dimension explicitly to avoid surprises.
		
		For the most part, the mapping between Proto field types and TensorFlow dtypes
		is straightforward. However, there are a few special cases:
		
		- A proto field that contains a submessage or group can only be converted
		to `DT_STRING` (the serialized submessage). This is to reduce the complexity
		of the API. The resulting string can be used as input to another instance of
		the decode_proto op.
		
		- TensorFlow lacks support for unsigned integers. The ops represent uint64
		types as a `DT_INT64` with the same twos-complement bit pattern (the obvious
		way). Unsigned int32 values can be represented exactly by specifying type
		`DT_INT64`, or using twos-complement if the caller specifies `DT_INT32` in
		the `output_types` attribute.
		
		Both binary and text proto serializations are supported, and can be
		chosen using the `format` attribute.
		
		The `descriptor_source` attribute selects the source of protocol
		descriptors to consult when looking up `message_type`. This may be:
		
		- An empty string  or "local://", in which case protocol descriptors are
		created for C++ (not Python) proto definitions linked to the binary.
		
		- A file, in which case protocol descriptors are created from the file,
		which is expected to contain a `FileDescriptorSet` serialized as a string.
		NOTE: You can build a `descriptor_source` file using the `--descriptor_set_out`
		and `--include_imports` options to the protocol compiler `protoc`.
		
		- A "bytes://<bytes>", in which protocol descriptors are created from `<bytes>`,
		which is expected to be a `FileDescriptorSet` serialized as a string.
		
		Args:
		  bytes: A `Tensor` of type `string`.
		    Tensor of serialized protos with shape `batch_shape`.
		  message_type: A `string`. Name of the proto message type to decode.
		  field_names: A list of `strings`.
		    List of strings containing proto field names. An extension field can be decoded
		    by using its full name, e.g. EXT_PACKAGE.EXT_FIELD_NAME.
		  output_types: A list of `tf.DTypes`.
		    List of TF types to use for the respective field in field_names.
		  descriptor_source: An optional `string`. Defaults to `"local://"`.
		    Either the special value `local://` or a path to a file containing
		    a serialized `FileDescriptorSet`.
		  message_format: An optional `string`. Defaults to `"binary"`.
		    Either `binary` or `text`.
		  sanitize: An optional `bool`. Defaults to `False`.
		    Whether to sanitize the result or not.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (sizes, values).
		
		  sizes: A `Tensor` of type `int32`.
		  values: A list of `Tensor` objects of type `output_types`.
	**/
	static public function decode_proto(bytes:Dynamic, message_type:Dynamic, field_names:Dynamic, output_types:Dynamic, ?descriptor_source:Dynamic, ?message_format:Dynamic, ?sanitize:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Convert raw bytes from input tensor into numeric tensors.
		
		Every component of the input tensor is interpreted as a sequence of bytes.
		These bytes are then decoded as numbers in the format specified by `out_type`.
		
		>>> tf.io.decode_raw(tf.constant("1"), tf.uint8)
		<tf.Tensor: shape=(1,), dtype=uint8, numpy=array([49], dtype=uint8)>
		>>> tf.io.decode_raw(tf.constant("1,2"), tf.uint8)
		<tf.Tensor: shape=(3,), dtype=uint8, numpy=array([49, 44, 50], dtype=uint8)>
		
		Note that the rank of the output tensor is always one more than the input one:
		
		>>> tf.io.decode_raw(tf.constant(["1","2"]), tf.uint8).shape
		TensorShape([2, 1])
		>>> tf.io.decode_raw(tf.constant([["1"],["2"]]), tf.uint8).shape
		TensorShape([2, 1, 1])
		
		This is because each byte in the input is converted to a new value on the
		output (if output type is `uint8` or `int8`, otherwise chunks of inputs get
		coverted to a new value):
		
		>>> tf.io.decode_raw(tf.constant("123"), tf.uint8)
		<tf.Tensor: shape=(3,), dtype=uint8, numpy=array([49, 50, 51], dtype=uint8)>
		>>> tf.io.decode_raw(tf.constant("1234"), tf.uint8)
		<tf.Tensor: shape=(4,), dtype=uint8, numpy=array([49, 50, 51, 52], ...
		>>> # chuncked output
		>>> tf.io.decode_raw(tf.constant("12"), tf.uint16)
		<tf.Tensor: shape=(1,), dtype=uint16, numpy=array([12849], dtype=uint16)>
		>>> tf.io.decode_raw(tf.constant("1234"), tf.uint16)
		<tf.Tensor: shape=(2,), dtype=uint16, numpy=array([12849, 13363], ...
		>>> # int64 output
		>>> tf.io.decode_raw(tf.constant("12345678"), tf.int64)
		<tf.Tensor: ... numpy=array([4050765991979987505])>
		>>> tf.io.decode_raw(tf.constant("1234567887654321"), tf.int64)
		<tf.Tensor: ... numpy=array([4050765991979987505, 3544952156018063160])>
		
		The operation allows specifying endianness via the `little_endian` parameter.
		
		>>> tf.io.decode_raw(tf.constant("\x0a\x0b"), tf.int16)
		<tf.Tensor: shape=(1,), dtype=int16, numpy=array([2826], dtype=int16)>
		>>> hex(2826)
		'0xb0a'
		>>> tf.io.decode_raw(tf.constant("\x0a\x0b"), tf.int16, little_endian=False)
		<tf.Tensor: shape=(1,), dtype=int16, numpy=array([2571], dtype=int16)>
		>>> hex(2571)
		'0xa0b'
		
		If the elements of `input_bytes` are of different length, you must specify
		`fixed_length`:
		
		>>> tf.io.decode_raw(tf.constant([["1"],["23"]]), tf.uint8, fixed_length=4)
		<tf.Tensor: shape=(2, 1, 4), dtype=uint8, numpy=
		array([[[49,  0,  0,  0]],
		       [[50, 51,  0,  0]]], dtype=uint8)>
		
		If the `fixed_length` value is larger that the length of the `out_type` dtype,
		multiple values are generated:
		
		>>> tf.io.decode_raw(tf.constant(["1212"]), tf.uint16, fixed_length=4)
		<tf.Tensor: shape=(1, 2), dtype=uint16, numpy=array([[12849, 12849]], ...
		
		If the input value is larger than `fixed_length`, it is truncated:
		
		>>> x=''.join([chr(1), chr(2), chr(3), chr(4)])
		>>> tf.io.decode_raw(x, tf.uint16, fixed_length=2)
		<tf.Tensor: shape=(1,), dtype=uint16, numpy=array([513], dtype=uint16)>
		>>> hex(513)
		'0x201'
		
		If `little_endian` and `fixed_length` are specified, truncation to the fixed
		length occurs before endianness conversion:
		
		>>> x=''.join([chr(1), chr(2), chr(3), chr(4)])
		>>> tf.io.decode_raw(x, tf.uint16, fixed_length=2, little_endian=False)
		<tf.Tensor: shape=(1,), dtype=uint16, numpy=array([258], dtype=uint16)>
		>>> hex(258)
		'0x102'
		
		If input values all have the same length, then specifying `fixed_length`
		equal to the size of the strings should not change output:
		
		>>> x = ["12345678", "87654321"]
		>>> tf.io.decode_raw(x, tf.int16)
		<tf.Tensor: shape=(2, 4), dtype=int16, numpy=
		array([[12849, 13363, 13877, 14391],
		       [14136, 13622, 13108, 12594]], dtype=int16)>
		>>> tf.io.decode_raw(x, tf.int16, fixed_length=len(x[0]))
		<tf.Tensor: shape=(2, 4), dtype=int16, numpy=
		array([[12849, 13363, 13877, 14391],
		       [14136, 13622, 13108, 12594]], dtype=int16)>
		
		Args:
		  input_bytes:
		    Each element of the input Tensor is converted to an array of bytes.
		
		    Currently, this must be a tensor of strings (bytes), although semantically
		    the operation should support any input.
		  out_type:
		    `DType` of the output. Acceptable types are `half`, `float`, `double`,
		    `int32`, `uint16`, `uint8`, `int16`, `int8`, `int64`.
		  little_endian:
		    Whether the `input_bytes` data is in little-endian format. Data will be
		    converted into host byte order if necessary.
		  fixed_length:
		    If set, the first `fixed_length` bytes of each element will be converted.
		    Data will be zero-padded or truncated to the specified length.
		
		    `fixed_length` must be a multiple of the size of `out_type`.
		
		    `fixed_length` must be specified if the elements of `input_bytes` are of
		    variable length.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` object storing the decoded bytes.
	**/
	static public function decode_raw(input_bytes:Dynamic, out_type:Dynamic, ?little_endian:Dynamic, ?fixed_length:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Deserialize and concatenate `SparseTensors` from a serialized minibatch.
		
		The input `serialized_sparse` must be a string matrix of shape `[N x 3]` where
		`N` is the minibatch size and the rows correspond to packed outputs of
		`serialize_sparse`.  The ranks of the original `SparseTensor` objects
		must all match.  When the final `SparseTensor` is created, it has rank one
		higher than the ranks of the incoming `SparseTensor` objects (they have been
		concatenated along a new row dimension).
		
		The output `SparseTensor` object's shape values for all dimensions but the
		first are the max across the input `SparseTensor` objects' shape values
		for the corresponding dimensions.  Its first shape value is `N`, the minibatch
		size.
		
		The input `SparseTensor` objects' indices are assumed ordered in
		standard lexicographic order.  If this is not the case, after this
		step run `sparse.reorder` to restore index ordering.
		
		For example, if the serialized input is a `[2, 3]` matrix representing two
		original `SparseTensor` objects:
		
		    index = [ 0]
		            [10]
		            [20]
		    values = [1, 2, 3]
		    shape = [50]
		
		and
		
		    index = [ 2]
		            [10]
		    values = [4, 5]
		    shape = [30]
		
		then the final deserialized `SparseTensor` will be:
		
		    index = [0  0]
		            [0 10]
		            [0 20]
		            [1  2]
		            [1 10]
		    values = [1, 2, 3, 4, 5]
		    shape = [2 50]
		
		Args:
		  serialized_sparse: 2-D `Tensor` of type `string` of shape `[N, 3]`.
		    The serialized and packed `SparseTensor` objects.
		  dtype: The `dtype` of the serialized `SparseTensor` objects.
		  rank: (optional) Python int, the rank of the `SparseTensor` objects.
		  name: A name prefix for the returned tensors (optional)
		
		Returns:
		  A `SparseTensor` representing the deserialized `SparseTensor`s,
		  concatenated along the `SparseTensor`s' first dimension.
		
		  All of the serialized `SparseTensor`s must have had the same rank and type.
	**/
	static public function deserialize_many_sparse(serialized_sparse:Dynamic, dtype:Dynamic, ?rank:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Encode strings into web-safe base64 format.
		
		Refer to the following article for more information on base64 format:
		en.wikipedia.org/wiki/Base64. Base64 strings may have padding with '=' at the
		end so that the encoded has length multiple of 4. See Padding section of the
		link above.
		
		Web-safe means that the encoder uses - and _ instead of + and /.
		
		Args:
		  input: A `Tensor` of type `string`. Strings to be encoded.
		  pad: An optional `bool`. Defaults to `False`.
		    Bool whether padding is applied at the ends.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `string`.
	**/
	static public function encode_base64(input:Dynamic, ?pad:Dynamic, ?name:Dynamic):Dynamic;
	/**
		JPEG-encode an image.
		
		`image` is a 3-D uint8 Tensor of shape `[height, width, channels]`.
		
		The attr `format` can be used to override the color format of the encoded
		output.  Values can be:
		
		*   `''`: Use a default format based on the number of channels in the image.
		*   `grayscale`: Output a grayscale JPEG image.  The `channels` dimension
		    of `image` must be 1.
		*   `rgb`: Output an RGB JPEG image. The `channels` dimension
		    of `image` must be 3.
		
		If `format` is not specified or is the empty string, a default format is picked
		in function of the number of channels in `image`:
		
		*   1: Output a grayscale image.
		*   3: Output an RGB image.
		
		Args:
		  image: A `Tensor` of type `uint8`.
		    3-D with shape `[height, width, channels]`.
		  format: An optional `string` from: `"", "grayscale", "rgb"`. Defaults to `""`.
		    Per pixel image format.
		  quality: An optional `int`. Defaults to `95`.
		    Quality of the compression from 0 to 100 (higher is better and slower).
		  progressive: An optional `bool`. Defaults to `False`.
		    If True, create a JPEG that loads progressively (coarse to fine).
		  optimize_size: An optional `bool`. Defaults to `False`.
		    If True, spend CPU/RAM to reduce size with no quality change.
		  chroma_downsampling: An optional `bool`. Defaults to `True`.
		    See http://en.wikipedia.org/wiki/Chroma_subsampling.
		  density_unit: An optional `string` from: `"in", "cm"`. Defaults to `"in"`.
		    Unit used to specify `x_density` and `y_density`:
		    pixels per inch (`'in'`) or centimeter (`'cm'`).
		  x_density: An optional `int`. Defaults to `300`.
		    Horizontal pixels per density unit.
		  y_density: An optional `int`. Defaults to `300`.
		    Vertical pixels per density unit.
		  xmp_metadata: An optional `string`. Defaults to `""`.
		    If not empty, embed this XMP metadata in the image header.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `string`.
	**/
	static public function encode_jpeg(image:Dynamic, ?format:Dynamic, ?quality:Dynamic, ?progressive:Dynamic, ?optimize_size:Dynamic, ?chroma_downsampling:Dynamic, ?density_unit:Dynamic, ?x_density:Dynamic, ?y_density:Dynamic, ?xmp_metadata:Dynamic, ?name:Dynamic):Dynamic;
	/**
		PNG-encode an image.
		
		`image` is a 3-D uint8 or uint16 Tensor of shape `[height, width, channels]`
		where `channels` is:
		
		*   1: for grayscale.
		*   2: for grayscale + alpha.
		*   3: for RGB.
		*   4: for RGBA.
		
		The ZLIB compression level, `compression`, can be -1 for the PNG-encoder
		default or a value from 0 to 9.  9 is the highest compression level,
		generating the smallest output, but is slower.
		
		Args:
		  image: A `Tensor`. Must be one of the following types: `uint8`, `uint16`.
		    3-D with shape `[height, width, channels]`.
		  compression: An optional `int`. Defaults to `-1`. Compression level.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `string`.
	**/
	static public function encode_png(image:Dynamic, ?compression:Dynamic, ?name:Dynamic):Dynamic;
	/**
		The op serializes protobuf messages provided in the input tensors.
		
		The types of the tensors in `values` must match the schema for the fields
		specified in `field_names`. All the tensors in `values` must have a common
		shape prefix, *batch_shape*.
		
		The `sizes` tensor specifies repeat counts for each field.  The repeat count
		(last dimension) of a each tensor in `values` must be greater than or equal
		to corresponding repeat count in `sizes`.
		
		A `message_type` name must be provided to give context for the field names.
		The actual message descriptor can be looked up either in the linked-in
		descriptor pool or a filename provided by the caller using the
		`descriptor_source` attribute.
		
		For the most part, the mapping between Proto field types and TensorFlow dtypes
		is straightforward. However, there are a few special cases:
		
		- A proto field that contains a submessage or group can only be converted
		to `DT_STRING` (the serialized submessage). This is to reduce the complexity
		of the API. The resulting string can be used as input to another instance of
		the decode_proto op.
		
		- TensorFlow lacks support for unsigned integers. The ops represent uint64
		types as a `DT_INT64` with the same twos-complement bit pattern (the obvious
		way). Unsigned int32 values can be represented exactly by specifying type
		`DT_INT64`, or using twos-complement if the caller specifies `DT_INT32` in
		the `output_types` attribute.
		
		The `descriptor_source` attribute selects the source of protocol
		descriptors to consult when looking up `message_type`. This may be:
		
		- An empty string  or "local://", in which case protocol descriptors are
		created for C++ (not Python) proto definitions linked to the binary.
		
		- A file, in which case protocol descriptors are created from the file,
		which is expected to contain a `FileDescriptorSet` serialized as a string.
		NOTE: You can build a `descriptor_source` file using the `--descriptor_set_out`
		and `--include_imports` options to the protocol compiler `protoc`.
		
		- A "bytes://<bytes>", in which protocol descriptors are created from `<bytes>`,
		which is expected to be a `FileDescriptorSet` serialized as a string.
		
		Args:
		  sizes: A `Tensor` of type `int32`.
		    Tensor of int32 with shape `[batch_shape, len(field_names)]`.
		  values: A list of `Tensor` objects.
		    List of tensors containing values for the corresponding field.
		  field_names: A list of `strings`.
		    List of strings containing proto field names.
		  message_type: A `string`. Name of the proto message type to decode.
		  descriptor_source: An optional `string`. Defaults to `"local://"`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `string`.
	**/
	static public function encode_proto(sizes:Dynamic, values:Dynamic, field_names:Dynamic, message_type:Dynamic, ?descriptor_source:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Extract the shape information of a JPEG-encoded image.
		
		This op only parses the image header, so it is much faster than DecodeJpeg.
		
		Args:
		  contents: A `Tensor` of type `string`. 0-D. The JPEG-encoded image.
		  output_type: An optional `tf.DType` from: `tf.int32, tf.int64`. Defaults to `tf.int32`.
		    (Optional) The output type of the operation (int32 or int64).
		    Defaults to int32.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `output_type`.
	**/
	static public function extract_jpeg_shape(contents:Dynamic, ?output_type:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Convenience function to check if the 'contents' encodes a JPEG image.
		
		Args:
		  contents: 0-D `string`. The encoded image bytes.
		  name: A name for the operation (optional)
		
		Returns:
		   A scalar boolean tensor indicating if 'contents' may be a JPEG image.
		   is_jpeg is susceptible to false positives.
	**/
	static public function is_jpeg(contents:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Save the list of files matching pattern, so it is only computed once.
		
		NOTE: The order of the files returned is deterministic.
		
		Args:
		  pattern: A file pattern (glob), or 1D tensor of file patterns.
		  name: A name for the operations (optional).
		
		Returns:
		  A variable that is initialized to the list of files matching the pattern(s).
	**/
	static public function match_filenames_once(pattern:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns the set of files matching one or more glob patterns.
		
		Note that this routine only supports wildcard characters in the
		basename portion of the pattern, not in the directory portion.
		Note also that the order of filenames returned is deterministic.
		
		Args:
		  pattern: A `Tensor` of type `string`.
		    Shell wildcard pattern(s). Scalar or vector of type string.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `string`.
	**/
	static public function matching_files(pattern:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Parses `Example` protos into a `dict` of tensors.
		
		Parses a number of serialized [`Example`](https://www.tensorflow.org/code/tensorflow/core/example/example.proto)
		protos given in `serialized`. We refer to `serialized` as a batch with
		`batch_size` many entries of individual `Example` protos.
		
		`example_names` may contain descriptive names for the corresponding serialized
		protos. These may be useful for debugging purposes, but they have no effect on
		the output. If not `None`, `example_names` must be the same length as
		`serialized`.
		
		This op parses serialized examples into a dictionary mapping keys to `Tensor`
		`SparseTensor`, and `RaggedTensor` objects. `features` is a dict from keys to
		`VarLenFeature`, `SparseFeature`, `RaggedFeature`, and `FixedLenFeature`
		objects. Each `VarLenFeature` and `SparseFeature` is mapped to a
		`SparseTensor`; each `FixedLenFeature` is mapped to a `Tensor`; and each
		`RaggedFeature` is mapped to a `RaggedTensor`.
		
		Each `VarLenFeature` maps to a `SparseTensor` of the specified type
		representing a ragged matrix. Its indices are `[batch, index]` where `batch`
		identifies the example in `serialized`, and `index` is the value's index in
		the list of values associated with that feature and example.
		
		Each `SparseFeature` maps to a `SparseTensor` of the specified type
		representing a Tensor of `dense_shape` `[batch_size] + SparseFeature.size`.
		Its `values` come from the feature in the examples with key `value_key`.
		A `values[i]` comes from a position `k` in the feature of an example at batch
		entry `batch`. This positional information is recorded in `indices[i]` as
		`[batch, index_0, index_1, ...]` where `index_j` is the `k-th` value of
		the feature in the example at with key `SparseFeature.index_key[j]`.
		In other words, we split the indices (except the first index indicating the
		batch entry) of a `SparseTensor` by dimension into different features of the
		`Example`. Due to its complexity a `VarLenFeature` should be preferred over a
		`SparseFeature` whenever possible.
		
		Each `FixedLenFeature` `df` maps to a `Tensor` of the specified type (or
		`tf.float32` if not specified) and shape `(serialized.size(),) + df.shape`.
		
		`FixedLenFeature` entries with a `default_value` are optional. With no default
		value, we will fail if that `Feature` is missing from any example in
		`serialized`.
		
		Each `FixedLenSequenceFeature` `df` maps to a `Tensor` of the specified type
		(or `tf.float32` if not specified) and shape
		`(serialized.size(), None) + df.shape`.
		All examples in `serialized` will be padded with `default_value` along the
		second dimension.
		
		Each `RaggedFeature` maps to a `RaggedTensor` of the specified type.  It
		is formed by stacking the `RaggedTensor` for each example, where the
		`RaggedTensor` for each individual example is constructed using the tensors
		specified by `RaggedTensor.values_key` and `RaggedTensor.partition`.  See
		the `tf.io.RaggedFeature` documentation for details and examples.
		
		Examples:
		
		For example, if one expects a `tf.float32` `VarLenFeature` `ft` and three
		serialized `Example`s are provided:
		
		```
		serialized = [
		  features
		    { feature { key: "ft" value { float_list { value: [1.0, 2.0] } } } },
		  features
		    { feature []},
		  features
		    { feature { key: "ft" value { float_list { value: [3.0] } } }
		]
		```
		
		then the output will look like:
		
		```python
		{"ft": SparseTensor(indices=[[0, 0], [0, 1], [2, 0]],
		                    values=[1.0, 2.0, 3.0],
		                    dense_shape=(3, 2)) }
		```
		
		If instead a `FixedLenSequenceFeature` with `default_value = -1.0` and
		`shape=[]` is used then the output will look like:
		
		```python
		{"ft": [[1.0, 2.0], [3.0, -1.0]]}
		```
		
		Given two `Example` input protos in `serialized`:
		
		```
		[
		  features {
		    feature { key: "kw" value { bytes_list { value: [ "knit", "big" ] } } }
		    feature { key: "gps" value { float_list { value: [] } } }
		  },
		  features {
		    feature { key: "kw" value { bytes_list { value: [ "emmy" ] } } }
		    feature { key: "dank" value { int64_list { value: [ 42 ] } } }
		    feature { key: "gps" value { } }
		  }
		]
		```
		
		And arguments
		
		```
		example_names: ["input0", "input1"],
		features: {
		    "kw": VarLenFeature(tf.string),
		    "dank": VarLenFeature(tf.int64),
		    "gps": VarLenFeature(tf.float32),
		}
		```
		
		Then the output is a dictionary:
		
		```python
		{
		  "kw": SparseTensor(
		      indices=[[0, 0], [0, 1], [1, 0]],
		      values=["knit", "big", "emmy"]
		      dense_shape=[2, 2]),
		  "dank": SparseTensor(
		      indices=[[1, 0]],
		      values=[42],
		      dense_shape=[2, 1]),
		  "gps": SparseTensor(
		      indices=[],
		      values=[],
		      dense_shape=[2, 0]),
		}
		```
		
		For dense results in two serialized `Example`s:
		
		```
		[
		  features {
		    feature { key: "age" value { int64_list { value: [ 0 ] } } }
		    feature { key: "gender" value { bytes_list { value: [ "f" ] } } }
		   },
		   features {
		    feature { key: "age" value { int64_list { value: [] } } }
		    feature { key: "gender" value { bytes_list { value: [ "f" ] } } }
		  }
		]
		```
		
		We can use arguments:
		
		```
		example_names: ["input0", "input1"],
		features: {
		    "age": FixedLenFeature([], dtype=tf.int64, default_value=-1),
		    "gender": FixedLenFeature([], dtype=tf.string),
		}
		```
		
		And the expected output is:
		
		```python
		{
		  "age": [[0], [-1]],
		  "gender": [["f"], ["f"]],
		}
		```
		
		An alternative to `VarLenFeature` to obtain a `SparseTensor` is
		`SparseFeature`. For example, given two `Example` input protos in
		`serialized`:
		
		```
		[
		  features {
		    feature { key: "val" value { float_list { value: [ 0.5, -1.0 ] } } }
		    feature { key: "ix" value { int64_list { value: [ 3, 20 ] } } }
		  },
		  features {
		    feature { key: "val" value { float_list { value: [ 0.0 ] } } }
		    feature { key: "ix" value { int64_list { value: [ 42 ] } } }
		  }
		]
		```
		
		And arguments
		
		```
		example_names: ["input0", "input1"],
		features: {
		    "sparse": SparseFeature(
		        index_key="ix", value_key="val", dtype=tf.float32, size=100),
		}
		```
		
		Then the output is a dictionary:
		
		```python
		{
		  "sparse": SparseTensor(
		      indices=[[0, 3], [0, 20], [1, 42]],
		      values=[0.5, -1.0, 0.0]
		      dense_shape=[2, 100]),
		}
		```
		
		See the `tf.io.RaggedFeature` documentation for examples showing how
		`RaggedFeature` can be used to obtain `RaggedTensor`s.
		
		Args:
		  serialized: A vector (1-D Tensor) of strings, a batch of binary
		    serialized `Example` protos.
		  features: A `dict` mapping feature keys to `FixedLenFeature`,
		    `VarLenFeature`, `SparseFeature`, and `RaggedFeature` values.
		  example_names: A vector (1-D Tensor) of strings (optional), the names of
		    the serialized protos in the batch.
		  name: A name for this operation (optional).
		
		Returns:
		  A `dict` mapping feature keys to `Tensor`, `SparseTensor`, and
		  `RaggedTensor` values.
		
		Raises:
		  ValueError: if any feature is invalid.
	**/
	static public function parse_example(serialized:Dynamic, features:Dynamic, ?example_names:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Parses a batch of `SequenceExample` protos.
		
		Parses a vector of serialized
		[`SequenceExample`](https://www.tensorflow.org/code/tensorflow/core/example/example.proto)
		protos given in `serialized`.
		
		This op parses serialized sequence examples into a tuple of dictionaries,
		each mapping keys to `Tensor` and `SparseTensor` objects.
		The first dictionary contains mappings for keys appearing in
		`context_features`, and the second dictionary contains mappings for keys
		appearing in `sequence_features`.
		
		At least one of `context_features` and `sequence_features` must be provided
		and non-empty.
		
		The `context_features` keys are associated with a `SequenceExample` as a
		whole, independent of time / frame.  In contrast, the `sequence_features` keys
		provide a way to access variable-length data within the `FeatureList` section
		of the `SequenceExample` proto.  While the shapes of `context_features` values
		are fixed with respect to frame, the frame dimension (the first dimension)
		of `sequence_features` values may vary between `SequenceExample` protos,
		and even between `feature_list` keys within the same `SequenceExample`.
		
		`context_features` contains `VarLenFeature`, `RaggedFeature`, and
		`FixedLenFeature`  objects. Each `VarLenFeature` is mapped to a
		`SparseTensor`; each `RaggedFeature` is  mapped to a `RaggedTensor`; and each
		`FixedLenFeature` is mapped to a `Tensor`, of the specified type, shape, and
		default value.
		
		`sequence_features` contains `VarLenFeature`, `RaggedFeature`, and
		`FixedLenSequenceFeature` objects. Each `VarLenFeature` is mapped to a
		`SparseTensor`; each `RaggedFeature` is mapped to a `RaggedTensor`; and
		each `FixedLenSequenceFeature` is mapped to a `Tensor`, each of the specified
		type. The shape will be `(B,T,) + df.dense_shape` for
		`FixedLenSequenceFeature` `df`, where `B` is the batch size, and `T` is the
		length of the associated `FeatureList` in the `SequenceExample`. For instance,
		`FixedLenSequenceFeature([])` yields a scalar 2-D `Tensor` of static shape
		`[None, None]` and dynamic shape `[B, T]`, while
		`FixedLenSequenceFeature([k])` (for `int k >= 1`) yields a 3-D matrix `Tensor`
		of static shape `[None, None, k]` and dynamic shape `[B, T, k]`.
		
		Like the input, the resulting output tensors have a batch dimension. This
		means that the original per-example shapes of `VarLenFeature`s and
		`FixedLenSequenceFeature`s can be lost. To handle that situation, this op also
		provides dicts of shape tensors as part of the output. There is one dict for
		the context features, and one for the feature_list features. Context features
		of type `FixedLenFeature`s will not be present, since their shapes are already
		known by the caller. In situations where the input `FixedLenSequenceFeature`s
		are of different sequence lengths across examples, the shorter examples will
		be padded with default datatype values: 0 for numeric types, and the empty
		string for string types.
		
		Each `SparseTensor` corresponding to `sequence_features` represents a ragged
		vector.  Its indices are `[time, index]`, where `time` is the `FeatureList`
		entry and `index` is the value's index in the list of values associated with
		that time.
		
		`FixedLenFeature` entries with a `default_value` and `FixedLenSequenceFeature`
		entries with `allow_missing=True` are optional; otherwise, we will fail if
		that `Feature` or `FeatureList` is missing from any example in `serialized`.
		
		`example_name` may contain a descriptive name for the corresponding serialized
		proto. This may be useful for debugging purposes, but it has no effect on the
		output. If not `None`, `example_name` must be a scalar.
		
		Args:
		  serialized: A vector (1-D Tensor) of type string containing binary
		    serialized `SequenceExample` protos.
		  context_features: A `dict` mapping feature keys to `FixedLenFeature` or
		    `VarLenFeature` or `RaggedFeature` values. These features are associated
		    with a `SequenceExample` as a whole.
		  sequence_features: A `dict` mapping feature keys to
		    `FixedLenSequenceFeature` or `VarLenFeature` or `RaggedFeature` values.
		    These features are associated with data within the `FeatureList` section
		    of the `SequenceExample` proto.
		  example_names: A vector (1-D Tensor) of strings (optional), the name of the
		    serialized protos.
		  name: A name for this operation (optional).
		
		Returns:
		  A tuple of three `dict`s, each mapping keys to `Tensor`s,
		  `SparseTensor`s, and `RaggedTensor`. The first dict contains the context
		  key/values, the second dict contains the feature_list key/values, and the
		  final dict contains the lengths of any dense feature_list features.
		
		Raises:
		  ValueError: if any feature is invalid.
	**/
	static public function parse_sequence_example(serialized:Dynamic, ?context_features:Dynamic, ?sequence_features:Dynamic, ?example_names:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Parses a single `Example` proto.
		
		Similar to `parse_example`, except:
		
		For dense tensors, the returned `Tensor` is identical to the output of
		`parse_example`, except there is no batch dimension, the output shape is the
		same as the shape given in `dense_shape`.
		
		For `SparseTensor`s, the first (batch) column of the indices matrix is removed
		(the indices matrix is a column vector), the values vector is unchanged, and
		the first (`batch_size`) entry of the shape vector is removed (it is now a
		single element vector).
		
		One might see performance advantages by batching `Example` protos with
		`parse_example` instead of using this function directly.
		
		Args:
		  serialized: A scalar string Tensor, a single serialized Example.
		  features: A `dict` mapping feature keys to `FixedLenFeature` or
		    `VarLenFeature` values.
		  example_names: (Optional) A scalar string Tensor, the associated name.
		  name: A name for this operation (optional).
		
		Returns:
		  A `dict` mapping feature keys to `Tensor` and `SparseTensor` values.
		
		Raises:
		  ValueError: if any feature is invalid.
	**/
	static public function parse_single_example(serialized:Dynamic, features:Dynamic, ?example_names:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Parses a single `SequenceExample` proto.
		
		Parses a single serialized [`SequenceExample`](https://www.tensorflow.org/code/tensorflow/core/example/example.proto)
		proto given in `serialized`.
		
		This op parses a serialized sequence example into a tuple of dictionaries,
		each mapping keys to `Tensor` and `SparseTensor` objects.
		The first dictionary contains mappings for keys appearing in
		`context_features`, and the second dictionary contains mappings for keys
		appearing in `sequence_features`.
		
		At least one of `context_features` and `sequence_features` must be provided
		and non-empty.
		
		The `context_features` keys are associated with a `SequenceExample` as a
		whole, independent of time / frame.  In contrast, the `sequence_features` keys
		provide a way to access variable-length data within the `FeatureList` section
		of the `SequenceExample` proto.  While the shapes of `context_features` values
		are fixed with respect to frame, the frame dimension (the first dimension)
		of `sequence_features` values may vary between `SequenceExample` protos,
		and even between `feature_list` keys within the same `SequenceExample`.
		
		`context_features` contains `VarLenFeature`, `RaggedFeature`, and
		`FixedLenFeature` objects. Each `VarLenFeature` is mapped to a `SparseTensor`;
		each `RaggedFeature` is mapped to a `RaggedTensor`; and each `FixedLenFeature`
		is mapped to a `Tensor`, of the specified type, shape, and default value.
		
		`sequence_features` contains `VarLenFeature`, `RaggedFeature`, and
		`FixedLenSequenceFeature` objects. Each `VarLenFeature` is mapped to a
		`SparseTensor`; each `RaggedFeature` is mapped to a `RaggedTensor`; and each
		`FixedLenSequenceFeature` is mapped to a `Tensor`, each of the specified type.
		The shape will be `(T,) + df.dense_shape` for `FixedLenSequenceFeature` `df`,
		where `T` is the length of the associated `FeatureList` in the
		`SequenceExample`. For instance, `FixedLenSequenceFeature([])` yields a scalar
		1-D `Tensor` of static shape `[None]` and dynamic shape `[T]`, while
		`FixedLenSequenceFeature([k])` (for `int k >= 1`) yields a 2-D matrix `Tensor`
		of static shape `[None, k]` and dynamic shape `[T, k]`.
		
		Each `SparseTensor` corresponding to `sequence_features` represents a ragged
		vector.  Its indices are `[time, index]`, where `time` is the `FeatureList`
		entry and `index` is the value's index in the list of values associated with
		that time.
		
		`FixedLenFeature` entries with a `default_value` and `FixedLenSequenceFeature`
		entries with `allow_missing=True` are optional; otherwise, we will fail if
		that `Feature` or `FeatureList` is missing from any example in `serialized`.
		
		`example_name` may contain a descriptive name for the corresponding serialized
		proto. This may be useful for debugging purposes, but it has no effect on the
		output. If not `None`, `example_name` must be a scalar.
		
		Note that the batch version of this function, `tf.parse_sequence_example`,
		is written for better memory efficiency and will be faster on large
		`SequenceExample`s.
		
		Args:
		  serialized: A scalar (0-D Tensor) of type string, a single binary
		    serialized `SequenceExample` proto.
		  context_features: A `dict` mapping feature keys to `FixedLenFeature` or
		    `VarLenFeature` or `RaggedFeature` values. These features are associated
		    with a `SequenceExample` as a whole.
		  sequence_features: A `dict` mapping feature keys to
		    `FixedLenSequenceFeature` or `VarLenFeature` or `RaggedFeature` values.
		    These features are associated with data within the `FeatureList` section
		    of the `SequenceExample` proto.
		  example_name: A scalar (0-D Tensor) of strings (optional), the name of
		    the serialized proto.
		  name: A name for this operation (optional).
		
		Returns:
		  A tuple of two `dict`s, each mapping keys to `Tensor`s and `SparseTensor`s
		  and `RaggedTensor`s.
		
		  * The first dict contains the context key/values.
		  * The second dict contains the feature_list key/values.
		
		Raises:
		  ValueError: if any feature is invalid.
	**/
	static public function parse_single_sequence_example(serialized:Dynamic, ?context_features:Dynamic, ?sequence_features:Dynamic, ?example_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Transforms a serialized tensorflow.TensorProto proto into a Tensor.
		
		Args:
		  serialized: A `Tensor` of type `string`.
		    A scalar string containing a serialized TensorProto proto.
		  out_type: A `tf.DType`.
		    The type of the serialized tensor.  The provided type must match the
		    type of the serialized tensor and no implicit conversion will take place.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `out_type`.
	**/
	static public function parse_tensor(serialized:Dynamic, out_type:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Reads the contents of file.
		
		This operation returns a tensor with the entire contents of the input
		filename. It does not do any parsing, it just returns the contents as
		they are. Usually, this is the first step in the input pipeline.
		
		Example:
		
		>>> with open("/tmp/file.txt", "w") as f:
		...   f.write("asdf")
		...
		4
		>>> tf.io.read_file("/tmp/file.txt")
		<tf.Tensor: shape=(), dtype=string, numpy=b'asdf'>
		
		Example of using the op in a function to read an image, decode it and reshape
		the tensor containing the pixel data:
		
		>>> @tf.function
		... def load_image(filename):
		...   raw = tf.io.read_file(filename)
		...   image = tf.image.decode_png(raw, channels=3)
		...   # the `print` executes during tracing.
		...   print("Initial shape: ", image.shape)
		...   image.set_shape([28, 28, 3])
		...   print("Final shape: ", image.shape)
		...   return image
		
		Args:
		  filename: string. filename to read from.
		  name: string.  Optional name for the op.
		
		Returns:
		  A tensor of dtype "string", with the file contents.
	**/
	static public function read_file(filename:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Serialize `N`-minibatch `SparseTensor` into an `[N, 3]` `Tensor`.
		
		The `SparseTensor` must have rank `R` greater than 1, and the first dimension
		is treated as the minibatch dimension.  Elements of the `SparseTensor`
		must be sorted in increasing order of this first dimension.  The serialized
		`SparseTensor` objects going into each row of the output `Tensor` will have
		rank `R-1`.
		
		The minibatch size `N` is extracted from `sparse_shape[0]`.
		
		Args:
		  sp_input: The input rank `R` `SparseTensor`.
		  out_type: The `dtype` to use for serialization.
		  name: A name prefix for the returned tensors (optional).
		
		Returns:
		  A matrix (2-D `Tensor`) with `N` rows and `3` columns. Each column
		  represents serialized `SparseTensor`'s indices, values, and shape
		  (respectively).
		
		Raises:
		  TypeError: If `sp_input` is not a `SparseTensor`.
	**/
	static public function serialize_many_sparse(sp_input:Dynamic, ?out_type:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Serialize a `SparseTensor` into a 3-vector (1-D `Tensor`) object.
		
		Args:
		  sp_input: The input `SparseTensor`.
		  out_type: The `dtype` to use for serialization.
		  name: A name prefix for the returned tensors (optional).
		
		Returns:
		  A 3-vector (1-D `Tensor`), with each column representing the serialized
		  `SparseTensor`'s indices, values, and shape (respectively).
		
		Raises:
		  TypeError: If `sp_input` is not a `SparseTensor`.
	**/
	static public function serialize_sparse(sp_input:Dynamic, ?out_type:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Transforms a Tensor into a serialized TensorProto proto.
		
		This operation transforms data in a `tf.Tensor` into a `tf.Tensor` of type
		`tf.string` containing the data in a binary string format. This operation can
		transform scalar data and linear arrays, but it is most useful in converting
		multidimensional arrays into a format accepted by binary storage formats such
		as a `TFRecord` or `tf.train.Example`.
		
		See also:
		- `tf.io.parse_tensor`: inverse operation of `tf.io.serialize_tensor` that
		transforms a scalar string containing a serialized Tensor into a Tensor of a
		specified type.
		- `tf.ensure_shape`: `parse_tensor` cannot statically determine the shape of
		the parsed tensor. Use `tf.ensure_shape` to set the static shape when running
		under a `tf.function`
		- `.SerializeToString`, serializes a proto to a binary-string
		
		Example of serializing scalar data:
		
		>>> t = tf.constant(1)
		>>> tf.io.serialize_tensor(t)
		<tf.Tensor: shape=(), dtype=string, numpy=b'\x08...\x00'>
		
		Example of storing non-scalar data into a `tf.train.Example`:
		
		>>> t1 = [[1, 2]]
		>>> t2 = [[7, 8]]
		>>> nonscalar = tf.concat([t1, t2], 0)
		>>> nonscalar
		<tf.Tensor: shape=(2, 2), dtype=int32, numpy=
		array([[1, 2],
		       [7, 8]], dtype=int32)>
		
		Serialize the data using `tf.io.serialize_tensor`.
		
		>>> serialized_nonscalar = tf.io.serialize_tensor(nonscalar)
		>>> serialized_nonscalar
		<tf.Tensor: shape=(), dtype=string, numpy=b'\x08...\x00'>
		
		Store the data in a `tf.train.Feature`.
		
		>>> feature_of_bytes = tf.train.Feature(
		...   bytes_list=tf.train.BytesList(value=[serialized_nonscalar.numpy()]))
		>>> feature_of_bytes
		bytes_list {
		  value: "\010...\000"
		}
		
		Put the `tf.train.Feature` message into a `tf.train.Example`.
		
		>>> features_for_example = {
		...   'feature0': feature_of_bytes
		... }
		>>> example_proto = tf.train.Example(
		...   features=tf.train.Features(feature=features_for_example))
		>>> example_proto
		features {
		  feature {
		    key: "feature0"
		    value {
		      bytes_list {
		        value: "\010...\000"
		      }
		    }
		  }
		}
		
		Args:
		  tensor: A `tf.Tensor`.
		  name: string.  Optional name for the op.
		
		Returns:
		  A Tensor of dtype string.
	**/
	static public function serialize_tensor(tensor:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Writes contents to the file at input filename. Creates file and recursively
		
		creates directory if not existing.
		
		Args:
		  filename: A `Tensor` of type `string`.
		    scalar. The name of the file to which we write the contents.
		  contents: A `Tensor` of type `string`.
		    scalar. The content to be written to the output file.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function write_file(filename:Dynamic, contents:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Writes a graph proto to a file.
		
		The graph is written as a text proto unless `as_text` is `False`.
		
		```python
		v = tf.Variable(0, name='my_variable')
		sess = tf.compat.v1.Session()
		tf.io.write_graph(sess.graph_def, '/tmp/my-model', 'train.pbtxt')
		```
		
		or
		
		```python
		v = tf.Variable(0, name='my_variable')
		sess = tf.compat.v1.Session()
		tf.io.write_graph(sess.graph, '/tmp/my-model', 'train.pbtxt')
		```
		
		Args:
		  graph_or_graph_def: A `Graph` or a `GraphDef` protocol buffer.
		  logdir: Directory where to write the graph. This can refer to remote
		    filesystems, such as Google Cloud Storage (GCS).
		  name: Filename for the graph.
		  as_text: If `True`, writes the graph as an ASCII proto.
		
		Returns:
		  The path of the output proto file.
	**/
	static public function write_graph(graph_or_graph_def:Dynamic, logdir:Dynamic, name:Dynamic, ?as_text:Dynamic):Dynamic;
}