<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
    <link rel="stylesheet" href="css/cadastro.css"/>
    <link rel="shortcut icon" href="assets/imgs/favicon.ico" type="image/x-icon" />

    <style>
        *{
            margin: 0;
            padding: 0;
            font-family: Arial, Helvetica, sans-serif;
            color: black;
        }

        main{
            width: 700px;
            margin: auto;
            padding: 30px;
        }


        h2{
            color: rgb(54, 101, 70);
            text-align: center;
        }


        a{
            text-decoration: none;
            color: black;
        }


        .btn{
            background-color: rgb(54, 101, 70);
            color: white;
            padding: 5px 50px 5px 50px;
            margin-bottom: 20px;
            border-radius: 15px;
            border: 0px;
        }

        .divLogin{
            display: flex;
            flex-direction: column;
            align-items: center;
            margin: 0px 0px 20px 0px;
        }

        .divLogin>p{
            margin:0px;
        }

        .divButton{
            margin-top: 10px;
            display: flex;
            justify-content: center;
        }

        @media(max-width: 750px){
            main{
                width: 100%;
            }
        }
    </style>
    <title>Atualizar</title>
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
                        <a class="nav-link" href="#">CADASTRO</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
</header>
<main>
    <h2>Atualizar Usuário</h2>
    <form action="editar" method="post">
        <form class="row g-3">
            <legend>Dados do Usuário</legend>
            <div class="col">
                <label for="nome" class="form-label">ID:</label>
                <input type="text" class="form-control" id="id" name="id" value="${usuario.id}" readonly>
            </div>
            <div class="col">
                <label for="nome" class="form-label">Nome completo</label>
                <input type="text" class="form-control" id="nome" name="nome" value="${usuario.nome}">
            </div>
            <div class="row">
                <div class="col">
                    <label for="dataNasc" class="form-label">Data de Nascimento</label>
                    <input type="date" class="form-control"   id="dataNasc" name="dataNasc"
                           value="${usuario.dataNascimento}">
                </div>
                <div class="col">
                    <label for="CPF" class="form-label">CPF</label>
                    <input type="text" class="form-control" id="CPF" name="CPF" value="${usuario.CPF}">
                </div>
            </div>
            <div class="row">
                <div class="col">
                    <label for="email" class="form-label">Email</label>
                    <input type="text" class="form-control" id="email" name="email" value="${usuario.email}">
                </div>
                <div class="col">
                    <label for="senha" class="form-label">Crie uma senha</label>
                    <abbr title="Máximo 6 caracteres">
                        <input type="password" class="form-control" id="senha" name="senha" value="${usuario.senha}">
                    </abbr>
                </div>
            </div>
            <legend>Endereço</legend>
            <div class="col">
                <label for="rua" class="form-label">Rua</label>
                <input type="text" class="form-control" id="rua" name="rua" value="${usuario.rua}">
            </div>
            <div class="row">
                <div class="col">
                    <label for="bairro" class="form-label">Bairro</label>
                    <input type="text" class="form-control" id="bairro" name="bairro" value="${usuario.bairro}">
                </div>
                <div class="col">
                    <label for="numero" class="form-label">Número</label>
                    <input type="text" class="form-control" id="numero" name="numero" value="${usuario.numero}">
                </div>
            </div>

            <div class="row">
                <div class="col">
                    <label for="cidade" class="form-label">Cidade</label>
                    <input type="text" class="form-control" id="cidade" name="cidade" value="${usuario.cidade}">
                </div>
                <div class="col">
                    <label for="UF" class="form-label">UF</label>
                    <input type="text" class="form-control" id="UF" name="UF" value="${usuario.UF}">
                </div>
            </div>
            <div class="col-12 divButton">
                <button type="submit" class="btn btn-primary">Atualizar</button>
            </div>
        </form>
    </form>
</main>

<script
        src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
        crossorigin="anonymous"
></script>
</body>
</html>