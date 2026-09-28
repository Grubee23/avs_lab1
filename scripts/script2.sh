#!/bin/bash
# ===== ЧАСТЬ 2: копирование, перемещение, ссылки =====

cd ~/lab0

# 1) копия tasting_results в office под именем successful_experiment
cp experiments/tasting_results victor/office/successful_experiment

# 2) рекурсивная копия molecular_station в experiments под именем molecular_backup
cp -r victor/kitchen/molecular_station experiments/molecular_backup

# 3) ОТНОСИТЕЛЬНАЯ символическая ссылка (путь считается от папки experiments)
ln -s ../victor/kitchen/molecular_station/foam_recipe experiments/current_recipe

# 4) символическая ссылка kitchen_entry на каталог victor/kitchen
ln -s victor/kitchen kitchen_entry

# 5) жёсткая ссылка shift_order на opening_message (без -s = жёсткая)
ln opening_message victor/kitchen/shift_order

# 6) объединить два отчёта в новый файл team_report
cat victor/kitchen/hot_station/senya_report victor/kitchen/hot_station/fedya_report > victor/kitchen/team_report

# 7) дописать chef_order в конец tasting_results (>> = дописать)
cat victor/kitchen/chef_order >> experiments/tasting_results

# 8) переместить reservations в office под именем evening_reservations
mv victor/hall/reservations victor/office/evening_reservations

# ---------- Проверка ----------
ls -lR ~/lab0
