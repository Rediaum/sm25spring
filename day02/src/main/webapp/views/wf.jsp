<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style>
    .wf{
        width:200px;
        border:2px solid aquamarine;
    }
</style>

<%-- Weather Forecast Page --%>
<div class="col-sm-9">
    <h2>Weather Forecast Page</h2>
    <div class="wf" id="wf1"></div>
</div>

<script>
    $(document).ready(function(){  // 이 부분만 추가
        let date = new Date();
        let year = date.getFullYear();
        let month = date.getMonth() + 1;
        let day = date.getDate();

        if(month < 10){
            month = '0'+month;
        }
        if(day < 10){
            day = '0'+day;
        }

        let today = year+''+month+''+day+'0600';

        let wf1Url = 'http://apis.data.go.kr/1360000/MidFcstInfoService/getMidTa'; /*URL*/
        let queryParams = '?' + encodeURIComponent('serviceKey') + '='+'Qv4hBW2Uneq4Y5uxuX94URP1MbiYACxxNpXHY%2BqY3EQmXaDWJ53%2F4IxeD%2FOZ0QRS1Aqc934qidkdLLdGeoZZ%2BA%3D%3D'; /*Service Key*/
        queryParams += '&' + encodeURIComponent('pageNo') + '=' + encodeURIComponent('1'); /**/
        queryParams += '&' + encodeURIComponent('numOfRows') + '=' + encodeURIComponent('10'); /**/
        queryParams += '&' + encodeURIComponent('dataType') + '=' + encodeURIComponent('JSON'); /**/
        queryParams += '&' + encodeURIComponent('regId') + '=' + encodeURIComponent('11B10101'); /**/
        queryParams += '&' + encodeURIComponent('tmFc') + '=' + encodeURIComponent(today); /**/

        $.ajax({
            url: wf1Url+queryParams,
            success:(data)=>{
                console.log(data);
                let item = data.response.body.items.item[0];
                let result = '';

                // 모든 속성을 출력
                for(let key in item){
                    result += `${key}: ${item[key]}<br>`;
                }

                $('#wf1').html(result);
            }
        });
    });  // 이 부분만 추가
</script>