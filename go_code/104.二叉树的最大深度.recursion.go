/*
 * @lc app=leetcode.cn id=104 lang=golang
 *
 * [104] 二叉树的最大深度
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
func maxDepth(root *TreeNode) int {
	return maxDepthInner(root, 0)
}

func maxDepthInner(root *TreeNode, depth int) int {
	if root == nil {
		return depth
	}

	leftMax := maxDepthInner(root.Left, depth+1)
	rightMax := maxDepthInner(root.Right, depth+1)
	if leftMax > rightMax {
		return leftMax
	}

	return rightMax
}

// @lc code=end

