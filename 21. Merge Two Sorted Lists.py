# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, val=0, next=None):
#         self.val = val
#         self.next = next
class Solution:
    def mergeTwoLists(self, list1: Optional[ListNode], list2: Optional[ListNode]) -> Optional[ListNode]:
        head = ListNode(-1)
        curr_element = head
        while list1 is not None or list2 is not None:
            if list1 is None:
                curr_element.next = ListNode(list2.val)
                list2 = list2.next
            elif list2 is None:
                curr_element.next = ListNode(list1.val)
                list1 = list1.next
            elif list1.val < list2.val:
                curr_element.next = ListNode(list1.val)
                list1 = list1.next
            else:
                curr_element.next = ListNode(list2.val)
                list2 = list2.next
            curr_element = curr_element.next
            print(head)

        return head.next
