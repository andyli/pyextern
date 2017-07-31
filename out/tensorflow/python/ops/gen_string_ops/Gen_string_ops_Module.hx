/* This file is generated, do not edit! */
package tensorflow.python.ops.gen_string_ops;
@:pythonImport("tensorflow.python.ops.gen_string_ops") extern class Gen_string_ops_Module {
	static public function _InitOpDefLibrary():Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var __string_split_outputs : Dynamic;
	static public var _op_def_lib : Dynamic;
	/**
		Split elements of `input` based on `delimiter` into a `SparseTensor`.
		
		Let N be the size of source (typically N will be the batch size). Split each
		element of `input` based on `delimiter` and return a `SparseTensor`
		containing the splitted tokens. Empty tokens are ignored.
		
		`delimiter` can be empty, or a string of split characters. If `delimiter` is an
		 empty string, each element of `input` is split into individual single-byte
		 character strings, including splitting of UTF-8 multibyte sequences. Otherwise
		 every character of `delimiter` is a potential split point.
		
		For example:
		  N = 2, input[0] is 'hello world' and input[1] is 'a b c', then the output
		  will be
		
		  indices = [0, 0;
		             0, 1;
		             1, 0;
		             1, 1;
		             1, 2]
		  shape = [2, 3]
		  values = ['hello', 'world', 'a', 'b', 'c']
		
		Args:
		  input: A `Tensor` of type `string`. 1-D. Strings to split.
		  delimiter: A `Tensor` of type `string`.
		    0-D. Delimiter characters (bytes), or empty string.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (indices, values, shape).
		
		  indices: A `Tensor` of type `int64`. A dense matrix of int64 representing the indices of the sparse tensor.
		  values: A `Tensor` of type `string`. A vector of strings corresponding to the splited values.
		  shape: A `Tensor` of type `int64`. a length-2 vector of int64 representing the shape of the sparse
		    tensor, where the first value is N and the second value is the maximum number
		    of tokens in a single input entry.
	**/
	static public function _string_split(input:Dynamic, delimiter:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Converts each entry in the given tensor to strings.  Supports many numeric
		
		types and boolean.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `int32`, `int64`, `complex64`, `float32`, `float64`, `bool`, `int8`.
		  precision: An optional `int`. Defaults to `-1`.
		    The post-decimal precision to use for floating point numbers.
		    Only used if precision > -1.
		  scientific: An optional `bool`. Defaults to `False`.
		    Use scientific notation for floating point numbers.
		  shortest: An optional `bool`. Defaults to `False`.
		    Use shortest representation (either scientific or standard) for
		    floating point numbers.
		  width: An optional `int`. Defaults to `-1`.
		    Pad pre-decimal numbers to this width.
		    Applies to both floating point and integer numbers.
		    Only used if width > -1.
		  fill: An optional `string`. Defaults to `""`.
		    The value to pad if width > -1.  If empty, pads with spaces.
		    Another typical value is '0'.  String cannot be longer than 1 character.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `string`.
	**/
	static public function as_string(input:Dynamic, ?precision:Dynamic, ?scientific:Dynamic, ?shortest:Dynamic, ?width:Dynamic, ?fill:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Decode web-safe base64-encoded strings.
		
		Input may or may not have padding at the end. See EncodeBase64 for padding.
		Web-safe means that input must use - and _ instead of + and /.
		
		Args:
		  input: A `Tensor` of type `string`. Base64 strings to decode.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `string`. Decoded strings.
	**/
	static public function decode_base64(input:Dynamic, ?name:Dynamic):Dynamic;
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
		  A `Tensor` of type `string`. Input strings encoded in base64.
	**/
	static public function encode_base64(input:Dynamic, ?pad:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Joins a string Tensor across the given dimensions.
		
		Computes the string join across dimensions in the given string Tensor of shape
		`[d_0, d_1, ..., d_n-1]`.  Returns a new Tensor created by joining the input
		strings with the given separator (default: empty string).  Negative indices are
		counted backwards from the end, with `-1` being equivalent to `n - 1`.
		
		For example:
		
		```python
		# tensor `a` is [["a", "b"], ["c", "d"]]
		tf.reduce_join(a, 0) ==> ["ac", "bd"]
		tf.reduce_join(a, 1) ==> ["ab", "cd"]
		tf.reduce_join(a, -2) = tf.reduce_join(a, 0) ==> ["ac", "bd"]
		tf.reduce_join(a, -1) = tf.reduce_join(a, 1) ==> ["ab", "cd"]
		tf.reduce_join(a, 0, keep_dims=True) ==> [["ac", "bd"]]
		tf.reduce_join(a, 1, keep_dims=True) ==> [["ab"], ["cd"]]
		tf.reduce_join(a, 0, separator=".") ==> ["a.c", "b.d"]
		tf.reduce_join(a, [0, 1]) ==> ["acbd"]
		tf.reduce_join(a, [1, 0]) ==> ["abcd"]
		tf.reduce_join(a, []) ==> ["abcd"]
		```
		
		Args:
		  inputs: A `Tensor` of type `string`.
		    The input to be joined.  All reduced indices must have non-zero size.
		  reduction_indices: A `Tensor` of type `int32`.
		    The dimensions to reduce over.  Dimensions are reduced in the
		    order specified.  Omitting `reduction_indices` is equivalent to passing
		    `[n-1, n-2, ..., 0]`.  Negative indices from `-n` to `-1` are supported.
		  keep_dims: An optional `bool`. Defaults to `False`.
		    If `True`, retain reduced dimensions with length `1`.
		  separator: An optional `string`. Defaults to `""`.
		    The separator to use when joining.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `string`.
		  Has shape equal to that of the input with reduced dimensions removed or
		  set to `1` depending on `keep_dims`.
	**/
	static public function reduce_join(inputs:Dynamic, reduction_indices:Dynamic, ?keep_dims:Dynamic, ?separator:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Joins the strings in the given list of string tensors into one tensor;
		
		with the given separator (default is an empty separator).
		
		Args:
		  inputs: A list of at least 1 `Tensor` objects with type `string`.
		    A list of string tensors.  The tensors must all have the same shape,
		    or be scalars.  Scalars may be mixed in; these will be broadcast to the shape
		    of non-scalar inputs.
		  separator: An optional `string`. Defaults to `""`.
		    string, an optional join separator.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `string`.
	**/
	static public function string_join(inputs:Dynamic, ?separator:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Converts each string in the input Tensor to its hash mod by a number of buckets.
		
		The hash function is deterministic on the content of the string within the
		process.
		
		Note that the hash function may change from time to time.
		This functionality will be deprecated and it's recommended to use
		`tf.string_to_hash_bucket_fast()` or `tf.string_to_hash_bucket_strong()`.
		
		Args:
		  string_tensor: A `Tensor` of type `string`.
		  num_buckets: An `int` that is `>= 1`. The number of buckets.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `int64`.
		  A Tensor of the same shape as the input `string_tensor`.
	**/
	static public function string_to_hash_bucket(string_tensor:Dynamic, num_buckets:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Converts each string in the input Tensor to its hash mod by a number of buckets.
		
		The hash function is deterministic on the content of the string within the
		process and will never change. However, it is not suitable for cryptography.
		This function may be used when CPU time is scarce and inputs are trusted or
		unimportant. There is a risk of adversaries constructing inputs that all hash
		to the same bucket. To prevent this problem, use a strong hash function with
		`tf.string_to_hash_bucket_strong`.
		
		Args:
		  input: A `Tensor` of type `string`. The strings to assign a hash bucket.
		  num_buckets: An `int` that is `>= 1`. The number of buckets.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `int64`.
		  A Tensor of the same shape as the input `string_tensor`.
	**/
	static public function string_to_hash_bucket_fast(input:Dynamic, num_buckets:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Converts each string in the input Tensor to its hash mod by a number of buckets.
		
		The hash function is deterministic on the content of the string within the
		process. The hash function is a keyed hash function, where attribute `key`
		defines the key of the hash function. `key` is an array of 2 elements.
		
		A strong hash is important when inputs may be malicious, e.g. URLs with
		additional components. Adversaries could try to make their inputs hash to the
		same bucket for a denial-of-service attack or to skew the results. A strong
		hash prevents this by making it difficult, if not infeasible, to compute inputs
		that hash to the same bucket. This comes at a cost of roughly 4x higher compute
		time than `tf.string_to_hash_bucket_fast`.
		
		Args:
		  input: A `Tensor` of type `string`. The strings to assign a hash bucket.
		  num_buckets: An `int` that is `>= 1`. The number of buckets.
		  key: A list of `ints`.
		    The key for the keyed hash function passed as a list of two uint64
		    elements.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `int64`.
		  A Tensor of the same shape as the input `string_tensor`.
	**/
	static public function string_to_hash_bucket_strong(input:Dynamic, num_buckets:Dynamic, key:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Return substrings from `Tensor` of strings.
		
		For each string in the input `Tensor`, creates a substring starting at index
		`pos` with a total length of `len`.
		
		If `len` defines a substring that would extend beyond the length of the input
		string, then as many characters as possible are used.
		
		If `pos` is negative or specifies a character index larger than any of the input
		strings, then an `InvalidArgumentError` is thrown.
		
		`pos` and `len` must have the same shape, otherwise a `ValueError` is thrown on
		Op creation.
		
		*NOTE*: `Substr` supports broadcasting up to two dimensions. More about
		broadcasting
		[here](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html)
		
		---
		
		Examples
		
		Using scalar `pos` and `len`:
		
		```python
		input = [b'Hello', b'World']
		position = 1
		length = 3
		
		output = [b'ell', b'orl']
		```
		
		Using `pos` and `len` with same shape as `input`:
		
		```python
		input = [[b'ten', b'eleven', b'twelve'],
		         [b'thirteen', b'fourteen', b'fifteen'],
		         [b'sixteen', b'seventeen', b'eighteen']]
		position = [[1, 2, 3],
		            [1, 2, 3],
		            [1, 2, 3]]
		length =   [[2, 3, 4],
		            [4, 3, 2],
		            [5, 5, 5]]
		
		output = [[b'en', b'eve', b'lve'],
		          [b'hirt', b'urt', b'te'],
		          [b'ixtee', b'vente', b'hteen']]
		```
		
		Broadcasting `pos` and `len` onto `input`:
		
		```
		input = [[b'ten', b'eleven', b'twelve'],
		         [b'thirteen', b'fourteen', b'fifteen'],
		         [b'sixteen', b'seventeen', b'eighteen'],
		         [b'nineteen', b'twenty', b'twentyone']]
		position = [1, 2, 3]
		length =   [1, 2, 3]
		
		output = [[b'e', b'ev', b'lve'],
		          [b'h', b'ur', b'tee'],
		          [b'i', b've', b'hte'],
		          [b'i', b'en', b'nty']]
		```
		
		Broadcasting `input` onto `pos` and `len`:
		
		```
		input = b'thirteen'
		position = [1, 5, 7]
		length =   [3, 2, 1]
		
		output = [b'hir', b'ee', b'n"]
		```
		
		Args:
		  input: A `Tensor` of type `string`. Tensor of strings
		  pos: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    Scalar defining the position of first character in each substring
		  len: A `Tensor`. Must have the same type as `pos`.
		    Scalar defining the number of characters to include in each substring
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `string`. Tensor of substrings
	**/
	static public function substr(input:Dynamic, pos:Dynamic, len:Dynamic, ?name:Dynamic):Dynamic;
}