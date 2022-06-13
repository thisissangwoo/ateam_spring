<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문 상품 정보</title>
<style type="text/css">

.product {
   width: 1451px; 
   height: 1080px;  
}

.product_textarea {
   position: absolute;
   width: 1240px;
   height: 40%;
   left: 200px;
   top: 70px;
}

.product #product_text::after {
   content:'';
   display:block;
   height: 1px;
   width: 1000px;
   background: #888888;
}

#product_text {
   position: absolute; 
   width: 141px; 
   height: 50px; 
   left: 248px; 
   font-weight: bold; 
   font-size: 20px; 
   line-height: 50px;
}

.product #detail::after {
   content:'';
   display:block;
   height: 1px;
   width: 1000px;
   background: #888888;
}

#box_text {
   position: absolute;
   width: 593px; 
   height: 50px; 
   left: 389px; 
   top: 130px; 
   font-weight: bold; 
   font-size: 17px; 
   line-height: 50px; 
   letter-spacing: -0.05em;
}

#price {
   position: absolute; 
   width: 147px; 
   height: 50px; 
   left: 467px; 
   top: 160px; 
   font-weight: bold; 
   font-size: 17px; 
   line-height: 50px; 
   letter-spacing: -0.05em; 
   color: red;
}

#cnt {
   position: absolute; 
   width: 147px; 
   height: 50px; 
   left: 446px; 
   top: 190px; 
   font-weight: bold; 
   font-size: 16px; 
   line-height: 50px; 
   letter-spacing: -0.05em;
}

.order_detail {
   position: absolute; 
   width: 1239px; 
   height: 350px; 
   left: 200px; 
   top: 380px;
}

#detail {
   position: absolute; 
   float: left; 
   width: 150px; 
   height: 50px; 
   left: 248px; 
   font-weight: bold; 
   font-size: 20px; 
   line-height: 50px; 
   letter-spacing: -0.05em;
}

.order_detail_category {
   position: absolute; 
   width: 127px; 
   height: 237px; 
   left: 450px; 
   top: 440px; 
   line-height: 50px; 
   letter-spacing: -0.05em;
}

#person_receive_text {
   font-size: 14px; 
   font-weight: bold;
   letter-spacing: 0.5px;
}

#phone_text {
   font-size: 14px; 
   font-weight: bold;
   letter-spacing: 0.5px;
}

.addr_receive_text {
   font-size: 14px; 
   font-weight: bold;
   letter-spacing: 0.5px;
}


#default_addr_text {
   position: absolute; 
   left: 545px; 
   font-size: 11px; 
   color: #808080; 
   width: 60px; 
   top: 97px;
}

#detail_addr_text {
   position: absolute; 
   left: 550px; 
   font-size: 11px; 
   color: #808080; 
   width: 60px; 
   top: 128px;
}

#delivery_request_text {
   position: absolute; 
   top: 170px; 
   left: 30px; 
   font-size: 14px; 
   font-weight: bold;
}

#textarea {
   position: absolute; 
   border: 1px solid #d5d5d5; 
   top: 184px; 
   left: 150px; 
   width: 400px; 
   height: 50px; 
   resize: none; 
   font-size: 12px;
}

#payment_text {
   position: absolute; 
   width: 85px; 
   height: 46px; 
   top: 270px; 
   font-weight: bold; 
   font-size: 20px; 
   line-height: 50px; 
   letter-spacing: -0.05em; 
   text-align: right;
}

#payment_text::after {
   content:'';
   display:block;
   height: 1px;
   width: 1000px;
   background: #888888;
}

#bank_text {
   position: absolute; 
   height: 46px; 
   top: 320px; 
   font-size: 13px; 
   line-height: 50px; 
   letter-spacing: -0.05em; 
   font-weight: bold;
}

#bank_text::after {
   content:'';
   display:block;
   height: 1px;
   width: 1000px;
   background: #888888;
}

#total_result_text {
   font-weight: bold; 
   font-size: 14px;
}

#delivery_text {
   font-weight: bold; 
   font-size: 14px; 
   margin-right: 30px;
}

#total_detail_price {
   font-weight: bold; 
   font-size: 14px; 
   color: red; 
   letter-spacing: 0.2px;
}

#delivery_detail {
   font-weight: bold; 
   font-size: 14px;
}

#bank_number_text {
   font-weight: bold; 
   font-size: 14px; 
   margin-left: 10px; 
   text-align: left; 
   margin-top: 5px;
}

#total_detail_result_text {
   font-weight: bold; 
   font-size: 14px; 
   margin-left: 10px; 
   text-align: left; 
   margin-top: -5px;
}

#bank_number {
   font-size: 14px; 
   margin-left: 10px; 
   letter-spacing: 0.5px; 
   color: black; 
   font-weight: bold;
}

#total_detail_result {
   font-weight: bold; 
   font-size: 14px; 
   margin-left: 35px; 
   letter-spacing: 0.5px; 
   color: red; 
   margin-top: -5px; 
   font-size: 16px; 
}

