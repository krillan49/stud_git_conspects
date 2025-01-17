puts '                                               Ungit'

# Ungit — графический веб интерфейс для Git в браузере локально, который выполняет команды Git. Возможно так же запускать его в облаке.

# Ungit работает как маленький сервер, открывается окно в браузере http://localhost:8448/...

# Тк Ungit это пакет/библиотека nodejs то для использования необходимы:
# Node.js версии 0.10 или выше
# npm (node packet manager) версии 1.3.1 или выше

# > npm install -g ungit          - установка пакета ungit (-g - установить глобально, а иначе установит в текущую директорию)



puts '                                            Использование'

# > ungit                    - команда запускает ungit. Нужно находиться в каталоге проекта
# > start ungit              - запустить в отдельном окне(из powershell не работает)

# сразу предлагает сделать директорию репозиторием(местом для хранения кода) либо склонировать репозитоий откудато.
# .git создается когда нажимаем кнопку "Create Repository" в ungit в браузере

# кнопка "Create Repository" это тоже что и команда 'git init .'

# Когда мы создаем фаилы и каталоги, то ungit автоматически их обнаруживает. Можно на каждый из них нажать и посмотреть что в него дописалось
# Название коммита пишется в поле Title(required). Поле Body можно не заполнять.
# Даллее жмем кнопку Commit что под этими полями. Получается наш первый коммит отображающийся графически кружечком, на который можно нажать(справа будут разные команды) слева информация
# Если мы используем фаил который нам в коммите не нужен то до нажатия коммита снимаем галочку рядом с ним(придется каждый раз) либо кнопка справа от названия(i) 'Add to .gitignor'
# master - показывает где мы сейчас находимся, переместив ее мы можем откатиться к одному из предыдущих состояний(и например сделать параллельное ветвление коммитов и соотв версий нашей программы)

# Аналог git checkout 285f1287 через меню ungit:
# Нажимаем '+' справа от кружечка открывается поле, пишем там название(пр version2) и кажимаем кнопку Таg чтобы создать тег/метку/ссылку (для полноценного ветвления используется кнока Branch)
# Теперь можно нажать на метку(тут version2) справа откроется меню(как в у поля master) в нем нажимаем кнопку checkout и получится точка возврата от данного коммита и соотв переключаться между версиями

# Когда мы клонируем репозиторий то указатель master раздваивается на локальный и удаленный(origin/master). Если мы делаем коммит, то master, а origin/master сдвигается только после пуша коммита на Github

# Чтобы запушить, нажимаем на master затем на появившуюся кнопку push

# Fetch в меню сверху справа это похоже аналог pull















#
