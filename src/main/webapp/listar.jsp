<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<!doctype html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
            crossorigin="anonymous"
    />
    <link rel="shortcut icon" href="assets/imgs/favicon.ico" type="image/x-icon" />

    <title>Usuários Cadastrados</title>
</head>
<body>
    <header>
        <nav class="navbar navbar-expand-lg">
            <div class="container-fluid">
                <a class="navbar-brand" href="home.jsp"
                ><img src="assets/imgs/logo2.png" alt=""
                /></a>
                <button
                        class="navbar-toggler"
                        type="button"
                        data-bs-toggle="collapse"
                        data-bs-target="#navbarNav"
                        aria-controls="navbarNav"
                        aria-expanded="false"
                        aria-label="Toggle navigation"
                >
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div
                        class="collapse navbar-collapse justify-content-end"
                        id="navbarNav"
                >
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a
                                    class="nav-link active"
                                    aria-current="page"
                                    href="home.jsp"
                            >HOME</a
                            >
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">DESTINO</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">PROMOÇÕES</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">CONTATO</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="cadastro.jsp">CADASTRO</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </header>

    <h1 class="mt-5" style="color: rgb(54, 101, 70); text-align: center;">Lista de Usuários</h1>
    <div class="container mt-5">
        <table class="table table-bordered">
            <thead>
            <tr>
                <th>ID</th>
                <th>Nome</th>
                <th>CPF</th>
                <th>E-mail</th>
                <th>Ações</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${usuarios}" var="usuario">
                <tr>
                    <td>${usuario.id}</td>
                    <td>${usuario.nome}</td>
                    <td>${usuario.CPF}</td>
                    <td>${usuario.email}</td>
                    <td>
                        <a href="editar?id=${usuario.id}" type="button" class="btn btn-warning">Editar</a>
                        <a onclick="confirm('Tem certeza que deseja excluir esse usuário?')" href="excluir?id=${usuario.id}" type="button" class="btn btn-danger">
                            Excluir</a>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>

    <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
            crossorigin="anonymous"
    ></script>
</body>
</html>
