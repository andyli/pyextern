/* This file is generated, do not edit! */
package tensorflow.contrib.text;
@:pythonImport("tensorflow.contrib.text") extern class Text_Module {
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
		Generates skip-gram token and label paired Tensors from the input tensor.
		
		Generates skip-gram `("token", "label")` pairs using each element in the
		rank-1 `input_tensor` as a token. The window size used for each token will be
		randomly selected from the range specified by `[min_skips, max_skips]`,
		inclusive. See https://arxiv.org/abs/1301.3781 for more details about
		skip-gram.
		
		For example, given `input_tensor = ["the", "quick", "brown", "fox", "jumps"]`,
		`min_skips = 1`, `max_skips = 2`, `emit_self_as_target = False`, the output
		`(tokens, labels)` pairs for the token "quick" will be randomly selected from
		either `(tokens=["quick", "quick"], labels=["the", "brown"])` for 1 skip, or
		`(tokens=["quick", "quick", "quick"], labels=["the", "brown", "fox"])` for 2
		skips.
		
		If `emit_self_as_target = True`, each token will also be emitted as a label
		for itself. From the previous example, the output will be either
		`(tokens=["quick", "quick", "quick"], labels=["the", "quick", "brown"])` for 1
		skip, or `(tokens=["quick", "quick", "quick", "quick"], labels=["the",
		"quick", "brown", "fox"])` for 2 skips.
		
		The same process is repeated for each element of `input_tensor` and
		concatenated together into the two output rank-1 `Tensors` (one for all the
		tokens, another for all the labels).
		
		If `vocab_freq_table` is specified, tokens in `input_tensor` that are not
		present in the vocabulary are discarded. Tokens whose frequency counts are
		below `vocab_min_count` are also discarded. Tokens whose frequency proportions
		in the corpus exceed `vocab_subsampling` may be randomly down-sampled. See
		Eq. 5 in http://arxiv.org/abs/1310.4546 for more details about subsampling.
		
		Due to the random window sizes used for each token, the lengths of the outputs
		are non-deterministic, unless `batch_size` is specified to batch the outputs
		to always return `Tensors` of length `batch_size`.
		
		Args:
		  input_tensor: A rank-1 `Tensor` from which to generate skip-gram candidates.
		  min_skips: `int` or scalar `Tensor` specifying the minimum window size to
		    randomly use for each token. Must be >= 0 and <= `max_skips`. If
		    `min_skips` and `max_skips` are both 0, the only label outputted will be
		    the token itself when `emit_self_as_target = True` - or no output
		    otherwise.
		  max_skips: `int` or scalar `Tensor` specifying the maximum window size to
		    randomly use for each token. Must be >= 0.
		  start: `int` or scalar `Tensor` specifying the position in
		    `input_tensor` from which to start generating skip-gram candidates.
		  limit: `int` or scalar `Tensor` specifying the maximum number of
		    elements in `input_tensor` to use in generating skip-gram candidates. -1
		    means to use the rest of the `Tensor` after `start`.
		  emit_self_as_target: `bool` or scalar `Tensor` specifying whether to emit
		    each token as a label for itself.
		  vocab_freq_table: (Optional) A lookup table (subclass of
		    `lookup.InitializableLookupTableBase`) that maps tokens to their raw
		    frequency counts. If specified, any token in `input_tensor` that is not
		    found in `vocab_freq_table` will be filtered out before generating
		    skip-gram candidates. While this will typically map to integer raw
		    frequency counts, it could also map to float frequency proportions.
		    `vocab_min_count` and `corpus_size` should be in the same units as this.
		  vocab_min_count: (Optional) `int`, `float`, or scalar `Tensor` specifying
		    minimum frequency threshold (from `vocab_freq_table`) for a token to be
		    kept in `input_tensor`. If this is specified, `vocab_freq_table` must also
		    be specified - and they should both be in the same units.
		  vocab_subsampling: (Optional) `float` specifying frequency proportion
		    threshold for tokens from `input_tensor`. Tokens that occur more
		    frequently (based on the ratio of the token's `vocab_freq_table` value to
		    the `corpus_size`) will be randomly down-sampled. Reasonable starting
		    values may be around 1e-3 or 1e-5. If this is specified, both
		    `vocab_freq_table` and `corpus_size` must also be specified. See Eq. 5
		    in http://arxiv.org/abs/1310.4546 for more details.
		  corpus_size: (Optional) `int`, `float`, or scalar `Tensor` specifying the
		    total number of tokens in the corpus (e.g., sum of all the frequency
		    counts of `vocab_freq_table`). Used with `vocab_subsampling` for
		    down-sampling frequently occurring tokens. If this is specified,
		    `vocab_freq_table` and `vocab_subsampling` must also be specified.
		  batch_size: (Optional) `int` specifying batch size of returned `Tensors`.
		  batch_capacity: (Optional) `int` specifying batch capacity for the queue
		    used for batching returned `Tensors`. Only has an effect if
		    `batch_size` > 0. Defaults to 100 * `batch_size` if not specified.
		  seed: (Optional) `int` used to create a random seed for window size and
		    subsampling. See `set_random_seed` docs for behavior.
		  name: (Optional) A `string` name or a name scope for the operations.
		
		Returns:
		  A `tuple` containing (token, label) `Tensors`. Each output `Tensor` is of
		  rank-1 and has the same type as `input_tensor`. The `Tensors` will be of
		  length `batch_size`; if `batch_size` is not specified, they will be of
		  random length, though they will be in sync with each other as long as they
		  are evaluated together.
		
		Raises:
		  ValueError: If `vocab_freq_table` is not provided, but `vocab_min_count`,
		    `vocab_subsampling`, or `corpus_size` is specified. If `vocab_subsampling`
		    and `corpus_size` are not both present or both absent.
	**/
	static public function skip_gram_sample(input_tensor:Dynamic, ?min_skips:Dynamic, ?max_skips:Dynamic, ?start:Dynamic, ?limit:Dynamic, ?emit_self_as_target:Dynamic, ?vocab_freq_table:Dynamic, ?vocab_min_count:Dynamic, ?vocab_subsampling:Dynamic, ?corpus_size:Dynamic, ?batch_size:Dynamic, ?batch_capacity:Dynamic, ?seed:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Skip-gram sampling with a text vocabulary file.
		
		Wrapper around `skip_gram_sample()` for use with a text vocabulary file. The
		vocabulary file is expected to be a plain-text file, with lines of
		`vocab_delimiter`-separated columns. The `vocab_token_index` column should
		contain the vocabulary term, while the `vocab_freq_index` column should
		contain the number of times that term occurs in the corpus. For example, with
		a text vocabulary file of:
		
		  ```
		  bonjour,fr,42
		  hello,en,777
		  hola,es,99
		  ```
		
		You should set `vocab_delimiter=","`, `vocab_token_index=0`, and
		`vocab_freq_index=2`.
		
		See `skip_gram_sample()` documentation for more details about the skip-gram
		sampling process.
		
		Args:
		  input_tensor: A rank-1 `Tensor` from which to generate skip-gram candidates.
		  vocab_freq_file: `string` specifying full file path to the text vocab file.
		  vocab_token_index: `int` specifying which column in the text vocab file
		    contains the tokens.
		  vocab_token_dtype: `DType` specifying the format of the tokens in the text
		    vocab file.
		  vocab_freq_index: `int` specifying which column in the text vocab file
		    contains the frequency counts of the tokens.
		  vocab_freq_dtype: `DType` specifying the format of the frequency counts in
		    the text vocab file.
		  vocab_delimiter: `string` specifying the delimiter used in the text vocab
		    file.
		  vocab_min_count: `int`, `float`, or scalar `Tensor` specifying
		    minimum frequency threshold (from `vocab_freq_file`) for a token to be
		    kept in `input_tensor`. This should correspond with `vocab_freq_dtype`.
		  vocab_subsampling: (Optional) `float` specifying frequency proportion
		    threshold for tokens from `input_tensor`. Tokens that occur more
		    frequently will be randomly down-sampled. Reasonable starting values may
		    be around 1e-3 or 1e-5. See Eq. 5 in http://arxiv.org/abs/1310.4546 for
		    more details.
		  corpus_size: (Optional) `int`, `float`, or scalar `Tensor` specifying the
		    total number of tokens in the corpus (e.g., sum of all the frequency
		    counts of `vocab_freq_file`). Used with `vocab_subsampling` for
		    down-sampling frequently occurring tokens. If this is specified,
		    `vocab_freq_file` and `vocab_subsampling` must also be specified.
		    If `corpus_size` is needed but not supplied, then it will be calculated
		    from `vocab_freq_file`. You might want to supply your own value if you
		    have already eliminated infrequent tokens from your vocabulary files
		    (where frequency < vocab_min_count) to save memory in the internal token
		    lookup table. Otherwise, the unused tokens' variables will waste memory.
		    The user-supplied `corpus_size` value must be greater than or equal to the
		    sum of all the frequency counts of `vocab_freq_file`.
		  min_skips: `int` or scalar `Tensor` specifying the minimum window size to
		    randomly use for each token. Must be >= 0 and <= `max_skips`. If
		    `min_skips` and `max_skips` are both 0, the only label outputted will be
		    the token itself.
		  max_skips: `int` or scalar `Tensor` specifying the maximum window size to
		    randomly use for each token. Must be >= 0.
		  start: `int` or scalar `Tensor` specifying the position in `input_tensor`
		    from which to start generating skip-gram candidates.
		  limit: `int` or scalar `Tensor` specifying the maximum number of elements in
		    `input_tensor` to use in generating skip-gram candidates. -1 means to use
		    the rest of the `Tensor` after `start`.
		  emit_self_as_target: `bool` or scalar `Tensor` specifying whether to emit
		    each token as a label for itself.
		  batch_size: (Optional) `int` specifying batch size of returned `Tensors`.
		  batch_capacity: (Optional) `int` specifying batch capacity for the queue
		    used for batching returned `Tensors`. Only has an effect if
		    `batch_size` > 0. Defaults to 100 * `batch_size` if not specified.
		  seed: (Optional) `int` used to create a random seed for window size and
		    subsampling. See
		    [`set_random_seed`](../../g3doc/python/constant_op.md#set_random_seed)
		    for behavior.
		  name: (Optional) A `string` name or a name scope for the operations.
		
		Returns:
		  A `tuple` containing (token, label) `Tensors`. Each output `Tensor` is of
		  rank-1 and has the same type as `input_tensor`. The `Tensors` will be of
		  length `batch_size`; if `batch_size` is not specified, they will be of
		  random length, though they will be in sync with each other as long as they
		  are evaluated together.
		
		Raises:
		  ValueError: If `vocab_token_index` or `vocab_freq_index` is less than 0 or
		    exceeds the number of columns in `vocab_freq_file`. If `vocab_token_index`
		    and `vocab_freq_index` are both set to the same column. If any token in
		    `vocab_freq_file` has a negative frequency.
	**/
	static public function skip_gram_sample_with_text_vocab(input_tensor:Dynamic, vocab_freq_file:Dynamic, ?vocab_token_index:Dynamic, ?vocab_token_dtype:Dynamic, ?vocab_freq_index:Dynamic, ?vocab_freq_dtype:Dynamic, ?vocab_delimiter:Dynamic, ?vocab_min_count:Dynamic, ?vocab_subsampling:Dynamic, ?corpus_size:Dynamic, ?min_skips:Dynamic, ?max_skips:Dynamic, ?start:Dynamic, ?limit:Dynamic, ?emit_self_as_target:Dynamic, ?batch_size:Dynamic, ?batch_capacity:Dynamic, ?seed:Dynamic, ?name:Dynamic):Dynamic;
}