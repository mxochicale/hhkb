
#chmod +x .sh

 
clear

echo ''
echo '#################################################################'
echo '## Bluetooth Dongle: lsusb | grep Bluetooth'
lsusb | grep Bluetooth
echo ''


echo ''
echo '#################################################################'
echo '## Ubuntu Version: $hciconfig -a; dmesg | egrep -i blue|firm'
hciconfig -a; dmesg | egrep -i 'blue|firm'
#ref:  https://ubuntuforums.org/showthread.php?t=2338474

echo ''
echo '#################################################################'
echo '## Drivers: $ dpkg -l | grep blue'
dpkg -l | grep blue

#ref: https://books.google.co.uk/books?id=SaeIDQAAQBAJ&pg=PA59&lpg=PA59&dq=Bluetooth:+HIDP+(Human+Interface+Emulation)+ver+1.2&source=bl&ots=m7wcZ2MPsf&sig=9b8X0yMgz4sG0LCsM1GLQjcdfNo&hl=en&sa=X&ved=2ahUKEwi736vjzp7dAhXHN8AKHd3pAPQQ6AEwA3oECAcQAQ#v=onepage&q=Bluetooth%3A%20HIDP%20(Human%20Interface%20Emulation)%20ver%201.2&f=false



