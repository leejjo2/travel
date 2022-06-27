<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<style>
:root {
    --white: #fff;
    --black: #000;
    --primary: #51abf3;
    --secondary: #33b893;
    --warning: #ffbf00;
    --error: #fa5b4a;
    --gray-50: #f8f9fa;
    --gray-60: #f5f6f7;
    --gray-80: #f1f3f5;
    --gray-100: #e9ecef;
    --gray-200: #dee2e6;
    --gray-300: #ced4da;
    --gray-400: #adb5bd;
    --gray-500: #848c94;
    --gray-600: #666d75;
    --gray-700: #495056;
    --gray-800: #343a40;
    --gray-900: #212529;
    --blue-50: #f5fbff;
    --blue-80: #e7f4fd;
    --blue-100: #cbe7fd;
    --blue-200: #a7d4f9;
    --blue-300: #79bef5;
    --blue-400: #51abf3;
    --blue-500: #2b96ed;
    --blue-600: #1583db;
    --blue-700: #0a70c2;
    --blue-800: #025ba5;
    --blue-900: #01457d;
    --green-50: #e6f8f3;
    --green-80: #d7f6ee;
    --green-100: #94e7d1;
    --green-200: #71d2b8;
    --green-300: #58caab;
    --green-400: #33b893;
    --green-500: #27ab86;
    --green-600: #1c9674;
    --green-700: #137b5e;
    --green-800: #10634c;
    --green-900: #0a4534;
    --yellow-50: #fff8e1;
    --yellow-80: #fff2c6;
    --yellow-100: #ffe182;
    --yellow-200: #ffd74e;
    --yellow-300: #ffc929;
    --yellow-400: #ffbf00;
    --yellow-500: #ffad01;
    --yellow-600: #ff9a00;
    --yellow-700: #f78000;
    --yellow-800: #db5600;
    --yellow-900: #b94100;
    --red-50: #fbf1ef;
    --red-80: #ffd4cc;
    --red-100: #ffaea1;
    --red-200: #ff8d7c;
    --red-300: #fe6a54;
    --red-400: #fa5b4a;
    --red-500: #ec4937;
    --red-600: #dd3c2a;
    --red-700: #c83323;
    --red-800: #aa2a1b;
    --red-900: #8d2115;
    --elevation-z1: 0 2px 4px 0 rgba(33, 37, 41, 0.1);
    --elevation-z2: 0 4px 8px 0 rgba(33, 37, 41, 0.1);
    --elevation-z3: 0 8px 16px 0 rgba(33, 37, 41, 0.15);
    --elevation-z4: 0 12px 24px 0 rgba(33, 37, 41, 0.15);
    --elevation-z0-border: 0 0 0 1px var(--gray-100);
    --elevation-z1-border: 0 2px 4px 0 rgba(0, 0, 0, 0.1),0 0 0 1px var(--gray-100);
    --elevation-z2-border: 0 4px 8px 0 rgba(33, 37, 41, 0.1),0 0 0 1px var(--gray-100);
    --elevation-z3-border: 0 8px 16px 0 rgba(33, 37, 41, 0.15),0 0 0 1px var(--gray-100);
    --elevation-z4-border: 0 12px 24px 0 rgba(33, 37, 41, 0.15),0 0 0 1px var(--gray-100);
    --motion-easing-basic: cubic-bezier(0.4, 0, 0.2, 1);
    --motion-easing-linear-out: cubic-bezier(0, 0, 0.2, 1);
    --motion-easing-linear-in: cubic-bezier(0.4, 0, 1, 1);
    --z-toast: 60000;
    --z-screen-loading: 50000;
    --z-alert: 40000;
    --z-alert-above-screen-loading: 51000;
    --z-popup: 30000;
    --z-dialog: 20000;
    --z-bottomsheet: 10000;
    --z-bottomsheet-above-dialog: 21000;
}


.css-19exa0t--Success-style--container {
    min-height: 580px;
}

.css-1v2sl83--OrderResultHeader-style--wrapper {
    padding-top: 56px;
    padding-bottom: 80px;
    text-align: center;
    color: var(--gray-800);
}

.css-uqb0e--OrderResultHeader-style--icon {
    width: 48px;
    height: 48px;
}

img {
    vertical-align: middle;
}

img {
    border: 0;
}


.css-1v2sl83--OrderResultHeader-style--wrapper {
    padding-top: 56px;
    padding-bottom: 80px;
    text-align: center;
    color: var(--gray-800);
}

