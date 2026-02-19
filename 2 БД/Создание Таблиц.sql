create table Передачи (
    Название_передачи nvarchar(200) primary key,
    Рейтинг decimal(5,2),
    Стоимость_минуты decimal(10,2)
);

create table Заказчики (
    Название_фирмы nvarchar(200) primary key,
    Банковские_реквизиты int,
    Телефон nvarchar(20),
    Контактное_лицо nvarchar(100)
);

create table Размещение_рекламы (
    Вид_рекламы nvarchar(50),
    Дата date,
    Длительность_минут int,
    Название_передачи nvarchar(200),
    Название_фирмы nvarchar(200)
);

alter table Размещение_рекламы
add foreign key (Название_передачи) references Передачи(Название_передачи);

alter table Размещение_рекламы
add foreign key (Название_фирмы) references Заказчики(Название_фирмы);