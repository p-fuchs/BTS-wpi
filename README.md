# Program do wykonywania testów projektowych

## Sposób uruchamiania

1. Umieśić swój program w pliku project.c
2. Dane wejściowe "in" umieścić w folderze '/tests/in'
3. Dane wyjściowe "out" umieścić w folderze '/tests/out'
5. W folderze głównym uruchomić komendę 'bash testuj.sh'

## Uwagi do działania programu

1. Pliki "in" i odpowiadające im "out" muszą mieć tę samą nazwę
2. Zwrócić uwagę na komendy podane do kompilacji i weryfikacji dynamicznej pamięci ('gcc' oraz 'valgrind'), gdyż mogą być zmieniane w zależności od projektu
3. Archiwalne testy do zadań będą przechowywane w folderze 'archive'
4. Z powodu wczesnej wersji i braku doświadczenia w bashu, program może zawierać rażące błędy

## Kontrybucja

1. Można ulepszać program poprzez pull-requesty
2. Należy zwrócić uwagę, aby format testów był zgodny z podaną specyfikacją programu
