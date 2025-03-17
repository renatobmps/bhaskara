<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>Calculadora de Bhaskara</title>
  </head>

  <jsp:useBean
    id="bhaskara"
    scope="page"
    class="com.bhaskara.controller.BhaskaraCalcule"
  />
  <jsp:setProperty
    name="bhaskara"
    property="a"
    value='<%=request.getParameter("a")%>'
  />
  <jsp:setProperty
    name="bhaskara"
    property="b"
    value='<%=request.getParameter("b")%>'
  />
  <jsp:setProperty
    name="bhaskara"
    property="c"
    value='<%=request.getParameter("c")%>'
  />

  <body>
    <h1>Resultado</h1>
    <h2>
      <%= request.getParameter("a")%>x² + <%= request.getParameter("b")%>x + <%=
      request.getParameter("c")%>, temos:
      <h2 />

      <br />
      Delta = <%= bhaskara.getDelta()%><br />
      Raiz+ = <%= bhaskara.getRaizPositiva()%><br />
      Raiz- = <%= bhaskara.getRaizNegativa()%><br />
    </h2>
  </body>
</html>
