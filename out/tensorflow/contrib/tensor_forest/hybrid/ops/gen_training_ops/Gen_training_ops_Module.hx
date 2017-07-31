/* This file is generated, do not edit! */
package tensorflow.contrib.tensor_forest.hybrid.ops.gen_training_ops;
@:pythonImport("tensorflow.contrib.tensor_forest.hybrid.ops.gen_training_ops") extern class Gen_training_ops_Module {
	static public function _InitOpDefLibrary():Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _hard_routing_function_outputs : Dynamic;
	static public var _k_feature_gradient_outputs : Dynamic;
	static public var _op_def_lib : Dynamic;
	static public var _stochastic_hard_routing_function_outputs : Dynamic;
	static public var _stochastic_hard_routing_gradient_outputs : Dynamic;
	/**
		Chooses a single path for each instance in `input_data` and returns the leaf
		
		  the probability of the path and the path taken.
		
		  tree_depth: The depth of the decision tree.
		
		  input_data: The training batch's features as a 2-d tensor; `input_data[i][j]`
		   gives the j-th feature of the i-th input.
		  tree_parameters: `tree_parameters[i]` gives the weight of
		   the logistic regression model that translates from node features to
		   probabilities.
		  tree_biases: `tree_biases[i]` gives the bias of the logistic
		   regression model that translates from node features to
		   probabilities.
		
		  path_probility: `path_probability[i]` gives the probability of reaching each
		   node in `path[i]`.
		  path: `path[i][j]` gives the jth node in the path taken by the ith data
		   instance.
		
		Args:
		  input_data: A `Tensor` of type `float32`.
		  tree_parameters: A `Tensor` of type `float32`.
		  tree_biases: A `Tensor` of type `float32`.
		  max_nodes: An `int`.
		  tree_depth: An `int`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (path_probability, path).
		
		  path_probability: A `Tensor` of type `float32`.
		  path: A `Tensor` of type `int32`.
	**/
	static public function hard_routing_function(input_data:Dynamic, tree_parameters:Dynamic, tree_biases:Dynamic, max_nodes:Dynamic, tree_depth:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the derivative of the routing loss with respect to each decision
		
		    node.  Each decision node is constrained to make a decision based on only
		    k features.
		
		    layer_num: The layer number of this tree.
		    random_seed: The base random seed.
		
		    input_data: The training batch's features as a 2-d tensor;
		     `input_data[i][j]` gives the j-th feature of the i-th input.
		    tree_parameters: `tree_parameters[i]` gives the weight of
		     the logistic regression model that translates from node features to
		     probabilities.
		    tree_biases: `tree_biases[i]` gives the bias of the logistic
		     regression model that translates from node features to
		     probabilities.
		    routes: The routes computed by routing_function_op.
		
		    routing_gradient: `routing_gradient` provides du / df, where u is the
		     routing function and f is the (vector of) decision functions.  A decision
		     function f_i computes the routing decision at node i.
		
		    data_gradient: `data_gradient` provides df / dx, where f is the (vector
		     of) decision functions and x is a batch of data.
		
		    weights_gradient: `weights_gradient` provides df / dw, where f is the
		     (vector of) decision functions and w is the matrix of parameters that
		     determine how instances are routed through a tree.
		
		    f_i, the decision function at node i, is parameterized by t_i (parameters)
		    and b_i (bias) and takes data x as input.  This op is called in
		    training_ops.py to compute du / df, and we use that to compute
		
		    du / dx = du / df * df / dx,
		    du / dt = du / df * df / dt, and
		    du / db = du / df * df / db.
		
		Args:
		  input_data: A `Tensor` of type `float32`.
		  tree_parameters: A `Tensor` of type `float32`.
		  tree_biases: A `Tensor` of type `float32`.
		  routes: A `Tensor` of type `float32`.
		  layer_num: An `int`.
		  random_seed: An `int`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (routing_gradient, data_gradient, weight_gradient).
		
		  routing_gradient: A `Tensor` of type `float32`.
		  data_gradient: A `Tensor` of type `float32`.
		  weight_gradient: A `Tensor` of type `float32`.
	**/
	static public function k_feature_gradient(input_data:Dynamic, tree_parameters:Dynamic, tree_biases:Dynamic, routes:Dynamic, layer_num:Dynamic, random_seed:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns the probability that each input will reach each leaf node.  Each
		
		  decision is made based on k features.
		
		  layer_num: The layer number of this tree.
		  max_nodes: The number of nodes in the tree.
		  num_features_per_node: The number of features each node can use to make a
		   decision.
		  random_seed: The base random seed.
		
		  input_data: The training batch's features as a 2-d tensor; `input_data[i][j]`
		   gives the j-th feature of the i-th input.
		  tree_parameters: `tree_parameters[i]` gives the weight of
		   the logistic regression model that translates from node features to
		   probabilities.
		  tree_biases: `tree_biases[i]` gives the bias of the logistic
		   regression model that translates from node features to
		   probabilities.
		  tree_features: `tree_features[i]` gives the decision feature for node i.
		
		  probabilities: `probabilities[i][j]` is the probability that input i
		   will reach node j.
		
		Args:
		  input_data: A `Tensor` of type `float32`.
		  tree_parameters: A `Tensor` of type `float32`.
		  tree_biases: A `Tensor` of type `float32`.
		  layer_num: An `int`.
		  max_nodes: An `int`.
		  num_features_per_node: An `int`.
		  random_seed: An `int`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `float32`.
	**/
	static public function k_feature_routing_function(input_data:Dynamic, tree_parameters:Dynamic, tree_biases:Dynamic, layer_num:Dynamic, max_nodes:Dynamic, num_features_per_node:Dynamic, random_seed:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns the probability that each input will reach each leaf node.
		
		  max_nodes: The number of nodes in the tree.
		
		  input_data: The training batch's features as a 2-d tensor; `input_data[i][j]`
		   gives the j-th feature of the i-th input.
		  tree_parameters: `tree_parameters[i]` gives the weight of
		   the logistic regression model that translates from node features to
		   probabilities.
		  tree_biases: `tree_biases[i]` gives the bias of the logistic
		   regression model that translates from node features to
		   probabilities.
		
		  probabilities: `probabilities[i][j]` is the probability that input i
		   will reach node j.
		
		Args:
		  input_data: A `Tensor` of type `float32`.
		  tree_parameters: A `Tensor` of type `float32`.
		  tree_biases: A `Tensor` of type `float32`.
		  max_nodes: An `int`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `float32`.
	**/
	static public function routing_function(input_data:Dynamic, tree_parameters:Dynamic, tree_biases:Dynamic, max_nodes:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the derivative of the routing loss with respect to each decision
		
		  node.
		
		  max_nodes: The number of nodes in the tree.
		
		  tree_parameters: `tree_parameters[i]` gives the weight of
		   the logistic regression model that translates from node features to
		   probabilities.
		  tree_biases: `tree_biases[i]` gives the bias of the logistic
		   regression model that translates from node features to
		   probabilities.
		  routes: The routes computed by routing_function_op.
		
		  routing_gradient: `routing_gradient` provides du / df, where u is the routing
		   function and f is the (vector of) decision functions.  A decision function
		   f_i computes the routing decision at node i.
		
		   f_i is parameterized by t_i (parameters) and b_i (bias) and takes data x as
		   input.  This op is called in training_ops.py to compute du / df, and we use
		   that to compute
		
		     du / dx = du / df * df / dx,
		     du / dt = du / df * df / dt, and
		     du / db = du / df * df / db.
		
		Args:
		  input_data: A `Tensor` of type `float32`.
		  tree_parameters: A `Tensor` of type `float32`.
		  tree_biases: A `Tensor` of type `float32`.
		  routes: A `Tensor` of type `float32`.
		  max_nodes: An `int`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `float32`.
	**/
	static public function routing_gradient(input_data:Dynamic, tree_parameters:Dynamic, tree_biases:Dynamic, routes:Dynamic, max_nodes:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Samples a path for each instance in `input_data` and returns the
		
		  probability of the path and the path taken.
		
		  tree_depth: The depth of the decision tree.
		  random_seed: The base random seed.
		
		  input_data: The training batch's features as a 2-d tensor; `input_data[i][j]`
		   gives the j-th feature of the i-th input.
		  tree_parameters: `tree_parameters[i]` gives the weight of
		   the logistic regression model that translates from node features to
		   probabilities.
		  tree_biases: `tree_biases[i]` gives the bias of the logistic
		   regression model that translates from node features to
		   probabilities.
		
		  path_probility: `path_probability[i]` gives the probability of reaching each
		   node in `path[i]`.
		  path: `path[i][j]` gives the jth node in the path taken by the ith data
		   instance.
		
		Args:
		  input_data: A `Tensor` of type `float32`.
		  tree_parameters: A `Tensor` of type `float32`.
		  tree_biases: A `Tensor` of type `float32`.
		  tree_depth: An `int`.
		  random_seed: An `int`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (path_probability, path).
		
		  path_probability: A `Tensor` of type `float32`.
		  path: A `Tensor` of type `int32`.
	**/
	static public function stochastic_hard_routing_function(input_data:Dynamic, tree_parameters:Dynamic, tree_biases:Dynamic, tree_depth:Dynamic, random_seed:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the derivative of the routing loss with respect to each decision
		
		  node.
		
		  tree_depth: The depth of the decision tree.
		
		  input_data: The training batch's features as a 2-d tensor; `input_data[i][j]`
		   gives the j-th feature of the i-th input
		  tree_parameters: `tree_parameters[i]` gives the weight of
		   the logistic regression model that translates from node features to
		   probabilities.
		  tree_biases: `tree_biases[i]` gives the bias of the logistic
		   regression model that translates from node features to
		   probabilities.
		  path_probility: `path_probability[i]` gives the probability of reaching each
		   node in `path[i]`.
		  path: `path[i][j]` gives the jth node in the path taken by the ith data
		   instance.
		
		  routing_gradient: `routing_gradient` provides du / df, where u is the routing
		   function and f is the (vector of) decision functions.  A decision function
		   f_i computes the routing decision at node i.
		  data_gradient: `data_gradient` provides df / dx, where f is the (vector
		   of) decision functions and x is a batch of data.
		  parameter_gradient: `parameter_gradient` provides df / dw, where f is the
		   (vector of) decision functions and w is the matrix of parameters that
		   determine how instances are routed through a tree.
		  bias_gradient: `bias_gradient` provides df / db, where f is the
		   (vector of) decision functions and b is the vector of bias parameters that
		   determine how instances are routed through a tree.
		
		  f_i is parameterized by t_i (parameters) and b_i (bias) and takes data x as
		  input.  This op is called in training_ops.py to compute du / df, and we use
		  that to compute
		
		     du / dx = du / df * df / dx,
		     du / dt = du / df * df / dt, and
		     du / db = du / df * df / db.
		
		Args:
		  input_data: A `Tensor` of type `float32`.
		  tree_parameters: A `Tensor` of type `float32`.
		  tree_biases: A `Tensor` of type `float32`.
		  path_probability: A `Tensor` of type `float32`.
		  path: A `Tensor` of type `int32`.
		  tree_depth: An `int`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (routing_gradient, data_gradient, parameter_gradient, bias_gradient).
		
		  routing_gradient: A `Tensor` of type `float32`.
		  data_gradient: A `Tensor` of type `float32`.
		  parameter_gradient: A `Tensor` of type `float32`.
		  bias_gradient: A `Tensor` of type `float32`.
	**/
	static public function stochastic_hard_routing_gradient(input_data:Dynamic, tree_parameters:Dynamic, tree_biases:Dynamic, path_probability:Dynamic, path:Dynamic, tree_depth:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Takes a batch of paths through a tree and a batch of values along those paths
		
		  and returns a batch_size by num_nodes encoding of the path values.
		
		  path: `path[i][j]` gives the jth node in the path taken by the ith data
		   instance.
		  path_values: `path_values[i][j]` gives the value associated with node j in the
		   path defined by the ith instance
		
		  unpacked_paths: `unpacked_paths[i][path[i][k]]` is path_values[i][k] for k in
		   [0, tree_depth).  All other elements of unpacked_paths are zero.
		
		Args:
		  path: A `Tensor` of type `int32`.
		  path_values: A `Tensor` of type `float32`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `float32`.
	**/
	static public function unpack_path(path:Dynamic, path_values:Dynamic, ?name:Dynamic):Dynamic;
}