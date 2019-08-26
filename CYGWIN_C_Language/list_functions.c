#include "list_functions.h"

int compare_str(udata_t a , udata_t b){
    return strcmp(a.str, b.str );;
}
int compare_count(udata_t a , udata_t b){
    return a.count < b.count;
}
void print_elem(udata_t cur){
    printf("\ndata: str - %20s, count - %3d ",cur.str,cur.count);
}
dlist_t* find_first(dlist_t* list ){
	while(list->prev != NULL)
		list = list->prev;
	return list;
}
dlist_t* find_last(dlist_t* list){
	while(list->next != NULL)
		list = list->next;
	return list;
}
void swap(dlist_t* a, dlist_t* b){
	dlist_t *temp_next, *temp_prev, *nextel, *prevel, *temp;
	if(a==b||a==NULL||b==NULL) return;
	temp = b;
	while(temp!=NULL){
		if (temp==a){
			a = b;
			b = temp;
		}
		temp=temp->next;
	}
	prevel = a->prev;
	nextel = b->next;
	if(a->next == b){
		
		if (prevel!=NULL)
			prevel -> next = b;//1
		if (nextel!=NULL)
			nextel->prev = a;    //4	
		b->prev = prevel;     //2
		a->next = nextel;        //3
		a->prev = b;           //5
		b->next = a;           //6
	}
	else{
		if(prevel != NULL)
			prevel->next = b;
		if(nextel != NULL)	
			nextel->prev = a;
		b->prev->next = a;
		a->next->prev = b;
		temp_next = b->next;
		temp_prev = b->prev;
		b->next = a->next;
		b->prev = a->prev;
		a->next = temp_next;
		a->prev = temp_prev;
	}
}
dlist_t *rot_right_list(dlist_t* list){
	dlist_t* last = find_last(list);
	dlist_t* first = list;
	first->prev = last;
	last->next = first;
	last->prev->next = NULL;
	last->prev = NULL;
	return last;
}
dlist_t *rot_left_list(dlist_t* list){
	dlist_t* last = find_last(list);
	dlist_t* first = list;
	dlist_t* new_first;
	first->next->prev = NULL;
	new_first = first->next;
	first->next = NULL;
	first->prev = last;
	last->next = first;
	return new_first;
}
dlist_t *creat_list(udata_t *array, const int n){
	int i;
	dlist_t *element, *previos, *first;
	previos = NULL;
	for(i = 0; i <= n; i++){
		element	= (dlist_t* ) malloc(sizeof(dlist_t));
		if (i==0) first = element;
		if (element != NULL){
			element->prev = (i > 0) ? previos : NULL;
			if (i > 0)
				previos->next = (i < n) ? element : NULL;
			element->data = array[i];
			previos = element;
		}
	}	
	return first;
}
void print_list(dlist_t *cur, void(*print_elem)(udata_t)){
	printf("\n__________");
	while(cur !=NULL){
		(*print_elem)(cur->data);
		cur = cur->next;
	}
	printf("\n__________");
}
dlist_t* search_element(dlist_t *element, udata_t srch, int (*equal)(udata_t,udata_t)){
	while(element != NULL && equal(element->data ,srch))
		element = element->next;
	return element;
}
dlist_t* add_element(dlist_t *cur, udata_t d){
	dlist_t *new_elem = NULL;
	if(cur!=NULL)
		cur = find_last(cur);
	new_elem = (dlist_t *)malloc(sizeof(dlist_t));
	if (new_elem != NULL){
		if(cur != NULL)
			cur -> next = new_elem;
		new_elem -> prev = cur;
		new_elem -> next = NULL;
		new_elem -> data = d;
	}
	return new_elem;
}
dlist_t* delete_element(dlist_t *cur, udata_t el, int (*equal)(udata_t,udata_t)){
	dlist_t *element;
	dlist_t *first = cur;
	element = search_element(cur, el, equal);
	if (element != NULL){
		if (element->prev == NULL){
			first = element->next;
			first->prev = NULL;
		}
		else if (element -> next == NULL){
		    first = element->prev;
			first->next =NULL;
		}
		else{
			first = element->prev;
			element->next->prev = element->prev;
			element->prev->next = element->next;
		}
		free(element);
		while(first->prev != NULL)
			first = first->prev;
	}
	return first;
}
dlist_t* sort_list(dlist_t* list, int (*comp)(udata_t, udata_t)){
	dlist_t *p1, *p2, *temp;
	p1 = list;
	while(p1 != NULL){
		p2 = p1->next;
		while(p2 != NULL){
			if(((*comp)(p1->data, p2->data)) > 0){
				swap(p1,p2);
				temp = p1;
				p1 = p2;
				p2 = temp;
			}
			p2 = p2->next;
		}
		p1 = p1->next;
	}
	return NULL;
}
int write_list_2_file(const char* filename, dlist_t *list){
	FILE* desc = NULL;
	if((desc = fopen(filename,"w"))==NULL){
		printf("Can not open or create file:\"%s\"",filename);
		return -1;
	}
	while (list!=NULL){
		fwrite(&(list->data), sizeof(udata_t), 1, desc);
		list = list->next;
	}
	return fclose(desc);
}
dlist_t* read_list_from_file(const char* filename, dlist_t *list){
	FILE* desc = NULL;
	udata_t *buf = (udata_t*)malloc(sizeof(udata_t));
	if((desc = fopen(filename,"r"))==NULL){
		printf("Can not open or file:\"%s\" does not exist",filename);
		return NULL;
	}
	while(!feof(desc)){
		if(fread(buf, sizeof(udata_t), 1 ,desc)>0)
			list = add_element(list, *buf);
	}
	free(buf);
	fclose(desc);
	return list;
}