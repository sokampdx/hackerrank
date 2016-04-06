/*
    Insert Node in a doubly sorted linked list 
    After each insertion, the list should be sorted
   Node is defined as
   struct Node
   {
     int data;
     Node *next;
     Node *prev;
   }
*/
Node* SortedInsert(Node *head,int data)
{
    // Complete this function
    // Do not write the main method. 
    Node *newNode = new Node{data, NULL, NULL};

    if (!head)
        return new Node{data, NULL, NULL};
    
    if (head->data > data) {
        head->prev = new Node{data, head, NULL};
        return head->prev;
    }
    
    Node *current = head;
    
    while (current->next && current->next->data < data)
        current = current->next;
    
    if (!current->next)
        current->next = new Node{data, current->next, current};
    else
        current->next->prev = current->next = new Node{data, current->next, current};

    return head;
}
