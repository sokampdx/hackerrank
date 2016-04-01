/*
  Insert Node at the end of a linked list 
  head pointer input could be NULL as well for empty list
  Node is defined as 
  struct Node
  {
     int data;
     struct Node *next;
  }
*/
Node* Insert(Node *head,int data)
{
  // Complete this method
    Node *current = head;
    Node *previous = head;
    
    while (current) {
        previous = current;
        current = current->next;
    }
    
    current = new Node;
    current->data = data;
    current->next = NULL;

    if (head == NULL)
        head = current;
    else
        previous->next = current;
        
    return head;
}
