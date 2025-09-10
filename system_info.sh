echo " СИСТЕМНАЯ ИНФОРМАЦИЯ "
echo "Дата и время"
date

echo ""
echo " Информация о системе "
echo "Имя хоста: $(hostname)" 
echo "Тип ОС: $(uname -s)" 
echo "Версия ядра: $(uname -r)"  

echo ""
echo " Использование диска"
df -h / | awk 'NR==2{print "Занято: " $3 ", Свободно: " $4}' 

echo ""
echo "Использование памяти "
free -h | awk 'NR==2{print "Оперативная память: Занято - " $3 ", Свободно - " $4}'

echo ""
echo "Сетевые интерфейсы "
ip addr show | grep -w "inet" | grep -v "127.0.0.1" 

echo ""
echo "Активные пользователи"
who  
