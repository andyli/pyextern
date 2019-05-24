/* This file is generated, do not edit! */
package tensorflow.python.ops.string_ops;
@:pythonImport("tensorflow.python.ops.string_ops") extern class String_ops_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Returns range(rank(x) - 1, 0, -1) if reduction_indices is None.
	**/
	static public function _reduce_join_reduction_dims(x:Dynamic, axis:Dynamic, reduction_indices:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Converts each entry in the given tensor to strings.  Supports many numeric
		
		types and boolean.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `int8`, `int16`, `int32`, `int64`, `complex64`, `complex128`, `float32`, `float64`, `bool`.
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
		This is the slowpath function for Eager mode.
		This is for function as_string
	**/
	static public function as_string_eager_fallback(input:Dynamic, ?precision:Dynamic, ?scientific:Dynamic, ?shortest:Dynamic, ?width:Dynamic, ?fill:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
		This is the slowpath function for Eager mode.
		This is for function decode_base64
	**/
	static public function decode_base64_eager_fallback(input:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Decorator for marking endpoints deprecated.
		
		This decorator does not print deprecation messages.
		TODO(annarev): eventually start printing deprecation warnings when
		@deprecation_endpoints decorator is added.
		
		Args:
		  *args: Deprecated endpoint names.
		
		Returns:
		  A function that takes symbol as an argument and adds
		  _tf_deprecated_api_names to that symbol.
		  _tf_deprecated_api_names would be set to a list of deprecated
		  endpoint names for the symbol.
	**/
	static public function deprecated_endpoints(?args:python.VarArgs<Dynamic>):Dynamic;
	static public var division : Dynamic;
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
		This is the slowpath function for Eager mode.
		This is for function encode_base64
	**/
	static public function encode_base64_eager_fallback(input:Dynamic, ?pad:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Joins a string Tensor across the given dimensions.
		
		Computes the string join across dimensions in the given string Tensor of shape
		`[\\(d_0, d_1, ..., d_{n-1}\\)]`.  Returns a new Tensor created by joining the input
		strings with the given separator (default: empty string).  Negative indices are
		counted backwards from the end, with `-1` being equivalent to `n - 1`.  If
		indices are not specified, joins across all dimensions beginning from `n - 1`
		through `0`.
		
		For example:
		
		```python
		# tensor `a` is [["a", "b"], ["c", "d"]]
		tf.strings.reduce_join(a, 0) ==> ["ac", "bd"]
		tf.strings.reduce_join(a, 1) ==> ["ab", "cd"]
		tf.strings.reduce_join(a, -2) = tf.strings.reduce_join(a, 0) ==> ["ac", "bd"]
		tf.strings.reduce_join(a, -1) = tf.strings.reduce_join(a, 1) ==> ["ab", "cd"]
		tf.strings.reduce_join(a, 0, keep_dims=True) ==> [["ac", "bd"]]
		tf.strings.reduce_join(a, 1, keep_dims=True) ==> [["ab"], ["cd"]]
		tf.strings.reduce_join(a, 0, separator=".") ==> ["a.c", "b.d"]
		tf.strings.reduce_join(a, [0, 1]) ==> "acbd"
		tf.strings.reduce_join(a, [1, 0]) ==> "abcd"
		tf.strings.reduce_join(a, []) ==> [["a", "b"], ["c", "d"]]
		tf.strings.reduce_join(a) = tf.strings.reduce_join(a, [1, 0]) ==> "abcd"
		```
		
		Args:
		  inputs: A `Tensor` of type `string`.
		    The input to be joined.  All reduced indices must have non-zero size.
		  axis: A `Tensor` of type `int32`.
		    The dimensions to reduce over.  Dimensions are reduced in the
		    order specified.  Omitting `axis` is equivalent to passing
		    `[n-1, n-2, ..., 0]`.  Negative indices from `-n` to `-1` are supported.
		  keep_dims: An optional `bool`. Defaults to `False`.
		    If `True`, retain reduced dimensions with length `1`.
		  separator: An optional `string`. Defaults to `""`.
		    The separator to use when joining.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `string`.
	**/
	static public function reduce_join(inputs:Dynamic, ?axis:Dynamic, ?keep_dims:Dynamic, ?separator:Dynamic, ?name:Dynamic, ?reduction_indices:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function reduce_join
	**/
	static public function reduce_join_eager_fallback(inputs:Dynamic, reduction_indices:Dynamic, ?keep_dims:Dynamic, ?separator:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	static public function reduce_join_v2(inputs:Dynamic, ?axis:Dynamic, ?keepdims:Dynamic, ?separator:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Check if the input matches the regex pattern.
		
		The input is a string tensor of any shape. The pattern is a scalar
		string tensor which is applied to every element of the input tensor.
		The boolean values (True or False) of the output tensor indicate
		if the input matches the regex pattern provided.
		
		The pattern follows the re2 syntax (https://github.com/google/re2/wiki/Syntax)
		
		Args:
		  input: A `Tensor` of type `string`.
		    A string tensor of the text to be processed.
		  pattern: A `Tensor` of type `string`.
		    A scalar string tensor containing the regular expression to match the input.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `bool`.
	**/
	static public function regex_full_match(input:Dynamic, pattern:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function regex_full_match
	**/
	static public function regex_full_match_eager_fallback(input:Dynamic, pattern:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Replace elements of `input` matching regex `pattern` with `rewrite`.
		
		Args:
		  input: string `Tensor`, the source strings to process.
		  pattern: string or scalar string `Tensor`, regular expression to use,
		    see more details at https://github.com/google/re2/wiki/Syntax
		  rewrite: string or scalar string `Tensor`, value to use in match
		    replacement, supports backslash-escaped digits (\1 to \9) can be to insert
		    text matching corresponding parenthesized group.
		  replace_global: `bool`, if `True` replace all non-overlapping matches,
		    else replace only the first match.
		  name: A name for the operation (optional).
		
		Returns:
		  string `Tensor` of the same shape as `input` with specified replacements.
	**/
	static public function regex_replace(input:Dynamic, pattern:Dynamic, rewrite:Dynamic, ?replace_global:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function regex_replace
	**/
	static public function regex_replace_eager_fallback(input:Dynamic, pattern:Dynamic, rewrite:Dynamic, ?replace_global:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Check if the input matches the regex pattern.
		
		The input is a string tensor of any shape. The pattern is the
		regular expression to be matched with every element of the input tensor.
		The boolean values (True or False) of the output tensor indicate
		if the input matches the regex pattern provided.
		
		The pattern follows the re2 syntax (https://github.com/google/re2/wiki/Syntax)
		
		Args:
		  input: A `Tensor` of type `string`.
		    A string tensor of the text to be processed.
		  pattern: A `string`. The regular expression to match the input.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `bool`.
	**/
	static public function static_regex_full_match(input:Dynamic, pattern:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function static_regex_full_match
	**/
	static public function static_regex_full_match_eager_fallback(input:Dynamic, pattern:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Replaces the match of pattern in input with rewrite.
		
		It follows the re2 syntax (https://github.com/google/re2/wiki/Syntax)
		
		Args:
		  input: A `Tensor` of type `string`. The text to be processed.
		  pattern: A `string`. The regular expression to match the input.
		  rewrite: A `string`. The rewrite to be applied to the matched expresion.
		  replace_global: An optional `bool`. Defaults to `True`.
		    If True, the replacement is global, otherwise the replacement
		    is done only on the first match.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `string`.
	**/
	static public function static_regex_replace(input:Dynamic, pattern:Dynamic, rewrite:Dynamic, ?replace_global:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function static_regex_replace
	**/
	static public function static_regex_replace_eager_fallback(input:Dynamic, pattern:Dynamic, rewrite:Dynamic, ?replace_global:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Formats a string template using a list of tensors.
		
		Formats a string template using a list of tensors, abbreviating tensors by
		only printing the first and last `summarize` elements of each dimension
		(recursively). If formatting only one tensor into a template, the tensor does
		not have to be wrapped in a list.
		
		Example:
		  Formatting a single-tensor template:
		  ```python
		  sess = tf.Session()
		  with sess.as_default():
		      tensor = tf.range(10)
		      formatted = tf.strings.format("tensor: {}, suffix", tensor)
		      out = sess.run(formatted)
		      expected = "tensor: [0 1 2 ... 7 8 9], suffix"
		
		      assert(out.decode() == expected)
		  ```
		
		  Formatting a multi-tensor template:
		  ```python
		  sess = tf.Session()
		  with sess.as_default():
		      tensor_one = tf.reshape(tf.range(100), [10, 10])
		      tensor_two = tf.range(10)
		      formatted = tf.strings.format("first: {}, second: {}, suffix",
		        (tensor_one, tensor_two))
		
		      out = sess.run(formatted)
		      expected = ("first: [[0 1 2 ... 7 8 9]\n"
		            " [10 11 12 ... 17 18 19]\n"
		            " [20 21 22 ... 27 28 29]\n"
		            " ...\n"
		            " [70 71 72 ... 77 78 79]\n"
		            " [80 81 82 ... 87 88 89]\n"
		            " [90 91 92 ... 97 98 99]], second: [0 1 2 ... 7 8 9], suffix")
		
		      assert(out.decode() == expected)
		  ```
		
		Args:
		  template: A string template to format tensor values into.
		  inputs: A list of `Tensor` objects, or a single Tensor.
		    The list of tensors to format into the template string. If a solitary
		    tensor is passed in, the input tensor will automatically be wrapped as a
		    list.
		  placeholder: An optional `string`. Defaults to `{}`.
		    At each placeholder occurring in the template, a subsequent tensor
		    will be inserted.
		  summarize: An optional `int`. Defaults to `3`.
		    When formatting the tensors, show the first and last `summarize`
		    entries of each tensor dimension (recursively). If set to -1, all
		    elements of the tensor will be shown.
		  name: A name for the operation (optional).
		
		Returns:
		  A scalar `Tensor` of type `string`.
		
		Raises:
		  ValueError: if the number of placeholders does not match the number of
		    inputs.
	**/
	static public function string_format(template:Dynamic, inputs:Dynamic, ?placeholder:Dynamic, ?summarize:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function string_format
	**/
	static public function string_format_eager_fallback(inputs:Dynamic, ?template:Dynamic, ?placeholder:Dynamic, ?summarize:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
		This is the slowpath function for Eager mode.
		This is for function string_join
	**/
	static public function string_join_eager_fallback(inputs:Dynamic, ?separator:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		String lengths of `input`.
		
		Computes the length of each string given in the input tensor.
		
		Args:
		  input: A `Tensor` of type `string`.
		    The string for which to compute the length.
		  unit: An optional `string` from: `"BYTE", "UTF8_CHAR"`. Defaults to `"BYTE"`.
		    The unit that is counted to compute string length.  One of: `"BYTE"` (for
		    the number of bytes in each string) or `"UTF8_CHAR"` (for the number of UTF-8
		    encoded Unicode code points in each string).  Results are undefined
		    if `unit=UTF8_CHAR` and the `input` strings do not contain structurally
		    valid UTF-8.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `int32`.
	**/
	static public function string_length(input:Dynamic, ?name:Dynamic, ?unit:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function string_length
	**/
	static public function string_length_eager_fallback(input:Dynamic, ?unit:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	static public function string_length_v2(input:Dynamic, ?unit:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Split elements of `source` based on `delimiter` into a `SparseTensor`.
		
		Let N be the size of source (typically N will be the batch size). Split each
		element of `source` based on `delimiter` and return a `SparseTensor`
		containing the split tokens. Empty tokens are ignored.
		
		If `delimiter` is an empty string, each element of the `source` is split
		into individual strings, each containing one byte. (This includes splitting
		multibyte sequences of UTF-8.) If delimiter contains multiple bytes, it is
		treated as a set of delimiters with each considered a potential split point.
		
		For example:
		N = 2, source[0] is 'hello world' and source[1] is 'a b c', then the output
		will be
		
		st.indices = [0, 0;
		              0, 1;
		              1, 0;
		              1, 1;
		              1, 2]
		st.shape = [2, 3]
		st.values = ['hello', 'world', 'a', 'b', 'c']
		
		Args:
		  source: `1-D` string `Tensor`, the strings to split.
		  delimiter: `0-D` string `Tensor`, the delimiter character, the string should
		    be length 0 or 1.
		  skip_empty: A `bool`. If `True`, skip the empty strings from the result.
		
		Raises:
		  ValueError: If delimiter is not a string.
		
		Returns:
		  A `SparseTensor` of rank `2`, the strings split according to the delimiter.
		  The first column of the indices corresponds to the row in `source` and the
		  second column corresponds to the index of the split component in this row.
	**/
	static public function string_split(source:Dynamic, ?delimiter:Dynamic, ?skip_empty:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function string_split
	**/
	static public function string_split_eager_fallback(input:Dynamic, delimiter:Dynamic, ?skip_empty:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Split elements of `source` based on `sep` into a `SparseTensor`.
		
		Let N be the size of source (typically N will be the batch size). Split each
		element of `source` based on `sep` and return a `SparseTensor`
		containing the split tokens. Empty tokens are ignored.
		
		For example, N = 2, source[0] is 'hello world' and source[1] is 'a b c',
		then the output will be
		
		st.indices = [0, 0;
		              0, 1;
		              1, 0;
		              1, 1;
		              1, 2]
		st.shape = [2, 3]
		st.values = ['hello', 'world', 'a', 'b', 'c']
		
		If `sep` is given, consecutive delimiters are not grouped together and are
		deemed to delimit empty strings. For example, source of `"1<>2<><>3"` and
		sep of `"<>"` returns `["1", "2", "", "3"]`. If `sep` is None or an empty
		string, consecutive whitespace are regarded as a single separator, and the
		result will contain no empty strings at the startor end if the string has
		leading or trailing whitespace.
		
		Note that the above mentioned behavior matches python's str.split.
		
		Args:
		  source: `1-D` string `Tensor`, the strings to split.
		  sep: `0-D` string `Tensor`, the delimiter character.
		  maxsplit: An `int`. If `maxsplit > 0`, limit of the split of the result.
		
		Raises:
		  ValueError: If sep is not a string.
		
		Returns:
		  A `SparseTensor` of rank `2`, the strings split according to the delimiter.
		  The first column of the indices corresponds to the row in `source` and the
		  second column corresponds to the index of the split component in this row.
	**/
	static public function string_split_v2(source:Dynamic, ?sep:Dynamic, ?maxsplit:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function string_split_v2
	**/
	static public function string_split_v2_eager_fallback(input:Dynamic, sep:Dynamic, ?maxsplit:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Strip leading and trailing whitespaces from the Tensor.
		
		Args:
		  input: A `Tensor` of type `string`. A string `Tensor` of any shape.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `string`.
	**/
	static public function string_strip(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function string_strip
	**/
	static public function string_strip_eager_fallback(input:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Converts each string in the input Tensor to its hash mod by a number of buckets.
		
		The hash function is deterministic on the content of the string within the
		process.
		
		Note that the hash function may change from time to time.
		This functionality will be deprecated and it's recommended to use
		`tf.string_to_hash_bucket_fast()` or `tf.string_to_hash_bucket_strong()`.
		
		Args:
		  input: A `Tensor` of type `string`.
		  num_buckets: An `int` that is `>= 1`. The number of buckets.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `int64`.
	**/
	static public function string_to_hash_bucket(input:Dynamic, num_buckets:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function string_to_hash_bucket
	**/
	static public function string_to_hash_bucket_eager_fallback(string_tensor:Dynamic, num_buckets:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	**/
	static public function string_to_hash_bucket_fast(input:Dynamic, num_buckets:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function string_to_hash_bucket_fast
	**/
	static public function string_to_hash_bucket_fast_eager_fallback(input:Dynamic, num_buckets:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
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
	**/
	static public function string_to_hash_bucket_strong(input:Dynamic, num_buckets:Dynamic, key:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function string_to_hash_bucket_strong
	**/
	static public function string_to_hash_bucket_strong_eager_fallback(input:Dynamic, num_buckets:Dynamic, key:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Converts each string in the input Tensor to the specified numeric type.
		
		(Note that int32 overflow results in an error while float overflow
		results in a rounded value.)
		
		Args:
		  input: A `Tensor` of type `string`.
		  out_type: An optional `tf.DType` from: `tf.float32, tf.float64, tf.int32,
		    tf.int64`. Defaults to `tf.float32`.
		    The numeric type to interpret each string in `string_tensor` as.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `out_type`.
	**/
	static public function string_to_number(input:Dynamic, ?out_type:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Return substrings from `Tensor` of strings.
		
		For each string in the input `Tensor`, creates a substring starting at index
		`pos` with a total length of `len`.
		
		If `len` defines a substring that would extend beyond the length of the input
		string, then as many characters as possible are used.
		
		A negative `pos` indicates distance within the string backwards from the end.
		
		If `pos` specifies an index which is out of range for any of the input strings,
		then an `InvalidArgumentError` is thrown.
		
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
		
		output = [b'hir', b'ee', b'n']
		```
		
		Args:
		  input: A `Tensor` of type `string`. Tensor of strings
		  pos: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    Scalar defining the position of first character in each substring
		  len: A `Tensor`. Must have the same type as `pos`.
		    Scalar defining the number of characters to include in each substring
		  unit: An optional `string` from: `"BYTE", "UTF8_CHAR"`. Defaults to `"BYTE"`.
		    The unit that is used to create the substring.  One of: `"BYTE"` (for
		    defining position and length by bytes) or `"UTF8_CHAR"` (for the UTF-8
		    encoded Unicode code points).  The default is `"BYTE"`. Results are undefined if
		    `unit=UTF8_CHAR` and the `input` strings do not contain structurally valid
		    UTF-8.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `string`.
	**/
	static public function substr(input:Dynamic, pos:Dynamic, len:Dynamic, ?name:Dynamic, ?unit:Dynamic):Dynamic;
	/**
		Return substrings from `Tensor` of strings.
		
		For each string in the input `Tensor`, creates a substring starting at index
		`pos` with a total length of `len`.
		
		If `len` defines a substring that would extend beyond the length of the input
		string, then as many characters as possible are used.
		
		A negative `pos` indicates distance within the string backwards from the end.
		
		If `pos` specifies an index which is out of range for any of the input strings,
		then an `InvalidArgumentError` is thrown.
		
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
		
		output = [b'hir', b'ee', b'n']
		```
		
		Args:
		  input: A `Tensor` of type `string`. Tensor of strings
		  pos: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    Scalar defining the position of first character in each substring
		  len: A `Tensor`. Must have the same type as `pos`.
		    Scalar defining the number of characters to include in each substring
		  unit: An optional `string` from: `"BYTE", "UTF8_CHAR"`. Defaults to `"BYTE"`.
		    The unit that is used to create the substring.  One of: `"BYTE"` (for
		    defining position and length by bytes) or `"UTF8_CHAR"` (for the UTF-8
		    encoded Unicode code points).  The default is `"BYTE"`. Results are undefined if
		    `unit=UTF8_CHAR` and the `input` strings do not contain structurally valid
		    UTF-8.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `string`.
	**/
	static public function substr_deprecated(input:Dynamic, pos:Dynamic, len:Dynamic, ?name:Dynamic, ?unit:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function substr
	**/
	static public function substr_eager_fallback(input:Dynamic, pos:Dynamic, len:Dynamic, ?unit:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Return substrings from `Tensor` of strings.
		
		For each string in the input `Tensor`, creates a substring starting at index
		`pos` with a total length of `len`.
		
		If `len` defines a substring that would extend beyond the length of the input
		string, then as many characters as possible are used.
		
		A negative `pos` indicates distance within the string backwards from the end.
		
		If `pos` specifies an index which is out of range for any of the input strings,
		then an `InvalidArgumentError` is thrown.
		
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
		
		output = [b'hir', b'ee', b'n']
		```
		
		Args:
		  input: A `Tensor` of type `string`. Tensor of strings
		  pos: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    Scalar defining the position of first character in each substring
		  len: A `Tensor`. Must have the same type as `pos`.
		    Scalar defining the number of characters to include in each substring
		  unit: An optional `string` from: `"BYTE", "UTF8_CHAR"`. Defaults to `"BYTE"`.
		    The unit that is used to create the substring.  One of: `"BYTE"` (for
		    defining position and length by bytes) or `"UTF8_CHAR"` (for the UTF-8
		    encoded Unicode code points).  The default is `"BYTE"`. Results are undefined if
		    `unit=UTF8_CHAR` and the `input` strings do not contain structurally valid
		    UTF-8.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `string`.
	**/
	static public function substr_v2(input:Dynamic, pos:Dynamic, len:Dynamic, ?unit:Dynamic, ?name:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Decodes each string in `input` into a sequence of Unicode code points.
		
		The character codepoints for all strings are returned using a single vector
		`char_values`, with strings expanded to characters in row-major order.
		
		The `row_splits` tensor indicates where the codepoints for
		each input string begin and end within the `char_values` tensor.
		In particular, the values for the `i`th
		string (in row-major order) are stored in the slice
		`[row_splits[i]:row_splits[i+1]]`. Thus:
		
		* `char_values[row_splits[i]+j]` is the Unicode codepoint for the `j`th
		  character in the `i`th string (in row-major order).
		* `row_splits[i+1] - row_splits[i]` is the number of characters in the `i`th
		  string (in row-major order).
		
		Args:
		  input: A `Tensor` of type `string`.
		    The text to be decoded. Can have any shape. Note that the output is flattened
		    to a vector of char values.
		  input_encoding: A `string`.
		    Text encoding of the input strings. This is any of the encodings supported
		    by ICU ucnv algorithmic converters. Examples: `"UTF-16", "US ASCII", "UTF-8"`.
		  errors: An optional `string` from: `"strict", "replace", "ignore"`. Defaults to `"replace"`.
		    Error handling policy when there is invalid formatting found in the input.
		    The value of 'strict' will cause the operation to produce a InvalidArgument
		    error on any invalid input formatting. A value of 'replace' (the default) will
		    cause the operation to replace any invalid formatting in the input with the
		    `replacement_char` codepoint. A value of 'ignore' will cause the operation to
		    skip any invalid formatting in the input and produce no corresponding output
		    character.
		  replacement_char: An optional `int`. Defaults to `65533`.
		    The replacement character codepoint to be used in place of any invalid
		    formatting in the input when `errors='replace'`. Any valid unicode codepoint may
		    be used. The default value is the default unicode replacement character is
		    0xFFFD or U+65533.)
		  replace_control_characters: An optional `bool`. Defaults to `False`.
		    Whether to replace the C0 control characters (00-1F) with the
		    `replacement_char`. Default is false.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (row_splits, char_values).
		
		  row_splits: A `Tensor` of type `int64`.
		  char_values: A `Tensor` of type `int32`.
	**/
	static public function unicode_decode(input:Dynamic, input_encoding:Dynamic, ?errors:Dynamic, ?replacement_char:Dynamic, ?replace_control_characters:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function unicode_decode
	**/
	static public function unicode_decode_eager_fallback(input:Dynamic, input_encoding:Dynamic, ?errors:Dynamic, ?replacement_char:Dynamic, ?replace_control_characters:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Decodes each string in `input` into a sequence of Unicode code points.
		
		The character codepoints for all strings are returned using a single vector
		`char_values`, with strings expanded to characters in row-major order.
		Similarly, the character start byte offsets are returned using a single vector
		`char_to_byte_starts`, with strings expanded in row-major order.
		
		The `row_splits` tensor indicates where the codepoints and start offsets for
		each input string begin and end within the `char_values` and
		`char_to_byte_starts` tensors.  In particular, the values for the `i`th
		string (in row-major order) are stored in the slice
		`[row_splits[i]:row_splits[i+1]]`. Thus:
		
		* `char_values[row_splits[i]+j]` is the Unicode codepoint for the `j`th
		  character in the `i`th string (in row-major order).
		* `char_to_bytes_starts[row_splits[i]+j]` is the start byte offset for the `j`th
		  character in the `i`th string (in row-major order).
		* `row_splits[i+1] - row_splits[i]` is the number of characters in the `i`th
		  string (in row-major order).
		
		Args:
		  input: A `Tensor` of type `string`.
		    The text to be decoded. Can have any shape. Note that the output is flattened
		    to a vector of char values.
		  input_encoding: A `string`.
		    Text encoding of the input strings. This is any of the encodings supported
		    by ICU ucnv algorithmic converters. Examples: `"UTF-16", "US ASCII", "UTF-8"`.
		  errors: An optional `string` from: `"strict", "replace", "ignore"`. Defaults to `"replace"`.
		    Error handling policy when there is invalid formatting found in the input.
		    The value of 'strict' will cause the operation to produce a InvalidArgument
		    error on any invalid input formatting. A value of 'replace' (the default) will
		    cause the operation to replace any invalid formatting in the input with the
		    `replacement_char` codepoint. A value of 'ignore' will cause the operation to
		    skip any invalid formatting in the input and produce no corresponding output
		    character.
		  replacement_char: An optional `int`. Defaults to `65533`.
		    The replacement character codepoint to be used in place of any invalid
		    formatting in the input when `errors='replace'`. Any valid unicode codepoint may
		    be used. The default value is the default unicode replacement character is
		    0xFFFD or U+65533.)
		  replace_control_characters: An optional `bool`. Defaults to `False`.
		    Whether to replace the C0 control characters (00-1F) with the
		    `replacement_char`. Default is false.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (row_splits, char_values, char_to_byte_starts).
		
		  row_splits: A `Tensor` of type `int64`.
		  char_values: A `Tensor` of type `int32`.
		  char_to_byte_starts: A `Tensor` of type `int64`.
	**/
	static public function unicode_decode_with_offsets(input:Dynamic, input_encoding:Dynamic, ?errors:Dynamic, ?replacement_char:Dynamic, ?replace_control_characters:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function unicode_decode_with_offsets
	**/
	static public function unicode_decode_with_offsets_eager_fallback(input:Dynamic, input_encoding:Dynamic, ?errors:Dynamic, ?replacement_char:Dynamic, ?replace_control_characters:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Encode a tensor of ints into unicode strings.
		
		Returns a vector of strings, where `output[i]` is constructed by encoding the
		Unicode codepoints in `input_values[input_splits[i]:input_splits[i+1]]`
		using `output_encoding`.
		
		---
		
		Example:
		
		```
		input_values = [72, 101, 108, 108, 111, 87, 111, 114, 108, 100]
		input_splits = [0, 5, 10]
		output_encoding = 'UTF-8'
		
		output = ['Hello', 'World']
		```
		
		Args:
		  input_values: A `Tensor` of type `int32`.
		    A 1D tensor containing the unicode codepoints that should be encoded.
		  input_splits: A `Tensor` of type `int64`.
		    A 1D tensor specifying how the unicode codepoints should be split into strings.
		    In particular, `output[i]` is constructed by encoding the codepoints in the
		    slice `input_values[input_splits[i]:input_splits[i+1]]`.
		  output_encoding: A `string` from: `"UTF-8", "UTF-16-BE", "UTF-32-BE"`.
		    Unicode encoding of the output strings. Valid encodings are: `"UTF-8",
		    "UTF-16-BE", and "UTF-32-BE"`.
		  errors: An optional `string` from: `"ignore", "replace", "strict"`. Defaults to `"replace"`.
		    Error handling policy when there is invalid formatting found in the input.
		    The value of 'strict' will cause the operation to produce a InvalidArgument
		    error on any invalid input formatting. A value of 'replace' (the default) will
		    cause the operation to replace any invalid formatting in the input with the
		    `replacement_char` codepoint. A value of 'ignore' will cause the operation to
		    skip any invalid formatting in the input and produce no corresponding output
		    character.
		  replacement_char: An optional `int`. Defaults to `65533`.
		    The replacement character codepoint to be used in place of any invalid
		    formatting in the input when `errors='replace'`. Any valid unicode codepoint may
		    be used. The default value is the default unicode replacement character is
		    0xFFFD (U+65533).
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `string`.
	**/
	static public function unicode_encode(input_values:Dynamic, input_splits:Dynamic, output_encoding:Dynamic, ?errors:Dynamic, ?replacement_char:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function unicode_encode
	**/
	static public function unicode_encode_eager_fallback(input_values:Dynamic, input_splits:Dynamic, output_encoding:Dynamic, ?errors:Dynamic, ?replacement_char:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Determine the script codes of a given tensor of Unicode integer code points.
		
		This operation converts Unicode code points to script codes corresponding to
		each code point. Script codes correspond to International Components for
		Unicode (ICU) UScriptCode values. See http://icu-project.org/apiref/icu4c/uscript_8h.html.
		Returns -1 (USCRIPT_INVALID_CODE) for invalid codepoints. Output shape will
		match input shape.
		
		Args:
		  input: A `Tensor` of type `int32`. A Tensor of int32 Unicode code points.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `int32`.
	**/
	static public function unicode_script(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function unicode_script
	**/
	static public function unicode_script_eager_fallback(input:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Transcode the input text from a source encoding to a destination encoding.
		
		The input is a string tensor of any shape. The output is a string tensor of
		the same shape containing the transcoded strings. Output strings are always
		valid unicode. If the input contains invalid encoding positions, the
		`errors` attribute sets the policy for how to deal with them. If the default
		error-handling policy is used, invalid formatting will be substituted in the
		output by the `replacement_char`. If the errors policy is to `ignore`, any
		invalid encoding positions in the input are skipped and not included in the
		output. If it set to `strict` then any invalid formatting will result in an
		InvalidArgument error.
		
		This operation can be used with `output_encoding = input_encoding` to enforce
		correct formatting for inputs even if they are already in the desired encoding.
		
		If the input is prefixed by a Byte Order Mark needed to determine encoding
		(e.g. if the encoding is UTF-16 and the BOM indicates big-endian), then that
		BOM will be consumed and not emitted into the output. If the input encoding
		is marked with an explicit endianness (e.g. UTF-16-BE), then the BOM is
		interpreted as a non-breaking-space and is preserved in the output (including
		always for UTF-8).
		
		The end result is that if the input is marked as an explicit endianness the
		transcoding is faithful to all codepoints in the source. If it is not marked
		with an explicit endianness, the BOM is not considered part of the string itself
		but as metadata, and so is not preserved in the output.
		
		Args:
		  input: A `Tensor` of type `string`.
		    The text to be processed. Can have any shape.
		  input_encoding: A `string`.
		    Text encoding of the input strings. This is any of the encodings supported
		    by ICU ucnv algorithmic converters. Examples: `"UTF-16", "US ASCII", "UTF-8"`.
		  output_encoding: A `string` from: `"UTF-8", "UTF-16-BE", "UTF-32-BE"`.
		    The unicode encoding to use in the output. Must be one of
		    `"UTF-8", "UTF-16-BE", "UTF-32-BE"`. Multi-byte encodings will be big-endian.
		  errors: An optional `string` from: `"strict", "replace", "ignore"`. Defaults to `"replace"`.
		    Error handling policy when there is invalid formatting found in the input.
		    The value of 'strict' will cause the operation to produce a InvalidArgument
		    error on any invalid input formatting. A value of 'replace' (the default) will
		    cause the operation to replace any invalid formatting in the input with the
		    `replacement_char` codepoint. A value of 'ignore' will cause the operation to
		    skip any invalid formatting in the input and produce no corresponding output
		    character.
		  replacement_char: An optional `int`. Defaults to `65533`.
		    The replacement character codepoint to be used in place of any invalid
		    formatting in the input when `errors='replace'`. Any valid unicode codepoint may
		    be used. The default value is the default unicode replacement character is
		    0xFFFD or U+65533.)
		
		    Note that for UTF-8, passing a replacement character expressible in 1 byte, such
		    as ' ', will preserve string alignment to the source since invalid bytes will be
		    replaced with a 1-byte replacement. For UTF-16-BE and UTF-16-LE, any 1 or 2 byte
		    replacement character will preserve byte alignment to the source.
		  replace_control_characters: An optional `bool`. Defaults to `False`.
		    Whether to replace the C0 control characters (00-1F) with the
		    `replacement_char`. Default is false.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `string`.
	**/
	static public function unicode_transcode(input:Dynamic, input_encoding:Dynamic, output_encoding:Dynamic, ?errors:Dynamic, ?replacement_char:Dynamic, ?replace_control_characters:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function unicode_transcode
	**/
	static public function unicode_transcode_eager_fallback(input:Dynamic, input_encoding:Dynamic, output_encoding:Dynamic, ?errors:Dynamic, ?replacement_char:Dynamic, ?replace_control_characters:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
}