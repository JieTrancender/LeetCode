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
	if root == nil {
		return 0
	}
	
	queue := make([]*TreeNode, 0)
	queue = append(queue, root)
	node := new(TreeNode)
	depth := 0

	for len(queue) > 0 {
		depth = depth + 1
		l := len(queue)
		for i := 0; i < l; i++ {
			node = queue[0]
			queue = queue[1:]

			if node.Left != nil {
				queue = append(queue, node.Left)
			}

			if node.Right != nil {
				queue = append(queue, node.Right)
			}
		}
	}
	
	return depth
}

// @lc code=end

