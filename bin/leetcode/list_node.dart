

void main() {
  // List<int> nums = [5,4,3,2,1];
  //
  //   for(int i = 1; i < nums.length; i++) {
  //     nums[i] = nums[i - 1] + nums[i];
  //   }
  //   print(nums);


  // String s = 'foo';
  // String t = 'bar';
  //
  // Map<String, String> sToT = {};
  // Map<String, String> tToS = {};
  //
  // for(int i = 0; i < s.length; i++) {
  //   String charS = s[i];
  //   String charT = t[i];
  //
  //   if(sToT.containsKey(charS) && sToT[charS] != charT) {
  //     print(false);
  //   }
  //   if(tToS.containsKey(charT) && tToS[charT] != charS) {
  //     print(false);
  //   }
  //
  //   sToT[charS] = charT;
  //   tToS[charT] = charS;
  // }
  //
  // print(true);

  // String s = "abc", t = "ahbgdc";
  // int sIndex = 0;
  //
  // for(int i = 0; i < t.length && sIndex < s.length; i++) {
  //   if(t[i] == s[sIndex]) {
  //     sIndex++;
  //   }
  // }
  //
  // print(sIndex == s.length);

  // ListNode list1 = ListNode(1, ListNode(2, ListNode(6, ListNode(10))));
  // ListNode list2 = ListNode(1, ListNode(3, ListNode(4, ListNode(10))));
  //
  // ListNode? mergedList = mergeToList(list1, list2);
  //
  // while(mergedList != null) {
  //   print(mergedList.val);
  //   mergedList = mergedList.next;
  // }

  ListNode head = ListNode(1, ListNode(2, ListNode(3, ListNode(4, ListNode(5)))));
  print(middleNode(head)!.val);
}

// ListNode? mergeToList(ListNode? list1, ListNode? list2) {
//   if(list1 == null) return list2;
//   if(list2 == null) return list1;
//
//   if(list1.val < list2.val) {
//     list1.next = mergeToList(list1.next, list2);
//     return list1;
//   } else {
//     list2.next = mergeToList(list1, list2.next);
//     return list2;
//   }
// }

ListNode? middleNode(ListNode? head) {
  ListNode? slow = head;
  ListNode? fast = head;
  while(fast != null && fast.next != null) {
    slow = slow!.next;
    fast = fast.next!.next;
  }
  return slow;
}

class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}