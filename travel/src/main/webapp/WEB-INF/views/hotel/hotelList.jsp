<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="icon" href="data:;base64,iVBORw0KGgo=">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">

<link rel='stylesheet' href='http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css'>

<style>
/* NOTE: The styles were added inline because Prefixfree needs access to your styles and they must be inlined if they are on local disk! */
.glyphicon { margin-right:5px; }
.thumbnail
{
    margin-bottom: 20px;
    padding: 0px;
    -webkit-border-radius: 0px;
    -moz-border-radius: 0px;
    border-radius: 0px;
}

.item.list-group-item
{
    float: none;
    width: 100%;
    background-color: #fff;
    margin-bottom: 10px;
}
.item.list-group-item:nth-of-type(odd):hover,.item.list-group-item:hover
{
    background: #428bca;
}

.item.list-group-item .list-group-image
{
    margin-right: 10px;
}
.item.list-group-item .thumbnail
{
    margin-bottom: 0px;
}
.item.list-group-item .caption
{
    padding: 9px 9px 0px 9px;
    height: 250px;
}
.item.list-group-item:nth-of-type(odd)
{
    background: #eeeeee;
}

.item.list-group-item:before, .item.list-group-item:after
{
    display: table;
    content: " ";
}

.item.list-group-item img
{
    float: left;
}
.item.list-group-item:after
{
    clear: both;
}
.list-group-item-text
{
    margin: 0 0 11px;
}
</style>
<script src="https://cdnjs.cloudflare.com/ajax/libs/prefixfree/1.0.7/prefixfree.min.js"></script>

</head>
<body>

  <div class="container">
  	<div> <h2>숙소 전체 보기</h2> </div>
    <div class="well well-sm">
        <strong>Display</strong>
        <div class="btn-group">
            <a href="#" id="list" class="btn btn-default btn-sm"><span class="glyphicon glyphicon-th-list">
            </span>List</a> <a href="#" id="grid" class="btn btn-default btn-sm"><span
                class="glyphicon glyphicon-th"></span>Grid</a>
        </div>
    </div>
    <div id="products" class="row list-group-item">
        <div class="item  col-xs-4 col-lg-4">
            <div class="thumbnail">
                <img class="group list-group-image" src="https://source.unsplash.com/400x250/?mobile" alt="" />
                <div class="caption">
                    <h4 class="group inner list-group-item-heading">
                        	숙소이름</h4>
                    <p class="group inner list-group-item-text">
                        	숙소설명</p>
                    <p class="group inner list-group-item-text">
                        	별점: ★★★★☆</p>
                    <div class="row">
                        <div class="col-xs-12 col-md-6">
                            <p class="lead">
                                	가격 : 70000 &#8361;</p>
                        </div>
                        <div class="col-xs-12 col-md-6">
                            <a class="btn btn-info" href="#1">예약하기</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="item  col-xs-4 col-lg-4">
            <div class="thumbnail">
                <img class="group list-group-image" src="https://source.unsplash.com/400x250/?watch" alt="" />
                <div class="caption">
                    <h4 class="group inner list-group-item-heading">
                        	숙소이름</h4>
                    <p class="group inner list-group-item-text">
                        Product description... Lorem ipsum dolor sit amet, consectetuer adipiscing elit,
                        sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>
                    <p class="group inner list-group-item-text">
                        	별점: ★★★★☆</p>
                    <div class="row">
                        <div class="col-xs-12 col-md-6">
                            <p class="lead">
                               	 가격 : 70000 &#8361;</p>
                        </div>
                        <div class="col-xs-12 col-md-6">
                            <a class="btn btn-info" href="#2">예약하기</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="item  col-xs-4 col-lg-4">
            <div class="thumbnail">
                <img class="group list-group-image" src="https://source.unsplash.com/400x250/?t-shirt" alt="" />
                <div class="caption">
                    <h4 class="group inner list-group-item-heading">
                        	숙소이름</h4>
                    <p class="group inner list-group-item-text">
                        Product description... Lorem ipsum dolor sit amet, consectetuer adipiscing elit,
                        sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>
                    <p class="group inner list-group-item-text">
                        	별점: ★★★★☆</p>
                    <div class="row">
                        <div class="col-xs-12 col-md-6">
                            <p class="lead">
                                	가격 : 70000 &#8361;</p>
                        </div>
                        <div class="col-xs-12 col-md-6">
                            <a class="btn btn-info" href="#3">예약하기</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="item  col-xs-4 col-lg-4">
            <div class="thumbnail">
                <img class="group list-group-image" src="https://source.unsplash.com/400x250/?laptop" alt="" />
                <div class="caption">
                    <h4 class="group inner list-group-item-heading">
                        	숙소이름</h4>
                    <p class="group inner list-group-item-text">
                        Product description... Lorem ipsum dolor sit amet, consectetuer adipiscing elit,
                        sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>
                    <p class="group inner list-group-item-text">
                        	별점: ★★★★☆</p>
                    <div class="row">
                        <div class="col-xs-12 col-md-6">
                            <p class="lead">
                                	가격 : 70000 &#8361;</p>
                        </div>
                        <div class="col-xs-12 col-md-6">
                            <a class="btn btn-info" href="#4">예약하기</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="item  col-xs-4 col-lg-4">
            <div class="thumbnail">
                <img class="group list-group-image" src="https://source.unsplash.com/400x250/?girl" alt="" />
                <div class="caption">
                    <h4 class="group inner list-group-item-heading">
                        	숙소이름</h4>
                    <p class="group inner list-group-item-text">
                        Product description... Lorem ipsum dolor sit amet, consectetuer adipiscing elit,
                        sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>
                    <p class="group inner list-group-item-text">
                        	별점: ★★★★☆</p>
                    <div class="row">
                        <div class="col-xs-12 col-md-6">
                            <p class="lead">
                               	 가격 : 70000 &#8361;</p>
                        </div>
                        <div class="col-xs-12 col-md-6">
                            <a class="btn btn-info" href="#5">예약하기</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="item  col-xs-4 col-lg-4">
            <div class="thumbnail">
                <img class="group list-group-image" src="https://source.unsplash.com/400x250/?keyboard" alt="" />
                <div class="caption">
                    <h4 class="group inner list-group-item-heading">
                        	숙소이름</h4>
                    <p class="group inner list-group-item-text">
                        Product description... Lorem ipsum dolor sit amet, consectetuer adipiscing elit,
                        sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>
                    <p class="group inner list-group-item-text">
                        	별점: ★★★★☆</p>
                    <div class="row">
                        <div class="col-xs-12 col-md-6">
                            <p class="lead">
                                 	가격 : 70000 &#8361;</p>
                        </div>
                        <div class="col-xs-12 col-md-6">
                            <a class="btn btn-info" href="#6">예약하기</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script src='http://maxcdn.bootstrapcdn.com/bootstrap/5.0.0/js/bootstrap.min.js'></script>
<script src="${pageContext.request.contextPath}/dist/hotel/js/index.js"></script>

</body>
</html>