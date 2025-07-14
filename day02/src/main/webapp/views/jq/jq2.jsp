<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script>
    $(document).ready(function(){
        // 모든 입력란이 변경될 때마다 체크
        $('#id, #pwd, #confirmPwd, #name, #email, #birth').keyup(checkForm);
        $('#job').change(checkForm);
        $('input[name="sex"]').change(checkForm);
        $('#earn1, #earn2, #earn3, #earn4, #earn5').change(checkForm);
        $('#agree').change(checkForm);

        function checkForm() {
            var canSubmit = true;

            // 텍스트 입력란들 체크
            if ($('#id').val() == '') canSubmit = false;
            if ($('#pwd').val() == '') canSubmit = false;
            if ($('#confirmPwd').val() == '') canSubmit = false;
            if ($('#name').val() == '') canSubmit = false;
            if ($('#email').val() == '') canSubmit = false;
            if ($('#birth').val() == '') canSubmit = false;

            // 성별 선택 체크
            if (!$('input[name="sex"]:checked').length) canSubmit = false;

            // 직업 선택 체크
            if ($('#job').val() == '') canSubmit = false;

            // 수입 수준 체크 (하나라도 체크되어야 함)
            if (!$('#earn1').is(':checked') &&
                !$('#earn2').is(':checked') &&
                !$('#earn3').is(':checked') &&
                !$('#earn4').is(':checked') &&
                !$('#earn5').is(':checked')) {
                canSubmit = false;
            }

            // 개인정보 동의 체크
            if (!$('#agree').is(':checked')) canSubmit = false;

            // 버튼 활성화/비활성화
            if (canSubmit) {
                $('#registerBtn').prop('disabled', false);
            } else {
                $('#registerBtn').prop('disabled', true);
            }
        }
    });
</script>

<%-- Center Field --%>
<div class="col-sm-9">
    <h2>JQuery2 Page</h2>
    <h2>JQueryController에 /formtestimpl</h2>

    <!-- 모든 요소를 하나의 form 안에 넣기 -->
    <form action="/jq/formtestimpl" method="post" class="needs-validated" novalidate>
        <div class="form-group" style="margin-top:20px; margin-right:500px;">
            <label for="id">ID:</label>
            <input type="text" class="form-control" placeholder="Enter ID" id="id" name="id" required>
            <div class="valid-feedback">Valid.</div>
            <div class="invalid-feedback">Please fill out this field.</div>
        </div>
        <div class="form-group" style="margin-right:500px;">
            <label for="pwd">Password:</label>
            <input type="password" class="form-control" placeholder="Enter password" id="pwd" name="pwd" required>
            <div class="valid-feedback">Valid.</div>
            <div class="invalid-feedback">Please fill out this field.</div>
        </div>
        <div class="form-group" style="margin-right:500px;">
            <label for="confirmPwd">Confirm Password:</label>
            <input type="password" class="form-control" placeholder="Enter confirmPassword" id="confirmPwd" name="confirmPwd" required>
            <div class="valid-feedback">Valid.</div>
            <div class="invalid-feedback">Please fill out this field.</div>
        </div>
        <div class="form-group" style="margin-right: 500px;">
            <label for="name">Name:</label>
            <input type="text" class="form-control" placeholder="Enter Name" id="name" name="name" required>
            <div class="valid-feedback">Valid.</div>
            <div class="invalid-feedback">Please fill out this field.</div>
        </div>
        <div class="form-group" style="margin-right: 500px;">
            <label for="email">Email:</label>
            <input type="email" class="form-control" placeholder="Enter email" id="email" name="email" required>
            <div class="valid-feedback">Valid.</div>
            <div class="invalid-feedback">Please fill out this field.</div>
        </div>
        <hr>

        <!-- 성별 선택 (form 안에 넣고 value 추가) -->
        <div class="form-check">
            <label class="form-check-label">
                <h6>Sex</h6>
                <input type="radio" class="form-check-input" name="sex" value="male" id="male">Male
            </label>
        </div>
        <div class="form-check">
            <label class="form-check-label">
                <input type="radio" class="form-check-input" name="sex" value="female" id="female">Female
            </label>
        </div>
        <hr>

        <!-- 직업 선택 (name 속성 추가) -->
        <div class="form-group">
            <label for="job">Job:</label>
            <select class="form-control" id="job" name="job">
                <option value="">선택하세요</option>
                <option value="Employee">Employee</option>
                <option value="Founder">Founder</option>
                <option value="Housewife">Housewife</option>
                <option value="Student">Student</option>
                <option value="inoccupation">inoccupation</option>
            </select>
        </div>
        <hr>

        <!-- 수입 수준 (name과 value 속성 추가) -->
        <div class="form-check">
            <label class="form-check-label">
                <h6>Earning level</h6>
                <input type="checkbox" class="form-check-input" value="0-100" name="earningLevel" id="earn1">0-100
            </label>
        </div>
        <div class="form-check">
            <label class="form-check-label">
                <input type="checkbox" class="form-check-input" value="100-500" name="earningLevel" id="earn2">100-500
            </label>
        </div>
        <div class="form-check">
            <label class="form-check-label">
                <input type="checkbox" class="form-check-input" value="500-1000" name="earningLevel" id="earn3">500-1000
            </label>
        </div>
        <div class="form-check">
            <label class="form-check-label">
                <input type="checkbox" class="form-check-input" value="1000-5000" name="earningLevel" id="earn4">1000-5000
            </label>
        </div>
        <div class="form-check">
            <label class="form-check-label">
                <input type="checkbox" class="form-check-input" value="5000~" name="earningLevel" id="earn5">5000~
            </label>
        </div>
        <hr>

        <!-- 생년월일 (form 안에 넣기) -->
        <div class="form-group">
            <label for="birth">Birth:</label>
            <input type="date" id="birth" name="birth" class="form-control" style="margin-right: 500px;">
        </div>
        <hr>

        <!-- 개인정보 동의 (name과 value 속성 추가) -->
        <div class="form-check">
            <label class="form-check-label">
                <input type="checkbox" class="form-check-input" value="agree" name="agree" id="agree">개인정보 수집 및 이용에 동의합니다
            </label>
        </div>

        <!-- 버튼을 submit 타입으로 변경 -->
        <button type="submit" class="btn btn-primary" id="registerBtn" style="margin-top:30px" disabled>Register</button>
    </form>
</div>