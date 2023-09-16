# EX 2

This exercise is meant to teach you some more about modling data without OOP and nested structures.

## Note

- Doing this ```library->total_books``` is the same as this ```(*library).total_books```

## Solution

1. this exercise is meant to show you that if you are making functions that do stuff for a structure:
    - name the function like this structure_xxxxxxx_xxxxxx_xxxxxx.
    - that its more efficient to pass a pointer to the structure than to pass the whole value.
    - that you can use the symbol __->__ to access the pointer rather then the derefrance operator.

```c
int library_get_total_books(library_t *library){
    return library->total_books;
}

int library_get_total_borrowed_books(library_t *library){
    int borrowed_books = 0;
    for (int i = 0; i < library->total_books; i++) {
        if (library->books[i].is_borrowed) {
            borrowed_books++;
        }
    }
    return borrowed_books;
}

int library_get_total_pages(library_t *library){
    int total_pages = 0;
    for (int i = 0; i < library->total_books; i++) {
        total_pages += library->books[i].pages;
    }
    return total_pages;
}


```
