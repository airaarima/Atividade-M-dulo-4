<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
    <style>
        *{
            margin:0;
            padding: 0;
            font-family: Arial, Helvetica, sans-serif;
        }

        header a{
            color: white !important;
        }
        html{
            width: 100%;
            height: 100%;
        }
        body{
            width: 100%;
            height: 100%;
            background-image: url("assets/imgs/riodejaneiro1.jpg");
            background-size: cover;
            background-repeat: no-repeat;
            background-position: center;
        }

        .transparencia{
            width: 100%;
            height: 100%;
            background: linear-gradient(rgb(0,0,0,0.4),rgb(0,0,0,0.4));
        }

        main{
            display: flex;
            flex-direction: column;
            justify-content: center;
            color: white;
            height: 91%;
            font-size: 20px;
        }

        .apresentacao{
            margin-left: 4%;
            text-shadow: 2px 2px 2px black;
        }
        .apresentacao>p{
            width: 50%;
            text-align: justify;
        }

        .consulta{
            width: 50% ;
        }
        .consulta input,button{
            margin-bottom: 10px;
        }
        .btn{
            background-color: rgb(54, 101, 70);
            border: rgb(54, 101, 70);
            color: white;
        }


        @media(max-width: 768px){
            .apresentacao{
                margin-left: 4%;
                margin-right: 4%;
            }
            .apresentacao>p{
                width: 100%;
            }
            .consulta{
                width: 100%;
            }
        }

    </style>
    <title>REConecta Turismo</title>
</head>
<body>
<div class="transparencia">
    <header>
        <nav class="navbar navbar-expand-lg">
            <div class="container-fluid">
                <a class="navbar-brand" href="#"
                ><img src="assets/imgs/logo.png" alt=""
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
                                    href="#"
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

    <main>
        <section class="apresentacao">
            <h1>REConecta Turismo</h1>
            <p>
                Você está há um passo de conhecer diferentes culturas, maravilhar-se
                com novas paisagens e criar boas memórias. Viaje com confiança,
                viaje conosco!
            </p>

            <div class="consulta">
                <input type="text" class="form-control" placeholder="Destino..." />
                <div class="input-group mb-3">
                    <input type="date" class="form-control" />
                    <button
                            class="btn btn-outline-secondary"
                            type="button"
                            id="button-addon2"
                    >
                        Pesquisar
                    </button>
                </div>
            </div>
        </section>
    </main>
</div>
<script
        src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
        crossorigin="anonymous"
></script>

</body>
</html>