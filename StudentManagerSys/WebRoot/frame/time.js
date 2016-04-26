<!--
tmpDate = new Date();
date = tmpDate.getDate();
month= tmpDate.getMonth() + 1 ;
year= tmpDate.getYear();
document.write(year);
document.write("年");
document.write(month);
document.write("月");
document.write(date);
document.write("日");
document.write("&nbsp;&nbsp;");
now = new Date() //定义新对象，new具有Date的性质

if (now.getDay() == 5) document.write("星期五")

if (now.getDay() == 6) document.write("星期六")

if (now.getDay() == 0) document.write("星期日")

if (now.getDay() == 1) document.write("星期一")

if (now.getDay() == 2) document.write("星期二")

if (now.getDay() == 3) document.write("星期三")

if (now.getDay() == 4) document.write("星期四");
// -->