#include <iostream>
using namespace std;

class Queue
{
private:
    int arr[5];
    int front;
    int rear;

public:
    Queue()
    {
        front = -1;
        rear = -1;
    }

    bool isEmpty()
    {
        if (front == -1 && rear == -1)
        {
            return true;
        }
        else
        {
            return false;
        }
    }

    bool isFull()
    {
        if (rear == 4)
        {
            return true;
        }
        else
        {
            return false;
        }
    }

    void enqueue()
    {   int val;
        if (isFull())
        {
            cout << "THE QUEUE IS FULL" << endl;
            return;
        }
        else if (isEmpty())
        {
            rear = 0;
            front = 0;
        cout<<"enter value";
            cin>>val;
            arr[rear] = val;
        }
        else
        {   cout<<"enter value";
            cin>>val;
            rear++;
            arr[rear] = val;
        }
    }

    int dequeue()
    {
        int x = 0;
        if (isEmpty())
        {
            cout << "WE CANT DELETE ANYMORE ELEMENTS" << endl;
            return x;
        }
        else if (front == rear)
        {
            x = arr[front];

            rear = -1;
            front = -1;
            arr[front] = 0;
            return x;
        }
        else
        {
            x = arr[front];
            arr[front] = 0;
            front++;
            return x;
        }
    }
    void display()
    {
        cout << "THE QUEUE IS : " << endl;
        for (int i = front; i <= rear; i++)
        {
            cout << arr[i] << " ";
        }
        cout << endl;
    }
    void display_rear()
    {
        int x;
        x = arr[rear];
        cout << x << endl;
    }
};

int main()
{
    Queue q;


   int ch;
   cout<<"1-> Insert element to the queue"<<endl;
   cout<<"2-> Delete element from the queue"<<endl;
   cout<<"3-> Display all the elements of the queue"<<endl;
   cout<<"4-> Exit"<<endl;
   do {
      cout<<"Enter your choice : "<<endl;
      cin>>ch;
      switch (ch) {
         case 1: q.enqueue();;
         break;
         case 2: q.dequeue();
         break;
         case 3: q.display();
         break;
         case 4: cout<<"Exit"<<endl;
         break;
         default: cout<<"Invalid choice"<<endl;
      }
   } while(ch!=4);

    return 0;
}
