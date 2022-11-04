class Solution:
    def longestPalindrome(self, s: str) -> int:
        ddict = {}
        for c in s:
            if c in ddict:
                ddict[c] += 1
            else:
                ddict[c] = 1

        middle_char = False
        length = 0
        for key, value in ddict.items():
            if value > 1:
                if value % 2 == 0:
                    length += value
                else:
                    length += value - 1
                    middle_char = True

            else:
                middle_char = True

        if middle_char is True:
            length += 1
        return length
