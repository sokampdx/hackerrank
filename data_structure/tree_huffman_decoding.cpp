/* 
The structure of the node is

typedef struct node {
    int freq;
    char data;
    node * left;
    node * right;
    
}node;

*/

void decode_huff_recursive(node* root, node* current, string s) {
  if (!current)
    return;
  
  if (current->data != '\0') {
    cout << current->data;
    decode_huff_recursive(root, root, s);
    return;
  }
  
  if (s.empty())
    return;

  char code = s[0];
  string remain = s.erase(0, 1);
  if (code == '0')
    decode_huff_recursive(root, current->left, remain);
  else
      decode_huff_recursive(root, current->right, remain);
}

void decode_huff(node * root,string s)
{
  decode_huff_recursive(root, root, s);
}
