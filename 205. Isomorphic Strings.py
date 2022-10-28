class Solution:
    def isIsomorphic(self, s: str, t: str) -> bool:
        ddict = {}
        final_string = ''
        for i in range(len(s)):
            s_char = s[i]
            t_char = t[i]

            if s_char in ddict:
                final_string += ddict[s_char]
            else:
                for key, value in ddict.items():
                    if t_char == value:
                        return False
                ddict[s_char] = t_char
                final_string += ddict[s_char]

        return final_string == t
