Product.delete_all
# . . .
Product.create!(title: 'Тестовая книга',
description:
%{<p>
Описание тестовой книги.
</p>},
author: 'Писатель Джеймс',
price: 110.50,
origtitle: 'Test book',
serie: 'Лучшая книжная серия',
publisher: 'Издательский дом Скибиди Вапапа',
year: 2019,
binding: 'Твёрдый переплёт',
page: 123,
discount: 10,
newprice: 99.45)
# . . .
