<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<body>

<p>
  <b>Nome:</b>
   ${codeshare.nome}
</p>
<p>
  <b>Codigo:</b>
   ${codeshare.codigo}
</p>
<p>
  <b>Tags:</b>
   ${codeshare.tags}
</p>
<p>
  <b>Linguagem:</b>
   ${codeshare.linguagem}
</p>

<a href="<c:url value="/codeshares/${codeshare.id}/edit"/>">Edit</a>
<a href="<c:url value="/codeshares"/>">Back</a>

</body>
