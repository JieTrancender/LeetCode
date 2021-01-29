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
	stack := make([]*TreeNode, 0)
	node := new(TreeNode)
	lastVisitedNode := new(TreeNode)

	for root != nil || len(stack) > 0 {
		for root != nil {
			stack = append(stack, root)
			root = root.Left
		}

		node = stack[len(stack)-1]
		if node.Right == nil || node.Right == lastVisitedNode {
			result = append(result, node.Val)
			stack = stack[:len(stack)-1]
			lastVisitedNode = node
		} else {
			root = node.Right
		}
	}

	return result
}

// @lc code=end

