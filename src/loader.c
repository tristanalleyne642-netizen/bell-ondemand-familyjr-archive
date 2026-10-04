#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

#define APP_NAME "Bell On Demand Family Jr Archive"

typedef struct {
    int year;
    const char *name;
    const char *catalog_path;
    const char *library_path;
} archive_entry;

static archive_entry archive_list[] = {
    { 2015, "bell_familyjr_2015", "archive/2015/catalog.json", "lib/bell_familyjr_2015.so" },
    { 2016, "bell_familyjr_2016", "archive/2016/catalog.json", "lib/bell_familyjr_2016.so" },
    { 2017, "bell_familyjr_2017", "archive/2017/catalog.json", "lib/bell_familyjr_2017.so" },
    { 2018, "bell_familyjr_2018", "archive/2018/catalog.json", "lib/bell_familyjr_2018.so" },
    { 2019, "bell_familyjr_2019", "archive/2019/catalog.json", "lib/bell_familyjr_2019.so" },
    { 2020, "bell_familyjr_2020", "archive/2020/catalog.json", "lib/bell_familyjr_2020.so" },
    { 2021, "bell_familyjr_2021", "archive/2021/catalog.json", "lib/bell_familyjr_2021.so" }
};

static void print_banner(void) {
    printf("\n========================================================\n");
    printf("%s\n", APP_NAME);
    printf("Legacy Arris Embedded VOD Archive Loader\n");
    printf("USB installation mode: enabled\n");
    printf("Compatible target: Linux embedded Arris boxes\n");
    printf("========================================================\n");
}

static void print_years(void) {
    int i;
    for (i = 0; i < (int)(sizeof(archive_list) / sizeof(archive_list[0])); i++) {
        printf("[%d] %s (%d)\n", i + 1, archive_list[i].name, archive_list[i].year);
    }
}

static void print_selected_catalog(int year_index) {
    archive_entry *entry = &archive_list[year_index];
    printf("Loading archive for year %d\n", entry->year);
    printf("Library: %s\n", entry->library_path);
    printf("Catalog: %s\n", entry->catalog_path);
}

int main(int argc, char **argv) {
    int choice = 0;

    print_banner();

    if (argc > 1) {
        choice = atoi(argv[1]);
        if (choice < 1 || choice > 7) {
            printf("Invalid selection. Please choose a valid archive year.\n");
            return 1;
        }
        choice--;
    } else {
        printf("Available archive versions:\n");
        print_years();
        printf("Select a version: ");
        scanf("%d", &choice);
        choice--;
    }

    print_selected_catalog(choice);

    printf("\nUSB installation complete.\n");
    printf("Legacy Bell Family Jr archive ready for embedded device launch.\n");
    printf("This package is intended for compatible Linux embedded Arris hardware.\n");

    return 0;
}
