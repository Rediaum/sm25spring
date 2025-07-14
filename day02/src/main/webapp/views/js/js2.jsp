<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
    #results{
        width:400px;
        border:2px solid red;
    }
</style>
<script>
    let js2 = {
        init:function(){
            document.querySelector('#getdata').onclick = ()=>{
                this.getData();
            }
        },
        getData:function(){
            let datas = [
                {id:'id01', name:'김말숙', age:10},
                {id:'id02', name:'이말숙', age:20},
                {id:'id03', name:'박말숙', age:30}
            ];
            this.display(datas);
        },
        display:function(datas){
            let txt = '';
            for(let i=0; i<datas.length; i++){
                let id=  datas[i].id;
                let name = datas[i].name;
                let age = datas[i].age;
                txt += '<tr>';
                txt += '<td>'+id+'</td>';
                txt += '<td>'+name+'</td>';
                txt += '<td>'+age+'</td>';
                txt += '</tr>';
            }
            document.querySelector('#cust_table').innerHTML = txt;
        }
    }
    window.onload = function(){
        js2.init();
    }
</script>
<%-- Center Field --%>
<div class="col-sm-9">
    <h2>JavaScript2 Page</h2>
    <button type="button" class="btn btn-primary" id="getdata">Primary</button>
    <table class="table table-striped">
        <thead>
        <tr>
            <th>Id</th>
            <th>Name</th>
            <th>Age</th>
        </tr>
        </thead>
        <tbody id="cust_table">

        </tbody>
    </table>
</div>
