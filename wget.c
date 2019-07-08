#include <stdio.h>
#include <string.h>

int main(void) {
    int cnt = 100;
    char input[cnt];
    while (1) {
        fgets(input, sizeof(input), stdin);
        FILE *fp = fopen("index.html", "w");
        if (input != "" && (!strncmp(input,"real",4)) || (!strncmp(input,"user",4)) || (!strncmp(input,"sys",3))) {
            fprintf(fp, "%s", input);
            fclose(fp);
            // input[0] = '\0';
        }
    }
}
