array = [621, 445, 147, 159, 430, 222, 482, 44, 194, 522, 652, 494, 14, 126, 532, 387, 441, 471, 337,
446, 18, 36, 202, 574, 556, 458, 16, 139, 222, 220, 107, 82, 264, 366, 501, 319, 314, 430, 55, 336]
# кількість елементів 
p array.size
p "------------------"
# перевернути масив
p array.reverse
p "------------------"
#  найбільше число
p array.max
p "------------------"
# найменше число
p array.min
p "------------------"
# відсортувати по зростанню
p array.sort
p "------------------"
# відсортувати по зменшенню
p array.sort.reverse
p "------------------"
# видалити непарні
p array.reject! {|e| e.odd?}
p "------------------"
# вивести лише ті, що діляться без остатку на 3 
p array.find_all {|e| e % 3 == 0}
p "------------------"
# вивести унікальні значення
p array.uniq
p "------------------"
# поділити на 10 і відобразити в плаваючих
p array.map {|e|  e/10.to_f}
p "------------------"
# получить новый массив, который бы содержал в себе те буквы английского алфавита, порядковый номер которых есть в нашем массиве;
p "------------------"
# Поміняти максимальний і мінмальний елементи місцями
a = array.index(array.min)
z = array.index(array.max)
array[z], array[a] = array[a] , array[z]
p array
p "------------------"
# вивести елементи, що знаходяться перед мінімальним елементом
array.each_with_index {|e,i| p e if i < array.index(array.min)}
p "------------------"
# 3 найменші елементи масиву 
p array.min(3)
p "------------------"