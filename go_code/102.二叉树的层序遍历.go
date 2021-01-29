/*
 * @lc app=leetcode.cn id=102 lang=golang
 *
 * [102] 二叉树的层序遍历
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
func levelOrder(root *TreeNode) [][]int {
	if root == nil {
		return make([][]int, 0)
	}

	result := make([][]int, 0)
	queue := make([]*TreeNode, 0)
	queue = append(queue, root)
	node := new(TreeNode)
	var queueLen, i int

	for len(queue) > 0 {
		queueLen = len(queue)
		tmpList := make([]int, 0)
		for i = 0; i < queueLen; i++ {
			node = queue[0]
			queue = queue[1:]
			tmpList = append(tmpList, node.Val)

			if node.Left != nil {
				queue = append(queue, node.Left)
			}
	
			if node.Right != nil {
				queue = append(queue, node.Right)
			}
		}

		result = append(result, tmpList)
	}

	return result
}

// @lc code=end

