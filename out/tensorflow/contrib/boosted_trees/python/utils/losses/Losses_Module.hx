/* This file is generated, do not edit! */
package tensorflow.contrib.boosted_trees.python.utils.losses;
@:pythonImport("tensorflow.contrib.boosted_trees.python.utils.losses") extern class Losses_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Trimmed exponential loss given labels, example weights and predictions.
		
		Note that this is only for binary classification.
		If logistic loss tries to make sure that the classifier is certain of its
		predictions, exp loss says: "as long as it got it correct, even barely, i
		don't care". Can be used on noisy data, or when you don't care about getting
		the actual probabilities from the model, just the correct label.
		
		The loss returns is exp(-targets*modified_predictions), where
		modified_predictions are 1 if sigmoid is >= 0.5+eps (eg we predict positive
		class), -1 if sigmoid < 0.5-eps (e.g. we predict negative class) and ax+b in
		the interval 0.5-eps, 0.5+eps, where a = 1/eps, b=1/(2eps).
		
		Args:
		  labels: Rank 2 (N, D) tensor of per-example labels.
		  weights: Rank 2 (N, 1) tensor of per-example weights.
		  predictions: Rank 2 (N, D) tensor of per-example predictions.
		  name: A name for the operation (optional).
		  eps: For the range (0.5-eps, 0.5+eps) we set the predictions to be ax+b.
		
		Returns:
		  loss: A Rank 2 (N, 1) tensor of per-example exp loss
		  update_op: An update operation to update the loss's internal state.
	**/
	static public function per_example_exp_loss(labels:Dynamic, weights:Dynamic, predictions:Dynamic, ?name:Dynamic, ?eps:Dynamic):Dynamic;
	/**
		Full exponential loss given labels, example weights and predictions.
		
		Note that this is only for binary classification.
		The loss returns is exp(-targets*logits), where targets are converted to -1
		and 1.
		
		Args:
		  labels: Rank 2 (N, D) tensor of per-example labels.
		  weights: Rank 2 (N, 1) tensor of per-example weights.
		  predictions: Rank 2 (N, D) tensor of per-example predictions.
		  name: A name for the operation (optional).
		
		Returns:
		  loss: A Rank 2 (N, 1) tensor of per-example exp loss
		  update_op: An update operation to update the loss's internal state.
	**/
	static public function per_example_full_exp_loss(labels:Dynamic, weights:Dynamic, predictions:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Logistic loss given labels, example weights and predictions.
		
		Args:
		  labels: Rank 2 (N, 1) tensor of per-example labels.
		  weights: Rank 2 (N, 1) tensor of per-example weights.
		  predictions: Rank 2 (N, 1) tensor of per-example predictions.
		
		Returns:
		  loss: A Rank 2 (N, 1) tensor of per-example logistic loss.
		  update_op: An update operation to update the loss's internal state.
	**/
	static public function per_example_logistic_loss(labels:Dynamic, weights:Dynamic, predictions:Dynamic):Dynamic;
	/**
		Maximum entropy loss for multiclass problems.
		
		Maximum entropy is a generalization of logistic loss for the case when more
		than 2 classes are present.
		
		Args:
		  labels: Rank 2 (N, 1) or Rank 1 (N) tensor of per-example labels.
		  weights: Rank 2 (N, 1) tensor of per-example weights.
		  logits: Rank 2 (N, K) tensor of per-example predictions, K - num of
		  classes.
		  num_classes: number of classes in classification task. Used to expand label
		  indices into one-hot encodings.
		  eps: tolerance, used as a minimum possible value.
		
		Returns:
		  loss: A Rank 2 (N, 1) tensor of per-example maxent loss
		  update_op: An update operation to update the loss's internal state.
	**/
	static public function per_example_maxent_loss(labels:Dynamic, weights:Dynamic, logits:Dynamic, num_classes:Dynamic, ?eps:Dynamic):Dynamic;
	/**
		Smoothed loss for quantile regression.
		
		The standard quantile regression loss is quantile*(y-y') when y>y' and
		(quantile-1)*(y-y') otherwise, y' is a prediction, y is a label. The impl
		below is this loss but squared in the region where the loss value < 1.
		
		Args:
		  labels: Rank 2 (N, D) tensor of per-example labels.
		  weights: Rank 2 (N, 1) tensor of per-example weights.
		  predictions: Rank 2 (N, D) tensor of per-example predictions.
		  quantile: The quantile to use.
		
		Returns:
		  loss: A Rank 2 (N, 1) tensor of per-example quantile loss.
		  update_op: An update operation to update the loss's internal state.
	**/
	static public function per_example_quantile_regression_loss(labels:Dynamic, weights:Dynamic, predictions:Dynamic, quantile:Dynamic):Dynamic;
	static public function per_example_squared_hinge_loss(labels:Dynamic, weights:Dynamic, predictions:Dynamic):Dynamic;
	/**
		Squared loss given labels, example weights and predictions.
		
		Args:
		  labels: Rank 2 (N, D) tensor of per-example labels.
		  weights: Rank 2 (N, 1) tensor of per-example weights.
		  predictions: Rank 2 (N, D) tensor of per-example predictions.
		
		Returns:
		  loss: A Rank 2 (N, 1) tensor of per-example squared loss.
		  update_op: An update operation to update the loss's internal state.
	**/
	static public function per_example_squared_loss(labels:Dynamic, weights:Dynamic, predictions:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}