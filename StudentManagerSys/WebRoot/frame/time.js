<!--
tmpDate = new Date();
date = tmpDate.getDate();
month= tmpDate.getMonth() + 1 ;
year= tmpDate.getYear();
document.write(year);
document.write("��");
document.write(month);
document.write("��");
document.write(date);
document.write("��");
document.write("&nbsp;&nbsp;");
now = new Date() //�����¶���new����Date������

if (now.getDay() == 5) document.write("������")

if (now.getDay() == 6) document.write("������")

if (now.getDay() == 0) document.write("������")

if (now.getDay() == 1) document.write("����һ")

if (now.getDay() == 2) document.write("���ڶ�")

if (now.getDay() == 3) document.write("������")

if (now.getDay() == 4) document.write("������");
// -->