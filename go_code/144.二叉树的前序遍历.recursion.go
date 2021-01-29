/*
 * @lc app=leetcode.cn id=144 lang=golang
 *
 * [144] 二叉树的前序遍历
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
func preorderTraversal(root *TreeNode) []int {
	result := make([]int, 0)

	if root == nil {
		return result
	}

	result = preorderTraversalInner(root, result)

	return result
}

func preorderTraversalInner(root *TreeNode, result []int) []int {
	if root == nil {
		return result
	}

	result = append(result, root.Val)
	result = preorderTraversalInner(root.Left, result)
	result = preorderTraversalInner(root.Right, result)

	return result
}

// @lc code=end