.css-ezye05--OrderResultHeader-style--title {
    padding-top: 20px;
    padding-bottom: 12px;
    font-weight: 700;
    font-size: 32px;
    line-height: 40px;
    letter-spacing: -0.6px;
}

h1 {
    display: block;
    font-size: 2em;
    margin-block-start: 0.67em;
    margin-block-end: 0.67em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    font-weight: bold;
}

h1, h2, h3, h4, h5 {
    margin: 0px;
}

.css-7ewvyv--OrderResultHeader-style--subtitle {
    margin: 0px 16px;
    font-size: 15px;
    line-height: 24px;
    letter-spacing: -0.3px;
}

p {
    display: block;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    margin: 0px;
    padding: 0px;
}


.css-o79p8n--Success-style--wrapper {
    max-width: 610px;
    margin: 0px auto;
}

div {
    display: block;
}

.css-ln71tp--OrderResultPaymentInfo-style--wrapper {
    margin: 0px 16px;
}

.css-a14ldt--OrderResultPaymentInfo-style--itemList {
    display: flex;
    flex-direction: column;
    padding-bottom: 4px;
    margin-bottom: 16px;
    border-bottom: 1px solid var(--gray-80);
}

.css-a14ldt--OrderResultPaymentInfo-style--itemList > div {
    padding-bottom: 12px;
}

.css-i4h26i--OrderResultPaymentField-style--wrapper--OrderResultPaymentField-style--basic {
    display: flex;
    font-size: 15px;
    line-height: 20px;
    letter-spacing: -0.4px;
    color: var(--gray-800);
}

.css-h2frcg--OrderResultPaymentField-style--item {
    margin-right: auto;
}

.css-197nz83--OrderResultPaymentField-style--price {
    margin-left: auto;
    font-weight: 600;
}

.css-15hx54q--OrderResultPaymentField-style--wrapper--OrderResultPaymentField-style--total {
    display: flex;
    font-size: 15px;
    line-height: 20px;
    letter-spacing: -0.4px;
    color: var(--blue-500);
    font-weight: 600;
}

.css-h2frcg--OrderResultPaymentField-style--item {
    margin-right: auto;
}

.css-1ci2c8t--OrderResultPaymentField-style--price--OrderResultPaymentField-style--totalPrice {
    margin-left: auto;
    font-weight: 600;
    font-size: 20px;
    line-height: 1;
}

.css-1f39bi3--OrderResultButtonList-style--wrapper {
    display: flex;
    margin: 0px 16px;
    padding-top: 40px;
    padding-bottom: 120px;
    text-align: center;
}

.css-fgfjm--OrderResultButton-style--button {
    position: relative;
    display: inline-flex;
    flex: 1 1 0%;
    margin-right: 8px;
}

.css-onylof {
    display: flex;
    flex: 0 0 auto;
    flex-direction: row;
    -webkit-box-pack: center;
    justify-content: center;
    -webkit-box-align: center;
    align-items: center;
    text-align: center;
    border: 0px;
    border-radius: 4px;
    font-weight: bold;
    letter-spacing: -0.2px;
    transition: all 0.3s ease 0s;
    user-select: none;
    outline-style: none;
    cursor: pointer;
    height: 48px;
    padding: 0px 32px;
    font-size: 16px;
    color: var(--gray-700);
    background-color: var(--gray-100);
}

.css-1s4v6ia {
    display: flex;
    flex-direction: row;
    -webkit-box-align: center;
    align-items: center;
}

.css-fgfjm--OrderResultButton-style--button:last-child {
    margin-right: 0px;
}

.css-fgfjm--OrderResultButton-style--button {
    position: relative;
    display: inline-flex;
    flex: 1 1 0%;
    margin-right: 8px;
}

.css-17x5dyz {
    display: flex;
    flex: 0 0 auto;
    flex-direction: row;
    -webkit-box-pack: center;
    justify-content: center;
    -webkit-box-align: center;
    align-items: center;
    text-align: center;
    border: 0px;
    border-radius: 4px;
    font-weight: bold;
    letter-spacing: -0.2px;
    transition: all 0.3s ease 0s;
    user-select: none;
    outline-style: none;
    cursor: pointer;
    height: 48px;
    padding: 0px 32px;
    font-size: 16px;
    color: white;
    background-color: var(--blue-400);
}

.css-a14ldt--OrderResultPaymentInfo-style--itemList {
    display: flex;
    flex-direction: column;
    padding-bottom: 4px;
    margin-bottom: 16px;
    border-bottom: 1px solid var(--gray-80);
}

