﻿USE [BethanysPieShop-1ED06986-5F07-4A1C-85B9-D9F3F477BFF5]
GO

/****** Object: Table [dbo].[Pies] Script Date: 24.04.2020 16:11:34 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

DROP TABLE [dbo].[Pies];


GO
CREATE TABLE [dbo].[Pies] (
    [PieId]              INT             IDENTITY (1, 1) NOT NULL,
    [Name]               NVARCHAR (MAX)  NULL,
    [ShortDescription]   NVARCHAR (MAX)  NULL,
    [LongDescription]    NVARCHAR (MAX)  NULL,
    [AllergyInformation] NVARCHAR (MAX)  NULL,
    [Price]              DECIMAL (18, 2) NOT NULL,
    [ImageUrl]           NVARCHAR (MAX)  NULL,
    [ImageThumbnailUrl]  NVARCHAR (MAX)  NULL,
    [IsPieOfTheWeek]     BIT             NOT NULL,
    [InStock]            BIT             NOT NULL,
    [CategoryId]         INT             NOT NULL,
    [Notes]              NVARCHAR (MAX)  NULL
);

SET IDENTITY_INSERT [dbo].[Pies] ON
INSERT INTO [dbo].[Pies] ([PieId], [Name], [ShortDescription], [LongDescription], [AllergyInformation], [Price], [ImageUrl], [ImageThumbnailUrl], [IsPieOfTheWeek], [InStock], [CategoryId], [Notes]) VALUES (1, N'CIGPET Capo Regulated Box Mod Carp в EcoSmoke', N'Good!', N'Размеры: 88х 46.5 х 36.6мм Вес: 166г Материал корпуса: цинковый сплав Питание: 2 х 18650 Чипсет: GX-200-UTC Выходная мощность: 5 — 200Вт Диапазон напряжения: до 7.5В Сила тока пиковая: 35А Режим работы: POWER, TC (NI200, SS, TI), TCR, TFR,CURVE Температурный диапазон: 200℉ — 600℉ / 100℃ — 315℃ Поддерживаемое сопротивление: 0.1 — 3.0Ω Защита: от низкого / высокого сопротивления, от перегрева, от короткого замыкания, от неправильной полярности, от перезаряда / переразряда Тип коннектора: стальной 510, пин позолочен, подпружинен Экран/диагональ: да, цветной, сенсорный, HD Micro-USB порт/зарядка: есть Type-C, ток зарядки 1.5А, возможность беспроводной зарядки Обновление/прошивка: да', N'', CAST(12.95 AS Decimal(18, 2)), N'https://ecosmoke.kz/upload/iblock/939/939414abc2a353cd2ca9d9d9626e6100.jpg', N'https://ecosmoke.kz/upload/iblock/939/939414abc2a353cd2ca9d9d9626e6100.jpg', 1, 1, 1, NULL)
INSERT INTO [dbo].[Pies] ([PieId], [Name], [ShortDescription], [LongDescription], [AllergyInformation], [Price], [ImageUrl], [ImageThumbnailUrl], [IsPieOfTheWeek], [InStock], [CategoryId], [Notes]) VALUES (2, N'GeekVape Aegis Legend 200W Box MOD Stealth Black ', N'Bueno!', N'Бокс мод GeekVape Aegis Legend 200 Вт- это обновленный батарейный мод линейки Aegis с защитой от воды, от ударов и пыли. Вместе с современными режимами VW/TC, и более удобной щеколдой аккумуляторного отсека, а также USB портом для прямой зарядки. Мод GeekVape Aegis Legend питается от двух аккумуляторов 18650 (покупаются отдельно), при помощи нового чипсета - "AS", бокс мод генерирует до 200 ВТ мощности. При изготовлении мода используются 6 высококачественных изнасостойких материалов для достижения высокой износостойкости: IP67 (защиты от воды и пыли); MIL STD 810G-516.6 (антишоковая защита армейского уровня). В обновленной версии мод получил возможность зарядки и обновления прошивки по USB. Технические характеристики: Размер: 90.5x 58.5 x 30.6 мм Мощность: 200Вт Режимы работы: VW/ VPC/TC/TCR/BYPASS Сопротивление: 0.05-3.0Ом Аккумулятор: 2x 18650 (не включен) Температурный контроль: 100-315C° Рабочая температура: 40 - 80C° Уровень защиты: IP67 (защиты от воды и пыли); MIL ST', N'', CAST(18.95 AS Decimal(18, 2)), N'https://ecosmoke.kz/upload/iblock/af4/af4533566151d43d9baf4e8192799c60.jpg', N'https://ecosmoke.kz/upload/iblock/af4/af4533566151d43d9baf4e8192799c60.jpg', 0, 1, 1, NULL)
INSERT INTO [dbo].[Pies] ([PieId], [Name], [ShortDescription], [LongDescription], [AllergyInformation], [Price], [ImageUrl], [ImageThumbnailUrl], [IsPieOfTheWeek], [InStock], [CategoryId], [Notes]) VALUES (3, N'Vaporesso Mod GEN 220W Black', N'Mucho!', N'Новинка от Vaporesso, бокс мод GEN 220W на обновленной плате, получившей название AXON Chip. Дизайн изделия выдержан в духе нестареющей классики. Корпус изготовлен из цинкового сплава, покрыт приятным на ощупь материалом софт-тач. Его антискользящее свойство дополнено рифлением, что делает удержание мода предельно надежным и комфортным. Посадочная площадка, представляющая собой коннектор 510 с подпружиненным пином, оборудована по центру, готова принять атомайзеры диаметром до 26 мм. На лицевой панели отливает позолотой кнопка Fire, под ней расположился дисплей диагональю 0,91 дюйма, отображающий стандартный набор информации. Дальше идут элементы регулировки, между ними – клавиша меню. В самом низу панели расположился порт USB micro с функцией подзарядки и обновления прошивки. Максимальная выходная мощность находится в районе 220 Ватт, а минимальное рабочее сопротивление составляет 0.03Ω.', N'', CAST(18.95 AS Decimal(18, 2)), N'https://ecosmoke.kz/upload/iblock/623/623d9ecd5169be79ff8f369de1469c4d.jpg', N'https://ecosmoke.kz/upload/iblock/623/623d9ecd5169be79ff8f369de1469c4d.jpg', 0, 1, 1, NULL)
INSERT INTO [dbo].[Pies] ([PieId], [Name], [ShortDescription], [LongDescription], [AllergyInformation], [Price], [ImageUrl], [ImageThumbnailUrl], [IsPieOfTheWeek], [InStock], [CategoryId], [Notes]) VALUES (4, N'VOOPOO DRAG 2 Mod B-Ink', N'A summer classic!', N'VOOPOO Drag 2 - новая версия популярного боксмода от компании Voopoo, чей предыдущий Drag стал одним из самых популярных устройств своего сезона. В новинке разработчики поправили много смущавших пользователей моментов - уменьшили габариты, поставили внутрь новую версию чипа с большей выходной мощностью и улучшенным функционалом и сделали его намного удобнее в хвате рукой. Особенности VOOPOO Drag 2 Mod: О компании Voopoo и их серии устройств Drag можно было не знать только в случае если вы являетесь начинающим вейпером, только присматривающим себе первый набор, или же в случае проживания в пещере - настолько первая версия устройства была популярна. Название Drag звучало отовсюду и это было заслуженно - за счёт установленной электроники с ультра-быстрым стартом и прекрасным функционалом боксмод моментально завоевал себе огромную армию поклонников.', N'', CAST(15.95 AS Decimal(18, 2)), N'https://ecosmoke.kz/upload/iblock/8e4/8e4cc98509ef7cc0007d075c5b76c57c.jpg', N'https://ecosmoke.kz/upload/iblock/8e4/8e4cc98509ef7cc0007d075c5b76c57c.jpg', 0, 1, 1, NULL)
INSERT INTO [dbo].[Pies] ([PieId], [Name], [ShortDescription], [LongDescription], [AllergyInformation], [Price], [ImageUrl], [ImageThumbnailUrl], [IsPieOfTheWeek], [InStock], [CategoryId], [Notes]) VALUES (5, N'Akso OS Pod Kit 420mAh Aquamarine Blue', N'Happy holidays with this pie!', N'Объём аккумулятора - 420 mAh. Компактная и легкая. Элегантный внешний вид. Широкий выбор картриджей. Простота в эксплуатации. Зарядка во время использования через порт Micro USB. Защита от короткого замыкания. Защита от переразряда батареи.', N'', CAST(13.95 AS Decimal(18, 2)), N'https://ecosmoke.kz/upload/iblock/1a0/1a03805d89486744bd13612e25ecc123.jpg', N'https://ecosmoke.kz/upload/iblock/1a0/1a03805d89486744bd13612e25ecc123.jpg', 0, 1, 2, NULL)
INSERT INTO [dbo].[Pies] ([PieId], [Name], [ShortDescription], [LongDescription], [AllergyInformation], [Price], [ImageUrl], [ImageThumbnailUrl], [IsPieOfTheWeek], [InStock], [CategoryId], [Notes]) VALUES (6, N'Aspire Breeze 2 AIO Kit 1000mAh 2 ml red ', N'A Christmas favorite', N'Когда-то популярное устройство Breeze AIO (All In One - все в одном) было переработано с улучшенным методом заполнения, знакомьтесь с Aspire Breeze 2 AIO, который предлагает новые функции. Такой же компактный и эргономичный дизайн, но более удобная система заполнения. Зарядка осуществляется через порт MicroUSB. Максимальная мощность заряда может достигать довольно высокой отметки. Когда USB-кабель подключен, индикатор Breeze 2будет трижды мигать синим и оранжевым цветами. Под-система поставляется к нам в 2 цветах чёрный и красный. Компания Aspire так же сохранила отличную технологию испарителей, обеспечивающую приятный аромат. Регулировка воздушного потока проста, снимите крышку и поверните регулировочное кольцо по своему вкусу. Испарители (койлы) под аппарат можете приобрести так же у нас на 0.6 Ом Испаритель рекомендуется заменять раз в 2-3 недели при активном употреблении. Никотиновое насыщение при парении солевых жидкостей происходит через 3-4 затяжки, а значит получается отличная экономи', N'', CAST(17.95 AS Decimal(18, 2)), N'https://ecosmoke.kz/upload/iblock/ca0/ca09bcc90fecbadc562821729aaf43ab.jpg', N'https://ecosmoke.kz/upload/iblock/ca0/ca09bcc90fecbadc562821729aaf43ab.jpg', 0, 1, 2, NULL)
INSERT INTO [dbo].[Pies] ([PieId], [Name], [ShortDescription], [LongDescription], [AllergyInformation], [Price], [ImageUrl], [ImageThumbnailUrl], [IsPieOfTheWeek], [InStock], [CategoryId], [Notes]) VALUES (7, N'Hotcig Kubi Refillable Pod Starter Kit 550mAh Black, Standard Edition', N'Sweet as peach', N'Hotcig Kubi Refillable Pod Starter Kit 550mAh Black, Standard Edition', N'', CAST(15.95 AS Decimal(18, 2)), N'https://ecosmoke.kz/upload/iblock/a91/a91705ebc3378e5e11584e1f372c372e.jpg', N'https://ecosmoke.kz/upload/iblock/a91/a91705ebc3378e5e11584e1f372c372e.jpg', 0, 1, 2, NULL)
INSERT INTO [dbo].[Pies] ([PieId], [Name], [ShortDescription], [LongDescription], [AllergyInformation], [Price], [ImageUrl], [ImageThumbnailUrl], [IsPieOfTheWeek], [InStock], [CategoryId], [Notes]) VALUES (8, N'Joyetech RunAbout Kit 480mAh 2 ml Oak Texture в EcoSmoke', N'Our Halloween favorite', N'RunAbout оснащен встроенным аккумулятором емкостью 480 мАч и светодиодным индикатором, отображающим состояние аккумулятора. Кроме того, картридж для стручков имеет емкость 2 мл электронного сока для удовлетворения ваших ежедневных потребностей, что поддерживает систему бокового наполнения и лучшие вкусы MTL. А внутри есть две капсулы 2 мл для вашего любимого электронного сока. У этого есть кнопка огня, и индикатор батареи сообщит вам при низком напряжении, это идеальное устройство для вашего времени отдыха.', N'', CAST(12.95 AS Decimal(18, 2)), N'https://ecosmoke.kz/upload/iblock/6a1/6a114728fe951301b60c6c3f83a650da.jpg', N'https://ecosmoke.kz/upload/iblock/6a1/6a114728fe951301b60c6c3f83a650da.jpg', 1, 1, 2, NULL)
INSERT INTO [dbo].[Pies] ([PieId], [Name], [ShortDescription], [LongDescription], [AllergyInformation], [Price], [ImageUrl], [ImageThumbnailUrl], [IsPieOfTheWeek], [InStock], [CategoryId], [Notes]) VALUES (9, N'IQOS 2,4 PLUS Blue ', N'My God, so sweet!', N'Самая популярная Айкос 2.4 Плюс система нагревания табака в комплекте с зарядной станцией. При полном заряде рассчитана на использование 20 табачных стиков. IQOS позволяет ощутить настоящий вкус табака без дыма, пепла и неприятного запаха.', N'', CAST(15.95 AS Decimal(18, 2)), N'https://ecosmoke.kz/upload/iblock/71e/71e153e83541674abc7919116003eee0.jpg', N'https://ecosmoke.kz/upload/iblock/71e/71e153e83541674abc7919116003eee0.jpg', 1, 1, 3, NULL)
INSERT INTO [dbo].[Pies] ([PieId], [Name], [ShortDescription], [LongDescription], [AllergyInformation], [Price], [ImageUrl], [ImageThumbnailUrl], [IsPieOfTheWeek], [InStock], [CategoryId], [Notes]) VALUES (10, N'IQOS 2,4 PLUS Black купить в EcoSmoke', N'Our delicious strawberry pie!', N'Самая популярная Айкос 2.4 Плюс система нагревания табака в комплекте с зарядной станцией. При полном заряде рассчитана на использование 20 табачных стиков. IQOS позволяет ощутить настоящий вкус табака без дыма, пепла и неприятного запаха.', N'', CAST(15.95 AS Decimal(18, 2)), N'https://ecosmoke.kz/upload/iblock/4d0/4d0ce952bd02206014c08657421f4a8c.jpg', N'https://ecosmoke.kz/upload/iblock/4d0/4d0ce952bd02206014c08657421f4a8c.jpg', 0, 1, 3, NULL)
INSERT INTO [dbo].[Pies] ([PieId], [Name], [ShortDescription], [LongDescription], [AllergyInformation], [Price], [ImageUrl], [ImageThumbnailUrl], [IsPieOfTheWeek], [InStock], [CategoryId], [Notes]) VALUES (11, N'IQOS 2.4 PLUS White', N'You''ll love it!', N'Самая популярная Айкос 2.4 Плюс система нагревания табака в комплекте с зарядной станцией. При полном заряде рассчитана на использование 20 табачных стиков. IQOS позволяет ощутить настоящий вкус табака без дыма, пепла и неприятного запаха.', N'', CAST(18.95 AS Decimal(18, 2)), N'https://ecosmoke.kz/upload/iblock/9e4/9e47d0b8721e29a5fe272b8f5af50097.jpg', N'https://ecosmoke.kz/upload/iblock/9e4/9e47d0b8721e29a5fe272b8f5af50097.jpg', 0, 1, 3, NULL)
SET IDENTITY_INSERT [dbo].[Pies] OFF

