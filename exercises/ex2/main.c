#include<stdio.h>
#include<stdlib.h>
#include<stdbool.h>

#define PLACEHOLDER 0


/**
 * you are in a library, the librarian tasks to with a few things:
 * 1. find the total number of books in the library
 * 2. find the total number of books in the library that are not borrowed
 * 3. find the total number of books in the library that are borrowed
 * 4. find the total pages of all books in the library
*/

typedef struct {
    int pages;
    bool is_borrowed;
} book_t;

typedef struct {
    book_t books[1024];
    int total_books;
} library_t;



// finish the function (you may not change the parametrs)
int library_get_total_books(library_t *library){
    return PLACEHOLDER;
}

// finish the function (you may not change the parametrs)
int library_get_total_borrowed_books(library_t *library){
    return PLACEHOLDER;
}

// finish the function (you may not change the parametrs)
int library_get_total_pages(library_t *library){
    return PLACEHOLDER;
}


int main(int argc, char *argv[]){
    // if args are passed, use them as the number of books in the library
    int total_books = argc > 1 ? atoi(argv[1]) : 20;

    // create a library
    library_t library = {
        .total_books = total_books
    };

    // fill the library with books
    for(int i = 0; i < total_books; i++){
        library.books[i] = (book_t){
            .pages = i * 100,
            .is_borrowed = i % 2 == 0
        };
    }

    // print the total number of books in the library
    printf("total books=%d\n", library_get_total_books(&library));

    // print the total number of books in the library that are borrowed
    printf("total books borrowed=%d\n", library_get_total_borrowed_books(&library));

    // print the total pages of all books in the library
    printf("total pages=%d\n", library_get_total_pages(&library));

    return 0;
}