.css-a14ldt--OrderResultPaymentInfo-style--itemList {
    padding-top: 16px;
    border-top: 1px solid var(--gray-400);
}

.css-18l1adq--OrderResultButton-style--button > button {
    width: 100%;
    padding: 0px 8px;
}

.css-131xmac {
    display: flex;
    flex: 0 0 auto;
    flex-direction: row;
    -webkit-box-pack: center;
    justify-content: center;
    -webkit-box-align: center;
    align-items: center;
    text-align: center;
    border: 0px;
    border-radius: 4px;
    font-weight: bold;
    letter-spacing: -0.2px;
    transition: all 0.3s ease 0s;
    user-select: none;
    outline-style: none;
    cursor: pointer;
    height: 48px;
    padding: 0px 32px;
    font-size: 16px;
    color: var(--gray-700);
    background-color: var(--gray-100);
    width: 100%;
}


@media (min-width: 768px){
	.css-1v2sl83--OrderResultHeader-style--wrapper {
	    padding-top: 72px;
	    padding-bottom: 88px;
	}
	
	.css-7ewvyv--OrderResultHeader-style--subtitle {
	    font-size: 16px;
	    line-height: 26px;
	}
	
	.css-a14ldt--OrderResultPaymentInfo-style--itemList {
	    padding-top: 16px;
	    border-top: 1px solid var(--gray-400);
	}
	
	.css-1f39bi3--OrderResultButtonList-style--wrapper {
	    -webkit-box-pack: center;
	    justify-content: center;
	}
	
	.css-fgfjm--OrderResultButton-style--button {
	    flex: unset;
	}
	
	.css-a14ldt--OrderResultPaymentInfo-style--itemList {
	    padding-top: 16px;
	    border-top: 1px solid var(--gray-400);
	}
	
}
</style>

<script type="text/javascript">

function comma(str) {
    str = String(str);
    return str.replace(/(\d)(?=(?:\d{3})+(?!\d))/g, '$1,');
}

$(function() {
	$(".totalPrice").html(comma(${totalPrice}));
	$(".payAmount").html(comma(${payAmount}));
});
</script>

<div
	id="Mrt3Payment-react-component-ba70d1e2-c2dd-47c8-bab5-5fa4ad964c1f">
	<div class="css-19exa0t--Success-style--container">
		<div class="css-1v2sl83--OrderResultHeader-style--wrapper">
			<img
				src="https://dffoxz5he03rp.cloudfront.net/build/production/a4a0941175a60c1c99dd55651e2531e09d1ec06b/aa4f41ac520b3929b24c.png"
				alt="order result" class="css-uqb0e--OrderResultHeader-style--icon">
			<h1 class="css-ezye05--OrderResultHeader-style--title">예약 완료</h1>
			<p class="css-7ewvyv--OrderResultHeader-style--subtitle">설레는 여행
				같이 준비해봐요!</p>
		</div>
		<div class="css-o79p8n--Success-style--wrapper">
			<div class="css-ln71tp--OrderResultPaymentInfo-style--wrapper">
				<div class="css-a14ldt--OrderResultPaymentInfo-style--itemList">
					<div class="css-i4h26i--OrderResultPaymentField-style--wrapper--OrderResultPaymentField-style--basic">
						<span class="css-h2frcg--OrderResultPaymentField-style--item">주문
							금액</span><span class="css-197nz83--OrderResultPaymentField-style--price"><span class="totalPrice"></span>원</span>
					</div>
				</div>
				<div
					class="css-15hx54q--OrderResultPaymentField-style--wrapper--OrderResultPaymentField-style--total">
					<span class="css-h2frcg--OrderResultPaymentField-style--item">총 결제 금액</span>
					<span class="css-1ci2c8t--OrderResultPaymentField-style--price--OrderResultPaymentField-style--totalPrice"><span class="payAmount"></span>원</span>
				</div>
			</div>
			<div class="css-1f39bi3--OrderResultButtonList-style--wrapper">
				<span role="button" class="css-fgfjm--OrderResultButton-style--button">
					<button type="button" class="mrt-button css-onylof" onclick="location.href='${pageContext.request.contextPath}/'">
							<span class="css-1s4v6ia">홈으로 가기</span>
					</button>
				</span>
				<span role="button" class="css-fgfjm--OrderResultButton-style--button">
					<button type="button" class="mrt-button css-17x5dyz">
						<span class="css-1s4v6ia">예약상세 보기</span>
					</button>
				</span>
			</div>
		</div>
	</div>
</div>
