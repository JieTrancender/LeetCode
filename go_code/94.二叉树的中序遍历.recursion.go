/*
 * @lc app=leetcode.cn id=94 lang=golang
 *
 * [94] 二叉树的中序遍历
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
func inorderTraversal(root *TreeNode) []int {
	result := make([]int, 0)

	result = inorderTraversalInner(root, result)

	return result
}

func inorderTraversalInner(root *TreeNode, result []int) []int {
	if root == nil {
		return result
	}

	result = inorderTraversalInner(root.Left, result)
	result = append(result, root.Val)
	result = inorderTraversalInner(root.Right, result)

	return result
}

// @lc code=end

