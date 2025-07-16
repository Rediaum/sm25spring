<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style>
    #results{
        width:250px;
        border:2px solid lightskyblue;
        padding: 10px;
        background-color: #f9f9f9;
    }

    .rank-item {
        display: flex;
        align-items: center;
        margin: 5px 0;
        padding: 5px;
        border-bottom: 1px solid #ddd;
    }

    .rank-number {
        font-weight: bold;
        color: #333;
        margin-right: 10px;
        min-width: 20px;
    }

    .rank-title {
        flex: 1;
        margin-right: 10px;
    }

    .rank-status {
        width: 20px;
        height: 20px;
    }

    .status-new {
        background-color: skyblue;
        color: black;
        border-radius: 3px;
        text-align: center;
        font-size: 10px;
        line-height: 20px;
        font-weight: bold;
    }

    .status-same {
        background-color: #6c757d;
        color: white;
        border-radius: 3px;
        text-align: center;
        font-size: 10px;
        line-height: 20px;
        font-weight: bold;
    }

    #refresh-btn {
        margin-bottom: 10px;
        padding: 5px 10px;
        background-color: #007bff;
        color: white;
        border: none;
        border-radius: 3px;
        cursor: pointer;
    }

    #refresh-btn:hover {
        background-color: #0056b3;
    }

    .wh{
        width: 400px;
        border:2px solid aliceblue;
    }
</style>

<script>
    let center = {
        init:function(){
            this.loadData();
            // 30초마다 자동 새로고침
            setInterval(() => {
                this.loadData();
            }, 30000);
        },
        loadData:function(){
            let url = '/getdata';
            $.ajax({
                url:url,
                success:(data)=>{
                    console.log(data);
                    this.display(data);
                },
                error:(xhr, status, error)=>{
                    console.error('데이터 로딩 실패:', error);
                }
            });

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

            let wh1Url = 'http://apis.data.go.kr/1360000/MidFcstInfoService/getMidFcst'; /*URL*/
            let queryParams = '?' + encodeURIComponent('serviceKey') + '='+'Qv4hBW2Uneq4Y5uxuX94URP1MbiYACxxNpXHY%2BqY3EQmXaDWJ53%2F4IxeD%2FOZ0QRS1Aqc934qidkdLLdGeoZZ%2BA%3D%3D'; /*Service Key*/
            queryParams += '&' + encodeURIComponent('pageNo') + '=' + encodeURIComponent('1'); /**/
            queryParams += '&' + encodeURIComponent('numOfRows') + '=' + encodeURIComponent('10'); /**/
            queryParams += '&' + encodeURIComponent('dataType') + '=' + encodeURIComponent('JSON'); /**/
            queryParams += '&' + encodeURIComponent('stnId') + '=' + encodeURIComponent('108'); /**/
            queryParams += '&' + encodeURIComponent('tmFc') + '=' + encodeURIComponent(today); /**/

            $.ajax({
                url: wh1Url+queryParams,
                success:(data)=>{
                    console.log(data);
                    let wh1Data = data.response.body.items.item[0].wfSv;
                    $('#wh1').text(wh1Data);
                }
            });

        },
        display:(data)=>{
            let result = '';
            $(data).each((index, item)=>{
                let cnt = item.cnt;
                let title = item.title;
                let updown = item.updown;
                let statusImg = '';

                // 상태에 따른 이미지 또는 텍스트 설정
                if(updown === 'UP'){
                    statusImg = '<img src="/img/up.png" class="rank-status" alt="UP">';
                } else if(updown === 'DOWN'){
                    statusImg = '<img src="/img/down.png" class="rank-status" alt="DOWN">';
                } else if(updown === 'NEW'){
                    statusImg = '<span class="status-new">N</span>';
                } else if(updown === 'SAME'){
                    statusImg = '<span class="status-same">-</span>';
                }

                result += '<div class="rank-item">';
                result += '<span class="rank-number">' + cnt + '</span>';
                result += '<span class="rank-title">' + title + '</span>';
                result += statusImg;
                result += '</div>';
            });
            $('#results').html(result);
        }
    }

    $().ready(()=>{
        center.init();

        // 수동 새로고침 버튼 이벤트
        $('#refresh-btn').click(()=>{
            center.loadData();
        });
    });
</script>

<%-- Center Field --%>
<div class="col-sm-7">
    <h2>TITLE HEADING</h2>
    <h5>Title description, Jul 15, 2025</h5>
    <div class="wh" id="wh1"></div>
</div>
<div class="col-sm-3">
    <h4>실시간 검색순위</h4>
    <button id="refresh-btn">새로고침</button>
    <div class="wh" id="results"></div>
</div>