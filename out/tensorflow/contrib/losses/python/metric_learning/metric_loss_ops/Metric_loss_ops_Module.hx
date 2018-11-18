/* This file is generated, do not edit! */
package tensorflow.contrib.losses.python.metric_learning.metric_loss_ops;
@:pythonImport("tensorflow.contrib.losses.python.metric_learning.metric_loss_ops") extern class Metric_loss_ops_Module {
	static public var HAS_SKLEARN : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Builds multilabel adjacency matrix.
		
		As of March 14th, 2017, there's no op for the dot product between
		two sparse tensors in TF. However, there is `sparse_minimum` op which is
		equivalent to an AND op between two sparse boolean tensors.
		This computes the dot product between two sparse boolean inputs.
		
		Args:
		  sparse_labels: List of 1-D boolean sparse tensors.
		
		Returns:
		  adjacency_matrix: 2-D dense `Tensor`.
	**/
	static public function _build_multilabel_adjacency(sparse_labels:Dynamic):Dynamic;
	static public function _compute_ami_score(labels:Dynamic, predictions:Dynamic):Dynamic;
	static public function _compute_ari_score(labels:Dynamic, predictions:Dynamic):Dynamic;
	static public function _compute_nmi_score(labels:Dynamic, predictions:Dynamic):Dynamic;
	static public function _compute_vmeasure_score(labels:Dynamic, predictions:Dynamic):Dynamic;
	static public function _compute_zeroone_score(labels:Dynamic, predictions:Dynamic):Dynamic;
	/**
		Find the next centroid that maximizes the loss augmented inference.
		
		This function is a subroutine called from compute_augmented_facility_locations
		
		Args:
		  pairwise_distances: 2-D Tensor of pairwise distances.
		  labels: 1-D Tensor of ground truth cluster assignment.
		  chosen_ids: 1-D Tensor of current centroid indices.
		  candidate_ids: 1-D Tensor of candidate indices.
		  margin_multiplier: multiplication constant.
		  margin_type: Type of structured margin to use. Default is nmi.
		
		Returns:
		  integer index.
	**/
	static public function _find_loss_augmented_facility_idx(pairwise_distances:Dynamic, labels:Dynamic, chosen_ids:Dynamic, candidate_ids:Dynamic, margin_multiplier:Dynamic, margin_type:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Computes the clustering loss.
		
		The following structured margins are supported:
		  nmi: normalized mutual information
		  ami: adjusted mutual information
		  ari: adjusted random index
		  vmeasure: v-measure
		  const: indicator checking whether the two clusterings are the same.
		
		Args:
		  labels: 2-D Tensor of labels of shape [batch size, 1]
		  embeddings: 2-D Tensor of embeddings of shape
		    [batch size, embedding dimension]. Embeddings should be l2 normalized.
		  margin_multiplier: float32 scalar. multiplier on the structured margin term
		    See section 3.2 of paper for discussion.
		  enable_pam_finetuning: Boolean, Whether to run local pam refinement.
		    See section 3.4 of paper for discussion.
		  margin_type: Type of structured margin to use. See section 3.2 of
		    paper for discussion. Can be 'nmi', 'ami', 'ari', 'vmeasure', 'const'.
		  print_losses: Boolean. Option to print the loss.
		
		Paper: https://arxiv.org/abs/1612.01213.
		
		Returns:
		  clustering_loss: A float32 scalar `Tensor`.
		Raises:
		  ImportError: If sklearn dependency is not installed.
	**/
	static public function cluster_loss(labels:Dynamic, embeddings:Dynamic, margin_multiplier:Dynamic, ?enable_pam_finetuning:Dynamic, ?margin_type:Dynamic, ?print_losses:Dynamic):Dynamic;
	/**
		Computes the centroid locations.
		
		Args:
		  pairwise_distances: 2-D Tensor of pairwise distances.
		  labels: 1-D Tensor of ground truth cluster assignment.
		  all_ids: 1-D Tensor of all data indices.
		  margin_multiplier: multiplication constant.
		  margin_type: Type of structured margin to use. Default is nmi.
		
		Returns:
		  chosen_ids: 1-D Tensor of chosen centroid indices.
	**/
	static public function compute_augmented_facility_locations(pairwise_distances:Dynamic, labels:Dynamic, all_ids:Dynamic, margin_multiplier:Dynamic, margin_type:Dynamic):Dynamic;
	/**
		Refine the cluster centroids with PAM local search.
		
		For fixed iterations, alternate between updating the cluster assignment
		  and updating cluster medoids.
		
		Args:
		  pairwise_distances: 2-D Tensor of pairwise distances.
		  labels: 1-D Tensor of ground truth cluster assignment.
		  margin_multiplier: multiplication constant.
		  margin_type: Type of structured margin to use. Default is nmi.
		  chosen_ids: 1-D Tensor of initial estimate of cluster centroids.
		  pam_max_iter: Number of refinement iterations.
		
		Returns:
		  chosen_ids: Updated 1-D Tensor of cluster centroid indices.
	**/
	static public function compute_augmented_facility_locations_pam(pairwise_distances:Dynamic, labels:Dynamic, margin_multiplier:Dynamic, margin_type:Dynamic, chosen_ids:Dynamic, ?pam_max_iter:Dynamic):Dynamic;
	/**
		Computes the clustering score via sklearn.metrics functions.
		
		There are various ways to compute the clustering score. Intuitively,
		we want to measure the agreement of two clustering assignments (labels vs
		predictions) ignoring the permutations and output a score from zero to one.
		(where the values close to one indicate significant agreement).
		This code supports following scoring functions:
		  nmi: normalized mutual information
		  ami: adjusted mutual information
		  ari: adjusted random index
		  vmeasure: v-measure
		  const: indicator checking whether the two clusterings are the same.
		See http://scikit-learn.org/stable/modules/classes.html#clustering-metrics
		  for the detailed descriptions.
		Args:
		  labels: 1-D Tensor. ground truth cluster assignment.
		  predictions: 1-D Tensor. predicted cluster assignment.
		  margin_type: Type of structured margin to use. Default is nmi.
		Returns:
		  clustering_score: dtypes.float32 scalar.
		    The possible valid values are from zero to one.
		    Zero means the worst clustering and one means the perfect clustering.
		Raises:
		  ValueError: margin_type is not recognized.
	**/
	static public function compute_clustering_score(labels:Dynamic, predictions:Dynamic, margin_type:Dynamic):Dynamic;
	/**
		Compute the average travel distance to the assigned centroid.
		
		Args:
		  pairwise_distances: 2-D Tensor of pairwise distances.
		  centroid_ids: 1-D Tensor of indices.
		
		Returns:
		  facility_energy: dtypes.float32 scalar.
	**/
	static public function compute_facility_energy(pairwise_distances:Dynamic, centroid_ids:Dynamic):Dynamic;
	/**
		Compute ground truth facility location score.
		
		Loop over each unique classes and compute average travel distances.
		
		Args:
		  pairwise_distances: 2-D Tensor of pairwise distances.
		  labels: 1-D Tensor of ground truth cluster assignment.
		
		Returns:
		  gt_cluster_score: dtypes.float32 score.
	**/
	static public function compute_gt_cluster_score(pairwise_distances:Dynamic, labels:Dynamic):Dynamic;
	/**
		Computes the contrastive loss.
		
		This loss encourages the embedding to be close to each other for
		  the samples of the same label and the embedding to be far apart at least
		  by the margin constant for the samples of different labels.
		See: http://yann.lecun.com/exdb/publis/pdf/hadsell-chopra-lecun-06.pdf
		
		Args:
		  labels: 1-D tf.int32 `Tensor` with shape [batch_size] of
		    binary labels indicating positive vs negative pair.
		  embeddings_anchor: 2-D float `Tensor` of embedding vectors for the anchor
		    images. Embeddings should be l2 normalized.
		  embeddings_positive: 2-D float `Tensor` of embedding vectors for the
		    positive images. Embeddings should be l2 normalized.
		  margin: margin term in the loss definition.
		
		Returns:
		  contrastive_loss: tf.float32 scalar.
	**/
	static public function contrastive_loss(labels:Dynamic, embeddings_anchor:Dynamic, embeddings_positive:Dynamic, ?margin:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Assign data points to the neareset centroids.
		
		Tensorflow has numerical instability and doesn't always choose
		  the data point with theoretically zero distance as it's nearest neighbor.
		  Thus, for each centroid in centroid_ids, explicitly assign
		  the centroid itself as the nearest centroid.
		  This is done through the mask tensor and the constraint_vect tensor.
		
		Args:
		  pairwise_distances: 2-D Tensor of pairwise distances.
		  centroid_ids: 1-D Tensor of centroid indices.
		
		Returns:
		  y_fixed: 1-D tensor of cluster assignment.
	**/
	static public function get_cluster_assignment(pairwise_distances:Dynamic, centroid_ids:Dynamic):Dynamic;
	/**
		Computes the lifted structured loss.
		
		The loss encourages the positive distances (between a pair of embeddings
		with the same labels) to be smaller than any negative distances (between a
		pair of embeddings with different labels) in the mini-batch in a way
		that is differentiable with respect to the embedding vectors.
		See: https://arxiv.org/abs/1511.06452.
		
		Args:
		  labels: 1-D tf.int32 `Tensor` with shape [batch_size] of
		    multiclass integer labels.
		  embeddings: 2-D float `Tensor` of embedding vectors. Embeddings should not
		    be l2 normalized.
		  margin: Float, margin term in the loss definition.
		
		Returns:
		  lifted_loss: tf.float32 scalar.
	**/
	static public function lifted_struct_loss(labels:Dynamic, embeddings:Dynamic, ?margin:Dynamic):Dynamic;
	/**
		Computes the axis wise maximum over chosen elements.
		
		Args:
		  data: 2-D float `Tensor` of size [n, m].
		  mask: 2-D Boolean `Tensor` of size [n, m].
		  dim: The dimension over which to compute the maximum.
		
		Returns:
		  masked_maximums: N-D `Tensor`.
		    The maximized dimension is of size 1 after the operation.
	**/
	static public function masked_maximum(data:Dynamic, mask:Dynamic, ?dim:Dynamic):Dynamic;
	/**
		Computes the axis wise minimum over chosen elements.
		
		Args:
		  data: 2-D float `Tensor` of size [n, m].
		  mask: 2-D Boolean `Tensor` of size [n, m].
		  dim: The dimension over which to compute the minimum.
		
		Returns:
		  masked_minimums: N-D `Tensor`.
		    The minimized dimension is of size 1 after the operation.
	**/
	static public function masked_minimum(data:Dynamic, mask:Dynamic, ?dim:Dynamic):Dynamic;
	/**
		Computes the npairs loss.
		
		Npairs loss expects paired data where a pair is composed of samples from the
		same labels and each pairs in the minibatch have different labels. The loss
		has two components. The first component is the L2 regularizer on the
		embedding vectors. The second component is the sum of cross entropy loss
		which takes each row of the pair-wise similarity matrix as logits and
		the remapped one-hot labels as labels.
		
		See: http://www.nec-labs.com/uploads/images/Department-Images/MediaAnalytics/papers/nips16_npairmetriclearning.pdf
		
		Args:
		  labels: 1-D tf.int32 `Tensor` of shape [batch_size/2].
		  embeddings_anchor: 2-D Tensor of shape [batch_size/2, embedding_dim] for the
		    embedding vectors for the anchor images. Embeddings should not be
		    l2 normalized.
		  embeddings_positive: 2-D Tensor of shape [batch_size/2, embedding_dim] for the
		    embedding vectors for the positive images. Embeddings should not be
		    l2 normalized.
		  reg_lambda: Float. L2 regularization term on the embedding vectors.
		  print_losses: Boolean. Option to print the xent and l2loss.
		
		Returns:
		  npairs_loss: tf.float32 scalar.
	**/
	static public function npairs_loss(labels:Dynamic, embeddings_anchor:Dynamic, embeddings_positive:Dynamic, ?reg_lambda:Dynamic, ?print_losses:Dynamic):Dynamic;
	/**
		Computes the npairs loss with multilabel data.
		
		Npairs loss expects paired data where a pair is composed of samples from the
		same labels and each pairs in the minibatch have different labels. The loss
		has two components. The first component is the L2 regularizer on the
		embedding vectors. The second component is the sum of cross entropy loss
		which takes each row of the pair-wise similarity matrix as logits and
		the remapped one-hot labels as labels. Here, the similarity is defined by the
		dot product between two embedding vectors. S_{i,j} = f(x_i)^T f(x_j)
		
		To deal with multilabel inputs, we use the count of label intersection
		i.e. L_{i,j} = | set_of_labels_for(i) \cap set_of_labels_for(j) |
		Then we normalize each rows of the count based label matrix so that each row
		sums to one.
		
		Args:
		  sparse_labels: List of 1-D Boolean `SparseTensor` of dense_shape
		                 [batch_size/2, num_classes] labels for the anchor-pos pairs.
		  embeddings_anchor: 2-D `Tensor` of shape [batch_size/2, embedding_dim] for
		    the embedding vectors for the anchor images. Embeddings should not be
		    l2 normalized.
		  embeddings_positive: 2-D `Tensor` of shape [batch_size/2, embedding_dim] for
		    the embedding vectors for the positive images. Embeddings should not be
		    l2 normalized.
		  reg_lambda: Float. L2 regularization term on the embedding vectors.
		  print_losses: Boolean. Option to print the xent and l2loss.
		
		Returns:
		  npairs_loss: tf.float32 scalar.
		Raises:
		  TypeError: When the specified sparse_labels is not a `SparseTensor`.
	**/
	static public function npairs_loss_multilabel(sparse_labels:Dynamic, embeddings_anchor:Dynamic, embeddings_positive:Dynamic, ?reg_lambda:Dynamic, ?print_losses:Dynamic):Dynamic;
	/**
		Computes the pairwise distance matrix with numerical stability.
		
		output[i, j] = || feature[i, :] - feature[j, :] ||_2
		
		Args:
		  feature: 2-D Tensor of size [number of data, feature dimension].
		  squared: Boolean, whether or not to square the pairwise distances.
		
		Returns:
		  pairwise_distances: 2-D Tensor of size [number of data, number of data].
	**/
	static public function pairwise_distance(feature:Dynamic, ?squared:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Computes the triplet loss with semi-hard negative mining.
		
		The loss encourages the positive distances (between a pair of embeddings with
		the same labels) to be smaller than the minimum negative distance among
		which are at least greater than the positive distance plus the margin constant
		(called semi-hard negative) in the mini-batch. If no such negative exists,
		uses the largest negative distance instead.
		See: https://arxiv.org/abs/1503.03832.
		
		Args:
		  labels: 1-D tf.int32 `Tensor` with shape [batch_size] of
		    multiclass integer labels.
		  embeddings: 2-D float `Tensor` of embedding vectors. Embeddings should
		    be l2 normalized.
		  margin: Float, margin term in the loss definition.
		
		Returns:
		  triplet_loss: tf.float32 scalar.
	**/
	static public function triplet_semihard_loss(labels:Dynamic, embeddings:Dynamic, ?margin:Dynamic):Dynamic;
	/**
		Updates 1d tensor y so that y[index] = value.
		
		Args:
		  y: 1-D Tensor.
		  index: index of y to modify.
		  value: new value to write at y[index].
		
		Returns:
		  y_mod: 1-D Tensor. Tensor y after the update.
	**/
	static public function update_1d_tensor(y:Dynamic, index:Dynamic, value:Dynamic):Dynamic;
	/**
		Updates all cluster medoids a cluster at a time.
		
		Args:
		  pairwise_distances: 2-D Tensor of pairwise distances.
		  predictions: 1-D Tensor of predicted cluster assignment.
		  labels: 1-D Tensor of ground truth cluster assignment.
		  chosen_ids: 1-D Tensor of cluster centroid indices.
		  margin_multiplier: multiplication constant.
		  margin_type: Type of structured margin to use. Default is nmi.
		
		Returns:
		  chosen_ids: Updated 1-D Tensor of cluster centroid indices.
	**/
	static public function update_all_medoids(pairwise_distances:Dynamic, predictions:Dynamic, labels:Dynamic, chosen_ids:Dynamic, margin_multiplier:Dynamic, margin_type:Dynamic):Dynamic;
	/**
		Updates the cluster medoid per cluster.
		
		Args:
		  pairwise_distances: 2-D Tensor of pairwise distances.
		  pairwise_distances_subset: 2-D Tensor of pairwise distances for one cluster.
		  labels: 1-D Tensor of ground truth cluster assignment.
		  chosen_ids: 1-D Tensor of cluster centroid indices.
		  cluster_member_ids: 1-D Tensor of cluster member indices for one cluster.
		  cluster_idx: Index of this one cluster.
		  margin_multiplier: multiplication constant.
		  margin_type: Type of structured margin to use. Default is nmi.
		
		Returns:
		  chosen_ids: Updated 1-D Tensor of cluster centroid indices.
	**/
	static public function update_medoid_per_cluster(pairwise_distances:Dynamic, pairwise_distances_subset:Dynamic, labels:Dynamic, chosen_ids:Dynamic, cluster_member_ids:Dynamic, cluster_idx:Dynamic, margin_multiplier:Dynamic, margin_type:Dynamic):Dynamic;
}