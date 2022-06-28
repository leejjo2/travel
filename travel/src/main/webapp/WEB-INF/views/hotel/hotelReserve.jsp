<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<link rel="stylesheet" href="${pageContext.request.contextPath}/dist/hotel/hotelReserve.css">
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>

<script type="text/javascript">
function inputNumberFormat(obj) {
    obj.value = comma(uncomma(obj.value));
}

function comma(str) {
    str = String(str);
    return str.replace(/(\d)(?=(?:\d{3})+(?!\d))/g, '$1,');
}

function uncomma(str) {
    str = String(str);
    return str.replace(/[^\d]+/g, '');
}

function getSavePoint(totalPayment) {
	let savePoint = Math.ceil(totalPayment * 0.05);
	$(".savingPoint").html(comma(savePoint));
	$('input[name=mileageSave]').val(savePoint);
}

$(function() {
	$(".ticketPrice").html(comma(${rdto.roomPrice}) + "원");
	$(".totalPrice").html(comma(${rdto.roomPrice}));
	$('input[name=totalPrice]').val(${rdto.roomPrice});
	$('input[name=payAmount]').val(${rdto.roomPrice});
	getSavePoint(${rdto.roomPrice}); // 적립 예정 포인트 구하기
	
	
	$(".checkout-point-button button").click(function() {
		$(".css-o9jzai").val(comma(${mdto.totalMileage}));
	});
	
	
	$(".checkout-point-inputbox input").keydown(function(key) {
		let usingPoint = parseInt(uncomma($(".css-o9jzai").val()));
		if( key.keyCode == 13 ){
			if($(this).val() === '0'){
				$(".usingPoint").html(0);
				$(".totalPay").html(comma(${rdto.roomPrice}));
				$('input[name=payAmount]').val(${rdto.roomPrice});
				getSavePoint(${rdto.roomPrice});
			} else {
				$(".usingPoint").html("-"+$(this).val());
				$(".totalPay").html(comma(${rdto.roomPrice} - usingPoint));
				$('input[name=payAmount]').val(${rdto.roomPrice} - usingPoint);
				getSavePoint(${rdto.roomPrice} - usingPoint);
			}
		}
	});
	
	// 결제 방법 선택
	$(".css-1u9dzhu").click(function() {
		$(".mrt-radio-button").removeClass("css-dpl9tc");
		$(".mrt-radio-button").removeClass("css-1cweiyo");
		$(".mrt-radio-button").addClass("css-1cweiyo");
		$(this).parent().removeClass("css-1cweiyo");
		$(this).parent().addClass("css-dpl9tc");
		
		let payWay = $(this).children('input').attr('data-gtm-form-interact-field-id');
		$('input[name=payWay]').val(payWay);
	});
});

$(document).ready(function() {
	$("#paymentBtn").click(function() {
		str = $('input[name=name]').val();
	    if( !str ) {
	        alert("예약자 이름을 입력해주세요");
	        $('input[name=name]').focus();
	        return;
	    }
	    payment();
	});
});


function payment(){
	let name = $('input[name=roomName]').val();
	let amount = $('input[name=payAmount]').val();
	let buyer_email = $('input[name=email]').val();
	let buyer_name = $('input[name=name]').val();
	let buyer_tel = $('input[name=tel]').val();
	let payWay = $('input[name=payWay]').val();
	
	let pg = 'html5_inicis';
	if(payWay === "1"){
		pg = 'html5_inicis';
	} else if(payWay === "2"){
		pg = 'kakaopay'
	}
	
	// 가맹점 식별코드
	IMP.init('imp92676291');
	IMP.request_pay({
	    pg : pg,
	    pay_method : 'card',
	    merchant_uid : 'merchant_' + new Date().getTime(),
	    name : name , //결제창에서 보여질 이름
	    amount : amount, //실제 결제되는 가격
	    buyer_email : buyer_email,
	    buyer_name : buyer_name,
	    buyer_tel : buyer_tel
	}, function(rsp) {
	    if ( rsp.success ) {
	    	/*
	    	var msg = '결제가 완료되었습니다.';
	        msg += '고유ID : ' + rsp.imp_uid;
	        msg += '상점 거래ID : ' + rsp.merchant_uid;
	        msg += '결제 금액 : ' + rsp.paid_amount;
	        msg += '카드 승인번호 : ' + rsp.apply_num;
	        */
	        insertReserve();
	    } else {
	    	 var msg = rsp.error_msg;
	    	 alert(msg);
	    }
	});
}

