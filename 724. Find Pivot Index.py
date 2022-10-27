class Solution:
    def pivotIndex(self, nums: List[int]) -> int:
        left_sum = 0
        right_sum = sum(nums)
        for index, value in enumerate(nums):
            right_sum -= value


            if left_sum == right_sum:
                return index
            left_sum += value

        return -1