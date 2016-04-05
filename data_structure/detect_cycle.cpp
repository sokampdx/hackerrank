/*
  Detect loop in a linked list 
  List could be empty also
  Node is defined as 
  struct Node
  {
     int data;
     struct Node *next;
  }
*/
int HasCycle(Node* head){
   // Complete this function
   // Do not write the main method
    if (!head)
        return 0;
    
    Node* slow = head;
    Node* fast = head->next;
    int terminate = 0;
    
    while (slow && fast && slow != fast && !terminate) {
        slow = slow->next;
        if (fast->next)
            fast = fast->next->next;
        else
            terminate = 1;
    }
    
    if (slow == fast)
        return 1;
    return 0;
}
