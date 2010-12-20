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


<table cellpadding="40">
<tr>
<td>
  <div class="field">
    Nome: &nbsp  &nbsp &nbsp &nbsp &nbsp
    <input type="text" name="codeshare.nome" value="${codeshare.nome}"/>
  </div>
 <div class="field"> 
    Tags: &nbsp  &nbsp &nbsp &nbsp &nbsp &nbsp
    <input type="text" name="codeshare.tags" value="${codeshare.tags}"/>
  </div>

 <div class="field">
    Linguagem: &nbsp  &nbsp
    <select name="codeshare.linguagem" value="${codeshare.linguagem}" >
    <option> Java
    <option> Ruby
    <option> PHP
    <option> JavaScript
    </select>
  </div>

  <div class="field">
    Codigo:<br />
<textarea rows="5" cols="40" id="myCpWindow" class="codepress  linenumbers-on">
</textarea>

</div>


  <div class="actions">
    <button type="submit">Salvar</button>
  </div>
</form>
</td>
</table>
<a href="<c:url value="/codeshares"/>">Voltar</a>

