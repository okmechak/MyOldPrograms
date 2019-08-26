int str_find(const char* str, const char* word){
	int str_len = strlen(str);
	int word_len = strlen(word);
	if(str_len<word_len||str_len==0||word_len ==0||str==NULL||word==NULL) return 0;
	int i,j;
	int value = 0;
	for(i = 0; i <= str_len-word_len; i++){
		int point = 1;
		for(j = 0; j < word_len; ++j)
			if(!(point = point * str[j+i]==word[j])) 
				break;
		if(point){
			++value;
			i = i+word_len-1;
		}
	}
	return value;
}