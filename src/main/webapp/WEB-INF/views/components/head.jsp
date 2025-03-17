<%@page contentType="text/html" pageEncoding="UTF-8"%>
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
  <title>Calculadora de Bhaskara</title>
  <style>
    * {
      box-sizing: border-box;
      font-family: sans-serif;
      margin: 0;
      padding: 0;
    }

    body {
      display: flex;
      flex-direction: column;
      gap: 2rem;
      min-height: 100dvh;
      width: 100dvw;
    }

    header {
      background: lightgray;
      display: flex;
      padding: 1rem;
      width: 100%;
    }

    main {
      flex: 1;
      padding: 0 1rem;
    }

    form {
      display: flex;
      flex-direction: column;
      gap: 1rem;
      max-width: 600px;
      width: 100%;

      label {
        flex: 1;
        display: flex;
        gap: 0.5rem;
        align-items: baseline;
      }
    }

    table {
      border: 1px solid;
      max-width: 600px;
      text-align: justify;
      width: 100%;

      thead {
        background: lightgray;
        text-align: center;
      }

      th, td {
        padding: 0.3rem;
      }
    }

    footer {
      display: flex;
      justify-content: center;
      padding: 1rem;
      width: 100%;
    }
  </style>
</head>
