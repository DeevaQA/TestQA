﻿#language: ru

@tree

Функционал: <описание фичи>

Как Администратор я хочу
Создать документ Заказ с добавлением Услуги
чтобы проверить, что в поле Количество можно ввести значение

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Создание документа Заказ с добавлением Услуги
* Открытие формы создания документа
	И я закрываю все окна клиентского приложения
	И В командном интерфейсе я выбираю "Продажи" "Заказы"
	Тогда открылось окно "Заказы товаров"
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно "Заказ (создание)"
* Заполнение шапки документа
	И из выпадающего списка с именем 'Организация' я выбираю точное значение "ООО \"Все для дома\""
	И я нажимаю кнопку выбора у поля с именем 'Покупатель'
	Тогда открылось окно "Контрагенты"
	И я нажимаю на кнопку с именем 'ФормаСписок'
	И в таблице 'Список' я перехожу к строке:
		| "Код"       | "Наименование"   |
		| "000000011" | "ЭлектроБыт ЗАО" |
	И в таблице 'Список' я выбираю текущую строку
	Тогда открылось окно "Заказ (создание) *"
	И из выпадающего списка с именем 'Склад' я выбираю точное значение "Малый"
* Добавление услуги
	И в таблице 'Товары' я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице 'Товары' я нажимаю кнопку выбора у реквизита с именем 'ТоварыТовар'
	Тогда открылось окно "Товары"
	И я нажимаю на кнопку с именем 'ФормаСписок'
	И в таблице 'Список' я перехожу к строке:
		| "Код"       | "Наименование" |
		| "000000037" | "Доставка"     |
	И в таблице 'Список' я выбираю текущую строку
	Тогда открылось окно "Заказ (создание) *"
	И в таблице 'Товары' я завершаю редактирование строки
* Проверка возможности ввести значение в поле Количество
	И в таблице 'Товары' я активизирую поле с именем 'ТоварыКоличество'
	И в таблице 'Товары' в поле с именем 'ТоварыКоличество' я ввожу текст "2"
	И в таблице 'Товары' я завершаю редактирование строки
* Проведение документа
	И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'
	И я жду закрытия окна "Заказ (создание) *" в течение 20 секунд