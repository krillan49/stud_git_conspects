puts '                                              Ветвления'

# В Git ветвления очень быстро работают, в отличие от многих других систем управления версиями

# Принято вносить изменения каждым из разработчиков в свою копию оригинальной версии кода. Каждая такая копия проекта называется веткой – она изолирована от других и имеет собственную историю. В каждой ветке есть свои фаилы(отдельные части проекта) и свои коммиты, видимые только когда активирована данная ветка.

# master - главная ветка создается по умолчанию. Другие ветки создавать и называть уже нужно самостоятельно.

# > git branch -a                       - посмотреть все ветки проекта и какая из них активная
# > git branch -v                       - посмотреть ветки с дополнительными данными по последним коммитам



puts '                                           Основные команды'

# > git branch forum                    - создание новой ветки с названием forum

# > git checkout forum                  - переход на ветку forum

# > git checkout -b admin               - создание ветки admin и сразу переход на нее

# > git branch -m new_name              - переименование текущей ветки на new_name

# > git branch -d forum                 - удалить ненужную ветку. (нужно находиться в другой ветке)

# > git merge forum                     - объединяем текущую ветку с ветой forum, все отличия из ветки forum добавились в текущую ветку, но сама ветка forum осталась. В логе у объединенной ветки будет двойное название, до удаления влитой ветки
# (! конфликт слияния может призойти если у нас в одних и тех же фаилах нескольких сливающихся веток есть различный новый код. Его придется исправить вручную в фаилах и потом сделать новый коммит.)



puts '                                           Работа внутри веток'

# Создаем\меняем фаилы и делаем коммиты для конкретной ветки только после перехода на нее

# (пустые папки и их надпапки почемуто видны в других ветках. Чтобы предотвратить это нужно оставить там какой-то фаил обычно это фаил-заполнитель .gitkeep)

# Пушим новую ветку с коммитом если ее еще нет в нашем удаленном репоитории, когда она уже есть будем пушить обычно (это всегда или только когда форкнутый репозиторий ??)
# $ git push --set-upstream origin 6#rename-main-to-home
# 6#rename-main-to-home - ? название ветки или коммита ?? проверить назвав по разному



puts '                                        Примеры использования веток'

# Мы решили релизить первую версию продукта. Мы бренчимся от мастера и называем ее v1. Далее в мастере продолжается разработка не зависимо от v1. Мы взяли v1, скомпилили, кастомеры скачали. Далее мы планируем релизить патч версии v1, чтобы фиксить критикал баги, при этом не меняя feature set. Мы фиксим критикал баги в мастере и черрипикаем нужные изменения в v1, которые мы в будущем зарелизим как v1.1. Версию v2 мы будем точно так же бренчить от мастера. С ветками и историей мы имеем возможность навигации по временному измерению и возможность продолжить с любой точки в любом направлении

# Предположим, что у тебя кодовая база ужасная и её нужно переписать. Вот ты запускаешь рубокоп, переписываешь тонну логики, но тут тебе прилетает срочная задача от заказчика. И под текущий вариант проекта, который ты переписываешь, задача не может быть реализована, так как слишком много всего было еще не сделано, часть тестов не работает после твоего вмешательства в кодовую базу, в общем, там еще рефакторить и рефакторить. Стоит сделать ветку, например с именем refactoring. И переключаешься в привычную ревизию проекта, где все работает, хоть и криво-косо, но задача от заказчика будет выполнена, а как сделал и зарелизил в мастер, то снова переключаешься на ветку рефакторинга














#
