#include <mysql.h>
#include <stdbool.h>
#include <stdio.h>
#include <string.h>

#define NAME_SIZE 80
#define QUERY_SIZE 200

void handle_mysql_error(MYSQL* con)
{
  fprintf(stderr, "%s\n", mysql_error(con));

  if (con != NULL)
  {
    mysql_close(con);
  }

  exit(1);
}

int main(void)
{
  MYSQL* con = mysql_init(NULL);
  if (con == NULL)
  {
    handle_mysql_error(con);
  }

  if (mysql_real_connect(con, "database", "codetest", "swordfish", "codetest", 0, NULL, 0) == NULL)
  {
    handle_mysql_error(con);
  }

  FILE* file = fopen("/data/example.csv", "r");
  if (file == NULL)
  {
    fprintf(stderr, "cannot open example.csv for reading\n");
    exit(1);
  }

  bool header = true;
  char name[NAME_SIZE];
  while (fgets(name, NAME_SIZE, file) != NULL)
  {
    if (header == true)
    {
      header = false;
      continue;
    }

    int last = strlen(name) - 1;
    if (name[last] == '\n')
    {
      name[last] = '\0';
    }

    char query[QUERY_SIZE];
    sprintf(query, "insert into examples(name) values('%s')", name);

    // should use mysql_real_escape_string
    if (mysql_query(con, query))
    {
      handle_mysql_error(con);
    }
  }
  fclose(file);

  if (mysql_query(con, "select * from examples"))
  {
    handle_mysql_error(con);
  }

  MYSQL_RES* result = mysql_store_result(con);
  if (result == NULL)
  {
    handle_mysql_error(con);
  }

  char* separator = "";
  MYSQL_ROW row;

  file = fopen("/data/example_c.json", "w");
  if (file == NULL)
  {
    fprintf(stderr, "cannot open example_c.json for writing\n");
    exit(1);
  }

  fprintf(file, "[");
  while ((row = mysql_fetch_row(result)))
  {
    fprintf(file, "%s{\"id\":%s,\"name\":\"%s\"}", separator, row[0], row[1]);
    separator = ",";
  }
  fprintf(file, "]");
  fclose(file);

  mysql_free_result(result);
  mysql_close(con);

  exit(0);
}
