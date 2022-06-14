<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<link rel="stylesheet" href="${pageContext.request.contextPath}/dist/hotel/hotelList.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/dist/bootstrap5/css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/dist/bootstrap5/icon/bootstrap-icons.css" type="text/css">
				
<script type="text/javascript" src="${pageContext.request.contextPath}/dist/jquery/js/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/dist/bootstrap5/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript" src="https://use.fontawesome.com/releases/v5.7.2/css/all.css"></script>

<div class="container my-sm-4 p-0" style="margin-left: 30px;">
    <div id="content">
        <div class="d-sm-flex align-items-sm-center py-sm-3 px-md-3 location"> 
        	<input type="text" required placeholder="Location" class="mx-sm-2 mx-3 my-sm-0 my-2 form-control"> 
        	<input type="date" required placeholder="check in" class=" mx-md-2 mx-sm-1 mx-3 my-sm-0 my-2 form-control"> 
        	<input type="date" required placeholder="check out" class="mx-sm-2 mx-3 my-sm-0 my-2 form-control"> 
        	<input type="submit" value="검색" class="btn btn-primary mx-3 my-sm-0 mb-2"> 
        </div>
        <div class="d-sm-flex">
            <div class="me-sm-2">
                <div id="filter" class="p-2 bg-light ms-md-4 ms-sm-2 border">
                    <div class="border-bottom h5 text-uppercase">옵션</div>
                    <div class="box border-bottom">
                        <div class="box-label text-uppercase d-flex align-items-center">Price <button class="btn ms-auto" type="button" data-bs-toggle="collapse" data-bs-target="#inner-box" aria-expanded="false" aria-controls="inner-box"> <span class="fas fa-plus"></span> </button> </div>
                        <div id="inner-box" class="collapse show">
                            <div class="my-1"> <label class="tick">Less than 2000 <input type="checkbox" checked="checked"> <span class="check"></span> </label> </div>
                            <div class="my-1"> <label class="tick">2000 - 3000 <input type="checkbox"> <span class="check"></span> </label> </div>
                            <div class="my-1"> <label class="tick">3000 - 4500 <input type="checkbox"> <span class="check"></span> </label> </div>
                            <div class="my-1"> <label class="tick">4500 - 6000 <input type="checkbox"> <span class="check"></span> </label> </div>
                            <div class="my-1"> <label class="tick">6000 - 8000 <input type="checkbox"> <span class="check"></span> </label> </div>
                            <div class="my-1"> <label class="tick">8000 -10,000 <input type="checkbox" checked> <span class="check"></span> </label> </div>
                            <div class="my-1"> <label class="tick">10,000 and Above <input type="checkbox"> <span class="check"></span> </label> </div>
                        </div>
                    </div>
                    <div class="box border-bottom">
                        <div class="box-label text-uppercase d-flex align-items-center">Property Type <button class="btn ms-auto" type="button" data-bs-toggle="collapse" data-bs-target="#property" aria-expanded="false" aria-controls="property"> <span class="fas fa-plus"></span> </button> </div>
                        <div id="property" class="collapse">
                            <div class="my-1"> <label class="tick">Hotels <input type="checkbox" checked="checked"> <span class="check"></span> </label> </div>
                            <div class="my-1"> <label class="tick">Apartments <input type="checkbox"> <span class="check"></span> </label> </div>
                            <div class="my-1"> <label class="tick">Guest houses <input type="checkbox"> <span class="check"></span> </label> </div>
                            <div class="my-1"> <label class="tick">Resorts <input type="checkbox"> <span class="check"></span> </label> </div>
                            <div class="my-1"> <label class="tick">Villas <input type="checkbox"> <span class="check"></span> </label> </div>
                            <div class="my-1"> <label class="tick">Lodges <input type="checkbox" checked> <span class="check"></span> </label> </div>
                            <div class="my-1"> <label class="tick">Holiday Homes <input type="checkbox"> <span class="check"></span> </label> </div>
                        </div>
                    </div>
                    <div class="box border-bottom">
                        <div class="box-label text-uppercase d-flex align-items-center">Amenities <button class="btn ms-auto" type="button" data-bs-toggle="collapse" data-bs-target="#amenities" aria-expanded="false" aria-controls="amenities"> <span class="fas fa-plus"></span> </button> </div>
                        <div id="amenities" class="collapse show">
                            <div class="my-1"> <label class="tick">Parking <input type="checkbox" checked="checked"> <span class="check"></span> </label> </div>
                            <div class="my-1"> <label class="tick">Pets Allowed <input type="checkbox"> <span class="check"></span> </label> </div>
                            <div class="my-1"> <label class="tick">Room Service <input type="checkbox"> <span class="check"></span> </label> </div>
                            <div class="my-1"> <label class="tick">Family Rooms <input type="checkbox"> <span class="check"></span> </label> </div>
                            <div class="my-1"> <label class="tick">Free Wifi <input type="checkbox"> <span class="check"></span> </label> </div>
                            <div class="my-1"> <label class="tick">Non-smoking Rooms <input type="checkbox" checked> <span class="check"></span> </label> </div>
                        </div>
                    </div>
                    <div class="box">
                        <div class="box-label text-uppercase d-flex align-items-center">Room Facilities <button class="btn ms-auto" type="button" data-bs-toggle="collapse" data-bs-target="#room-facilities" aria-expanded="false" aria-controls="room-facilities"> <span class="fas fa-plus"></span> </button> </div>
                        <div id="room-facilities" class="collapse">
                            <div class="my-1"> <label class="tick">Air Condentioning <input type="checkbox" checked="checked"> <span class="check"></span> </label> </div>
                            <div class="my-1"> <label class="tick">Desk <input type="checkbox"> <span class="check"></span> </label> </div>
                            <div class="my-1"> <label class="tick">Balcony <input type="checkbox"> <span class="check"></span> </label> </div>
                            <div class="my-1"> <label class="tick">Flat Screen TV <input type="checkbox"> <span class="check"></span> </label> </div>
                            <div class="my-1"> <label class="tick">Coffe/Tea Maker <input type="checkbox"> <span class="check"></span> </label> </div>
                            <div class="my-1"> <label class="tick">Washing Machine <input type="checkbox" checked> <span class="check"></span> </label> </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="bg-white p-2 border" id="hotels">
                <div class="hotel py-2 px-2 pb-4 border-bottom">
                    <div class="row">
                        <div class="col-lg-3"> <img src="https://images.unsplash.com/photo-1580835845971-a393b73bf370?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=967&q=80" alt="" class="hotel-img"> </div>
                        <div class="col-lg-9">
                            <div class="d-md-flex align-items-md-center">
                                <div class="name">Mayflower Hibiscus Inn <span class="city">Bandra, Mumbai</span> </div>
                                <div class="ms-auto code text-uppercase">ABD09eh8</div>
                            </div>
                            <div class="rating"> <span class="fas fa-star"></span> <span class="fas fa-star"></span> <span class="fas fa-star"></span> <span class="fas fa-star"></span> <span class="far fa-star"></span> <!-- Book now Enquiry -->
                            </div>
                            <div class="d-flex flex-column tags pt-1">
                                <div><span class="fas fa-comment-dollar"></span> Fee Canellation</div>
                                <div><span class="fas fa-receipt"></span> Express check-in</div>
                                <div><span class="fas fa-concierge-bell"></span> Concierge</div>
                            </div>
                        </div>
                    </div>
                    <div class="d-flex justify-content-end mt-1">
                        <div class="btn enquiry text-uppercase mx-2">Enquiry</div>
                        <div class="btn btn-primary text-uppercase">Book Now</div>
                    </div>
                </div>
                <div class="hotel py-2 px-2 pb-4 border-bottom">
                    <div class="row">
                        <div class="col-lg-3"> <img src="https://images.unsplash.com/photo-1596618502142-d2a9d0c1fc2e?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NTd8fHJlc29ydHN8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60" alt="" class="hotel-img"> </div>
                        <div class="col-lg-9">
                            <div class="d-md-flex align-items-md-center">
                                <div class="name">Sunflower Hibiscus Inn <span class="city">Zuhu, Mumbai</span> </div>
                                <div class="ms-auto code text-uppercase">ABD09eh8</div>
                            </div>
                            <div class="rating"> <span class="fas fa-star"></span> <span class="fas fa-star"></span> <span class="fas fa-star"></span> <span class="fas fa-star"></span> <span class="far fa-star"></span> <!-- Book now Enquiry -->
                            </div>
                            <div class="d-flex flex-column tags pt-1">
                                <div><span class="fas fa-comment-dollar"></span> Fee Canellation</div>
                                <div><span class="fas fa-receipt"></span> Express check-in</div>
                                <div><span class="fas fa-concierge-bell"></span> Concierge</div>
                            </div>
                        </div>
                    </div>
                    <div class="d-flex justify-content-end mt-1">
                        <div class="btn enquiry text-uppercase mx-2">Enquiry</div>
                        <div class="btn btn-primary text-uppercase">Book Now</div>
                    </div>
                </div>
                <div class="hotel py-2 px-2 pb-4">
                    <div class="row">
                        <div class="col-lg-3"> <img src="https://images.unsplash.com/photo-1583037189850-1921ae7c6c22?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NzV8fHJlc29ydHN8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60" alt="" class="hotel-img"> </div>
                        <div class="col-lg-9">
                            <div class="d-md-flex align-items-md-center">
                                <div class="name">Atlantic Inn <span class="city">Mulund West, Mumbai</span> </div>
                                <div class="ms-auto code text-uppercase">ABD09eh8</div>
                            </div>
                            <div class="rating"> <span class="fas fa-star"></span> <span class="fas fa-star"></span> <span class="fas fa-star"></span> <span class="fas fa-star"></span> <span class="far fa-star"></span> <!-- Book now Enquiry -->
                            </div>
                            <div class="d-flex flex-column tags pt-1">
                                <div><span class="fas fa-comment-dollar"></span> Fee Canellation</div>
                                <div><span class="fas fa-receipt"></span> Express check-in</div>
                                <div><span class="fas fa-concierge-bell"></span> Concierge</div>
                            </div>
                        </div>
                    </div>
                    <div class="d-flex justify-content-end mt-1">
                        <div class="btn enquiry text-uppercase mx-2">Enquiry</div>
                        <div class="btn btn-primary text-uppercase">Book Now</div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>