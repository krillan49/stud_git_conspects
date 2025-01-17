puts '                                         Копия чужого репозитория'

# Простая копия чужого репозитория позволит нам работать с этой копией локально, пушить свои изменения себе на гитхаб и пулить изменения от базового репозитория, но не позволить делать пулл реквесты и вносить изменения на базовый репозиторий

# Для клонирования(перенос с сервера на свой комп) репозитория есть 2 варианта:
# а) Просто его скачать: нажать *Code*(зеленая кнопка) и затем Download ZIP
# б) Клонировать через консоль (URL адрес находится под кнопкой *Code*):
# > git clone https://github.com/username/rep_name.git            - по умолчанию название папки как у репозитория на гитхабе
# > git clone https://github.com/username/rep_name.git fold_name  - можно указать другое название папки
# Сразу же будет папка .git(соотв git init не нужен), сразу подключен к нашей копии-репозиторию на Github

# Можно подкачать в нашу локальную копию все изменения, которые автор основного репозитория сделает уже после нашего клонирования. В общем эта команда нужна для того чтобы докачать то что делали другие сотрудники. Обычно первое с чего начинают рабочий день. Имя сервера есть в папке .git
# > git pull                    - добавляем, которых у нас нет локально
# > git pull origin master      - можно указать репозиторий и ветку если нужно докачать не все

# Если используем git pull уже после того как мы внесли новые изменения в свой локальный репозиторий и сделали новый коммит, то выведет текстовый редактор и попросит смежить - нужно ввести текст это будет текст сообщения для коммита с мержем и потом нажать 2 раза ctrl+c и написать :wq! и нажать энтер



puts '                                           Fork, Pull Request'

# https://docs.github.com/en/get-started/quickstart/contributing-to-projects
# https://jeka.by/post/1053/github-send-PR-to-other-repository/                 - минигайд про пулл реквесты

# fork - скопированный репозиторий
# upstream - материнский репозиторий

# 1. Fork - создание копии проекта с которого можно отправлять изменения на авторский репозиторий:
# а) Создание копии чужого репозитория в нашем GitHub хранилище: заходим на чужой репозиторий *Fork* -> *+ Create a new fork*
# б) Клонируем копию по ссылке уже из своего GitHub на компьютер:
# > git clone https://github.com/username/rep_name.git

# 2. Вносим изменения в свой склонированный проет, пушим. Автору ставятся от этом пометки в поле fork.

# 3. Pull Request - отправка изменения с нашей копии на GitHub автору на GitHub:
# а) На своем fork-репозитории, в ветке в которой пушили -> *Contribute*(под зеленой кнопкой *Code*) -> *Open Pull Request* -> откроются настройки(из какой ветки какого репозитория в какие, все изменения)
# б) Нажимаем *Create Pull Request*  можно указать комментарии к изменениям, нажимаем *Create Pull Request* и теперь на вкладке *Pull Request* у нас появилась отметка

# 4. Автору приходит уведомление(на вкладке с колокольчиком), открывает смотрит:
# *Review changes*      - написать ответ
# *Merge Pull Request*  - слияние репозиториев(принять пул реквест)



puts '                       Синхронизация fork-репозитория с материнским через веб-интерфейс'

# https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/working-with-forks/syncing-a-fork


# В Гитхабе в форк-репозитории надпись над файлами:
"This branch is 1 commit ahead of, 2 commits behind o-200/silver-palm-tree:main"
# o-200              - владелец изначального репозитория
# silver-palm-tree   - имя репозитория
# main               - имя ветки

# Надо чтобы в этой строке не было надписи "behind", ведь она обозначает, что эта ветка устаревшая и нужно актуализировать данные, тогда надпись станет:
"This branch is up to date with o-200/silver-palm-tree:main"

# Проблема в том, что возможны конфликты если изменения в форк-репозитории идут поверх изменений в главном репозитории или если несколько веток сразу будет вливаться с кучей изменений. В таких случаях обычно просят исполнителя (форк-репозиторий) актуализировать ветку.


# Как актуализировать/синхронизировать ветку:
# 1. На странице fork-репозитория, выбрать нужную ветку (тут main), которую нужно синхронизировать с одноименной веткой материнского репозитория и нажать на "Sync fork" -> "Update Branch". После этого main ветка fork-репозтория будет актуальна с main веткой основного репозитория.
# 2. На локальном репозитории(у себя на компьютере):
# $ git checkout main                     - зайти на ветку main
# $ git pull                              - добавить изменения с актуализированного форк-репозитория
# Теперь локальная ветка main будет актуальна с веткой main нашего fork-репозтория, который ранее актуализировался с основным

