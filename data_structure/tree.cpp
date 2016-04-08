/* you only have to complete the function given below.  
Node is defined as  

struct node {
    int data;
    node* left;
    node* right;
};

*/

void Preorder(node *root) {
    if (!root)
        return;
    cout << root->data << ' ';
    Preorder(root->left);
    Preorder(root->right);
}

void Postorder(node *root) {
    if (!root)
        return;
    Postorder(root->left);
    Postorder(root->right);
    cout << root->data << ' ';
}

void Inorder(node *root) {
    if (!root)
        return;
    Inorder(root->left);
    cout << root->data << ' ';
    Inorder(root->right);
}

int height(node * root) {
    if (!root)
        return 0;
    return 1 + max(height(root->left), height(root->right));
}

void left_overhang(node * root) {
    if (!root)
        return;
    left_overhang(root->left);
    cout << root->data << ' ';
}

void right_overhang(node * root) {
    if (!root)
        return;
    cout << root->data << ' ';
    right_overhang(root->right);
}

void top_view(node * root) {
    if (!root)
        return;
    left_overhang(root->left);
    cout << root->data << ' ';
    right_overhang(root->right);
}

#include <queue>

void LevelOrder(node* root) {
    if (!root)
        return;
    
    queue<node*> myqueue;
    myqueue.push(root);
  
    while(!myqueue.empty()){
        node* current = myqueue.front();
        cout << current->data << ' ';
        if (current->left)
            myqueue.push(current->left);
        if (current->right)
            myqueue.push(current->right);
        myqueue.pop();
    }
}

node * insert(node * root, int value)
{
  if (!root)
    return new node {value, NULL, NULL};

  if (root->data > value)
    root->left = insert(root->left, value);
  else
    root->right = insert(root->right, value);
  
  return root;
}
