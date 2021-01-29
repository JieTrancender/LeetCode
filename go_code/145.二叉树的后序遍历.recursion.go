/*
 * @lc app=leetcode.cn id=145 lang=golang
 *
 * [145] 二叉树的后序遍历
 */

// @lc code=start
/**
 * Definition for a binary tree node.
 * type TreeNode struct {
 *     Val int
 *     Left *TreeNode
 *     Right *TreeNode
 * }
 */
func postorderTraversal(root *TreeNode) []int {
	if root == nil {
		return make([]int, 0)
	}

	result := make([]int, 0)

	result = postorderTraversalInner(root, result)
	
	return result
}

func postorderTraversalInner(root *TreeNode, result []int) []int {
	if root == nil {
		return result
	}

	result = postorderTraversalInner(root.Left, result)
	result = postorderTraversalInner(root.Right, result)
	result = append(result, root.Val)
	
	return result
}

// @lc code=end

