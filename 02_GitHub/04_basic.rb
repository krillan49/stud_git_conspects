puts '                       Подключение и выгрузка данных на удаленный GitHub репозиторий'

# 1.  Создать новый репозиторий на GitHub: 'Repositories' -> 'New'. Указываем его название(оно войдет в url адрес ссылок на репозиторий) и прочие данные(описание, публичность, доп фаилы)


# 2.  Появляется страница команд(несколько первых уже ненужны если репозиторий уже создан локально)

# Команда подключения локального репозитория к удаленному репозиторию:
# > git remote add origin https://github.com/username/rep_name.git
# origin - если проект имеет несколько удаленных репозитариев – каждому из них присваивается собственное имя. Главный репозитарий принято называть origin

# > git remote                       - проверить подключен ли локальный репозиторий к удаленному. Вернет origin если подключены, ничего если не подключены и сообщение если нет папки .git

# $ git remote show origin           - покажет к какому репозторию на GitHub подключен наш локальный репозиторий


# > git branch -M main               - так как в GitHub главная ветка зазывается 'main', а в Git она по умолчанию 'master', то нужно переименовать ее на локальном п=репозитории перед пушами в удаленный

# > git push -u origin main          - добавляет весь локальный репозиторий данной ветки(тут main) в гитхаб репозиторий(тут origin)
# > git push -u origin master:main   - либо так и написать, что вы хотите master отправить во внешний main

# Далее выдаст несколько способов подтверждения-авторизации нашего устройства и после подтверждения выгрузит фаилы на сервер, при следующих добавлениях в таблице будет последняя версия, остальное в коммитах.

# > git push                         -  заливает все


# 3.  Обновляем страницу и увидим фаилы удаленного репозитория которые были запушены из локального
# commits         - посмотреть все коммиты. Даты стоят не загрузки, а создания самих коммитов локально.
# Add files       - скачивание или загрузка фаилов без команд консоли
# Code            - получить ссылки на клонирование репозитория или скачать zip архив с репозиторием


# 4.  Создаем фаил README.md(необязательно)  можно кнопкой или через консоль локально и потом закоммитить и добавить.



puts '                                Изменение ссылки на GitHub репозиторий'

# 1. Смотрим текущие ссылки на GitHub репозиторий (потом проверим результат изменения ссылок так же)
# $ git remote -v
#=>
# origin  git@github.com:USERNAME/REPOSITORY.git (fetch)
# origin  git@github.com:USERNAME/REPOSITORY.git (push)


# 2a. Установить новую ссылку на свой репозиторий
# $ git remote set-url origin https://github.com/USERNAME/REPOSITORY_NEW.git

# 2b. Установить новую ссылку на связанный форк-репозиторий
# $ git remote set-url upstream https://github.com/AndriiKot/Create__html-table__.git



puts '                                      Удаление GitHub репозитория'

# 1. Заходим в Settings на странице репозитория
# 2. Прокручиваем в самый низ на раздел Danger Zone. В нем последний пункт удалить репозиторий.
# 3. Вводим название репозитория, пароль и он удаляется.



puts '                                   Удаление ветки из GitHub репозитория'

# На странице репозитория перейдите по ссылке "View all branches" -> "Delete branch"(значек мусорки напротив имени ветки).
# Нет никаких проверок на наличие неотредактированных изменений, поэтому GitHub просто удалит ветку немедленно.



puts '                                Удаление коммитта из репозитория на Гитхаб'

# https://stackoverflow.com/questions/448919/how-can-i-remove-a-commit-on-github


# Короткий вариант. Решение работает, если удаляемый коммит является последним:
# 1а. Удалите последний коммит, сохранив проделанную вами работу:
# $ git reset --soft HEAD~1
# 1б. Удалите последний коммит, уничтожив всю проделанную вами работу:
# $ git reset --hard HEAD~1
# 2. Отправьте изменения в удаленный репозиторий (-f или --force):
# $ git push -f


# Полный вариант. Решение работает, если удаляемый коммит является последним:
# 1. Скопируйте ссылку на коммит, к которому вы хотите вернуться, из журнала:
# $ git log
# 2. Сбросьте git до ссылки на коммит:
# $ git reset <commit_ref>
# 3. Сохраните локальные изменения из неправильного коммита для использования позже после отправки на удаленный сервер:
# $ git stash
# 4. Отправьте изменения в удаленный репозиторий (-f или --force):
# $ git push -f
# 5. Верните сохраненные изменения в локальный репозиторий:
# $ git stash apply
# 7. Если у вас есть неотслеживаемые/новые файлы в изменениях, вам необходимо добавить их в git перед фиксацией:
# $ git add .
# 6. Добавьте любые необходимые дополнительные изменения, затем зафиксируйте необходимые файлы (или используйте точку «.» вместо указания имени каждого файла, чтобы зафиксировать все файлы в локальном репозитории):
# $ git commit -m "<new_commit_message>" <file1> <file2> ...
# или
# $ git commit -m "<new_commit_message>"















#
