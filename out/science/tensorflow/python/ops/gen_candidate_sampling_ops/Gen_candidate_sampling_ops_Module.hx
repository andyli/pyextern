/* This file is generated, do not edit! */
package tensorflow.python.ops.gen_candidate_sampling_ops;
@:pythonImport("tensorflow.python.ops.gen_candidate_sampling_ops") extern class Gen_candidate_sampling_ops_Module {
	/**
		Generates labels for candidate sampling with a learned unigram distribution.
		
		See explanations of candidate sampling and the data formats at
		go/candidate-sampling.
		
		For each batch, this op picks a single set of sampled candidate labels.
		
		The advantages of sampling candidates per-batch are simplicity and the
		possibility of efficient dense matrix multiplication. The disadvantage is that
		the sampled candidates must be chosen independently of the context and of the
		true labels.
		
		Args:
		  true_classes: A `Tensor` of type `int64`.
		    A batch_size * num_true matrix, in which each row contains the
		    IDs of the num_true target_classes in the corresponding original label.
		  num_true: An `int` that is `>= 1`. Number of true labels per context.
		  num_sampled: An `int` that is `>= 1`. Number of candidates to produce.
		  unique: A `bool`.
		    If unique is true, we sample with rejection, so that all sampled
		    candidates in a batch are unique. This requires some approximation to
		    estimate the post-rejection sampling probabilities.
		  seed: An optional `int`. Defaults to `0`.
		    If either seed or seed2 are set to be non-zero, the random number
		    generator is seeded by the given seed.  Otherwise, it is seeded by a
		    random seed.
		  seed2: An optional `int`. Defaults to `0`.
		    An second seed to avoid seed collision.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (sampled_candidates, true_expected_count, sampled_expected_count).
		
		  sampled_candidates: A `Tensor` of type `int64`.
		  true_expected_count: A `Tensor` of type `float32`.
		  sampled_expected_count: A `Tensor` of type `float32`.
	**/
	static public function AllCandidateSampler(true_classes:Dynamic, num_true:Dynamic, num_sampled:Dynamic, unique:Dynamic, ?seed:Dynamic, ?seed2:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the ids of the positions in sampled_candidates that match true_labels.
		
		When doing log-odds NCE, the result of this op should be passed through a
		SparseToDense op, then added to the logits of the sampled candidates. This has
		the effect of 'removing' the sampled labels that match the true labels by
		making the classifier sure that they are sampled labels.
		
		Args:
		  true_classes: A `Tensor` of type `int64`.
		    The true_classes output of UnpackSparseLabels.
		  sampled_candidates: A `Tensor` of type `int64`.
		    The sampled_candidates output of CandidateSampler.
		  num_true: An `int`. Number of true labels per context.
		  seed: An optional `int`. Defaults to `0`.
		    If either seed or seed2 are set to be non-zero, the random number
		    generator is seeded by the given seed.  Otherwise, it is seeded by a
		    random seed.
		  seed2: An optional `int`. Defaults to `0`.
		    An second seed to avoid seed collision.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (indices, ids, weights).
		
		  indices: A `Tensor` of type `int32`.
		  ids: A `Tensor` of type `int64`.
		  weights: A `Tensor` of type `float32`.
	**/
	static public function ComputeAccidentalHits(true_classes:Dynamic, sampled_candidates:Dynamic, num_true:Dynamic, ?seed:Dynamic, ?seed2:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Generates labels for candidate sampling with a learned unigram distribution.
		
		A unigram sampler could use a fixed unigram distribution read from a
		file or passed in as an in-memory array instead of building up the distribution
		from data on the fly. There is also an option to skew the distribution by
		applying a distortion power to the weights.
		
		The vocabulary file should be in CSV-like format, with the last field
		being the weight associated with the word.
		
		For each batch, this op picks a single set of sampled candidate labels.
		
		The advantages of sampling candidates per-batch are simplicity and the
		possibility of efficient dense matrix multiplication. The disadvantage is that
		the sampled candidates must be chosen independently of the context and of the
		true labels.
		
		Args:
		  true_classes: A `Tensor` of type `int64`.
		    A batch_size * num_true matrix, in which each row contains the
		    IDs of the num_true target_classes in the corresponding original label.
		  num_true: An `int` that is `>= 1`. Number of true labels per context.
		  num_sampled: An `int` that is `>= 1`.
		    Number of candidates to randomly sample.
		  unique: A `bool`.
		    If unique is true, we sample with rejection, so that all sampled
		    candidates in a batch are unique. This requires some approximation to
		    estimate the post-rejection sampling probabilities.
		  range_max: An `int` that is `>= 1`.
		    The sampler will sample integers from the interval [0, range_max).
		  vocab_file: An optional `string`. Defaults to `""`.
		    Each valid line in this file (which should have a CSV-like format)
		    corresponds to a valid word ID. IDs are in sequential order, starting from
		    num_reserved_ids. The last entry in each line is expected to be a value
		    corresponding to the count or relative probability. Exactly one of vocab_file
		    and unigrams needs to be passed to this op.
		  distortion: An optional `float`. Defaults to `1`.
		    The distortion is used to skew the unigram probability distribution.
		    Each weight is first raised to the distortion's power before adding to the
		    internal unigram distribution. As a result, distortion = 1.0 gives regular
		    unigram sampling (as defined by the vocab file), and distortion = 0.0 gives
		    a uniform distribution.
		  num_reserved_ids: An optional `int`. Defaults to `0`.
		    Optionally some reserved IDs can be added in the range [0,
		    ..., num_reserved_ids) by the users. One use case is that a special unknown
		    word token is used as ID 0. These IDs will have a sampling probability of 0.
		  num_shards: An optional `int` that is `>= 1`. Defaults to `1`.
		    A sampler can be used to sample from a subset of the original range
		    in order to speed up the whole computation through parallelism. This parameter
		    (together with 'shard') indicates the number of partitions that are being
		    used in the overall computation.
		  shard: An optional `int` that is `>= 0`. Defaults to `0`.
		    A sampler can be used to sample from a subset of the original range
		    in order to speed up the whole computation through parallelism. This parameter
		    (together with 'num_shards') indicates the particular partition number of a
		    sampler op, when partitioning is being used.
		  unigrams: An optional list of `floats`. Defaults to `[]`.
		    A list of unigram counts or probabilities, one per ID in sequential
		    order. Exactly one of vocab_file and unigrams should be passed to this op.
		  seed: An optional `int`. Defaults to `0`.
		    If either seed or seed2 are set to be non-zero, the random number
		    generator is seeded by the given seed.  Otherwise, it is seeded by a
		    random seed.
		  seed2: An optional `int`. Defaults to `0`.
		    An second seed to avoid seed collision.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (sampled_candidates, true_expected_count, sampled_expected_count).
		
		  sampled_candidates: A `Tensor` of type `int64`.
		  true_expected_count: A `Tensor` of type `float32`.
		  sampled_expected_count: A `Tensor` of type `float32`.
	**/
	static public function FixedUnigramCandidateSampler(true_classes:Dynamic, num_true:Dynamic, num_sampled:Dynamic, unique:Dynamic, range_max:Dynamic, ?vocab_file:Dynamic, ?distortion:Dynamic, ?num_reserved_ids:Dynamic, ?num_shards:Dynamic, ?shard:Dynamic, ?unigrams:Dynamic, ?seed:Dynamic, ?seed2:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Generates labels for candidate sampling with a learned unigram distribution.
		
		See explanations of candidate sampling and the data formats at
		go/candidate-sampling.
		
		For each batch, this op picks a single set of sampled candidate labels.
		
		The advantages of sampling candidates per-batch are simplicity and the
		possibility of efficient dense matrix multiplication. The disadvantage is that
		the sampled candidates must be chosen independently of the context and of the
		true labels.
		
		Args:
		  true_classes: A `Tensor` of type `int64`.
		    A batch_size * num_true matrix, in which each row contains the
		    IDs of the num_true target_classes in the corresponding original label.
		  num_true: An `int` that is `>= 1`. Number of true labels per context.
		  num_sampled: An `int` that is `>= 1`.
		    Number of candidates to randomly sample.
		  unique: A `bool`.
		    If unique is true, we sample with rejection, so that all sampled
		    candidates in a batch are unique. This requires some approximation to
		    estimate the post-rejection sampling probabilities.
		  range_max: An `int` that is `>= 1`.
		    The sampler will sample integers from the interval [0, range_max).
		  seed: An optional `int`. Defaults to `0`.
		    If either seed or seed2 are set to be non-zero, the random number
		    generator is seeded by the given seed.  Otherwise, it is seeded by a
		    random seed.
		  seed2: An optional `int`. Defaults to `0`.
		    An second seed to avoid seed collision.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (sampled_candidates, true_expected_count, sampled_expected_count).
		
		  sampled_candidates: A `Tensor` of type `int64`.
		  true_expected_count: A `Tensor` of type `float32`.
		  sampled_expected_count: A `Tensor` of type `float32`.
	**/
	static public function LearnedUnigramCandidateSampler(true_classes:Dynamic, num_true:Dynamic, num_sampled:Dynamic, unique:Dynamic, range_max:Dynamic, ?seed:Dynamic, ?seed2:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Generates labels for candidate sampling with a log-uniform distribution.
		
		See explanations of candidate sampling and the data formats at
		go/candidate-sampling.
		
		For each batch, this op picks a single set of sampled candidate labels.
		
		The advantages of sampling candidates per-batch are simplicity and the
		possibility of efficient dense matrix multiplication. The disadvantage is that
		the sampled candidates must be chosen independently of the context and of the
		true labels.
		
		Args:
		  true_classes: A `Tensor` of type `int64`.
		    A batch_size * num_true matrix, in which each row contains the
		    IDs of the num_true target_classes in the corresponding original label.
		  num_true: An `int` that is `>= 1`. Number of true labels per context.
		  num_sampled: An `int` that is `>= 1`.
		    Number of candidates to randomly sample.
		  unique: A `bool`.
		    If unique is true, we sample with rejection, so that all sampled
		    candidates in a batch are unique. This requires some approximation to
		    estimate the post-rejection sampling probabilities.
		  range_max: An `int` that is `>= 1`.
		    The sampler will sample integers from the interval [0, range_max).
		  seed: An optional `int`. Defaults to `0`.
		    If either seed or seed2 are set to be non-zero, the random number
		    generator is seeded by the given seed.  Otherwise, it is seeded by a
		    random seed.
		  seed2: An optional `int`. Defaults to `0`.
		    An second seed to avoid seed collision.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (sampled_candidates, true_expected_count, sampled_expected_count).
		
		  sampled_candidates: A `Tensor` of type `int64`.
		  true_expected_count: A `Tensor` of type `float32`.
		  sampled_expected_count: A `Tensor` of type `float32`.
	**/
	static public function LogUniformCandidateSampler(true_classes:Dynamic, num_true:Dynamic, num_sampled:Dynamic, unique:Dynamic, range_max:Dynamic, ?seed:Dynamic, ?seed2:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Generates labels for candidate sampling with a learned unigram distribution.
		
		See explanations of candidate sampling and the data formats at
		go/candidate-sampling.
		
		For each batch, this op picks a single set of sampled candidate labels.
		
		The advantages of sampling candidates per-batch are simplicity and the
		possibility of efficient dense matrix multiplication. The disadvantage is that
		the sampled candidates must be chosen independently of the context and of the
		true labels.
		
		Args:
		  true_classes: A `Tensor` of type `int64`.
		    A batch_size * num_true matrix, in which each row contains the
		    IDs of the num_true target_classes in the corresponding original label.
		  num_true: An `int` that is `>= 1`. Number of true labels per context.
		  num_sampled: An `int` that is `>= 1`.
		    Number of candidates to randomly sample.
		  unique: A `bool`.
		    If unique is true, we sample with rejection, so that all sampled
		    candidates in a batch are unique. This requires some approximation to
		    estimate the post-rejection sampling probabilities.
		  range_max: An `int` that is `>= 1`.
		    The sampler will sample integers from the interval [0, range_max).
		  seed: An optional `int`. Defaults to `0`.
		    If either seed or seed2 are set to be non-zero, the random number
		    generator is seeded by the given seed.  Otherwise, it is seeded by a
		    random seed.
		  seed2: An optional `int`. Defaults to `0`.
		    An second seed to avoid seed collision.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (sampled_candidates, true_expected_count, sampled_expected_count).
		
		  sampled_candidates: A `Tensor` of type `int64`.
		  true_expected_count: A `Tensor` of type `float32`.
		  sampled_expected_count: A `Tensor` of type `float32`.
	**/
	static public function ThreadUnsafeUnigramCandidateSampler(true_classes:Dynamic, num_true:Dynamic, num_sampled:Dynamic, unique:Dynamic, range_max:Dynamic, ?seed:Dynamic, ?seed2:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Generates labels for candidate sampling with a uniform distribution.
		
		See explanations of candidate sampling and the data formats at
		go/candidate-sampling.
		
		For each batch, this op picks a single set of sampled candidate labels.
		
		The advantages of sampling candidates per-batch are simplicity and the
		possibility of efficient dense matrix multiplication. The disadvantage is that
		the sampled candidates must be chosen independently of the context and of the
		true labels.
		
		Args:
		  true_classes: A `Tensor` of type `int64`.
		    A batch_size * num_true matrix, in which each row contains the
		    IDs of the num_true target_classes in the corresponding original label.
		  num_true: An `int` that is `>= 1`. Number of true labels per context.
		  num_sampled: An `int` that is `>= 1`.
		    Number of candidates to randomly sample.
		  unique: A `bool`.
		    If unique is true, we sample with rejection, so that all sampled
		    candidates in a batch are unique. This requires some approximation to
		    estimate the post-rejection sampling probabilities.
		  range_max: An `int` that is `>= 1`.
		    The sampler will sample integers from the interval [0, range_max).
		  seed: An optional `int`. Defaults to `0`.
		    If either seed or seed2 are set to be non-zero, the random number
		    generator is seeded by the given seed.  Otherwise, it is seeded by a
		    random seed.
		  seed2: An optional `int`. Defaults to `0`.
		    An second seed to avoid seed collision.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (sampled_candidates, true_expected_count, sampled_expected_count).
		
		  sampled_candidates: A `Tensor` of type `int64`.
		  true_expected_count: A `Tensor` of type `float32`.
		  sampled_expected_count: A `Tensor` of type `float32`.
	**/
	static public function UniformCandidateSampler(true_classes:Dynamic, num_true:Dynamic, num_sampled:Dynamic, unique:Dynamic, range_max:Dynamic, ?seed:Dynamic, ?seed2:Dynamic, ?name:Dynamic):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Generates labels for candidate sampling with a learned unigram distribution.
		
		See explanations of candidate sampling and the data formats at
		go/candidate-sampling.
		
		For each batch, this op picks a single set of sampled candidate labels.
		
		The advantages of sampling candidates per-batch are simplicity and the
		possibility of efficient dense matrix multiplication. The disadvantage is that
		the sampled candidates must be chosen independently of the context and of the
		true labels.
		
		Args:
		  true_classes: A `Tensor` of type `int64`.
		    A batch_size * num_true matrix, in which each row contains the
		    IDs of the num_true target_classes in the corresponding original label.
		  num_true: An `int` that is `>= 1`. Number of true labels per context.
		  num_sampled: An `int` that is `>= 1`. Number of candidates to produce.
		  unique: A `bool`.
		    If unique is true, we sample with rejection, so that all sampled
		    candidates in a batch are unique. This requires some approximation to
		    estimate the post-rejection sampling probabilities.
		  seed: An optional `int`. Defaults to `0`.
		    If either seed or seed2 are set to be non-zero, the random number
		    generator is seeded by the given seed.  Otherwise, it is seeded by a
		    random seed.
		  seed2: An optional `int`. Defaults to `0`.
		    An second seed to avoid seed collision.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (sampled_candidates, true_expected_count, sampled_expected_count).
		
		  sampled_candidates: A `Tensor` of type `int64`.
		  true_expected_count: A `Tensor` of type `float32`.
		  sampled_expected_count: A `Tensor` of type `float32`.
	**/
	static public function all_candidate_sampler(true_classes:Dynamic, num_true:Dynamic, num_sampled:Dynamic, unique:Dynamic, ?seed:Dynamic, ?seed2:Dynamic, ?name:Dynamic):Dynamic;
	static public function all_candidate_sampler_eager_fallback(true_classes:Dynamic, num_true:Dynamic, num_sampled:Dynamic, unique:Dynamic, seed:Dynamic, seed2:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Computes the ids of the positions in sampled_candidates that match true_labels.
		
		When doing log-odds NCE, the result of this op should be passed through a
		SparseToDense op, then added to the logits of the sampled candidates. This has
		the effect of 'removing' the sampled labels that match the true labels by
		making the classifier sure that they are sampled labels.
		
		Args:
		  true_classes: A `Tensor` of type `int64`.
		    The true_classes output of UnpackSparseLabels.
		  sampled_candidates: A `Tensor` of type `int64`.
		    The sampled_candidates output of CandidateSampler.
		  num_true: An `int`. Number of true labels per context.
		  seed: An optional `int`. Defaults to `0`.
		    If either seed or seed2 are set to be non-zero, the random number
		    generator is seeded by the given seed.  Otherwise, it is seeded by a
		    random seed.
		  seed2: An optional `int`. Defaults to `0`.
		    An second seed to avoid seed collision.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (indices, ids, weights).
		
		  indices: A `Tensor` of type `int32`.
		  ids: A `Tensor` of type `int64`.
		  weights: A `Tensor` of type `float32`.
	**/
	static public function compute_accidental_hits(true_classes:Dynamic, sampled_candidates:Dynamic, num_true:Dynamic, ?seed:Dynamic, ?seed2:Dynamic, ?name:Dynamic):Dynamic;
	static public function compute_accidental_hits_eager_fallback(true_classes:Dynamic, sampled_candidates:Dynamic, num_true:Dynamic, seed:Dynamic, seed2:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	/**
		Generates labels for candidate sampling with a learned unigram distribution.
		
		A unigram sampler could use a fixed unigram distribution read from a
		file or passed in as an in-memory array instead of building up the distribution
		from data on the fly. There is also an option to skew the distribution by
		applying a distortion power to the weights.
		
		The vocabulary file should be in CSV-like format, with the last field
		being the weight associated with the word.
		
		For each batch, this op picks a single set of sampled candidate labels.
		
		The advantages of sampling candidates per-batch are simplicity and the
		possibility of efficient dense matrix multiplication. The disadvantage is that
		the sampled candidates must be chosen independently of the context and of the
		true labels.
		
		Args:
		  true_classes: A `Tensor` of type `int64`.
		    A batch_size * num_true matrix, in which each row contains the
		    IDs of the num_true target_classes in the corresponding original label.
		  num_true: An `int` that is `>= 1`. Number of true labels per context.
		  num_sampled: An `int` that is `>= 1`.
		    Number of candidates to randomly sample.
		  unique: A `bool`.
		    If unique is true, we sample with rejection, so that all sampled
		    candidates in a batch are unique. This requires some approximation to
		    estimate the post-rejection sampling probabilities.
		  range_max: An `int` that is `>= 1`.
		    The sampler will sample integers from the interval [0, range_max).
		  vocab_file: An optional `string`. Defaults to `""`.
		    Each valid line in this file (which should have a CSV-like format)
		    corresponds to a valid word ID. IDs are in sequential order, starting from
		    num_reserved_ids. The last entry in each line is expected to be a value
		    corresponding to the count or relative probability. Exactly one of vocab_file
		    and unigrams needs to be passed to this op.
		  distortion: An optional `float`. Defaults to `1`.
		    The distortion is used to skew the unigram probability distribution.
		    Each weight is first raised to the distortion's power before adding to the
		    internal unigram distribution. As a result, distortion = 1.0 gives regular
		    unigram sampling (as defined by the vocab file), and distortion = 0.0 gives
		    a uniform distribution.
		  num_reserved_ids: An optional `int`. Defaults to `0`.
		    Optionally some reserved IDs can be added in the range [0,
		    ..., num_reserved_ids) by the users. One use case is that a special unknown
		    word token is used as ID 0. These IDs will have a sampling probability of 0.
		  num_shards: An optional `int` that is `>= 1`. Defaults to `1`.
		    A sampler can be used to sample from a subset of the original range
		    in order to speed up the whole computation through parallelism. This parameter
		    (together with 'shard') indicates the number of partitions that are being
		    used in the overall computation.
		  shard: An optional `int` that is `>= 0`. Defaults to `0`.
		    A sampler can be used to sample from a subset of the original range
		    in order to speed up the whole computation through parallelism. This parameter
		    (together with 'num_shards') indicates the particular partition number of a
		    sampler op, when partitioning is being used.
		  unigrams: An optional list of `floats`. Defaults to `[]`.
		    A list of unigram counts or probabilities, one per ID in sequential
		    order. Exactly one of vocab_file and unigrams should be passed to this op.
		  seed: An optional `int`. Defaults to `0`.
		    If either seed or seed2 are set to be non-zero, the random number
		    generator is seeded by the given seed.  Otherwise, it is seeded by a
		    random seed.
		  seed2: An optional `int`. Defaults to `0`.
		    An second seed to avoid seed collision.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (sampled_candidates, true_expected_count, sampled_expected_count).
		
		  sampled_candidates: A `Tensor` of type `int64`.
		  true_expected_count: A `Tensor` of type `float32`.
		  sampled_expected_count: A `Tensor` of type `float32`.
	**/
	static public function fixed_unigram_candidate_sampler(true_classes:Dynamic, num_true:Dynamic, num_sampled:Dynamic, unique:Dynamic, range_max:Dynamic, ?vocab_file:Dynamic, ?distortion:Dynamic, ?num_reserved_ids:Dynamic, ?num_shards:Dynamic, ?shard:Dynamic, ?unigrams:Dynamic, ?seed:Dynamic, ?seed2:Dynamic, ?name:Dynamic):Dynamic;
	static public function fixed_unigram_candidate_sampler_eager_fallback(true_classes:Dynamic, num_true:Dynamic, num_sampled:Dynamic, unique:Dynamic, range_max:Dynamic, vocab_file:Dynamic, distortion:Dynamic, num_reserved_ids:Dynamic, num_shards:Dynamic, shard:Dynamic, unigrams:Dynamic, seed:Dynamic, seed2:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Generates labels for candidate sampling with a learned unigram distribution.
		
		See explanations of candidate sampling and the data formats at
		go/candidate-sampling.
		
		For each batch, this op picks a single set of sampled candidate labels.
		
		The advantages of sampling candidates per-batch are simplicity and the
		possibility of efficient dense matrix multiplication. The disadvantage is that
		the sampled candidates must be chosen independently of the context and of the
		true labels.
		
		Args:
		  true_classes: A `Tensor` of type `int64`.
		    A batch_size * num_true matrix, in which each row contains the
		    IDs of the num_true target_classes in the corresponding original label.
		  num_true: An `int` that is `>= 1`. Number of true labels per context.
		  num_sampled: An `int` that is `>= 1`.
		    Number of candidates to randomly sample.
		  unique: A `bool`.
		    If unique is true, we sample with rejection, so that all sampled
		    candidates in a batch are unique. This requires some approximation to
		    estimate the post-rejection sampling probabilities.
		  range_max: An `int` that is `>= 1`.
		    The sampler will sample integers from the interval [0, range_max).
		  seed: An optional `int`. Defaults to `0`.
		    If either seed or seed2 are set to be non-zero, the random number
		    generator is seeded by the given seed.  Otherwise, it is seeded by a
		    random seed.
		  seed2: An optional `int`. Defaults to `0`.
		    An second seed to avoid seed collision.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (sampled_candidates, true_expected_count, sampled_expected_count).
		
		  sampled_candidates: A `Tensor` of type `int64`.
		  true_expected_count: A `Tensor` of type `float32`.
		  sampled_expected_count: A `Tensor` of type `float32`.
	**/
	static public function learned_unigram_candidate_sampler(true_classes:Dynamic, num_true:Dynamic, num_sampled:Dynamic, unique:Dynamic, range_max:Dynamic, ?seed:Dynamic, ?seed2:Dynamic, ?name:Dynamic):Dynamic;
	static public function learned_unigram_candidate_sampler_eager_fallback(true_classes:Dynamic, num_true:Dynamic, num_sampled:Dynamic, unique:Dynamic, range_max:Dynamic, seed:Dynamic, seed2:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Generates labels for candidate sampling with a log-uniform distribution.
		
		See explanations of candidate sampling and the data formats at
		go/candidate-sampling.
		
		For each batch, this op picks a single set of sampled candidate labels.
		
		The advantages of sampling candidates per-batch are simplicity and the
		possibility of efficient dense matrix multiplication. The disadvantage is that
		the sampled candidates must be chosen independently of the context and of the
		true labels.
		
		Args:
		  true_classes: A `Tensor` of type `int64`.
		    A batch_size * num_true matrix, in which each row contains the
		    IDs of the num_true target_classes in the corresponding original label.
		  num_true: An `int` that is `>= 1`. Number of true labels per context.
		  num_sampled: An `int` that is `>= 1`.
		    Number of candidates to randomly sample.
		  unique: A `bool`.
		    If unique is true, we sample with rejection, so that all sampled
		    candidates in a batch are unique. This requires some approximation to
		    estimate the post-rejection sampling probabilities.
		  range_max: An `int` that is `>= 1`.
		    The sampler will sample integers from the interval [0, range_max).
		  seed: An optional `int`. Defaults to `0`.
		    If either seed or seed2 are set to be non-zero, the random number
		    generator is seeded by the given seed.  Otherwise, it is seeded by a
		    random seed.
		  seed2: An optional `int`. Defaults to `0`.
		    An second seed to avoid seed collision.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (sampled_candidates, true_expected_count, sampled_expected_count).
		
		  sampled_candidates: A `Tensor` of type `int64`.
		  true_expected_count: A `Tensor` of type `float32`.
		  sampled_expected_count: A `Tensor` of type `float32`.
	**/
	static public function log_uniform_candidate_sampler(true_classes:Dynamic, num_true:Dynamic, num_sampled:Dynamic, unique:Dynamic, range_max:Dynamic, ?seed:Dynamic, ?seed2:Dynamic, ?name:Dynamic):Dynamic;
	static public function log_uniform_candidate_sampler_eager_fallback(true_classes:Dynamic, num_true:Dynamic, num_sampled:Dynamic, unique:Dynamic, range_max:Dynamic, seed:Dynamic, seed2:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Generates labels for candidate sampling with a learned unigram distribution.
		
		See explanations of candidate sampling and the data formats at
		go/candidate-sampling.
		
		For each batch, this op picks a single set of sampled candidate labels.
		
		The advantages of sampling candidates per-batch are simplicity and the
		possibility of efficient dense matrix multiplication. The disadvantage is that
		the sampled candidates must be chosen independently of the context and of the
		true labels.
		
		Args:
		  true_classes: A `Tensor` of type `int64`.
		    A batch_size * num_true matrix, in which each row contains the
		    IDs of the num_true target_classes in the corresponding original label.
		  num_true: An `int` that is `>= 1`. Number of true labels per context.
		  num_sampled: An `int` that is `>= 1`.
		    Number of candidates to randomly sample.
		  unique: A `bool`.
		    If unique is true, we sample with rejection, so that all sampled
		    candidates in a batch are unique. This requires some approximation to
		    estimate the post-rejection sampling probabilities.
		  range_max: An `int` that is `>= 1`.
		    The sampler will sample integers from the interval [0, range_max).
		  seed: An optional `int`. Defaults to `0`.
		    If either seed or seed2 are set to be non-zero, the random number
		    generator is seeded by the given seed.  Otherwise, it is seeded by a
		    random seed.
		  seed2: An optional `int`. Defaults to `0`.
		    An second seed to avoid seed collision.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (sampled_candidates, true_expected_count, sampled_expected_count).
		
		  sampled_candidates: A `Tensor` of type `int64`.
		  true_expected_count: A `Tensor` of type `float32`.
		  sampled_expected_count: A `Tensor` of type `float32`.
	**/
	static public function thread_unsafe_unigram_candidate_sampler(true_classes:Dynamic, num_true:Dynamic, num_sampled:Dynamic, unique:Dynamic, range_max:Dynamic, ?seed:Dynamic, ?seed2:Dynamic, ?name:Dynamic):Dynamic;
	static public function thread_unsafe_unigram_candidate_sampler_eager_fallback(true_classes:Dynamic, num_true:Dynamic, num_sampled:Dynamic, unique:Dynamic, range_max:Dynamic, seed:Dynamic, seed2:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Generates labels for candidate sampling with a uniform distribution.
		
		See explanations of candidate sampling and the data formats at
		go/candidate-sampling.
		
		For each batch, this op picks a single set of sampled candidate labels.
		
		The advantages of sampling candidates per-batch are simplicity and the
		possibility of efficient dense matrix multiplication. The disadvantage is that
		the sampled candidates must be chosen independently of the context and of the
		true labels.
		
		Args:
		  true_classes: A `Tensor` of type `int64`.
		    A batch_size * num_true matrix, in which each row contains the
		    IDs of the num_true target_classes in the corresponding original label.
		  num_true: An `int` that is `>= 1`. Number of true labels per context.
		  num_sampled: An `int` that is `>= 1`.
		    Number of candidates to randomly sample.
		  unique: A `bool`.
		    If unique is true, we sample with rejection, so that all sampled
		    candidates in a batch are unique. This requires some approximation to
		    estimate the post-rejection sampling probabilities.
		  range_max: An `int` that is `>= 1`.
		    The sampler will sample integers from the interval [0, range_max).
		  seed: An optional `int`. Defaults to `0`.
		    If either seed or seed2 are set to be non-zero, the random number
		    generator is seeded by the given seed.  Otherwise, it is seeded by a
		    random seed.
		  seed2: An optional `int`. Defaults to `0`.
		    An second seed to avoid seed collision.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (sampled_candidates, true_expected_count, sampled_expected_count).
		
		  sampled_candidates: A `Tensor` of type `int64`.
		  true_expected_count: A `Tensor` of type `float32`.
		  sampled_expected_count: A `Tensor` of type `float32`.
	**/
	static public function uniform_candidate_sampler(true_classes:Dynamic, num_true:Dynamic, num_sampled:Dynamic, unique:Dynamic, range_max:Dynamic, ?seed:Dynamic, ?seed2:Dynamic, ?name:Dynamic):Dynamic;
	static public function uniform_candidate_sampler_eager_fallback(true_classes:Dynamic, num_true:Dynamic, num_sampled:Dynamic, unique:Dynamic, range_max:Dynamic, seed:Dynamic, seed2:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
}