/*
   Find merge point of two linked lists
   Node is defined as
   struct Node
   {
       int data;
       Node* next;
   }
*/
int FindMergeNode(Node *headA, Node *headB)
{
    // Complete this function
    // Do not write the main method. 
    if (!headA->next || !headB->next)
        return -999;
    if (headA != headB && headA->next == headB->next)
        return headA->next->data;

    int result = FindMergeNode(headA->next, headB);

    if (result != -999)
        return result;
    return FindMergeNode(headB->next, headA);
}
