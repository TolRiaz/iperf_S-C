#include <stdio.h>
#include <string.h>

int main(void) {
	int cnt = 100;
	char input[cnt];
	while (1) {
		fgets(input, sizeof(input), stdin);
		FILE *fp = fopen("index.html", "w");
		if (input != "" && input[1] == 'S' && input[2] == 'U') {
			fprintf(fp, "%s", input);
			fclose(fp);
			input[0] = '\0';
		}
	}
}
