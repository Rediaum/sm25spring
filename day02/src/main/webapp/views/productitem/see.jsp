<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<script>
    let see = {
        init:function(){
            $('#down_btn').click(()=>{
                let cnt = Number($('#cnt').val());
                if(cnt > 0){
                    cnt = cnt - 1;
                    let total = ${p.productPrice}*cnt;
                    $('#total').text(total.toLocaleString('ko-KR') + '원');
                    $('#cnt').val(cnt);
                }
            });
            $('#up_btn').click(()=>{
                let cnt = Number($('#cnt').val());
                cnt = cnt + 1;
                let total = ${p.productPrice}*cnt;
                $('#total').text(total.toLocaleString('ko-KR') + '원');
                $('#cnt').val(cnt);
            });
            $('#add_btn').click(()=>{});
            $('#go_btn').click(()=>{});
        }
    }

    $().ready(()=>{
        see.init();
    })
</script>

<%-- User Center Field --%>
<div class="col-sm-12">
    <div class="row">
        <!-- 왼쪽: 상품 정보 -->
        <div class="col-sm-9">
            <h2>Product See Page</h2>
            <img src="/imgs/${p.productImg}">
            <h3>${p.productId}</h3>
            <h3>${p.categoryName}</h3>
            <h3>${p.productName}</h3>
            <h3><fmt:formatNumber type="number" pattern="###,###원" value="${p.productPrice}" /></h3>
            <h3>${p.discountRate}</h3>
            <h3>
                <fmt:parseDate value="${ p.productRegdate }"
                               pattern="yyyy-MM-dd HH:mm:ss" var="parsedDateTime" type="both" />
                <fmt:formatDate pattern="yyyy년MM월dd일 HH시mm분ss시" value="${ parsedDateTime }" />
            </h3>
        </div>

        <!-- 오른쪽: Cart 기능 -->
        <div class="col-sm-3">
            <h2>Total: <span id="total">-</span></h2>
            <div class="row">
                <div class="col-sm-4"><button type="button" class="btn btn-warning" id="down_btn">Down</button></div>
                <div class="col-sm-4"><input type="number" value="0" class="form-control" id="cnt"></div>
                <div class="col-sm-1"><button type="button" class="btn btn-warning" id="up_btn">Up</button></div>
            </div>
            <button type="button" class="btn btn-primary mt-5" data-toggle="modal" data-target="#myModal">Cart</button>
        </div>
    </div>
</div>





<!-- The Modal -->
<div class="modal fade" id="myModal">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">

            <!-- Modal Header -->
            <div class="modal-header">
                <h4 class="modal-title">장바구니에 넣으시겠습니까?</h4>
                <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>

            <!-- Modal body -->
            <div class="modal-body">
                Add Cart : 계속 쇼핑합니다.
                <br>
                Go Cart : 장바구니로 이동합니다.
            </div>

            <!-- Modal footer -->
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-dismiss="modal" id="add_btn">Add Cart</button>
                <button type="button" class="btn btn-danger" data-dismiss="modal" id="go_btn">Go Cart</button>
                <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
            </div>

        </div>
    </div>
</div>
