/* This file is generated, do not edit! */
package tensorflow.compat.v1.strings;
@:pythonImport("tensorflow.compat.v1.strings") extern class Strings_Module {
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
		Converts each entry in the given tensor to strings.
		
		Supports many numeric types and boolean.
		
		For Unicode, see the
		[https://www.tensorflow.org/tutorials/representation/unicode](Working with Unicode text)
		tutorial.
		
		Examples:
		
		>>> tf.strings.as_string([3, 2])
		<tf.Tensor: shape=(2,), dtype=string, numpy=array([b'3', b'2'], dtype=object)>
		>>> tf.strings.as_string([3.1415926, 2.71828], precision=2).numpy()
		array([b'3.14', b'2.72'], dtype=object)
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `int64`, `bfloat16`, `uint16`, `half`, `uint32`, `uint64`, `complex64`, `complex128`, `bool`, `variant`.
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
		Split string elements of `input` into bytes.
		
		Examples:
		
		>>> tf.strings.bytes_split('hello').numpy()
		array([b'h', b'e', b'l', b'l', b'o'], dtype=object)
		>>> tf.strings.bytes_split(['hello', '123'])
		<tf.RaggedTensor [[b'h', b'e', b'l', b'l', b'o'], [b'1', b'2', b'3']]>
		
		Note that this op splits strings into bytes, not unicode characters.  To
		split strings into unicode characters, use `tf.strings.unicode_split`.
		
		See also: `tf.io.decode_raw`, `tf.strings.split`, `tf.strings.unicode_split`.
		
		Args:
		  input: A string `Tensor` or `RaggedTensor`: the strings to split.  Must
		    have a statically known rank (`N`).
		  name: A name for the operation (optional).
		
		Returns:
		  A `RaggedTensor` of rank `N+1`: the bytes that make up the source strings.
	**/
	static public function bytes_split(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Formats a string template using a list of tensors.
		
		Formats a string template using a list of tensors, abbreviating tensors by
		only printing the first and last `summarize` elements of each dimension
		(recursively). If formatting only one tensor into a template, the tensor does
		not have to be wrapped in a list.
		
		Example:
		  Formatting a single-tensor template:
		
		  >>> tensor = tf.range(5)
		  >>> tf.strings.format("tensor: {}, suffix", tensor)
		  <tf.Tensor: shape=(), dtype=string, numpy=b'tensor: [0 1 2 3 4], suffix'>
		
		  Formatting a multi-tensor template:
		
		  >>> tensor_a = tf.range(2)
		  >>> tensor_b = tf.range(1, 4, 2)
		  >>> tf.strings.format("a: {}, b: {}, suffix", (tensor_a, tensor_b))
		  <tf.Tensor: shape=(), dtype=string, numpy=b'a: [0 1], b: [1 3], suffix'>
		
		
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
	static public function format(template:Dynamic, inputs:Dynamic, ?placeholder:Dynamic, ?summarize:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Perform element-wise concatenation of a list of string tensors.
		
		Given a list of string tensors of same shape, performs element-wise
		concatenation of the strings of the same index in all tensors.
		
		
		>>> tf.strings.join(['abc','def']).numpy()
		b'abcdef'
		>>> tf.strings.join([['abc','123'],
		...                  ['def','456'],
		...                  ['ghi','789']]).numpy()
		array([b'abcdefghi', b'123456789'], dtype=object)
		>>> tf.strings.join([['abc','123'],
		...                  ['def','456']],
		...                  separator=" ").numpy()
		array([b'abc def', b'123 456'], dtype=object)
		
		The reduction version of this elementwise operation is
		`tf.strings.reduce_join`
		
		Args:
		  inputs: A list of `tf.Tensor` objects of same size and `tf.string` dtype.
		  separator: A string added between each string being joined.
		  name: A name for the operation (optional).
		
		Returns:
		  A `tf.string` tensor.
	**/
	static public function join(inputs:Dynamic, ?separator:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the length of each string given in the input tensor.
		
		>>> strings = tf.constant(['Hello','TensorFlow', '🙂'])
		>>> tf.strings.length(strings).numpy() # default counts bytes
		array([ 5, 10, 4], dtype=int32)
		>>> tf.strings.length(strings, unit="UTF8_CHAR").numpy()
		array([ 5, 10, 1], dtype=int32)
		
		Args:
		  input: A `Tensor` of type `string`. The strings for which to compute the
		    length for each element.
		  name: A name for the operation (optional).
		  unit: An optional `string` from: `"BYTE", "UTF8_CHAR"`. Defaults to
		    `"BYTE"`. The unit that is counted to compute string length.  One of:
		      `"BYTE"` (for the number of bytes in each string) or `"UTF8_CHAR"` (for
		      the number of UTF-8 encoded Unicode code points in each string). Results
		      are undefined if `unit=UTF8_CHAR` and the `input` strings do not contain
		      structurally valid UTF-8.
		
		Returns:
		  A `Tensor` of type `int32`, containing the length of the input string in
		  the same element of the input tensor.
	**/
	static public function length(input:Dynamic, ?name:Dynamic, ?unit:Dynamic):Dynamic;
	/**
		Converts all uppercase characters into their respective lowercase replacements.
		
		Example:
		
		>>> tf.strings.lower("CamelCase string and ALL CAPS")
		<tf.Tensor: shape=(), dtype=string, numpy=b'camelcase string and all caps'>
		
		Args:
		  input: A `Tensor` of type `string`. The input to be lower-cased.
		  encoding: An optional `string`. Defaults to `""`.
		    Character encoding of `input`. Allowed values are '' and 'utf-8'.
		    Value '' is interpreted as ASCII.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `string`.
	**/
	static public function lower(input:Dynamic, ?encoding:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Create a tensor of n-grams based on `data`.
		
		Creates a tensor of n-grams based on `data`. The n-grams are created by
		joining windows of `width` adjacent strings from the inner axis of `data`
		using `separator`.
		
		The input data can be padded on both the start and end of the sequence, if
		desired, using the `pad_values` argument. If set, `pad_values` should contain
		either a tuple of strings or a single string; the 0th element of the tuple
		will be used to pad the left side of the sequence and the 1st element of the
		tuple will be used to pad the right side of the sequence. The `padding_width`
		arg controls how many padding values are added to each side; it defaults to
		`ngram_width-1`.
		
		If this op is configured to not have padding, or if it is configured to add
		padding with `padding_width` set to less than ngram_width-1, it is possible
		that a sequence, or a sequence plus padding, is smaller than the ngram
		width. In that case, no ngrams will be generated for that sequence. This can
		be prevented by setting `preserve_short_sequences`, which will cause the op
		to always generate at least one ngram per non-empty sequence.
		
		Examples:
		
		>>> tf.strings.ngrams(["A", "B", "C", "D"], 2).numpy()
		array([b'A B', b'B C', b'C D'], dtype=object)
		>>> tf.strings.ngrams(["TF", "and", "keras"], 1).numpy()
		array([b'TF', b'and', b'keras'], dtype=object)
		
		Args:
		  data: A Tensor or RaggedTensor containing the source data for the ngrams.
		  ngram_width: The width(s) of the ngrams to create. If this is a list or
		    tuple, the op will return ngrams of all specified arities in list order.
		    Values must be non-Tensor integers greater than 0.
		  separator: The separator string used between ngram elements. Must be a
		    string constant, not a Tensor.
		  pad_values: A tuple of (left_pad_value, right_pad_value), a single string,
		    or None. If None, no padding will be added; if a single string, then that
		    string will be used for both left and right padding. Values must be Python
		    strings.
		  padding_width: If set, `padding_width` pad values will be added to both
		    sides of each sequence. Defaults to `ngram_width`-1. Must be greater than
		    0. (Note that 1-grams are never padded, regardless of this value.)
		  preserve_short_sequences: If true, then ensure that at least one ngram is
		    generated for each input sequence.  In particular, if an input sequence is
		    shorter than `min(ngram_width) + 2*pad_width`, then generate a single
		    ngram containing the entire sequence.  If false, then no ngrams are
		    generated for these short input sequences.
		  name: The op name.
		
		Returns:
		  A RaggedTensor of ngrams. If `data.shape=[D1...DN, S]`, then
		  `output.shape=[D1...DN, NUM_NGRAMS]`, where
		  `NUM_NGRAMS=S-ngram_width+1+2*padding_width`.
		
		Raises:
		  TypeError: if `pad_values` is set to an invalid type.
		  ValueError: if `pad_values`, `padding_width`, or `ngram_width` is set to an
		    invalid value.
	**/
	static public function ngrams(data:Dynamic, ngram_width:Dynamic, ?separator:Dynamic, ?pad_values:Dynamic, ?padding_width:Dynamic, ?preserve_short_sequences:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Joins all strings into a single string, or joins along an axis.
		
		This is the reduction operation for the elementwise `tf.strings.join` op.
		
		>>> tf.strings.reduce_join([['abc','123'],
		...                         ['def','456']]).numpy()
		b'abc123def456'
		>>> tf.strings.reduce_join([['abc','123'],
		...                         ['def','456']], axis=-1).numpy()
		array([b'abc123', b'def456'], dtype=object)
		>>> tf.strings.reduce_join([['abc','123'],
		...                         ['def','456']],
		...                        axis=-1,
		...                        separator=" ").numpy()
		array([b'abc 123', b'def 456'], dtype=object)
		
		Args:
		  inputs: A `tf.string` tensor.
		  axis: Which axis to join along. The default behavior is to join all
		    elements, producing a scalar.
		  keepdims: If true, retains reduced dimensions with length 1.
		  separator: a string added between each string being joined.
		  name: A name for the operation (optional).
		
		Returns:
		  A `tf.string` tensor.
	**/
	static public function reduce_join(inputs:Dynamic, ?axis:Dynamic, ?keep_dims:Dynamic, ?separator:Dynamic, ?name:Dynamic, ?reduction_indices:Dynamic, ?keepdims:Dynamic):Dynamic;
	/**
		Check if the input matches the regex pattern.
		
		The input is a string tensor of any shape. The pattern is a scalar
		string tensor which is applied to every element of the input tensor.
		The boolean values (True or False) of the output tensor indicate
		if the input matches the regex pattern provided.
		
		The pattern follows the re2 syntax (https://github.com/google/re2/wiki/Syntax)
		
		Examples:
		
		>>> tf.strings.regex_full_match(["TF lib", "lib TF"], ".*lib$")
		<tf.Tensor: shape=(2,), dtype=bool, numpy=array([ True, False])>
		>>> tf.strings.regex_full_match(["TF lib", "lib TF"], ".*TF$")
		<tf.Tensor: shape=(2,), dtype=bool, numpy=array([False,  True])>
		
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
		Replace elements of `input` matching regex `pattern` with `rewrite`.
		
		>>> tf.strings.regex_replace("Text with tags.<br /><b>contains html</b>",
		...                          "<[^>]+>", " ")
		<tf.Tensor: shape=(), dtype=string, numpy=b'Text with tags.  contains html '>
		
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
		Split elements of `input` based on `sep`.
		
		Let N be the size of `input` (typically N will be the batch size). Split each
		element of `input` based on `sep` and return a `SparseTensor` or
		`RaggedTensor` containing the split tokens. Empty tokens are ignored.
		
		Examples:
		
		>>> print(tf.compat.v1.strings.split(['hello world', 'a b c']))
		SparseTensor(indices=tf.Tensor( [[0 0] [0 1] [1 0] [1 1] [1 2]], ...),
		             values=tf.Tensor([b'hello' b'world' b'a' b'b' b'c'], ...),
		             dense_shape=tf.Tensor([2 3], shape=(2,), dtype=int64))
		
		>>> print(tf.compat.v1.strings.split(['hello world', 'a b c'],
		...     result_type="RaggedTensor"))
		<tf.RaggedTensor [[b'hello', b'world'], [b'a', b'b', b'c']]>
		
		If `sep` is given, consecutive delimiters are not grouped together and are
		deemed to delimit empty strings. For example, `input` of `"1<>2<><>3"` and
		`sep` of `"<>"` returns `["1", "2", "", "3"]`. If `sep` is None or an empty
		string, consecutive whitespace are regarded as a single separator, and the
		result will contain no empty strings at the start or end if the string has
		leading or trailing whitespace.
		
		Note that the above mentioned behavior matches python's str.split.
		
		Args:
		  input: A string `Tensor` of rank `N`, the strings to split.  If
		    `rank(input)` is not known statically, then it is assumed to be `1`.
		  sep: `0-D` string `Tensor`, the delimiter character.
		  maxsplit: An `int`. If `maxsplit > 0`, limit of the split of the result.
		  result_type: The tensor type for the result: one of `"RaggedTensor"` or
		    `"SparseTensor"`.
		  source: alias for "input" argument.
		  name: A name for the operation (optional).
		
		Raises:
		  ValueError: If sep is not a string.
		
		Returns:
		  A `SparseTensor` or `RaggedTensor` of rank `N+1`, the strings split
		  according to the delimiter.
	**/
	static public function split(?input:Dynamic, ?sep:Dynamic, ?maxsplit:Dynamic, ?result_type:Dynamic, ?source:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Strip leading and trailing whitespaces from the Tensor.
		
		Examples:
		
		>>> tf.strings.strip(["\nTensorFlow", "     The python library    "]).numpy()
		array([b'TensorFlow', b'The python library'], dtype=object)
		
		Args:
		  input: A `Tensor` of type `string`. A string `Tensor` of any shape.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `string`.
	**/
	static public function strip(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Return substrings from `Tensor` of strings.
		
		For each string in the input `Tensor`, creates a substring starting at index
		`pos` with a total length of `len`.
		
		If `len` defines a substring that would extend beyond the length of the input
		string, or if `len` is negative, then as many characters as possible are used.
		
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
		
		Raises:
		
		  * `ValueError`: If the first argument cannot be converted to a
		     Tensor of `dtype string`.
		  * `InvalidArgumentError`: If indices are out of range.
		  * `ValueError`: If `pos` and `len` are not the same shape.
		
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
	**/
	static public function to_hash_bucket(?string_tensor:Dynamic, ?num_buckets:Dynamic, ?name:Dynamic, ?input:Dynamic):Dynamic;
	/**
		Converts each string in the input Tensor to its hash mod by a number of buckets.
		
		The hash function is deterministic on the content of the string within the
		process and will never change. However, it is not suitable for cryptography.
		This function may be used when CPU time is scarce and inputs are trusted or
		unimportant. There is a risk of adversaries constructing inputs that all hash
		to the same bucket. To prevent this problem, use a strong hash function with
		`tf.string_to_hash_bucket_strong`.
		
		Examples:
		
		>>> tf.strings.to_hash_bucket_fast(["Hello", "TensorFlow", "2.x"], 3).numpy()
		array([0, 2, 2])
		
		Args:
		  input: A `Tensor` of type `string`. The strings to assign a hash bucket.
		  num_buckets: An `int` that is `>= 1`. The number of buckets.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `int64`.
	**/
	static public function to_hash_bucket_fast(input:Dynamic, num_buckets:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Converts each string in the input Tensor to its hash mod by a number of buckets.
		
		The hash function is deterministic on the content of the string within the
		process. The hash function is a keyed hash function, where attribute `key`
		defines the key of the hash function. `key` is an array of 2 elements.
		
		A strong hash is important when inputs may be malicious, e.g. URLs with
		additional components. Adversaries could try to make their inputs hash to the
		same bucket for a denial-of-service attack or to skew the results. A strong
		hash can be used to make it difficult to find inputs with a skewed hash value
		distribution over buckets. This requires that the hash function is
		seeded by a high-entropy (random) "key" unknown to the adversary.
		
		The additional robustness comes at a cost of roughly 4x higher compute
		time than `tf.string_to_hash_bucket_fast`.
		
		Examples:
		
		>>> tf.strings.to_hash_bucket_strong(["Hello", "TF"], 3, [1, 2]).numpy()
		array([2, 0])
		
		Args:
		  input: A `Tensor` of type `string`. The strings to assign a hash bucket.
		  num_buckets: An `int` that is `>= 1`. The number of buckets.
		  key: A list of `ints`.
		    The key used to seed the hash function, passed as a list of two uint64
		    elements.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `int64`.
	**/
	static public function to_hash_bucket_strong(input:Dynamic, num_buckets:Dynamic, key:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Converts each string in the input Tensor to the specified numeric type.
		
		(Note that int32 overflow results in an error while float overflow
		results in a rounded value.)
		
		Example:
		
		>>> strings = ["5.0", "3.0", "7.0"]
		>>> tf.strings.to_number(strings)
		<tf.Tensor: shape=(3,), dtype=float32, numpy=array([5., 3., 7.], dtype=float32)>
		
		Args:
		  string_tensor: A `Tensor` of type `string`.
		  out_type: An optional `tf.DType` from: `tf.float32, tf.float64, tf.int32, tf.int64`. Defaults to `tf.float32`.
		    The numeric type to interpret each string in `string_tensor` as.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `out_type`.
	**/
	static public function to_number(?string_tensor:Dynamic, ?out_type:Dynamic, ?name:Dynamic, ?input:Dynamic):Dynamic;
	/**
		Decodes each string in `input` into a sequence of Unicode code points.
		
		`result[i1...iN, j]` is the Unicode codepoint for the `j`th character in
		`input[i1...iN]`, when decoded using `input_encoding`.
		
		Args:
		  input: An `N` dimensional potentially ragged `string` tensor with shape
		    `[D1...DN]`.  `N` must be statically known.
		  input_encoding: String name for the unicode encoding that should be used to
		    decode each string.
		  errors: Specifies the response when an input string can't be converted
		    using the indicated encoding. One of:
		    * `'strict'`: Raise an exception for any illegal substrings.
		    * `'replace'`: Replace illegal substrings with `replacement_char`.
		    * `'ignore'`: Skip illegal substrings.
		  replacement_char: The replacement codepoint to be used in place of invalid
		    substrings in `input` when `errors='replace'`; and in place of C0 control
		    characters in `input` when `replace_control_characters=True`.
		  replace_control_characters: Whether to replace the C0 control characters
		    `(U+0000 - U+001F)` with the `replacement_char`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `N+1` dimensional `int32` tensor with shape `[D1...DN, (num_chars)]`.
		  The returned tensor is a `tf.Tensor` if `input` is a scalar, or a
		  `tf.RaggedTensor` otherwise.
		
		#### Example:
		
		>>> input = [s.encode('utf8') for s in (u'G\xf6\xf6dnight', u'\U0001f60a')]
		>>> tf.strings.unicode_decode(input, 'UTF-8').to_list()
		[[71, 246, 246, 100, 110, 105, 103, 104, 116], [128522]]
	**/
	static public function unicode_decode(input:Dynamic, input_encoding:Dynamic, ?errors:Dynamic, ?replacement_char:Dynamic, ?replace_control_characters:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Decodes each string into a sequence of code points with start offsets.
		
		This op is similar to `tf.strings.decode(...)`, but it also returns the
		start offset for each character in its respective string.  This information
		can be used to align the characters with the original byte sequence.
		
		Returns a tuple `(codepoints, start_offsets)` where:
		
		* `codepoints[i1...iN, j]` is the Unicode codepoint for the `j`th character
		  in `input[i1...iN]`, when decoded using `input_encoding`.
		* `start_offsets[i1...iN, j]` is the start byte offset for the `j`th
		  character in `input[i1...iN]`, when decoded using `input_encoding`.
		
		Args:
		  input: An `N` dimensional potentially ragged `string` tensor with shape
		    `[D1...DN]`.  `N` must be statically known.
		  input_encoding: String name for the unicode encoding that should be used to
		    decode each string.
		  errors: Specifies the response when an input string can't be converted
		    using the indicated encoding. One of:
		    * `'strict'`: Raise an exception for any illegal substrings.
		    * `'replace'`: Replace illegal substrings with `replacement_char`.
		    * `'ignore'`: Skip illegal substrings.
		  replacement_char: The replacement codepoint to be used in place of invalid
		    substrings in `input` when `errors='replace'`; and in place of C0 control
		    characters in `input` when `replace_control_characters=True`.
		  replace_control_characters: Whether to replace the C0 control characters
		    `(U+0000 - U+001F)` with the `replacement_char`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `N+1` dimensional tensors `(codepoints, start_offsets)`.
		
		  * `codepoints` is an `int32` tensor with shape `[D1...DN, (num_chars)]`.
		  * `offsets` is an `int64` tensor with shape `[D1...DN, (num_chars)]`.
		
		  The returned tensors are `tf.Tensor`s if `input` is a scalar, or
		  `tf.RaggedTensor`s otherwise.
		
		#### Example:
		
		>>> input = [s.encode('utf8') for s in (u'G\xf6\xf6dnight', u'\U0001f60a')]
		>>> result = tf.strings.unicode_decode_with_offsets(input, 'UTF-8')
		>>> result[0].to_list()  # codepoints
		[[71, 246, 246, 100, 110, 105, 103, 104, 116], [128522]]
		>>> result[1].to_list()  # offsets
		[[0, 1, 3, 5, 6, 7, 8, 9, 10], [0]]
	**/
	static public function unicode_decode_with_offsets(input:Dynamic, input_encoding:Dynamic, ?errors:Dynamic, ?replacement_char:Dynamic, ?replace_control_characters:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Encodes each sequence of Unicode code points in `input` into a string.
		
		`result[i1...iN]` is the string formed by concatenating the Unicode
		codepoints `input[1...iN, :]`, encoded using `output_encoding`.
		
		Args:
		  input: An `N+1` dimensional potentially ragged integer tensor with shape
		    `[D1...DN, num_chars]`.
		  output_encoding: Unicode encoding that should be used to encode each
		    codepoint sequence.  Can be `"UTF-8"`, `"UTF-16-BE"`, or `"UTF-32-BE"`.
		  errors: Specifies the response when an invalid codepoint is encountered
		    (optional). One of:
		          * `'replace'`: Replace invalid codepoint with the
		            `replacement_char`. (default)
		          * `'ignore'`: Skip invalid codepoints.
		          * `'strict'`: Raise an exception for any invalid codepoint.
		  replacement_char: The replacement character codepoint to be used in place of
		    any invalid input when `errors='replace'`. Any valid unicode codepoint may
		    be used. The default value is the default unicode replacement character
		    which is 0xFFFD (U+65533).
		  name: A name for the operation (optional).
		
		Returns:
		  A `N` dimensional `string` tensor with shape `[D1...DN]`.
		
		#### Example:
		
		>>> input = tf.ragged.constant(
		...     [[71, 246, 246, 100, 110, 105, 103, 104, 116], [128522]])
		>>> print(unicode_encode(input, 'UTF-8'))
		tf.Tensor([b'G\xc3\xb6\xc3\xb6dnight' b'\xf0\x9f\x98\x8a'],
		          shape=(2,), dtype=string)
	**/
	static public function unicode_encode(input:Dynamic, output_encoding:Dynamic, ?errors:Dynamic, ?replacement_char:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Determine the script codes of a given tensor of Unicode integer code points.
		
		This operation converts Unicode code points to script codes corresponding to
		each code point. Script codes correspond to International Components for
		Unicode (ICU) UScriptCode values.
		
		See
		[ICU project docs](http://icu-project.org/apiref/icu4c/uscript_8h.html)
		for more details on script codes.
		
		For an example, see the unicode strings guide on [unicode scripts]
		(https://www.tensorflow.org/tutorials/load_data/unicode#representing_unicode).
		
		Returns -1 (USCRIPT_INVALID_CODE) for invalid codepoints. Output shape will
		match input shape.
		
		Examples:
		
		>>> tf.strings.unicode_script([1, 31, 38])
		<tf.Tensor: shape=(3,), dtype=int32, numpy=array([0, 0, 0], dtype=int32)>
		
		Args:
		  input: A `Tensor` of type `int32`. A Tensor of int32 Unicode code points.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `int32`.
	**/
	static public function unicode_script(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Splits each string in `input` into a sequence of Unicode code points.
		
		`result[i1...iN, j]` is the substring of `input[i1...iN]` that encodes its
		`j`th character, when decoded using `input_encoding`.
		
		Args:
		  input: An `N` dimensional potentially ragged `string` tensor with shape
		    `[D1...DN]`.  `N` must be statically known.
		  input_encoding: String name for the unicode encoding that should be used to
		    decode each string.
		  errors: Specifies the response when an input string can't be converted
		    using the indicated encoding. One of:
		    * `'strict'`: Raise an exception for any illegal substrings.
		    * `'replace'`: Replace illegal substrings with `replacement_char`.
		    * `'ignore'`: Skip illegal substrings.
		  replacement_char: The replacement codepoint to be used in place of invalid
		    substrings in `input` when `errors='replace'`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `N+1` dimensional `int32` tensor with shape `[D1...DN, (num_chars)]`.
		  The returned tensor is a `tf.Tensor` if `input` is a scalar, or a
		  `tf.RaggedTensor` otherwise.
		
		#### Example:
		
		>>> input = [s.encode('utf8') for s in (u'G\xf6\xf6dnight', u'\U0001f60a')]
		>>> tf.strings.unicode_split(input, 'UTF-8').to_list()
		[[b'G', b'\xc3\xb6', b'\xc3\xb6', b'd', b'n', b'i', b'g', b'h', b't'],
		 [b'\xf0\x9f\x98\x8a']]
	**/
	static public function unicode_split(input:Dynamic, input_encoding:Dynamic, ?errors:Dynamic, ?replacement_char:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Splits each string into a sequence of code points with start offsets.
		
		This op is similar to `tf.strings.decode(...)`, but it also returns the
		start offset for each character in its respective string.  This information
		can be used to align the characters with the original byte sequence.
		
		Returns a tuple `(chars, start_offsets)` where:
		
		* `chars[i1...iN, j]` is the substring of `input[i1...iN]` that encodes its
		  `j`th character, when decoded using `input_encoding`.
		* `start_offsets[i1...iN, j]` is the start byte offset for the `j`th
		  character in `input[i1...iN]`, when decoded using `input_encoding`.
		
		Args:
		  input: An `N` dimensional potentially ragged `string` tensor with shape
		    `[D1...DN]`.  `N` must be statically known.
		  input_encoding: String name for the unicode encoding that should be used to
		    decode each string.
		  errors: Specifies the response when an input string can't be converted
		    using the indicated encoding. One of:
		    * `'strict'`: Raise an exception for any illegal substrings.
		    * `'replace'`: Replace illegal substrings with `replacement_char`.
		    * `'ignore'`: Skip illegal substrings.
		  replacement_char: The replacement codepoint to be used in place of invalid
		    substrings in `input` when `errors='replace'`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `N+1` dimensional tensors `(codepoints, start_offsets)`.
		
		  * `codepoints` is an `int32` tensor with shape `[D1...DN, (num_chars)]`.
		  * `offsets` is an `int64` tensor with shape `[D1...DN, (num_chars)]`.
		
		  The returned tensors are `tf.Tensor`s if `input` is a scalar, or
		  `tf.RaggedTensor`s otherwise.
		
		#### Example:
		
		>>> input = [s.encode('utf8') for s in (u'G\xf6\xf6dnight', u'\U0001f60a')]
		>>> result = tf.strings.unicode_split_with_offsets(input, 'UTF-8')
		>>> result[0].to_list()  # character substrings
		[[b'G', b'\xc3\xb6', b'\xc3\xb6', b'd', b'n', b'i', b'g', b'h', b't'],
		 [b'\xf0\x9f\x98\x8a']]
		>>> result[1].to_list()  # offsets
		[[0, 1, 3, 5, 6, 7, 8, 9, 10], [0]]
	**/
	static public function unicode_split_with_offsets(input:Dynamic, input_encoding:Dynamic, ?errors:Dynamic, ?replacement_char:Dynamic, ?name:Dynamic):Dynamic;
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
		
		Examples:
		
		>>> tf.strings.unicode_transcode(["Hello", "TensorFlow", "2.x"], "UTF-8", "UTF-16-BE")
		<tf.Tensor: shape=(3,), dtype=string, numpy=
		array([b'\x00H\x00e\x00l\x00l\x00o',
		       b'\x00T\x00e\x00n\x00s\x00o\x00r\x00F\x00l\x00o\x00w',
		       b'\x002\x00.\x00x'], dtype=object)>
		>>> tf.strings.unicode_transcode(["A", "B", "C"], "US ASCII", "UTF-8").numpy()
		array([b'A', b'B', b'C'], dtype=object)
		
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
		Joins the elements of `inputs` based on `segment_ids`.
		
		Computes the string join along segments of a tensor.
		Given `segment_ids` with rank `N` and `data` with rank `N+M`:
		
		    `output[i, k1...kM] = strings.join([data[j1...jN, k1...kM])`
		
		where the join is over all [j1...jN] such that segment_ids[j1...jN] = i.
		Strings are joined in row-major order.
		
		For example:
		
		```python
		inputs = [['Y', 'q', 'c'], ['Y', '6', '6'], ['p', 'G', 'a']]
		output_array = string_ops.unsorted_segment_join(inputs=inputs,
		                                                segment_ids=[1, 0, 1],
		                                                num_segments=2,
		                                                separator=':'))
		# output_array ==> [['Y', '6', '6'], ['Y:p', 'q:G', 'c:a']]
		
		
		inputs = ['this', 'is', 'a', 'test']
		output_array = string_ops.unsorted_segment_join(inputs=inputs,
		                                                segment_ids=[0, 0, 0, 0],
		                                                num_segments=1,
		                                                separator=':'))
		# output_array ==> ['this:is:a:test']
		```
		
		Args:
		  inputs: A `Tensor` of type `string`. The input to be joined.
		  segment_ids: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A tensor whose shape is a prefix of data.shape.  Negative segment ids are not
		    supported.
		  num_segments: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A scalar.
		  separator: An optional `string`. Defaults to `""`.
		    The separator to use when joining.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `string`.
	**/
	static public function unsorted_segment_join(inputs:Dynamic, segment_ids:Dynamic, num_segments:Dynamic, ?separator:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Converts all lowercase characters into their respective uppercase replacements.
		
		Example:
		
		>>> tf.strings.upper("CamelCase string and ALL CAPS")
		<tf.Tensor: shape=(), dtype=string, numpy=b'CAMELCASE STRING AND ALL CAPS'>
		
		Args:
		  input: A `Tensor` of type `string`. The input to be upper-cased.
		  encoding: An optional `string`. Defaults to `""`.
		    Character encoding of `input`. Allowed values are '' and 'utf-8'.
		    Value '' is interpreted as ASCII.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `string`.
	**/
	static public function upper(input:Dynamic, ?encoding:Dynamic, ?name:Dynamic):Dynamic;
}