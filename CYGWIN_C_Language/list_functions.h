#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "type_def.h"

typedef struct dlist{
	struct dlist *next;	
	struct dlist *prev;	
	udata_t data;
} dlist_t;

int compare_str(udata_t a, udata_t b);
int compare_count(udata_t a, udata_t b);
void print_elem(udata_t cur); 
dlist_t* find_first(dlist_t* list);
dlist_t* find_last(dlist_t* list);
void swap(dlist_t* a, dlist_t* b);
dlist_t *rot_right_list(dlist_t* list);
dlist_t *rot_left_list(dlist_t* list);
dlist_t *creat_list(udata_t *array, const int n);
void print_list(dlist_t *cur, void(*print_elem)(udata_t));
dlist_t* search_element(dlist_t *element, udata_t srch, int (*equal)(udata_t,udata_t));
dlist_t* add_element(dlist_t *cur, udata_t d);
dlist_t* delete_element(dlist_t* cur, udata_t el, int (*equal)(udata_t,udata_t));
dlist_t* sort_list(dlist_t* list, int (*comp)(udata_t, udata_t));
int write_list_2_file(const char* filename, dlist_t *list);
dlist_t* read_list_from_file(const char* filename, dlist_t *list);