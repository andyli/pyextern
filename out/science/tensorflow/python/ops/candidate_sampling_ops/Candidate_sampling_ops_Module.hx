/* This file is generated, do not edit! */
package tensorflow.python.ops.candidate_sampling_ops;
@:pythonImport("tensorflow.python.ops.candidate_sampling_ops") extern class Candidate_sampling_ops_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Generate the set of all classes.
		
		Deterministically generates and returns the set of all possible classes.
		For testing purposes.  There is no need to use this, since you might as
		well use full softmax or full logistic regression.
		
		Args:
		  true_classes: A `Tensor` of type `int64` and shape `[batch_size,
		    num_true]`. The target classes.
		  num_true: An `int`.  The number of target classes per training example.
		  num_sampled: An `int`.  The number of possible classes.
		  unique: A `bool`. Ignored.
		    unique.
		  seed: An `int`. An operation-specific seed. Default is 0.
		  name: A name for the operation (optional).
		
		Returns:
		  sampled_candidates: A tensor of type `int64` and shape `[num_sampled]`.
		    This operation deterministically returns the entire range
		    `[0, num_sampled]`.
		  true_expected_count: A tensor of type `float`.  Same shape as
		    `true_classes`. The expected counts under the sampling distribution
		    of each of `true_classes`. All returned values are 1.0.
		  sampled_expected_count: A tensor of type `float`. Same shape as
		    `sampled_candidates`. The expected counts under the sampling distribution
		    of each of `sampled_candidates`. All returned values are 1.0.
	**/
	static public function all_candidate_sampler(true_classes:Dynamic, num_true:Dynamic, num_sampled:Dynamic, unique:Dynamic, ?seed:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Compute the position ids in `sampled_candidates` matching `true_classes`.
		
		In Candidate Sampling, this operation facilitates virtually removing
		sampled classes which happen to match target classes.  This is done
		in Sampled Softmax and Sampled Logistic.
		
		See our [Candidate Sampling Algorithms
		Reference](http://www.tensorflow.org/extras/candidate_sampling.pdf).
		
		We presuppose that the `sampled_candidates` are unique.
		
		We call it an 'accidental hit' when one of the target classes
		matches one of the sampled classes.  This operation reports
		accidental hits as triples `(index, id, weight)`, where `index`
		represents the row number in `true_classes`, `id` represents the
		position in `sampled_candidates`, and weight is `-FLOAT_MAX`.
		
		The result of this op should be passed through a `sparse_to_dense`
		operation, then added to the logits of the sampled classes. This
		removes the contradictory effect of accidentally sampling the true
		target classes as noise classes for the same example.
		
		Args:
		  true_classes: A `Tensor` of type `int64` and shape `[batch_size,
		    num_true]`. The target classes.
		  sampled_candidates: A tensor of type `int64` and shape `[num_sampled]`.
		    The sampled_candidates output of CandidateSampler.
		  num_true: An `int`.  The number of target classes per training example.
		  seed: An `int`. An operation-specific seed. Default is 0.
		  name: A name for the operation (optional).
		
		Returns:
		  indices: A `Tensor` of type `int32` and shape `[num_accidental_hits]`.
		    Values indicate rows in `true_classes`.
		  ids: A `Tensor` of type `int64` and shape `[num_accidental_hits]`.
		    Values indicate positions in `sampled_candidates`.
		  weights: A `Tensor` of type `float` and shape `[num_accidental_hits]`.
		    Each value is `-FLOAT_MAX`.
	**/
	static public function compute_accidental_hits(true_classes:Dynamic, sampled_candidates:Dynamic, num_true:Dynamic, ?seed:Dynamic, ?name:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Samples a set of classes using the provided (fixed) base distribution.
		
		This operation randomly samples a tensor of sampled classes
		(`sampled_candidates`) from the range of integers `[0, range_max)`.
		
		The elements of `sampled_candidates` are drawn without replacement
		(if `unique=True`) or with replacement (if `unique=False`) from
		the base distribution.
		
		The base distribution is read from a file or passed in as an
		in-memory array. There is also an option to skew the distribution by
		applying a distortion power to the weights.
		
		In addition, this operation returns tensors `true_expected_count`
		and `sampled_expected_count` representing the number of times each
		of the target classes (`true_classes`) and the sampled
		classes (`sampled_candidates`) is expected to occur in an average
		tensor of sampled classes.  These values correspond to `Q(y|x)`
		defined in [this
		document](http://www.tensorflow.org/extras/candidate_sampling.pdf).
		If `unique=True`, then these are post-rejection probabilities and we
		compute them approximately.
		
		Args:
		  true_classes: A `Tensor` of type `int64` and shape `[batch_size,
		    num_true]`. The target classes.
		  num_true: An `int`.  The number of target classes per training example.
		  num_sampled: An `int`.  The number of classes to randomly sample.
		  unique: A `bool`. Determines whether all sampled classes in a batch are
		    unique.
		  range_max: An `int`. The number of possible classes.
		  vocab_file: Each valid line in this file (which should have a CSV-like
		    format) corresponds to a valid word ID. IDs are in sequential order,
		    starting from num_reserved_ids. The last entry in each line is expected
		    to be a value corresponding to the count or relative probability. Exactly
		    one of `vocab_file` and `unigrams` needs to be passed to this operation.
		  distortion: The distortion is used to skew the unigram probability
		    distribution.  Each weight is first raised to the distortion's power
		    before adding to the internal unigram distribution. As a result,
		    `distortion = 1.0` gives regular unigram sampling (as defined by the vocab
		    file), and `distortion = 0.0` gives a uniform distribution.
		  num_reserved_ids: Optionally some reserved IDs can be added in the range
		    `[0, num_reserved_ids)` by the users. One use case is that a special
		    unknown word token is used as ID 0. These IDs will have a sampling
		    probability of 0.
		  num_shards: A sampler can be used to sample from a subset of the original
		    range in order to speed up the whole computation through parallelism. This
		    parameter (together with `shard`) indicates the number of partitions that
		    are being used in the overall computation.
		  shard: A sampler can be used to sample from a subset of the original range
		    in order to speed up the whole computation through parallelism. This
		    parameter (together with `num_shards`) indicates the particular partition
		    number of the operation, when partitioning is being used.
		  unigrams: A list of unigram counts or probabilities, one per ID in
		    sequential order. Exactly one of `vocab_file` and `unigrams` should be
		    passed to this operation.
		  seed: An `int`. An operation-specific seed. Default is 0.
		  name: A name for the operation (optional).
		
		Returns:
		  sampled_candidates: A tensor of type `int64` and shape `[num_sampled]`.
		    The sampled classes.
		  true_expected_count: A tensor of type `float`.  Same shape as
		    `true_classes`. The expected counts under the sampling distribution
		    of each of `true_classes`.
		  sampled_expected_count: A tensor of type `float`. Same shape as
		    `sampled_candidates`. The expected counts under the sampling distribution
		    of each of `sampled_candidates`.
	**/
	static public function fixed_unigram_candidate_sampler(true_classes:Dynamic, num_true:Dynamic, num_sampled:Dynamic, unique:Dynamic, range_max:Dynamic, ?vocab_file:Dynamic, ?distortion:Dynamic, ?num_reserved_ids:Dynamic, ?num_shards:Dynamic, ?shard:Dynamic, ?unigrams:Dynamic, ?seed:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Samples a set of classes from a distribution learned during training.
		
		This operation randomly samples a tensor of sampled classes
		(`sampled_candidates`) from the range of integers `[0, range_max)`.
		
		The elements of `sampled_candidates` are drawn without replacement
		(if `unique=True`) or with replacement (if `unique=False`) from
		the base distribution.
		
		The base distribution for this operation is constructed on the fly
		during training.  It is a unigram distribution over the target
		classes seen so far during training.  Every integer in `[0, range_max)`
		begins with a weight of 1, and is incremented by 1 each time it is
		seen as a target class.  The base distribution is not saved to checkpoints,
		so it is reset when the model is reloaded.
		
		In addition, this operation returns tensors `true_expected_count`
		and `sampled_expected_count` representing the number of times each
		of the target classes (`true_classes`) and the sampled
		classes (`sampled_candidates`) is expected to occur in an average
		tensor of sampled classes.  These values correspond to `Q(y|x)`
		defined in [this
		document](http://www.tensorflow.org/extras/candidate_sampling.pdf).
		If `unique=True`, then these are post-rejection probabilities and we
		compute them approximately.
		
		Args:
		  true_classes: A `Tensor` of type `int64` and shape `[batch_size,
		    num_true]`. The target classes.
		  num_true: An `int`.  The number of target classes per training example.
		  num_sampled: An `int`.  The number of classes to randomly sample.
		  unique: A `bool`. Determines whether all sampled classes in a batch are
		    unique.
		  range_max: An `int`. The number of possible classes.
		  seed: An `int`. An operation-specific seed. Default is 0.
		  name: A name for the operation (optional).
		
		Returns:
		  sampled_candidates: A tensor of type `int64` and shape `[num_sampled]`.
		    The sampled classes.
		  true_expected_count: A tensor of type `float`.  Same shape as
		    `true_classes`. The expected counts under the sampling distribution
		    of each of `true_classes`.
		  sampled_expected_count: A tensor of type `float`. Same shape as
		    `sampled_candidates`. The expected counts under the sampling distribution
		    of each of `sampled_candidates`.
	**/
	static public function learned_unigram_candidate_sampler(true_classes:Dynamic, num_true:Dynamic, num_sampled:Dynamic, unique:Dynamic, range_max:Dynamic, ?seed:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Samples a set of classes using a log-uniform (Zipfian) base distribution.
		
		This operation randomly samples a tensor of sampled classes
		(`sampled_candidates`) from the range of integers `[0, range_max)`.
		
		The elements of `sampled_candidates` are drawn without replacement
		(if `unique=True`) or with replacement (if `unique=False`) from
		the base distribution.
		
		The base distribution for this operation is an approximately log-uniform
		or Zipfian distribution:
		
		`P(class) = (log(class + 2) - log(class + 1)) / log(range_max + 1)`
		
		This sampler is useful when the target classes approximately follow such
		a distribution - for example, if the classes represent words in a lexicon
		sorted in decreasing order of frequency. If your classes are not ordered by
		decreasing frequency, do not use this op.
		
		In addition, this operation returns tensors `true_expected_count`
		and `sampled_expected_count` representing the number of times each
		of the target classes (`true_classes`) and the sampled
		classes (`sampled_candidates`) is expected to occur in an average
		tensor of sampled classes.  These values correspond to `Q(y|x)`
		defined in [this
		document](http://www.tensorflow.org/extras/candidate_sampling.pdf).
		If `unique=True`, then these are post-rejection probabilities and we
		compute them approximately.
		
		Args:
		  true_classes: A `Tensor` of type `int64` and shape `[batch_size,
		    num_true]`. The target classes.
		  num_true: An `int`.  The number of target classes per training example.
		  num_sampled: An `int`.  The number of classes to randomly sample.
		  unique: A `bool`. Determines whether all sampled classes in a batch are
		    unique.
		  range_max: An `int`. The number of possible classes.
		  seed: An `int`. An operation-specific seed. Default is 0.
		  name: A name for the operation (optional).
		
		Returns:
		  sampled_candidates: A tensor of type `int64` and shape `[num_sampled]`.
		    The sampled classes.
		  true_expected_count: A tensor of type `float`.  Same shape as
		    `true_classes`. The expected counts under the sampling distribution
		    of each of `true_classes`.
		  sampled_expected_count: A tensor of type `float`. Same shape as
		    `sampled_candidates`. The expected counts under the sampling distribution
		    of each of `sampled_candidates`.
	**/
	static public function log_uniform_candidate_sampler(true_classes:Dynamic, num_true:Dynamic, num_sampled:Dynamic, unique:Dynamic, range_max:Dynamic, ?seed:Dynamic, ?name:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Samples a set of classes using a uniform base distribution.
		
		This operation randomly samples a tensor of sampled classes
		(`sampled_candidates`) from the range of integers `[0, range_max)`.
		
		The elements of `sampled_candidates` are drawn without replacement
		(if `unique=True`) or with replacement (if `unique=False`) from
		the base distribution.
		
		The base distribution for this operation is the uniform distribution
		over the range of integers `[0, range_max)`.
		
		In addition, this operation returns tensors `true_expected_count`
		and `sampled_expected_count` representing the number of times each
		of the target classes (`true_classes`) and the sampled
		classes (`sampled_candidates`) is expected to occur in an average
		tensor of sampled classes.  These values correspond to `Q(y|x)`
		defined in [this
		document](http://www.tensorflow.org/extras/candidate_sampling.pdf).
		If `unique=True`, then these are post-rejection probabilities and we
		compute them approximately.
		
		Args:
		  true_classes: A `Tensor` of type `int64` and shape `[batch_size,
		    num_true]`. The target classes.
		  num_true: An `int`.  The number of target classes per training example.
		  num_sampled: An `int`.  The number of classes to randomly sample. The
		    `sampled_candidates` return value will have shape `[num_sampled]`. If
		    `unique=True`, `num_sampled` must be less than or equal to `range_max`.
		  unique: A `bool`. Determines whether all sampled classes in a batch are
		    unique.
		  range_max: An `int`. The number of possible classes.
		  seed: An `int`. An operation-specific seed. Default is 0.
		  name: A name for the operation (optional).
		
		Returns:
		  sampled_candidates: A tensor of type `int64` and shape `[num_sampled]`.  The
		    sampled classes, either with possible duplicates (`unique=False`) or all
		    unique (`unique=True`). In either case, `sampled_candidates` is
		    independent of the true classes.
		  true_expected_count: A tensor of type `float`.  Same shape as
		    `true_classes`. The expected counts under the sampling distribution
		    of each of `true_classes`.
		  sampled_expected_count: A tensor of type `float`. Same shape as
		    `sampled_candidates`. The expected counts under the sampling distribution
		    of each of `sampled_candidates`.
	**/
	static public function uniform_candidate_sampler(true_classes:Dynamic, num_true:Dynamic, num_sampled:Dynamic, unique:Dynamic, range_max:Dynamic, ?seed:Dynamic, ?name:Dynamic):Dynamic;
}