#total_detail_result::after {
   content:'';
   display:block;
   height: 1px;
   margin-left: -864px;
   margin-top: -9px;
   width: 1000px;
   background: #888888;
}

.order_result {
   position: absolute; 
   width: 350px; 
   height: 60px; 
   left: 760px; 
   top: 1020px; 
   background: #696aad; 
   border-radius: 10px; 
   border: none; 
   font-size: 17px; 
   color: white;"
}




</style>
</head>
<body>
<form action="order_result.pr" method="post">
<div class="product" >

<div style="position: absolute; width: 100%; height: 59px; background: #929292;">
	<p style="position: absolute; width: 106px; left: 20px; top: 20px; font-weight: bold; font-size: 21px; letter-spacing: 0.5px; color: white;">주문 상세</p>
</div>



   <div class="product_textarea">
      <p id="product_text" >주문자 상세정보</p>
      <img src="imgs/shopbox.png" style="position: absolute; width: 221px; height: 210px; left: 246px; top: 80px; border-radius: 11px;">
      <p id="box_text">아나포 스마트 약통 AnaFor Smart IoT 알약/영양제</p>
      <p id="price"><fmt:formatNumber value="${orderInfo.bk_price }" pattern="#,##0원" /></p>
      <p id="cnt"><fmt:formatNumber value="${orderInfo.bk_cnt }" pattern="#,##0개" /></p>
   </div>
   
   <div class="order_detail">
      <p id="detail">주문자 정보</p>
   </div>
   
   <div class="order_detail_category">
      <p id="person_receive_text">받는사람</p>
      <input type="text" readonly name="name" id="person_receive" style="position: absolute; width: 200px; height: 25px; left: 150px; top: 10px; border: 1px solid #d5d5d5; border-radius: 5px; font-size: 12px"/>
         
      <p id="phone_text">연락처</p>
      <input id="phone" readonly type="text" name="tel" maxlength="3" style="position: absolute; width: 50px; height: 25px; left: 150px; top: 58px; border: 1px solid #d5d5d5; border-radius: 5px;"/>
      <p style="position: absolute; left: 205px; top: 46px;">-</p>
      <input type="text" readonly name="tel" maxlength="4" style="position: absolute; width: 60px; height: 25px; left: 215px; top: 58px; border: 1px solid #d5d5d5; border-radius: 5px;"/>
      <p style="position: absolute; left: 281px; top: 46px;">-</p>
      <input type="text" readonly name="tel" maxlength="4" style="position: absolute; width: 60px; height: 25px; left: 290px; top: 58px; border: 1px solid #d5d5d5; border-radius: 5px;"/>
      
      <p class="addr_receive_text">받는주소</p>
      <p id="default_addr_text">기본주소</p>
      	<input type="text" id="default" name="addr" readonly style="border: 1px solid #d5d5d5; position: absolute; left: 150px; top: 110px; height: 25px; width: 400px;"/><br/>
      <p id="detail_addr_text">나머지주소</p>
        <input type="text" name="addr" readonly style="border: 1px solid #d5d5d5; position: absolute; left: 150px; top: 140px; height: 25px; width: 400px; font-size: 12px;"/><br/>
      <p id="delivery_request_text">배송요청사항</p>
      <textarea id="textarea" readonly ></textarea>
      
      <p id="payment_text">결제 수단</p>
      <p id="bank_text">농협은행(무통장입금)</p>
      
      <div style="position: absolute; width: 400px; height: 93px; left: 600px; top: 321px; background: #C4C4C4;">
         <div style="width: 93px; height: 93px; left: 987px; top: 866px;">
            <p id="total_result_text">총 상품가격</p>
            <p id="delivery_text">배송비</p>
         </div>
         
         <div style="position: absolute; width: 86px; height: 93px; left: 300px; top: -1px; letter-spacing: 0.2px; ">
            <p id="total_detail_price"><fmt:formatNumber value="${orderInfo.bk_price }" pattern="#,##0원" /></p>
            <p id="delivery_detail">무료</p>
         </div>
      </div>
      
      <div style="position: absolute; width: 400px; height: 93px; left: 600px; top: 414px; background: #C4C4C4;">
         <div style="height: 93px; left: 987px; top: 866px;">
            <p id="bank_number_text">농협은행(무통장입금)</p>
            <p id="total_detail_result_text">총 결제금액</p>
         </div>
         
         <div style="position: absolute; width: 187px; height: 86px; left: 228px; top: 6px;">
            <p id="bank_number">356-0769-1562-03</p>
            <p id="total_detail_result"><fmt:formatNumber value="${orderInfo.bk_price }" pattern="#,##0원" /></p>
         </div>
      </div>
   </div>
   
</div>
</form>

<script src="https://code.jquery.com/ui/1.13.1/jquery-ui.js"></script>
<script type="text/javascript">



</script>

</body>
</html>