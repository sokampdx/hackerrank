/*
  Insert Node at a given position in a linked list 
  head can be NULL 
  First element in the linked list is at position 0
  Node is defined as 
  struct Node
  {
     int data;
     struct Node *next;
  }
*/
Node* InsertNth(Node *head, int data, int position)
{
  // Complete this method only
  // Do not write main function. 
    
    Node *current = head;
    Node *node = new Node;
    node->data = data;
    
    if (current == NULL || position == 0) {
        node->next = current;
        head = node;
    } else {
        while (current->next && --position)
            current = current->next;
    
        node->next = current->next;
        current->next = node;
    }
    return head;
}

