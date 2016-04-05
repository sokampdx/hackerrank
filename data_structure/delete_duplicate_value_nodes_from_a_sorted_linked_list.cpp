/*
  Remove all duplicate elements from a sorted linked list
  Node is defined as 
  struct Node
  {
     int data;
     struct Node *next;
  }
*/
Node* RemoveDuplicates(Node *head)
{
  // This is a "method-only" submission. 
  // You only need to complete this method. 
    if (!head)
        return head;
    
    Node *previous = head;
    Node *current = head->next;
    
    while (current) {
        if (previous->data == current->data) {
            previous->next = current->next;
            current = current->next;
        } else {
            previous = current;
            current = current->next;
        }
    }
    
    return head;
}
