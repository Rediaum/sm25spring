<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script>
    let jq1 = {
        init:function(){
            $('#login_form > button').click(()=>{
                this.check();
            });
            $('#id').blur(()=>{
                $('#id_desc').text('');
            });
            $('#pwd').blur(()=>{
                $('#pwd_desc').text('');
            });
        },
        check:function(){
            let id = $('#id').val();
            let pwd = $('#pwd').val();
            if(id==''){
                $('#id_desc').html(' 필수 항목입니다.');
                $('#id').focus();
                return;
            }
            if(pwd==''){
                $('#pwd_desc').html(' 필수 항목입니다.');
                $('#pwd').focus();
                return;
            }
            this.send();
        },
        send:function(){
            $('#login_form').attr('method','post');
            $('#login_form').attr('action','/loginimpl');
            $('#login_form').submit();
        }
    }

    $().ready(()=>{
        jq1.init();
    });
</script>
<%-- Center Field --%>
<div class="col-sm-9">
    <h2>JQuery1 Page</h2>
    <form id="login_form">
        <div class="form-group" style="margin-top:20px; margin-right:450px;">
            <label for="id">ID:<span id="id_desc"></span></label>
            <input type="text" class="form-control" placeholder="Enter ID" id="id" name="id">
        </div>
        <div class="form-group" style="margin-right:450px;">
            <label for="pwd">Password:<span id="pwd_desc"></span></label>
            <input type="password" class="form-control" placeholder="Enter password" id="pwd" name="pwd">
        </div>

        <button type="button" class="btn btn-primary">Log In</button>
    </form>
</div>
