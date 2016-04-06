/*
   Reverse a doubly linked list, input list may also be empty
   Node is defined as
   struct Node
   {
     int data;
     Node *next;
     Node *prev;
   }
*/
Node* Reverse(Node* head)
{
    // Complete this function
    // Do not write the main method.
    if (!head)
        return head;
    
    Node *current = head;
    
    while (current) {
        head = current;
        
        Node *temp = head->next;
        head->next = head->prev;
        head->prev = temp;
        current = temp;
    }
    
    return head;
}
