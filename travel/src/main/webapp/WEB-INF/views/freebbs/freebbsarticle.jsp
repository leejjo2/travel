<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<style type="text/css">
.body-container {
	max-width: 800px;
}

.img-box img {
	cursor: pointer;
}
</style>

<script type="text/javascript">
function deleteOk() {
    if(confirm("게시글을 삭제 하시 겠습니까 ? ")) {
	    let query = "freeNum=${dto.freeNum}&${query}";
	    let url = "${pageContext.request.contextPath}/freebbs/delete?" + query;
    	location.href = url;
    }
}

function imageViewer(src) {
	const $model = $("#myDialogModal .modal-body");
	let s = "<img src='"+src+"' class='img-thumbnail w-100 h-100'>";
	$model.html(s);
	
	$("#myDialogModal").modal("show");
}
</script>
		<div class="container mb-0 p-0 text-white freebbstop" style="background: url('${pageContext.request.contextPath}/resources/img/freebbs/유우니사막.png');">
			<p>${freecateName}</p>
			
		</div>
<div class="container">
	<div class="body-container">	

		
		<div class="body-main">

			<table class="table mb-0">
				<thead>
					<tr>
						<td colspan="2" align="center" style="font-size: 15px; font-weight: bold;">
							${dto.subject}
						</td>
					</tr>
				</thead>
				
				<tbody>
					<tr>
						<td width="50%">
							작성자 : ${dto.userId}							
						</td>
						<td align="right">
							${dto.reg_date}
						</td>
					</tr>

					<tr>
						<td colspan="2" style="border-bottom: none;">
							<div class="row row-cols-6 img-box">
								<c:forEach var="vo" items="${listFile}">
									<div class="col p-1">
										<img src="${pageContext.request.contextPath}/uploads/Board/${vo.saveFilename}"
											class="img-thumbnail w-100 h-100" style="max-height: 130px;"
											onclick="imageViewer('${pageContext.request.contextPath}/uploads/Board/${vo.saveFilename}');">
									</div>
								</c:forEach>
							</div>
						</td>
					</tr>
					
					<tr>
						<td colspan="2">
							${dto.content}
						</td>
					</tr>
					
					<tr>
						<td colspan="2">
							이전글 :
							<c:if test="${not empty preReadDto}">
								<a href="${pageContext.request.contextPath}/freebbs/article?${query}&freeNum=${preReadDto.freeNum}">${preReadDto.subject}</a>
							</c:if>
						</td>
					</tr>
					<tr>
						<td colspan="2">
							다음글 :
							<c:if test="${not empty nextReadDto}">
								<a href="${pageContext.request.contextPath}/freebbs/article?${query}&freeNum=${nextReadDto.freeNum}">${nextReadDto.subject}</a>
							</c:if>
						</td>
					</tr>
				</tbody>
			</table>
			
			<table class="table table-borderless">
				<tr>
					<td width="50%">
						<button type="button" class="btn btn-light" onclick="location.href='${pageContext.request.contextPath}/freebbs/update?freeNum=${dto.freeNum}&page=${page}';">수정</button>
		    			<button type="button" class="btn btn-light" onclick="deleteOk();">삭제</button>
					</td>
					<td class="text-end">
						<button type="button" class="btn btn-light" onclick="location.href='${pageContext.request.contextPath}/freebbs/list?${query}';">리스트</button>
					</td>
				</tr>
			</table>

		</div>
	</div>
</div>

<!-- Modal -->
<div class="modal fade" id="myDialogModal" tabindex="-1" aria-labelledby="myDialogModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="myDialogModalLabel">이미지 뷰어</h5>
				<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
			</div>
			<div class="modal-body">
        
			</div>
		</div>
	</div>
</div>