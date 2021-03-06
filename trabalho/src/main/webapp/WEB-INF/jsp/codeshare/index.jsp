<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<body>
<h1>Listing Codeshares</h1>

<table>
  <tr>
   <th>nome</th>
   <th>codigo</th>
   <th>tags</th>
   <th>linguagem</th>
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
