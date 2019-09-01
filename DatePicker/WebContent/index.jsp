<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ page import="java.util.ArrayList"%>
<%@ page import="datepicker.ItemCollection"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JQuery date picker</title>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
</head>
<body>

	
	<form action="datepickerServlet" method="POST">
		<table>
			<tr>
				<td>Date: </td>
				<td><input type="text" name="date" class="datepicker"></td>
			</tr>

			<tr>
				<td><input type="submit" name="btSubmit" value="Submit"></td>
			</tr>
		</table>
	</form>

	<script>
		$(function() {
			$(".datepicker").datepicker({
				changeMonth : true,
				changeYear : true,
				dateFormat : "dd.mm.yy"
			});

			$.datepicker.regional['fi'] = {
				closeText : "Valmis", // Display text for close link
				prevText : "Edel", // Display text for previous month link
				nextText : "Seur", // Display text for next month link
				currentText : "Tänään", // Display text for current month link
				monthNames : [ "Tammikuu", "Helmikuu", "Maaliskuu", "Huhtikuu",
						"Toukokuu", "Kesäkuu", "Heinäkuu", "Elokuu", "Syyskuu",
						"Lokakuu", "Marraskuu", "Joulukuu" ], // Names of months for drop-down and formatting
				monthNamesShort : [ "Tam", "Hel", "Maa", "Huh", "Tou", "Kes",
						"Hei", "Elo", "Syy", "Lok", "Mar", "Jou" ], // For formatting
				dayNames : [ "Maanantai", "Tiistai", "Keskiviikko", "Torstai",
						"Perjantai", "Lauantai", "Sunnuntai" ], // For formatting
				dayNamesShort : [ "Maa", "Tii", "Kes", "Tor", "Per", "Lau",
						"Sun" ], // For formatting
				dayNamesMin : [ "Ma", "Ti", "Ke", "To", "Pe", "La", "Su" ], // Column headings for days starting at Sunday
				weekHeader : "Vk", // Column header for week of the year
				dateFormat : "mm/dd/yy", // See format options on parseDate
				firstDay : 0, // The first day of the week, Mon = 0, ...
				isRTL : false, // True if right-to-left language, false if left-to-right
				showMonthAfterYear : false, // True if the year select precedes month, false for month then year
				yearSuffix : "" // Additional text to append to the year in the month headers
			};

			$.datepicker.setDefaults({
				onClose : function(date, inst) {
					$("#selectedDtaeVal").html(date);
				}
			});
			$.datepicker.setDefaults($.datepicker.regional['fi']);
			
			//Source: https://jqueryui.com/datepicker/
		});
	</script>

</body>
</html>