/* This file is generated, do not edit! */
package tensorflow.python.ops.ragged.ragged_string_ops;
@:pythonImport("tensorflow.python.ops.ragged.ragged_string_ops") extern class Ragged_string_ops_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _nrows(tensor:Dynamic, ?out_type:Dynamic):Dynamic;
	/**
		Returns a scalar string tensor with the contents of `string_tensor`.
		
		Args:
		  string_tensor: A potentially ragged tensor with dtype=string.
		  summarize: Include only the first and last `summarize` elements of each
		    dimension.  If `-1` or `None`, then include all elements.
		
		Returns:
		  A scalar string Tensor.
	**/
	static public function _ragged_tensor_to_string(string_tensor:Dynamic, summarize:Dynamic):Dynamic;
	/**
		Decodes each string into a sequence of codepoints.
	**/
	static public function _unicode_decode(input:Dynamic, input_encoding:Dynamic, errors:Dynamic, replacement_char:Dynamic, replace_control_characters:Dynamic, with_offsets:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
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
	static public var print_function : Dynamic;
	/**
		Returns a scalar string tensor with the contents of a RaggedTensor.
		
		Requires that `rt.shape.rank` is not `None`.
		
		Note: this converts the entire `RaggedTensor` into a single string scalar.
		If you want to convert individual elements, use `tf.strings.as_string(rt)`.
		
		>>> rt1 = tf.ragged.constant([[1, 2, 3], [4, 5]])
		>>> ragged_tensor_to_string(rt1).numpy()
		b'[[1, 2, 3], [4, 5]]'
		
		>>> rt2 = tf.ragged.constant([[['a'], ['b', 'c']], [['d', 'e', 'f'], []]])
		>>> ragged_tensor_to_string(rt2).numpy()
		b"[[['a'], ['b', 'c']], [['d', 'e', 'f'], []]]"
		
		>>> rt3 = tf.ragged.constant([[1], [2, 3, 4, 5, 6], [], [], [7], [8, 9]])
		>>> ragged_tensor_to_string(rt3, summarize=2).numpy()
		b'[[1], [2, 3, ..., 5, 6], ..., [7], [8, 9]]'
		
		Args:
		  rt: The RaggedTensor that should be converted to a string.
		  summarize: If specified, then only the first and last `summarize` elements
		    within each dimension are included in the string. If `-1` or `None`, then
		    all elements are included.
	**/
	static public function ragged_tensor_to_string(rt:Dynamic, ?summarize:Dynamic):Dynamic;
	/**
		For docs, see: _RAGGED_REDUCE_DOCSTRING.
	**/
	static public function reduce_join(inputs:Dynamic, ?axis:Dynamic, ?keepdims:Dynamic, ?separator:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function string_bytes_split(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Version of tf.strings.format that handles RaggedTensors.
	**/
	static public function string_format(template:Dynamic, inputs:Dynamic, ?placeholder:Dynamic, ?summarize:Dynamic, ?name:Dynamic):Dynamic;
	/**
		RaggedTensor implementation for tf.strings.join.
	**/
	static public function string_join(inputs:Dynamic, ?separator:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Split elements of `source` based on `delimiter`. (deprecated arguments)
		
		Warning: SOME ARGUMENTS ARE DEPRECATED: `(delimiter)`. They will be removed in a future version.
		Instructions for updating:
		delimiter is deprecated, please use sep instead.
		
		Let N be the size of `source` (typically N will be the batch size). Split each
		element of `source` based on `delimiter` and return a `SparseTensor`
		or `RaggedTensor` containing the split tokens. Empty tokens are ignored.
		
		If `sep` is an empty string, each element of the `source` is split
		into individual strings, each containing one byte. (This includes splitting
		multibyte sequences of UTF-8.) If delimiter contains multiple bytes, it is
		treated as a set of delimiters with each considered a potential split point.
		
		Examples:
		
		>>> print(tf.compat.v1.string_split(['hello world', 'a b c']))
		SparseTensor(indices=tf.Tensor( [[0 0] [0 1] [1 0] [1 1] [1 2]], ...),
		             values=tf.Tensor([b'hello' b'world' b'a' b'b' b'c'], ...),
		             dense_shape=tf.Tensor([2 3], shape=(2,), dtype=int64))
		
		>>> print(tf.compat.v1.string_split(['hello world', 'a b c'],
		...     result_type="RaggedTensor"))
		<tf.RaggedTensor [[b'hello', b'world'], [b'a', b'b', b'c']]>
		
		Args:
		  source: `1-D` string `Tensor`, the strings to split.
		  sep: `0-D` string `Tensor`, the delimiter character, the string should
		    be length 0 or 1. Default is ' '.
		  skip_empty: A `bool`. If `True`, skip the empty strings from the result.
		  delimiter: deprecated alias for `sep`.
		  result_type: The tensor type for the result: one of `"RaggedTensor"` or
		    `"SparseTensor"`.
		  name: A name for the operation (optional).
		
		Raises:
		  ValueError: If delimiter is not a string.
		
		Returns:
		  A `SparseTensor` or `RaggedTensor` of rank `2`, the strings split according
		  to the delimiter.  The first column of the indices corresponds to the row
		  in `source` and the second column corresponds to the index of the split
		  component in this row.
	**/
	static public function string_split(source:Dynamic, ?sep:Dynamic, ?skip_empty:Dynamic, ?delimiter:Dynamic, ?result_type:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Split elements of `input` based on `sep` into a `RaggedTensor`.
		
		Let N be the size of `input` (typically N will be the batch size). Split each
		element of `input` based on `sep` and return a `RaggedTensor` containing the
		split tokens. Empty tokens are ignored.
		
		Example:
		
		>>> tf.strings.split('hello world').numpy()
		 array([b'hello', b'world'], dtype=object)
		>>> tf.strings.split(['hello world', 'a b c'])
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
		  sep: `0-D` string `Tensor`, the delimiter string.
		  maxsplit: An `int`. If `maxsplit > 0`, limit of the split of the result.
		  name: A name for the operation (optional).
		
		Raises:
		  ValueError: If sep is not a string.
		
		Returns:
		  A `RaggedTensor` of rank `N+1`, the strings split according to the
		  delimiter.
	**/
	static public function string_split_v2(input:Dynamic, ?sep:Dynamic, ?maxsplit:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function strings_split_v1(?input:Dynamic, ?sep:Dynamic, ?maxsplit:Dynamic, ?result_type:Dynamic, ?source:Dynamic, ?name:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
}