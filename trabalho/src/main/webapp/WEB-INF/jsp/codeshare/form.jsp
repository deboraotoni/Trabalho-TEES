<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:if test="${not empty errors}">
	<c:forEach items="${errors}" var="error">
		 ${error.category} - ${error.message}<br />
	</c:forEach>
</c:if>

<form action="<c:url value="/codeshares"/>" method="post">
  
  <c:if test="${not empty codeshare.id}">
    <input type="hidden" name="codeshare.id" value="${codeshare.id}"/>
    <input type="hidden" name="_method" value="put"/>
  </c:if>

  <div class="field">
    Nome:<br />
    <input type="text" name="codeshare.nome" value="${codeshare.nome}"/>
  </div>
  <div class="field">
    Codigo:<br />
    <input type="text" name="codeshare.codigo" value="${codeshare.codigo}"/>
  </div>
  <div class="field">
    Tags:<br />
    <input type="text" name="codeshare.tags" value="${codeshare.tags}"/>
  </div>
  <div class="field">
    Linguagem:<br />
    <input type="text" name="codeshare.linguagem" value="${codeshare.linguagem}"/>
  </div>
  <div class="actions">
    <button type="submit">send</button>
  </div>
</form>

<a href="<c:url value="/codeshares"/>">Back</a>

