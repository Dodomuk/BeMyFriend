<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href='${pageContext.request.contextPath}/resources/fullcalendar/lib/main.css' rel='stylesheet' />
<script src='${pageContext.request.contextPath}/resources/fullcalendar/lib/main.js'></script>
<script src='${pageContext.request.contextPath}/resources/fullcalendar/lib/locales/ko.js'></script>
<script type='text/javascript'>

document.addEventListener('DOMContentLoaded', function() {
  var calendarEl = document.getElementById('calendar');

  var calendar = new FullCalendar.Calendar(calendarEl, {
    googleCalendarApiKey: 'AIzaSyBvDlrxWdGFdQ89-GKsF0fY1EKrNlyhlOY',
    eventSources: [

    { 
    	googleCalendarId : 'ko.south_korea#holiday@group.v.calendar.google.com',
    	className : 'ko_event',
    	color:'red'
    	}

    //google계정으로 추가할 시 이곳에 추가
    ],
    locale: 'ko', //언어
   events:[
	   
	{
   		title:'${calendarList.get(0).getEventComName()}',
       	start:'${calendarList.get(0).getEventStartDate()}',
       	end:'${calendarList.get(0).getEventEndDate()}',
       	color:'#FAEBD7'
     },
    {
    	title:'${calendarList.get(1).getEventComName()}',
        start:'${calendarList.get(1).getEventStartDate()}',
        end:'${calendarList.get(1).getEventEndDate()}',
        color:"#6937a1"
     },
    {
     	title:'${calendarList.get(2).getEventComName()}',
        start:'${calendarList.get(2).getEventStartDate()}',
        end:'${calendarList.get(2).getEventEndDate()}',
        color:"#f7e600"
     },		
    {
      	title:'${calendarList.get(3).getEventComName()}',
        start:'${calendarList.get(3).getEventStartDate()}',
        end:'${calendarList.get(3).getEventEndDate()}',
        color:"#2a67b7"
     },
    {
       	title:'${calendarList.get(4).getEventComName()}',
        start:'${calendarList.get(4).getEventStartDate()}',
        end:'${calendarList.get(4).getEventEndDate()}',
        color:"#008d62"
     },
     {
    	title:'${calendarList.get(5).getEventComName()}',
        start:'${calendarList.get(5).getEventStartDate()}',
        end:'${calendarList.get(5).getEventEndDate()}',
        
      },     
     {
     	title:'${calendarList.get(6).getEventComName()}',
        start:'${calendarList.get(6).getEventStartDate()}',
        end:'${calendarList.get(6).getEventEndDate()}',
        color:"#6937a1"
      },
     {
     	title:'${calendarList.get(7).getEventComName()}',
       	start:'${calendarList.get(7).getEventStartDate()}',
       	end:'${calendarList.get(7).getEventEndDate()}',
       	color:"#ff3399"
      }
    ]

  });

  calendar.render();
});
</script>
<style>
	#calendar{
   height:300%;,
   margin:2px auto;

}
</style>
  </head>
  <body>
    <div id='calendar'></div>
    <h1>왓니?${calendarList.get(0).getEventEndDate()}</h1>

  </body>
</html>