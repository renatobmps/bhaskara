<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
  <jsp:include page="../components/head.jsp" />

  <jsp:useBean
    id="bhaskara"
    scope="page"
    class="com.bhaskara.services.BhaskaraCalcule"
  />
  <jsp:setProperty
    name="bhaskara"
    property="deltaA"
    value='<%=request.getParameter("a")%>'
  />
  <jsp:setProperty
    name="bhaskara"
    property="deltaB"
    value='<%=request.getParameter("b")%>'
  />
  <jsp:setProperty
    name="bhaskara"
    property="deltaC"
    value='<%=request.getParameter("c")%>'
  />

  <body>
    <jsp:include page="../components/header.jsp" />

    <main>
      <h2>
        Dado <%= request.getParameter("a")%>x² + <%=
        request.getParameter("b")%>x + <%=request.getParameter("c")%>, temos:
      </h2>

      <br />

      <table>
        <thead>
          <tr>
            <th rowspan="2">Delta</th>
            <th colspan="2">Raiz</th>
          </tr>
          <tr>
            <th>+</th>
            <th>-</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td><%= bhaskara.getDelta()%></td>
            <td><%= bhaskara.getPositivePath()%></td>
            <td><%= bhaskara.getNegativePath()%></td>
          </tr>
        </tbody>
      </table>

      <br />

      <a href="/">Voltar</a>
    </main>

    <jsp:include page="../components/footer.jsp" />
  </body>
</html>
