#include <stdio.h>
#include <string.h>

int main(void) {
	int cnt = 50;
	char input[cnt];
	while (1) {
		scanf("%s", input);
		FILE *fp = fopen("index.html", "w");
		if (input != "") {
			fprintf(fp, "%s", input);
			fclose(fp);
			input[0] = '\0';
		}
	}
}
