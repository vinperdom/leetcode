class Solution:
    def middleNode(self, head: Optional[ListNode]) -> Optional[ListNode]:
        curr_element = head
        middle_element = head
        counter = 0
        while curr_element:
            counter += 1
            if counter % 2 == 0:
                middle_element = middle_element.next
            curr_element = curr_element.next
        return middle_element
