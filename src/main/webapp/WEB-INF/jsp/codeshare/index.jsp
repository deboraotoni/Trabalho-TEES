<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<h1>Codeshare</h1>


<link href="prettify.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" src="prettify.js"></script>

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
    <input type="text"  name="codeshare.linguagem" value="${codeshare.linguagem}"/>
  </div>

  <div class="field"  onload="prettyPrint()">
<pre class="prettyprint">
    Codigo:<br />
 	<textarea  rows=5 name="codeshare.codigo" value="${codeshare.codigo}">
</textarea>
</pre>
  </div>
 

  <div class="actions">
    <button type="submit">Salvar</button>
  </div>
</form>
</td>



<!--BUSCA-->
<td align="top">
<form>
 <div class="field" >
    <input type="text" value="${codeshare.busca}" />
  </div>

 <div class="actions">
    <button type="submit">Buscar</button>
  </div>
<br> <br> <br> <br> <br> <br> <br> <br> <br> <br> <br> <br> <br> <br> 
</form>
</td>
</tr>
</table>



<!--mostrar -->
<table>
  <tr>
   <th>Nome</th>
   <th>Codigo</th>
   <th>Tags</th>
   <th>Linguagem</th>
   <th></th>
   <th></th>
   <th></th>
  </tr>

<c:forEach items="${codeshareList}" var="codeshare">
  <tr>
      <td>
      ${codeshare.nome}
    </td>
      <td>
      ${codeshare.codigo}
    </td>
      <td>
      ${codeshare.tags}
    </td>
      <td>
      ${codeshare.linguagem}
    </td>
      <td><a href="<c:url value="/codeshares/${codeshare.id}"/>">show</a></td>
    <td><a href="<c:url value="/codeshares/${codeshare.id}/edit"/>">edit</a></td>
    <td>
      <form action="<c:url value="/codeshares/${codeshare.id}"/>" method="post">
    	  <input type="hidden" name="_method" value="delete"/>
    	  <button type="submit" onclick="return confirm('Are you sure?')">destroy</button>
	    </form>
	  </td>
    </tr>
</c:forEach>
</table>

<br />
<a href="<c:url value="/codeshares/new"/>">New Codeshare</a> 

</body>