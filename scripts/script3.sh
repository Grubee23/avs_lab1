export LC_ALL=C.UTF-8

cd ~/lab0

echo "===== 4.1 Пять самых больших обычных файлов ====="
ls -lR ~/lab0 | grep '^-' | sort -n -k5 | tail -n 5

echo "===== 4.2 Строки с катя/баринов без 'гост' ====="
grep -r -h -i -e 'катя' -e 'баринов' victor experiments | grep -v -i 'гост' | sort -r | head -n 6

echo "===== 4.3 Число файлов, где есть 'катя' ====="
grep -r -l 'катя' victor/kitchen/molecular_station experiments/molecular_backup | wc -l

echo "===== 4.4 Первая и последняя строки *_report ====="
{ head -q -n 1 victor/kitchen/hot_station/*_report; tail -q -n 1 victor/kitchen/hot_station/*_report; } | grep -i -e 'блюд' -e 'баринов' | sort

echo "===== 4.5 Количество слов ====="
grep -v -e 'Сеня' -e 'Федя' victor/kitchen/team_report | grep 'блюд' | sort -r | wc -w

echo "===== 4.6 Символические ссылки ====="
ls -lR ~/lab0 | grep '^l' | sort -r -k9

echo "===== 4.7 Файлы с двумя жёсткими ссылками ====="
ls -lRi ~/lab0 | grep -E '^ *[0-9]+ -[^ ]+ +2 ' | sort -n -k1

rm experiments/tasting_results
rm experiments/current_recipe
rm kitchen_entry
rm opening_message
rm victor/kitchen/shift_order
rm victor/kitchen/molecular_station/nitrogen_notes
rmdir archive_empty
rm -r experiments/molecular_backup

echo "===== Итоговое дерево ====="
ls -lR ~/lab0
