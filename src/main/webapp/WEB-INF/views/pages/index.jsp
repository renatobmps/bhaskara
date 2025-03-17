<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
  <jsp:include page="../components/head.jsp" />

  <body>
    <jsp:include page="../components/header.jsp" />

    <main>
      <form method="post" action="/result">
        <label for="value_a">
          <strong>A:</strong>
          <input type="number" name="a" id="value_a" /><br />
        </label>
        <label for="value_b">
          <strong>B:</strong>
          <input type="number" name="b" id="value_b" /><br />
        </label>
        <label for="value_c">
          <strong>C:</strong>
          <input type="number" name="c" id="value_c" /><br />
        </label>

        <br />

        <input type="submit" value="Calcular" />
      </form>
    </main>

    <jsp:include page="../components/footer.jsp" />
  </body>
</html>
