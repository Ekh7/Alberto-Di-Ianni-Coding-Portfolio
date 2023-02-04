#include <iostream>
using namespace std;

class Book {
    public:
        string title;
        string author;
        int pages;

        //default information which can be overwritten later
        Book (){
            title = "no title";
            author = "no author";
            pages = 0;
        }

        //constructor
        Book (string aTitle, string aAuthor, int aPages) {
            //will call each time "Book" function is called
            title = aTitle; author = aAuthor; pages=aPages;
        }

        //you can add functions to classes
        bool hasMorePages(){
            if(pages >= 600){
                return true;
            }
            return false;
        }
};


int main() {
    Book book1("Harry Potter", "JK Rowling", 500);
    Book book2("Lord of the Rings", "Tolkein", 700);
    Book book3;

    cout<<book1.title<<endl<<book1.author<<endl<<book1.pages<<endl<<book1.hasMorePages();


	return 0;
}