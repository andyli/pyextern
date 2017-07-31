/* This file is generated, do not edit! */
package tensorflow.contrib.tensor_forest.python.ops.tensor_forest_ops;
@:pythonImport("tensorflow.contrib.tensor_forest.python.ops.tensor_forest_ops") extern class Tensor_forest_ops_Module {
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
		Returns the index of the best split for each finished node.
		
		  For classification, the best split is the split with the lowest weighted
		  Gini impurity, as calculated from the statistics in `split_sums` and
		  `accumulator_sums`. For regression we use the lowest variance, incoporating
		  the *_squares as well.
		
		  finished_nodes:= A 1-d int32 tensor containing the indices of finished nodes.
		  node_to_accumulator: `node_to_accumulator[i]` is the accumulator slot used by
		    fertile node i, or -1 if node i isn't fertile.
		  split_sums:= a 3-d tensor where `split_sums[a][s]` summarizes the
		    training labels for examples that fall into the fertile node associated with
		    accumulator slot s and have then taken the *left* branch of candidate split
		    s.  For a classification problem, `split_sums[a][s][c]` is the count of such
		    examples with class c and for regression problems, `split_sums[a][s]` is the
		    sum of the regression labels for such examples.
		  split_squares: Same as split_sums, but it contains the sum of the
		    squares of the regression labels.  Only used for regression.  For
		    classification problems, pass a dummy tensor into this.
		  accumulator_sums:= a 2-d tensor where `accumulator_sums[a]` summarizes the
		    training labels for examples that fall into the fertile node associated with
		    accumulator slot s.  For a classification problem, `accumulator_sums[a][c]`
		    is the count of such examples with class c and for regression problems,
		    `accumulator_sums[a]` is the sum of the regression labels for such examples.
		  accumulator_squares: Same as accumulator_sums, but it contains the sum of the
		    squares of the regression labels.  Only used for regression.  For
		    classification problems, pass a dummy tensor into this.
		  split_indices: `split_indices[i]` contains the index of the split to use for
		    `finished_nodes[i]`.
		
		Args:
		  finished_nodes: A `Tensor` of type `int32`.
		  node_to_accumulator: A `Tensor` of type `int32`.
		  split_sums: A `Tensor` of type `float32`.
		  split_squares: A `Tensor` of type `float32`.
		  accumulator_sums: A `Tensor` of type `float32`.
		  accumulator_sqaures: A `Tensor` of type `float32`.
		  regression: An optional `bool`. Defaults to `False`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `int32`.
	**/
	static public function best_splits(finished_nodes:Dynamic, node_to_accumulator:Dynamic, split_sums:Dynamic, split_squares:Dynamic, accumulator_sums:Dynamic, accumulator_sqaures:Dynamic, ?regression:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Calculates incremental statistics for a batch of training data.
		
		Each training example in `input_data` is sent through the decision tree
		represented by `tree` and `tree_thresholds`.
		The shape and contents of the outputs differ depending on whether
		`regression` is true or not.
		
		For `regression` = false (classification), `pcw_node_sums_delta[i]` is
		incremented for every node i that it passes through, and the leaf it ends up
		in is recorded in `leaves[i]`.  Then, if the leaf is fertile and
		initialized, the statistics for its corresponding accumulator slot
		are updated in `pcw_candidate_sums_delta` and `pcw_totals_sums_delta`.
		
		For `regression` = true, outputs contain the sum of the input_labels
		for the appropriate nodes.  In adddition, the *_squares outputs are filled
		in with the sums of the squares of the input_labels. Since outputs are
		all updated at once, the *_indices outputs don't specify the output
		dimension to update, rather the *_delta output contains updates for all the
		outputs.  For example, `pcw_totals_indices` specifies the accumulators to
		update, and `pcw_total_splits_sums_delta` contains the complete output
		updates for each of those accumulators.
		
		The attr `num_classes` is needed to appropriately size the outputs.
		
		Args:
		  input_data: A `Tensor` of type `float32`.
		    The training batch's features as a 2-d tensor; `input_data[i][j]`
		    gives the j-th feature of the i-th input.
		  sparse_input_indices: A `Tensor` of type `int64`.
		    The indices tensor from the SparseTensor input.
		  sparse_input_values: A `Tensor` of type `float32`.
		    The values tensor from the SparseTensor input.
		  sparse_input_shape: A `Tensor` of type `int64`.
		    The shape tensor from the SparseTensor input.
		  input_labels: A `Tensor` of type `float32`.
		    The training batch's labels; `input_labels[i]` is the class
		    of the i-th input.
		  input_weights: 
		    A 1-D float tensor.  If non-empty, `input_weights[i]` gives
		    the weight of the i-th input.
		  tree:  A 2-d int32 tensor.  `tree[i][0]` gives the index of the left child
		    of the i-th node, `tree[i][0] + 1` gives the index of the right child of
		    the i-th node, and `tree[i][1]` gives the index of the feature used to
		    split the i-th node.
		  tree_thresholds: A `Tensor` of type `float32`.
		    `tree_thresholds[i]` is the value used to split the i-th
		    node.
		  node_to_accumulator: A `Tensor` of type `int32`.
		    If the i-th node is fertile, `node_to_accumulator[i]`
		    is it's accumulator slot.  Otherwise, `node_to_accumulator[i]` is -1.
		  candidate_split_features: A `Tensor` of type `int32`.
		    `candidate_split_features[a][s]` is the
		    index of the feature being considered by split s of accumulator slot a.
		  candidate_split_thresholds: A `Tensor` of type `float32`.
		    `candidate_split_thresholds[a][s]` is the
		    threshold value being considered by split s of accumulator slot a.
		  birth_epochs: A `Tensor` of type `int32`.
		    `birth_epoch[i]` is the epoch node i was born in.  Only
		    nodes satisfying `current_epoch - birth_epoch <= 1` accumulate statistics.
		  current_epoch: 
		    A 1-d int32 tensor with shape (1).  current_epoch[0] contains
		    the current epoch.
		  input_spec: A `string`.
		    A 1-D tensor containing the type of each column in input_data,
		    (e.g. continuous float, categorical).  Index 0 should contain the default
		    type, individual feature types start at index 1.
		  num_classes: An `int`.
		  regression: An optional `bool`. Defaults to `False`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (pcw_node_sums_delta, pcw_node_squares_delta, pcw_splits_indices, pcw_candidate_splits_sums_delta, pcw_candidate_splits_squares_delta, pcw_totals_indices, pcw_totals_sums_delta, pcw_totals_squares_delta, leaves).
		
		  pcw_node_sums_delta: A `Tensor` of type `float32`. `pcw_node_sums_delta[i][c]` is the number of training
		    examples in this training batch with class c that passed through node i for
		    classification.  For regression, it is the sum of the input_labels that
		    have passed through node i.
		  pcw_node_squares_delta: A `Tensor` of type `float32`. `pcw_node_squares_delta[i][c]` is the sum of the
		    squares of the input labels that have passed through node i for
		    regression.  Not set for classification.
		  pcw_splits_indices: A 2-d tensor of shape (?, 3) for classification and
		    (?, 2) for regression.
		    `pcw_splits_indices[i]` gives the coordinates of an entry in
		    candidate_split_pcw_sums and candidate_split_pcw_squares that need to be
		    updated.  This is meant to be passed with `pcw_candidate_splits_*_delta` to
		    a scatter_add for candidate_split_pcw_*:
		      training_ops.scatter_add_ndim(candidate_split_pcw_sums
		          pcw_splits_indices, pcw_candidate_splits_sums_delta)
		  pcw_candidate_splits_sums_delta: A `Tensor` of type `float32`. For classification,
		    `pcw_candidate_splits_sums_delta[i]` is the
		    number of training examples in this training batch that correspond to
		    the i-th entry in `pcw_splits_indices` which took the *left* branch of
		    candidate split. For regression, it is the same but a 2-D tensor that has
		    the sum of the input_labels for each i-th entry in the indices.
		  pcw_candidate_splits_squares_delta: A `Tensor` of type `float32`. For regression, same as
		    `pcw_candidate_splits_sums_delta` but the sum of the squares. Not set
		    for classification.
		  pcw_totals_indices: A `Tensor` of type `int32`. For classification, 'pcw_totals_indices` contains the
		    indices (accumulator, class) into total_pcw_sums to update with
		    pcw_totals_sums_delta.  For regression, it only contains the accumulator
		    (not the class), because pcw_totals_*_delta will contain all the outputs.
		  pcw_totals_sums_delta: A `Tensor` of type `float32`. For classification, `pcw_totals_sums_delta[i]` is the
		    number of training examples in this batch that ended up in the fertile
		    node with accumulator and class indicated by `pcw_totals_indices[i]`.
		    For regression, it is the sum of the input_labels corresponding to the
		    entries in `pcw_totals_indices[i]`.
		  pcw_totals_squares_delta: A `Tensor` of type `float32`. For regression, same as
		    `pcw_totals_sums_delta` but the sum of the squares. Not set
		    for classification.
		  leaves: A `Tensor` of type `int32`. `leaves[i]` is the leaf that input i ended up in.
	**/
	static public function count_extremely_random_stats(input_data:Dynamic, sparse_input_indices:Dynamic, sparse_input_values:Dynamic, sparse_input_shape:Dynamic, input_labels:Dynamic, input_weights:Dynamic, tree:Dynamic, tree_thresholds:Dynamic, node_to_accumulator:Dynamic, candidate_split_features:Dynamic, candidate_split_thresholds:Dynamic, birth_epochs:Dynamic, current_epoch:Dynamic, input_spec:Dynamic, num_classes:Dynamic, ?regression:Dynamic, ?name:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Determines which of the given leaf nodes are done accumulating.
		
		The `regression` attribute should be set to true for regression problems, and
		false for classification problems.
		
		If dominate_method is not set to none, then every
		`check_dominates_every_samples` steps the specified method will be used to
		see if the current best split has probability `dominate_fraction` of being
		asymptotically better than the second best split.  If so, the best split
		is picked now, rather than waiting until `num_split_after_samples` samples
		have been seen.  WARNING:  for weighted input data, only `dominate_method` =
		none is safe.
		
		Args:
		  leaves:  A 1-d int32 tensor.  Lists the nodes that are currently leaves.
		  node_to_accumulator: A `Tensor` of type `int32`.
		    If the i-th node is fertile, `node_to_accumulator[i]`
		    is it's accumulator slot.  Otherwise, `node_to_accumulator[i]` is -1.
		  split_sums:  a 3-d tensor where `split_sums[a][s]` summarizes the
		    training labels for examples that fall into the fertile node associated with
		    accumulator slot s and have then taken the *left* branch of candidate split
		    s.  For a classification problem, `split_sums[a][s][c]` is the count of such
		    examples with class c and for regression problems, `split_sums[a][s]` is the
		    sum of the regression labels for such examples.
		  split_squares: A `Tensor` of type `float32`.
		    Same as split_sums, but it contains the sum of the
		    squares of the regression labels.  Only used for regression.  For
		    classification problems, pass a dummy tensor into this.
		  accumulator_sums: A `Tensor` of type `float32`.
		    For classification, `accumulator_sums[a][c]` records how
		    many training examples have class c and have ended up in the fertile node
		    associated with accumulator slot a.  It has the total sum in entry 0 for
		    convenience. For regression, it is the same except it contains the sum
		    of the input labels that have been seen, and entry 0 contains the number
		    of training examples that have been seen.
		  accumulator_squares: A `Tensor` of type `float32`.
		    Same as accumulator_sums, but it contains the sum of the
		    squares of the regression labels.  Only used for regression.  For
		    classification problems, pass a dummy tensor into this.
		  birth_epochs:  A 1-d int32 tensor.  `birth_epochs[i]` contains the epoch
		    the i-th node was created in.
		  current_epoch:  A 1-d int32 tensor with shape (1).  `current_epoch[0]`
		    stores the current epoch number.
		  num_split_after_samples: An `int`.
		  min_split_samples: An `int`.
		  regression: An optional `bool`. Defaults to `False`.
		  dominate_fraction: An optional `float`. Defaults to `0.99`.
		  dominate_method: An optional `string` from: `"none", "hoeffding", "bootstrap", "chebyshev"`. Defaults to `"bootstrap"`.
		  random_seed: An optional `int`. Defaults to `0`.
		  check_dominates_every_samples: An optional `int`. Defaults to `75`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (finished, stale).
		
		  finished: A 1-d int32 tensor containing the indices of the finished nodes.
		    Nodes are finished if they have received at least num_split_after_samples
		    samples, or if they have received min_split_samples and the best scoring
		    split is sufficiently greater than the next best split.
		  stale: A 1-d int32 tensor containing the fertile nodes that were created two
		    or more epochs ago.
	**/
	static public function finished_nodes(leaves:Dynamic, node_to_accumulator:Dynamic, split_sums:Dynamic, split_squares:Dynamic, accumulator_sums:Dynamic, accumulator_squares:Dynamic, birth_epochs:Dynamic, current_epoch:Dynamic, num_split_after_samples:Dynamic, min_split_samples:Dynamic, ?regression:Dynamic, ?dominate_fraction:Dynamic, ?dominate_method:Dynamic, ?random_seed:Dynamic, ?check_dominates_every_samples:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Output the tree changes needed to resolve fertile nodes.
		
		  Previous Ops have already decided which fertile nodes want to stop being
		  fertile and what their best candidate split should be and have passed that
		  information to this Op in `finished_nodes` and `best_splits`.  This Op
		  merely checks that there is still space in tree to add new nodes, and if
		  so, writes out the sparse updates needed for the fertile nodes to be
		  resolved to the tree and threshold tensors.
		
		  end_of_tree: `end_of_tree[0]` is the number of allocated nodes, or
		    equivalently the index of the first free node in the tree tensor.
		  node_to_accumulator: `node_to_accumulator[i]` is the accumulator slot used by
		    fertile node i, or -1 if node i isn't fertile.
		  finished_nodes:= A 1-d int32 tensor containing the indices of finished nodes.
		  best_splits: `best_splits[i]` is the index of the best split for
		    `finished_nodes[i]`.
		  candidate_split_features: `candidate_split_features[a][s]` is the feature
		    being considered for split s of the fertile node associated with
		    accumulator slot a.
		  candidate_split_thresholds: `candidate_split_thresholds[a][s]` is the
		    threshold value being considered for split s of the fertile node associated
		    with accumulator slot a.
		  nodes_to_update:= A 1-d int32 tensor containing the node indices that need
		    updating.
		  tree_updates: The updates to apply to the 2-d tree tensor.  Intended to be
		    used with `tf.scatter_update(tree, nodes_to_update, tree_updates)`.
		  threshold_updates: The updates to apply to the 1-d thresholds tensor.
		    Intended to be used with
		    `tf.scatter_update(thresholds, nodes_to_update, threshold_updates)`.
		  new_end_of_tree: `new_end_of_tree[0]` is the new size of the tree.
		
		Args:
		  end_of_tree: A `Tensor` of type `int32`.
		  node_to_accumulator: A `Tensor` of type `int32`.
		  finished_nodes: A `Tensor` of type `int32`.
		  best_splits: A `Tensor` of type `int32`.
		  candidate_split_features: A `Tensor` of type `int32`.
		  candidate_split_thresholds: A `Tensor` of type `float32`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (nodes_to_update, tree_updates, threshold_updates, new_end_of_tree).
		
		  nodes_to_update: A `Tensor` of type `int32`.
		  tree_updates: A `Tensor` of type `int32`.
		  threshold_updates: A `Tensor` of type `float32`.
		  new_end_of_tree: A `Tensor` of type `int32`.
	**/
	static public function grow_tree(end_of_tree:Dynamic, node_to_accumulator:Dynamic, finished_nodes:Dynamic, best_splits:Dynamic, candidate_split_features:Dynamic, candidate_split_thresholds:Dynamic, ?name:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Converts byte arrays represented by strings to 32-bit
		
		   floating point numbers. The output numbers themselves are meaningless, and
		   should only be used in == comparisons.
		
		   input_data: A batch of string features as a 2-d tensor; `input_data[i][j]`
		     gives the j-th feature of the i-th input.
		   output_data: A tensor of the same shape as input_data but the values are
		     float32.
		
		Args:
		  input_data: A `Tensor` of type `string`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `float32`.
	**/
	static public function reinterpret_string_to_float(input_data:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Initializes candidate splits for newly fertile nodes.
		
		In an extremely random forest, we don't consider all possible threshold
		values for a candidate split feature, but rather only a sampling of them.
		This Op takes those samples from the training data in `input_data`.  The
		feature and threshold samples are stored in tensors that are indexed by
		accumulator slot, so for each input, we must first look up which leaf
		it ended up in (using `leaves`) and then which accumulator slot if any
		that leaf maps to (using `node_to_accumulator`).
		
		The attribute `split_initializations_per_input` controls how many splits
		a single training example can initialize, and the attribute
		`split_sampling_random_seed` sets the random number generator's seed
		(a value of 0 means use the current time as the seed).
		
		Args:
		  input_data: A `Tensor` of type `float32`.
		    The features for the current batch of training data.
		    `input_data[i][j]` is the j-th feature of the i-th input.
		  sparse_input_indices: A `Tensor` of type `int64`.
		    The indices tensor from the SparseTensor input.
		  sparse_input_values: A `Tensor` of type `float32`.
		    The values tensor from the SparseTensor input.
		  sparse_input_shape: A `Tensor` of type `int64`.
		    The shape tensor from the SparseTensor input.
		  input_weights: A `Tensor` of type `float32`.
		    For a dense input, input_weights[i] is the weight associated
		    with input_data[i].  For sparse input, input_weights[i] is the weight
		    associated with sparse_input_values[i].  Or in either case, if all the
		    weights are 1, input_weights can be empty.  SampleInputs will reject inputs
		    with weight less than Uniform([0,1)), so weights outside of that range may
		    not be what you want.
		  node_to_accumulator: A `Tensor` of type `int32`.
		    For a fertile node i, node_to_accumulator[i] is the
		    associated accumulator slot.  For non-fertile nodes, it is -1.
		  leaves: A `Tensor` of type `int32`.
		    `leaves[i]` is the leaf that the i-th input landed in, as
		    calculated by CountExtremelyRandomStats.
		  candidate_split_features: A `Tensor` of type `int32`.
		    The current features for the candidate splits;
		    `candidate_split_features[a][s]` is the index of the feature being
		    considered by split s in accumulator slot a.
		  candidate_split_thresholds: A `Tensor` of type `float32`.
		    The current thresholds for the candidate splits;
		    `candidate_split_thresholds[a][s]` is the threshold value being
		    considered by split s in accumulator slot a.
		  input_spec: A `string`.
		  split_initializations_per_input: An `int`.
		  split_sampling_random_seed: An `int`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (accumulators_to_update, new_split_feature_rows, new_split_threshold_rows).
		
		  accumulators_to_update: A `Tensor` of type `int32`. A list of the accumulators to change in the
		    candidate_split_features and candidate_split_thresholds tensors.
		  new_split_feature_rows: A `Tensor` of type `int32`. The new values for the candidate_split_features
		    tensor.  Intended to be used with
		    `tf.scatter_update(candidate_split_features,
		                       accumulators_to_update,
		                       new_split_feature_rows)`
		  new_split_threshold_rows: A `Tensor` of type `float32`. The new values for the candidate_split_thresholds
		    tensor.  Intended to be used with
		    `tf.scatter_update(candidate_split_thresholds,
		                       accumulators_to_update,
		                       new_split_feature_thresholds)`
	**/
	static public function sample_inputs(input_data:Dynamic, sparse_input_indices:Dynamic, sparse_input_values:Dynamic, sparse_input_shape:Dynamic, input_weights:Dynamic, node_to_accumulator:Dynamic, leaves:Dynamic, candidate_split_features:Dynamic, candidate_split_thresholds:Dynamic, input_spec:Dynamic, split_initializations_per_input:Dynamic, split_sampling_random_seed:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Add elements in deltas to mutable input according to indices.
		
		  input: A N-dimensional float tensor to mutate.
		  indices:= A 2-D int32 tensor. The size of dimension 0 is the number of
		    deltas, the size of dimension 1 is the rank of the input.  `indices[i]`
		    gives the coordinates of input that `deltas[i]` should add to.  If
		    `indices[i]` does not fully specify a location (it has less indices than
		    there are dimensions in `input`), it is assumed that they are start
		    indices and that deltas contains enough values to fill in the remaining
		    input dimensions.
		  deltas: `deltas[i]` is the value to add to input at index indices[i][:]
		
		Args:
		  input: A `Tensor` of type mutable `float32`.
		  indices: A `Tensor` of type `int32`.
		  deltas: A `Tensor` of type `float32`.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function scatter_add_ndim(input:Dynamic, indices:Dynamic, deltas:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Outputs update Tensors for adding new_ids and new_scores to the shortlist.
		
		  ids:= A 1-D int64 tensor containing the ids on the shortlist (except for
		    ids[0], which is the current size of the shortlist.
		  scores:= A 1-D float32 tensor containing the scores on the shortlist.
		  new_ids:= A 1-D int64 tensor containing the new ids to add to the shortlist.
		  shortlist_ids:= A 1-D int64 tensor containing the ids of the shortlist entries
		    to update.  Intended to be used with
		    tf.scatter_update(shortlist_scores, shortlist_ids, new_scores).
		  update_ids:= A 1-D int64 tensor containing ...
		  update_scores:= A 1-D float32 tensor containing ...
		
		Args:
		  ids: A `Tensor` of type `int64`.
		  scores: A `Tensor` of type `float32`.
		  new_ids: A `Tensor` of type `int64`.
		  new_scores: A `Tensor` of type `float32`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (shortlist_ids, update_ids, update_scores).
		
		  shortlist_ids: A `Tensor` of type `int64`.
		  update_ids: A `Tensor` of type `int64`.
		  update_scores: A `Tensor` of type `float32`.
	**/
	static public function top_n_insert(ids:Dynamic, scores:Dynamic, new_ids:Dynamic, new_scores:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Remove ids from a shortlist.
		
		  ids:= A 1-D int64 tensor containing the ids on the shortlist (except for
		    ids[0], which is the current size of the shortlist.
		  remove_ids:= A 1-D int64 tensor containing the ids to remove.
		  shortlist_ids:= A 1-D int64 tensor containing the shortlist entries that
		    need to be removed.
		  new_length:= A length 1 1-D int64 tensor containing the new length of the
		    shortlist.
		
		Args:
		  ids: A `Tensor` of type `int64`.
		  remove_ids: A `Tensor` of type `int64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (shortlist_ids, new_length).
		
		  shortlist_ids: A `Tensor` of type `int64`.
		  new_length: A `Tensor` of type `int64`.
	**/
	static public function top_n_remove(ids:Dynamic, remove_ids:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns the per-class probabilities for each input.
		
		  input_spec: A serialized TensorForestDataSpec proto.
		  input_data: The training batch's features as a 2-d tensor; `input_data[i][j]`
		   gives the j-th feature of the i-th input.
		  sparse_input_indices: The indices tensor from the SparseTensor input.
		  sparse_input_values: The values tensor from the SparseTensor input.
		  sparse_input_shape: The shape tensor from the SparseTensor input.
		  tree:= A 2-d int32 tensor.  `tree[i][0]` gives the index of the left child
		   of the i-th node, `tree[i][0] + 1` gives the index of the right child of
		   the i-th node, and `tree[i][1]` gives the index of the feature used to
		   split the i-th node.
		  tree_thresholds: `tree_thresholds[i]` is the value used to split the i-th
		   node.
		  node_per_class_weights: `node_per_class_weights[n][c]` records how many
		   training examples have class c and have ended up in node n.
		  predictions: `predictions[i][j]` is the probability that input i is class j.
		  valid_leaf_threshold: Minimum number of samples that have arrived to a leaf
		    to be considered a valid leaf, otherwise use the parent.
		
		Args:
		  input_data: A `Tensor` of type `float32`.
		  sparse_input_indices: A `Tensor` of type `int64`.
		  sparse_input_values: A `Tensor` of type `float32`.
		  sparse_input_shape: A `Tensor` of type `int64`.
		  tree: A `Tensor` of type `int32`.
		  tree_thresholds: A `Tensor` of type `float32`.
		  node_per_class_weights: A `Tensor` of type `float32`.
		  input_spec: A `string`.
		  valid_leaf_threshold: A `float`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `float32`.
	**/
	static public function tree_predictions(input_data:Dynamic, sparse_input_indices:Dynamic, sparse_input_values:Dynamic, sparse_input_shape:Dynamic, tree:Dynamic, tree_thresholds:Dynamic, node_per_class_weights:Dynamic, input_spec:Dynamic, valid_leaf_threshold:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Updates accumulator slots to reflect finished or newly fertile nodes.
		
		Args:
		  finished:  A 1-d int32 tensor containing the indices of fertile nodes that
		    are ready to decide on a split.
		  non_fertile_leaves:  A 1-d int32 tensor containing the indices of all the
		    currently non-fertile leaves.  If there are free accumulator slots after
		    deallocation, UpdateFertileSlots will consider these nodes (plus the ones
		    in new_leaves) and potentially turn some of them fertile.
		  non_fertile_leaf_scores: A `Tensor` of type `float32`.
		    `non_fertile_leaf_scores[i]` is the splitting score
		    of the non-fertile leaf `non_fertile_leaves[i]`.
		  end_of_tree: A `Tensor` of type `int32`.
		    The end of tree tensor from the previous training iteration, used
		    with the finished input to calculate a list of new leaf indices created by
		    GrowTree, which will be considered to become fertile if there are free
		    slots.
		  accumulator_sums: A `Tensor` of type `float32`.
		    For classification, `accumulator_sums[a][c]` records how
		    many training examples have class c and have ended up in the fertile node
		    associated with accumulator slot a.  It has the total sum in entry 0 for
		    convenience. For regression, it is the same except it contains the sum
		    of the input labels that have been seen, and entry 0 contains the number
		    of training examples that have been seen.
		  node_to_accumulator: A `Tensor` of type `int32`.
		    `node_to_accumulator[i]` is the accumulator slot used by
		    fertile node i, or -1 if node i isn't fertile.
		  stale_leaves: 
		    A 1-d int32 tensor containing the indices of all leaves that
		    have stopped accumulating statistics because they are too old.
		  node_sums: A `Tensor` of type `float32`.
		    `node_sums[n][c]` records how many
		    training examples have class c and have ended up in node n.
		  regression: An optional `bool`. Defaults to `False`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (node_to_accumulator_map_updates, accumulator_to_node_map_updates, accumulators_cleared, accumulators_allocated).
		
		  node_to_accumulator_map_updates: A 2-d int32 tensor describing the changes
		    that need to be applied to the node_to_accumulator map.  Intended to be used
		    with
		    `tf.scatter_update(node_to_accumulator,
		                       node_to_accumulator_map_updates[0],
		                       node_to_accumulator_map_updates[1])`.
		  accumulator_to_node_map_updates: A 2-d int32 tensor describing the changes
		    that need to be applied to the node_to_accumulator map.  Intended to be used
		    with
		    `tf.scatter_update(accumulator_to_node_map,
		                       accumulator_to_node_map_updates[0],
		                       accumulator_to_node_map_updates[1])`.
		  accumulators_cleared: A 1-d int32 tensor containing the indices of all
		    the accumulator slots that need to be cleared.
		  accumulators_allocated: A 1-d int32 tensor containing the indices of all
		    the accumulator slots that need to be allocated.
	**/
	static public function update_fertile_slots(finished:Dynamic, non_fertile_leaves:Dynamic, non_fertile_leaf_scores:Dynamic, end_of_tree:Dynamic, accumulator_sums:Dynamic, node_to_accumulator:Dynamic, stale_leaves:Dynamic, node_sums:Dynamic, ?regression:Dynamic, ?name:Dynamic):Dynamic;
}