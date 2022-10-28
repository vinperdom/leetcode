class Solution:
    def runningSum(self, nums: List[int]) -> List[int]:
        counter = 0
        output = []
        for i in nums:
            output.append(i + counter)
            counter += i
        return output