# Если до актуализации репозиториев с форк-репозиторием были сделаны новые коммиты из других веток и отправленны пулл реквесты, а в основном репозитории тоже сделанны новые коммиты, то получается новая ветка в форк-репозитории создавалась и в нее делались коммиты относительно устаревшей main-ветки:
# 3. Зайти на ветку с задачей и выполнить команду, которая зальет изменения на эту ветку (?? о том, что ветка мэйн актуализированна ??)
# $ git merge --no-ff main
# ?? Если используем git pull(или git merge --no-ff main) уже после того как внесли новые изменения в локальный репозиторий и сделали новый коммит, то выведет текстовый редактор и попросит смежить - нужно ввести текст это будет текст сообщения для коммита с мержем и потом нажать 2 раза ctrl+c и написать :wq! и нажать энтер

# Так ветки станут актуальны и после git push должно пропасть сообщение о том, что ветки не актуальны



puts '                       Синхронизация fork-репозитория с материнским из командной строки'

# https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/working-with-forks/syncing-a-fork

# 1. Прежде чем синхронизировать свой fork с upstream, нужно его настроить, чтобы он указываел на репозиторий upstream:

# а) Проверить текущий настроенный удаленный репозиторий для вашего форка:
# $ git remote -v
#=> origin  https://github.com/YOUR-USERNAME/YOUR-FORK.git (fetch)
#=> origin  https://github.com/YOUR-USERNAME/YOUR-FORK.git (push)

# б) Укажите новый удаленный вышестоящий репозиторий, который будет синхронизирован с форком:
# $ git remote add upstream https://github.com/ORIGINAL-OWNER/ORIGINAL-REPOSITORY.git

# в) Проверьте новый репозиторий, который вы указали для своего форка:
# $ git remote -v
#=> origin    https://github.com/YOUR-USERNAME/YOUR-FORK.git (fetch)
#=> origin    https://github.com/YOUR-USERNAME/YOUR-FORK.git (push)
#=> upstream  https://github.com/ORIGINAL-OWNER/ORIGINAL-REPOSITORY.git (fetch)
#=> upstream  https://github.com/ORIGINAL-OWNER/ORIGINAL-REPOSITORY.git (push)


# 2. Извлечь ветки и соответствующие им коммиты из репозитория upstream. Коммиты в BRANCH-NAME будут сохранены в локальной ветке upstream/BRANCH-NAME.
# $ git fetch upstream
#=> remote: Counting objects: 75, done.
#=> remote: Compressing objects: 100% (53/53), done.
#=> remote: Total 62 (delta 27), reused 44 (delta 9)
#=> Unpacking objects: 100% (62/62), done.
#=> From https://github.com/ORIGINAL-OWNER/ORIGINAL-REPOSITORY
#=>  * [new branch]      main     -> upstream/main


# 3. Проверьте локальную ветку по умолчанию вашего форка — в данном случае мы используем main.
# $ git checkout main
#=> Switched to branch 'main'


# 4. Объедините изменения из ветки по умолчанию upstream, в данном случае upstream/main, в вашу локальную ветку по умолчанию.

# Это синхронизирует ветку по умолчанию вашего форка с репозиторием upstream, не теряя локальные изменения.
# $ git merge upstream/main
#=> Updating a422352..5fdff0f
#=> Fast-forward
#=>  README                    |    9 -------
#=>  README.md                 |    7 ++++++
#=>  2 files changed, 7 insertions(+), 9 deletions(-)
#=>  delete mode 100644 README
#=>  create mode 100644 README.md

# Если в вашей локальной ветке не было уникальных коммитов, Git выполнит ускоренную перемотку
# $ git merge upstream/main
#=> Updating 34e91da..16c56ad
#=> Fast-forward
#=>  README.md                 |    5 +++--
#=>  1 file changed, 3 insertions(+), 2 deletions(-)
# Если в вашей локальной ветке были уникальные коммиты, вам может потребоваться разрешить конфликты


# Синхронизация вашего форка обновляет только вашу локальную копию репозитория. Чтобы обновить ваш форк на GitHub.com, вы должны отправить/запушить свои изменения


# 5. Коммиты в наш синхронизированный репозиторий
# $ git push
# Далее, чтобюы залить их в целевой, нужно сделать Pull Request


# 6. Подтянуть изменения из чужого(целевого) синхронизированного репозитория
# $ git pull upstream main



puts '                         Настройка доступа для контрибутеров в свой репозиторий'

# 1. Перейдите в настройки вашего репозитория
# 2. Выберите вкладку "Collaborators"
# 3. Добавьте пользователя в "Manage access", указав его имя пользователя или email
# 4. Настройка доступа: Убедитесь, что добавляемый контрибьютор имеет соответствующий уровень доступа. Например, роль "Collaborator" даст возможности для выполнения git pull, git push и других команд.
















#
