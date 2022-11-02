class Solution:
    def maxProfit(self, prices: List[int]) -> int:
        max_diff = 0
        buy_price = prices[0]
        for i in range(len(prices)):
            sell_price = prices[i]
            if i > 0:
                buy_price = min(prices[i - 1], buy_price)
            max_diff = max(max_diff, sell_price - buy_price)
        return max_diff
