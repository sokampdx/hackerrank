/*
  Merge two sorted lists A and B as one linked list
  Node is defined as 
  struct Node
  {
     int data;
     struct Node *next;
  }
*/
Node* MergeLists(Node *headA, Node* headB)
{
  // This is a "method-only" submission. 
  // You only need to complete this method
    if (!headA)
        return headB;
    if (!headB)
        return headA;
    if (headA->data < headB->data) {
        headA->next = MergeLists(headA->next, headB);
        return headA;
    } else {
        headB->next = MergeLists(headB->next, headA);
        return headB;
    }
}
