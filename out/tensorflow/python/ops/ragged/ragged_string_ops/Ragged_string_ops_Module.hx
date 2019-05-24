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
	/**
		Decodes each string into a sequence of codepoints.
	**/
	static public function _unicode_decode(input:Dynamic, input_encoding:Dynamic, errors:Dynamic, replacement_char:Dynamic, replace_control_characters:Dynamic, with_offsets:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
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
}