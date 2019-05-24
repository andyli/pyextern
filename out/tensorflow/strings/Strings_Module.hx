/* This file is generated, do not edit! */
package tensorflow.strings;
@:pythonImport("tensorflow.strings") extern class Strings_Module {
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
	static public function format(template:Dynamic, inputs:Dynamic, ?placeholder:Dynamic, ?summarize:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function join(inputs:Dynamic, ?separator:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function length(input:Dynamic, ?name:Dynamic, ?unit:Dynamic):Dynamic;
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
	static public function split(source:Dynamic, ?sep:Dynamic, ?maxsplit:Dynamic):Dynamic;
	/**
		Strip leading and trailing whitespaces from the Tensor.
		
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
	static public function to_hash_bucket(string_tensor:Dynamic, num_buckets:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function to_hash_bucket_fast(input:Dynamic, num_buckets:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function to_hash_bucket_strong(input:Dynamic, num_buckets:Dynamic, key:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Converts each string in the input Tensor to the specified numeric type.
		
		(Note that int32 overflow results in an error while float overflow
		results in a rounded value.)
		
		Args:
		  string_tensor: A `Tensor` of type `string`.
		  out_type: An optional `tf.DType` from: `tf.float32, tf.float64, tf.int32, tf.int64`. Defaults to `tf.float32`.
		    The numeric type to interpret each string in `string_tensor` as.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `out_type`.
	**/
	static public function to_number(string_tensor:Dynamic, ?out_type:Dynamic, ?name:Dynamic):Dynamic;
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
		  ```python
		  >>> input = [s.encode('utf8') for s in (u'G\xf6\xf6dnight', u'\U0001f60a')]
		  >>> tf.strings.unicode_decode(input, 'UTF-8').tolist()
		  [[71, 246, 246, 100, 110, 105, 103, 104, 116], [128522]]
		  ```
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
		  ```python
		  >>> input = [s.encode('utf8') for s in (u'G\xf6\xf6dnight', u'\U0001f60a')]
		  >>> result = tf.strings.unicode_decode_with_offsets(input, 'UTF-8')
		  >>> result[0].tolist()  # codepoints
		  [[71, 246, 246, 100, 110, 105, 103, 104, 116], [128522]]
		  >>> result[1].tolist()  # offsets
		 [[0, 1, 3, 5, 6, 7, 8, 9, 10], [0]]
		  ```
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
		  ```python
		    >>> input = [[71, 246, 246, 100, 110, 105, 103, 104, 116], [128522]]
		    >>> unicode_encode(input, 'UTF8')
		    ['G\xc3\xb6\xc3\xb6dnight', '\xf0\x9f\x98\x8a']
		  ```
	**/
	static public function unicode_encode(input:Dynamic, output_encoding:Dynamic, ?errors:Dynamic, ?replacement_char:Dynamic, ?name:Dynamic):Dynamic;
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
		Splits each string in `input` into a sequence of Unicode code points.
		
		`result[i1...iN, j]` is the substring of `input[i1...iN] that encodes its
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
		  ```python
		  >>> input = [s.encode('utf8') for s in (u'G\xf6\xf6dnight', u'\U0001f60a')]
		  >>> tf.strings.unicode_split(input, 'UTF-8').tolist()
		  [['G', '\xc3\xb6', '\xc3\xb6', 'd', 'n', 'i', 'g', 'h', 't'],
		   ['\xf0\x9f\x98\x8a']]
		  ```
	**/
	static public function unicode_split(input:Dynamic, input_encoding:Dynamic, ?errors:Dynamic, ?replacement_char:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Splits each string into a sequence of code points with start offsets.
		
		This op is similar to `tf.strings.decode(...)`, but it also returns the
		start offset for each character in its respective string.  This information
		can be used to align the characters with the original byte sequence.
		
		Returns a tuple `(chars, start_offsets)` where:
		
		* `chars[i1...iN, j]` is the substring of `input[i1...iN] that encodes its
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
		  ```python
		  >>> input = [s.encode('utf8') for s in (u'G\xf6\xf6dnight', u'\U0001f60a')]
		  >>> result = tf.strings.unicode_split_with_offsets(input, 'UTF-8')
		  >>> result[0].tolist()  # character substrings
		  [['G', '\xc3\xb6', '\xc3\xb6', 'd', 'n', 'i', 'g', 'h', 't'],
		   ['\xf0\x9f\x98\x8a']]
		  >>> result[1].tolist()  # offsets
		 [[0, 1, 3, 5, 6, 7, 8, 9, 10], [0]]
		  ```
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
}