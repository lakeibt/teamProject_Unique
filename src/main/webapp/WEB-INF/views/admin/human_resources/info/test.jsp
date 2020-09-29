<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/setting.jsp"%>
<!DOCTYPE html>
<HTML>
<HEAD>
<TITLE> 자바스크립트 </TITLE>
<script>
// By Mattias Sjogren (masj4037@student.uu.se) 
// Courtesy of SimplytheBest.net - http://simplythebest.net/scripts/

var africaArray =  new Array("('Select country','',true,true)",
"('Algeria')",
"('Angola')",
"('Burundi')",
"('Cameroon')",
"('Congo')",
"('Eritrea')",
"('Ethiopia')",
"('Gambia')",
"('Ghana')",
"('Guinea')",
"('Kenya')",
"('Libya')",
"('Madagascar')",
"('Morocco')",
"('Mozambique')",
"('Namibia')",
"('Nigeria')",
"('Rwanda')",
"('Senegal')",
"('Sierra Leone')",
"('Somalia')",
"('South Africa')",
"('Sudan')",
"('Tanzania')",
"('Tunisia')",
"('Uganda')",
"('Zaire')",
"('Zambia')",
"('Zimbabwe')",
"('Egypt')",
"('Iran')",
"('Iraq')",
"('Israel')",
"('Jordan')",
"('Kuwait')",
"('Lebanon')",
"('Oman')",
"('Saudi Arabia')",
"('Syria')",
"('Turkey')",
"('U. A. Emirates')",
"('Armenia')",
"('Bangladesh')",
"('Cambodia')",
"('China')",
"('India')",
"('Indonesia')",
"('Japan')",
"('Malaysia')",
"('Myanmar')",
"('Nepal')",
"('Pakistan')",
"('Philippines')",
"('Singapore')",
"('South Korea')",
"('Sri Lanka')",
"('Taiwan')",
"('Thailand')",
"('Uzbekistan')",
"('Vietnam')",
"('Albania')",
"('Austria')",
"('Belarus')",
"('Belgium')",
"('Bosnia')",
"('Bulgaria')",
"('Croatia')",
"('Cyprus')",
"('Czech Rep.')",
"('Denmark')",
"('Estonia')",
"('Finland')",
"('France')",
"('Germany')",
"('Greece')",
"('Hungary')",
"('Iceland')",
"('Ireland')",
"('Italy')",
"('Latvia')",
"('Liechtenstein')",
"('Lithuania')",
"('Luxembourg')",
"('Macedonia')",
"('Malta')",
"('Monaco')",
"('Netherlands')",
"('Norway')",
"('Poland')",
"('Portugal')",
"('Romania')",
"('Russia')",
"('Slovakia')",
"('Slovenia')",
"('Spain')",
"('Sweden')",
"('Switzerland')",
"('Ukraine')",
"('United Kingdom')",
"('Australia')",
"('New Zealand')",
"('Costa Rica')",
"('Cuba')",
"('El Salvador')",
"('Guatemala')",
"('Haiti')",
"('Jamaica')",
"('Mexico')",
"('Panama')",
"('Canada')",
"('USA')",
"('Argentina')",
"('Bolivia')",
"('Brazil')",
"('Chile')",
"('Colombia')",
"('Ecuador')",
"('Paraguay')",
"('Peru')",
"('Suriname')",
"('Uruguay')",
"('Venezuela')";
 
function populateCountry(inForm,selected) {
var selectedArray = eval(selected + "Array");
while (selectedArray.length < inForm.country.options.length) {
inForm.country.options[(inForm.country.options.length - 1)] = null;
}
for (var i=0; i < selectedArray.length; i++) {
eval("inForm.country.options[i]=" + "new Option" + selectedArray[i]);
}
if (inForm.region.options[0].value == '') {
inForm.region.options[0]= null;
if ( navigator.appName == 'Netscape') {
if (parseInt(navigator.appVersion) < 4) {
window.history.go(0);
}
else {   	
if (navigator.platform == 'Win32' || navigator.platform == 'Win16') {
window.history.go(0);
            }
         }
      }
   }
}

</script>
</HEAD>

<BODY>
<form name="world">
<select name="region">
	
</select>
<select name="country" onChange="populateUSstate(document.world,document.world.country.options[document.world.country.selectedIndex].text)">
<option value=''><--------------------</option>
</select>
</form>
</BODY>
</HTML>