/*
  Delete Node at a given position in a linked list 
  Node is defined as 
  struct Node
  {
     int data;
     struct Node *next;
  }
*/
Node* Delete(Node *head, int position)
{
  // Complete this method
    Node *previous = head;
    Node *current = head;
    if (position == 0) {
        head = current->next;
    } else {
        current = current->next;
        while (--position) {
            previous = current;
            current = current->next;
        }
        previous->next = current->next;
        delete current;
    }
    return head;
}

