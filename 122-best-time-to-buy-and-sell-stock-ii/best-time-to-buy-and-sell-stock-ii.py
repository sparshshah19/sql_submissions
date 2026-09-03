class Solution:
    def maxProfit(self, prices: List[int]) -> int:
         #you can buy it then immediately sell it on the same day

        #hold at most one share of the stock at any time 
        
        #buy on left, sell on right
        max_profit = 0 
        left = 0 
        right = 1 

        while right < len(prices):
            if prices[left] > prices[right]:
                left += 1
                right += 1
            
            elif prices[right] >= prices[left]:
                max_profit += prices[right] - prices[left]
                left += 1
                right += 1


        return max_profit 