<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>Calculadora de Bhaskara</title>
    <style>
      form {
        display: flex;
        flex-direction: column;
        width: 100%;
        max-width: 600px;
        gap: 1rem;

        label {
          flex: 1;
          display: flex;
          gap: 0.5rem;
          align-items: baseline;
        }
      }
    </style>
  </head>

  <body>
    <form method="post" action="/result">
      <label for="valorA">
        <strong>A:</strong>
        <input type="number" name="a" id="valorA" /><br />
      </label>
      <label for="valorB">
        <strong>B:</strong>
        <input type="number" name="b" id="valorB" /><br />
      </label>
      <label for="valorC">
        <strong>C:</strong>
        <input type="number" name="c" id="valorC" /><br />
      </label>

      <br />

      <input type="submit" value="Calcular" />
    </form>
  </body>
</html>
