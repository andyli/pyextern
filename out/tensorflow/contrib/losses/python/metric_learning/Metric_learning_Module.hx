/* This file is generated, do not edit! */
package tensorflow.contrib.losses.python.metric_learning;
@:pythonImport("tensorflow.contrib.losses.python.metric_learning") extern class Metric_learning_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _allowed_symbols : Dynamic;
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
}