function insertReserve() {
	var f = document.reserveForm;
	f.action="${pageContext.request.contextPath}/hotel/payComplete";
	f.submit();
}
</script>


<div id="Mrt3Payment-react-component-af4ab29c-68dc-4758-85df-2bfa96d167d6">
	<main class="css-iiwtf3--Order-style--container">
		<form name="reserveForm" class="css-rl7jky--Order-style--formWrapper" data-gtm-form-interact-id="0" method="post">
			<input type="hidden" name="tel" value="${mdto.tel}">
			<input type="hidden" name="roomPrice" value="${rdto.roomPrice}">
			<input type="hidden" name="roomNum" value="${rdto.roomNum}">
			<input type="hidden" name="roomName" value="${rdto.roomName}">
			<input type="hidden" name="totalPrice" value="">
			<input type="hidden" name="payAmount" value="">
			<input type="hidden" name="payWay" value="1">
			<input type="hidden" name="mileageSave" value="">
			
			<h1 class="css-asuv60--OrderForm-style--title">예약하기</h1>
			<div class="css-ho0ft8--OrderForm-style--content">
				<div class="css-1udawf3--OrderForm-style--commonPurchaseContainer">
					<div class="css-b7iphb--SectionContainer-style--container">
						<div class="css-1tnda4b--SectionContainerHeader-style--wrapper">
							<div class="css-1rrr7fo--SectionContainerHeader-style--box">
								<h2 class="css-j4yb7p--SectionContainerHeader-style--title">상품 정보</h2>
							</div>
						</div>
						<hr class="css-9kerwj--SectionContainer-style--divider">
						<div class="css-6oivj6--SectionContainer-style--body">
                            <div class="css-1ngshdk--ProductInfo-style--container">
                                <div class="css-131e4uu--ProductInfoSummary-style--titleWrapper">
                                    <div class="css-13kuit9--ProductInfoSummary-style--imageWrapper"><img src="${pageContext.request.contextPath}/uploads/hotel/${rdto.roomSaveFilename}" alt="방 이미지" class="css-1pgwovl--ProductInfoSummary-style--image"></div>
                                    <div class="css-1m4b4kf--ProductInfoSummary-style--textWrapper">
                                        <h3 class="css-b9w54p--ProductInfoSummary-style--title">${dto.hotelName}</h3>
                                        <div class="css-1igu7h--ProductInfoSummary-style--schedule"><time class="css-1xidlmi--ProductInfoSummary-style--startDateTime">2022년 07월 26일 (화) ~</time><time>2022년 07월 27일 (수), </time><span>1박</span></div>
                                    </div>
                                </div>
                                <ul class="css-dhq5u9--ProductInfoOptions-style--optionWrapper">
                                    <li class="css-jenar4--ProductInfoOptions-style--option">
                                        <div class="css-zsirvp--ProductInfoOptions-style--optionText"><span class="css-1owvnko--ProductInfoOptions-style--optionName">${rdto.roomName}(기준 ${rdto.roomMen}명)</span></div>
                                        <div class="css-1jsv9db--ProductInfoOptions-style--optionPrice">${rdto.roomPrice}원</div>
                                    </li>
                                </ul>
                                <div class="css-k8xwt8--ProductInfoPrice-style--totalPriceWrapper">
                                    <div class="css-hzi8i2--ProductInfoPrice-style--totalPriceText">총 상품 금액</div><strong class="css-d2hlqw--ProductInfoPrice-style--totalPriceNumber">${rdto.roomPrice}원</strong>
                                </div>
                            </div>
                            <hr class="css-4sixw6--ProductInfo-style--divider">
                        </div>
					</div>
					<div class="css-b7iphb--SectionContainer-style--container">
						<div class="css-1tnda4b--SectionContainerHeader-style--wrapper">
							<div class="css-1rrr7fo--SectionContainerHeader-style--box">
								<h2 class="css-j4yb7p--SectionContainerHeader-style--title">포인트 사용</h2>
							</div>
						</div>
						<hr class="css-9kerwj--SectionContainer-style--divider">
						<div class="css-6oivj6--SectionContainer-style--body">
							<div class="css-hqbad9--Point-style--pointWrapper">
								<div class="css-dnxl79--Point-style--labelWrapper">
									<span class="css-xht1av--Point-style--label">내 포인트</span>
									<span class="css-1iuiezq--Point-style--holdingPoint"><span class="totalPoint"></span>원</span>
								</div>
								<div class="css-18nj9ab--Point-style--inputWrapper">
									<div class="checkout-point-inputbox css-1vqiqg7">
										<input name="mileageUse" type="decimal" pattern="[0-9]*" class="css-o9jzai" value="0" 
											onkeyup="inputNumberFormat(this); checkPoint();">
										<span class="css-1fwrkpi">원</span>
									</div>
									<span role="button" class="checkout-point-button css-mkihkg">
										<button type="button" class="mrt-button css-1fq9c2a">
											<span class="css-1s4v6ia">모두 사용</span>
										</button>
									</span>
								</div>
							</div>
						</div>
					</div>
					<div class="css-b7iphb--SectionContainer-style--container">
						<div class="css-1tnda4b--SectionContainerHeader-style--wrapper">
							<div class="css-1rrr7fo--SectionContainerHeader-style--box">
								<h2 class="css-j4yb7p--SectionContainerHeader-style--title">예약자 정보</h2>
							</div>
						</div>
						<hr class="css-9kerwj--SectionContainer-style--divider">
						<div class="css-6oivj6--SectionContainer-style--body">
							<div class="css-c5sgn4--ReservationPersonInfo-style--container">
								<div class="css-wnkz6f--ReservationPersonInfo-style--wrapper">
									<div class="css-8dvoxp--ReservationPersonInfo-style--summary">
										<div class="css-17w6aox--InfoField-style--field">
											<div class="css-17ni6ie--InfoField-style--title">예약자 이름</div>
											<div class="css-1ng6plb--InfoField-style--content">${memdto.userName}</div>
										</div>
										<div class="css-17w6aox--InfoField-style--field">
											<div class="css-17ni6ie--InfoField-style--title">이메일 주소</div>
											<div class="css-1ng6plb--InfoField-style--content">${memdto.email}</div>
										</div>
										<div class="css-17w6aox--InfoField-style--field">
											<div class="css-17ni6ie--InfoField-style--title">휴대전화 번호</div>
											<div class="css-1ng6plb--InfoField-style--content">+82 ${memdto.tel}</div>
										</div>
									</div>
									<div class="css-nve9iv--ReservationPersonInfo-style--option">
										<span role="button" class="css-mkihkg">
											<button type="button" class="mrt-button css-1fq9c2a">
													<span class="css-1s4v6ia">정보 변경</span>
											</button>
										</span>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="css-b7iphb--SectionContainer-style--container">
						<div class="css-1tnda4b--SectionContainerHeader-style--wrapper">
							<div class="css-1rrr7fo--SectionContainerHeader-style--box">
								<h2 class="css-j4yb7p--SectionContainerHeader-style--title">추가 예약 정보</h2>
								<span class="css-4a285q--SectionContainerHeader-style--required">(필수)</span>
							</div>
						</div>
						<hr class="css-9kerwj--SectionContainer-style--divider">
						<div class="css-6oivj6--SectionContainer-style--body">
							<div class="css-dj0jqn--AdditionalInfoForm-style--container">
								<div class="css-1sa04ji--ExtraReservationInfoContainer-style--container">
									<div class="css-1ujnryi--ExtraReservationInfoContainer-style--label">
										예약자의 이름을 기입해 주세요.
									</div>
									<div class="css-p2k6j6">
										<input name="name" type="text" placeholder="이름을 입력해 주세요." maxlength="100" class="css-hbvhc7" value=""
											data-gtm-form-interact-field-id="0">
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="css-b7iphb--SectionContainer-style--container">
						<div class="css-1tnda4b--SectionContainerHeader-style--wrapper">
							<div class="css-1rrr7fo--SectionContainerHeader-style--box">
								<h2 class="css-j4yb7p--SectionContainerHeader-style--title">결제 방법</h2>
							</div>
						</div>
						<hr class="css-9kerwj--SectionContainer-style--divider">
						<div class="css-6oivj6--SectionContainer-style--body">
							<div class="css-b2817h--PaymentMethods-style--paymentRadiosWrapper">
								<div role="radio" aria-checked="false" tabindex="0"
									class="css-1dafhlq--PaymentMethodRadioButton-style--buttonWrapper">
									<div class="mrt-radio-button css-dpl9tc">
										<span class="css-1u9dzhu">
											<input id="CREDIT_CARD" type="radio" class="css-8djd7q" value="CREDIT_CARD"
												 data-gtm-form-interact-field-id="1">
											<span class="css-mlq5g6"></span>
										</span>
										<label class="mrt-radio-button-label css-1jvr7pu" for="CREDIT_CARD">신용/체크카드</label>
									</div>
								</div>
								
								<div role="radio" aria-checked="false" tabindex="0"
									class="css-1dafhlq--PaymentMethodRadioButton-style--buttonWrapper">
									<div class="mrt-radio-button css-1cweiyo">
										<span class="css-1u9dzhu">
											<input id="KAKAOPAY" type="radio" class="css-8djd7q" value="KAKAOPAY"
												data-gtm-form-interact-field-id="2">
											<span class="css-mlq5g6"></span>
										</span>
										<label class="mrt-radio-button-label css-1jvr7pu" for="KAKAOPAY">카카오 페이
										</label>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="css-kfrsih--FloatingContainer-style--container">
					<div class="css-b7iphb--SectionContainer-style--container">
						<div class="css-1tnda4b--SectionContainerHeader-style--wrapper">
							<div class="css-1rrr7fo--SectionContainerHeader-style--box">
								<h2 class="css-j4yb7p--SectionContainerHeader-style--title">결제 정보</h2>
							</div>
						</div>
						<hr class="css-9kerwj--SectionContainer-style--divider">
						<div class="css-10y44dd--SectionContainer-style--body--SectionContainer-style--sidebar">
							<div class="css-1bcxqsz--PaymentInfo-style--priceInfo">
								<div class="css-907gbs--PaymentInfo-style--orderPrice">
									<span class="css-ngwitj--PaymentInfo-style--orderPriceText">주문 금액</span>
									<span class="css-ngwitj--PaymentInfo-style--orderPriceText"><span class="totalPrice"></span>원</span>
								</div>
								<div class="css-907gbs--PaymentInfo-style--orderPrice">
									<span class="css-ngwitj--PaymentInfo-style--orderPriceText">포인트 사용</span>
									<span class="css-ngwitj--PaymentInfo-style--orderPriceText"><span class="usingPoint">0</span>원</span>
								</div>
								<div class="css-907gbs--PaymentInfo-style--orderPrice">
									<span class="css-ngwitj--PaymentInfo-style--orderPriceText">적립 예정 포인트(결제 금액의 5%)</span>
									<span class="css-ngwitj--PaymentInfo-style--orderPriceText"><span class="savingPoint"></span>원</span>
								</div>
							</div>
							<div class="css-aqobhm--PaymentInfo-style--totalPriceWrapper">
								<span class="css-1rh3azk--PaymentInfo-style--totalPriceText">총 결제 금액</span>
								<span class="css-1rh3azk--PaymentInfo-style--totalPriceText">
								<span class="css-zflhal--PaymentInfo-style--totalPrice"><span class="totalPrice totalPay"></span>원</span>
							</div>
						</div>
					</div>
					<div class="css-1rcsjvh--PurchaseButton-style--buttonWrapper">
						<span role="button" class="css-90dy1r--PurchaseButton-style--disabled">
							<button id="paymentBtn" type="button" class="mrt-button css-jgs6n">
								<span class="css-1s4v6ia"><span class="totalPrice totalPay"></span>원 결제하기</span>
							</button>
						</span>
					</div>
				</div>
			</div>
		</form>
	</main>
</div>
