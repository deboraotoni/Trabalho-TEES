<?xml version="1.0" encoding="UTF-8"?>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
	<title>Codeshare</title>
	<script src="codepress/codepress.js" type="text/javascript"></script>
</head>

<body>
<h1>Codeshare</h1> 

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
<textarea   name="codeshare.codigo"   rows="5" cols="40" id="myCpWindow" class="codepress java linenumbers-on">
${codeshare.codigo}
</textarea>

</div>


  <div class="actions">
    <button type="submit">Salvar</button>
  
</div>
</form>
</td>


<!--BUSCA-->
<td align="top">
<form action="<c:url value="/codeshares/search"/>" method="post">
 <div class="field" >
    <input type="text" name="tag" />
 </div>

 <div class="actions">
    <button type="submit">Buscar</button>
  </div>
<br> <br> 
</form>


                 
<c:forEach items="${codeshareList}" var="codeshare">
  
      <a href="<c:url value="/codeshares/${codeshare.id}/edit"/>">  ${codeshare.nome} </a><br>
${codeshare.tags} <br><br>
  
</c:forEach>



</td>
</tr>
</table>



<!--Mostrar -->
<table>
  <tr>
   <th><h3>Repositorio</h3></th>
   <th></th>
  </tr>

<c:forEach items="${codeshareList}" var="codeshare">
  <tr>
      <td>
      <a href="<c:url value="/codeshares/${codeshare.id}/edit"/>">  ${codeshare.nome} </a><br>
    </td>
    <td>
      <form action="<c:url value="/codeshares/${codeshare.id}"/>" method="post">
    	  <input type="hidden" name="_method" value="delete"/>
    	  <button type="submit" onclick="return confirm('Are you sure?')">Excluir</button>
	    </form>
	  </td>
    </tr>
</c:forEach>
</table>

</body>

</html>
