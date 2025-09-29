<%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


        <!DOCTYPE html>
        <html lang="es">

        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>Login Page</title>
            <style>
                body {
                    margin: 0;
                    padding: 0;
                    font-family: 'Open Sans', sans-serif;
                    background-color: #f8f4ef !important;
                    height: 100vh;
                }

                .formulario {
                    position: absolute;
                    top: 50%;
                    left: 50%;
                    transform: translate(-50%, -50%);
                    width: 400px;
                    background: white;
                    border-radius: 10px;
                }

                .formulario h1 {
                    text-align: center;
                    padding: 20px 0;
                    border-bottom: 1px solid silver;
                }

                .formulario form {
                    padding: 40px;
                    box-sizing: border-box;
                }

                form .username,
                form .password {
                    position: relative;
                    border-bottom: 2px solid #adadad;
                    margin: 30px 0;
                }

                .username input,
                .password input {
                    width: 100%;
                    padding: 0 5px;
                    height: 0 40px;
                    font-size: 16px;
                    border: none;
                    outline: none;
                }

                .username label,
                .password label {
                    position: absolute;
                    top: 50%;
                    left: 5px;
                    color: #adadad;
                    transform: translateY(-50%);
                    font-size: 16px;
                    pointer-events: none;
                    transition: 0.5s;
                }

                .recordar {
                    margin: 20px 5px;
                    color: rgb(71, 38, 1);
                    cursor: pointer;
                }

                .recordar:hover {
                    text-decoration: underline;
                }

                input[type="submit"] {
                    width: 100%;
                    height: 50px;
                    border: none;
                    background: #4c3402;
                    border-radius: 40px;
                    font-size: 20px;
                    color: white;
                    cursor: pointer;
                    outline: none;
                }

                input[type="submit"]:hover {
                    background: #269a9a;
                    transition: 0.5s;
                }

                .registrarse {
                    margin: 20px 5px;
                    text-align: center;
                    font-size: 16px;
                    color: black;
                }

                .registrarse a {
                    color: blue;
                    text-decoration: none;
                }

                .registrarse a:hover {
                    text-decoration: underline;
                }

                /* Estilo para la X */
                .cerrar {
                    position: absolute;
                    top: 15px;
                    right: 20px;
                    font-size: 24px;
                    font-weight: bold;
                    text-decoration: none;
                    color: #333;
                }

                svg:hover {
                    fill: red;
                }

                /* ============================ */
                /* PIE DE PÁGINA */
                /* ============================ */
                footer.pie {
                    background: var(--principal);
                    color: var(--secundario);
                    padding: 22px 22px;
                }

                .pie-interno {
                    max-width: var(--maxw);
                    margin: 0 auto;
                    display: flex;
                    justify-content: space-between
                }

                .pie-izq {
                    font-family: "Playfair Display", serif;
                    color: var(--blanco)
                }

                .pie-izq small {
                    display: block;
                    color: var(--secundario);
                    margin-top: 8px;
                }

                .pie-der nav {
                    display: flex;
                    gap: 18px;
                }

                .pie-der a {
                    color: var(--blanco);
                    text-transform: uppercase;
                    font-size: 12px;
                    letter-spacing: .08em
                }

                .pie-der a:hover {
                    color: var(--acento)
                }
            </style>
        </head>

        <body>

            <div class="formulario">
                <h1>Inicio de Sesión</h1>
                <form method="post">
                    <div class="username">
                        <input type="text" required>
                        <label for="username">Usuario:</label>
                    </div>
                    <div class="password">
                        <input type="password" required>
                        <label for="password">Contraseña:</label>
                    </div>
                    <div class="recordar">Olvido su contraseña?</div>
                    <input type="submit" value="Iniciar">
                    <div class="registrarse">No tienes cuenta? <a href="#">Registrate</a>
                    </div>

                </form>



            </div>
            <a class="cerrar" href="index">
                <svg xmlns="http://www.w3.org/2000/svg" height="40px" viewBox="0 -960 960 960" width="40px"
                    fill="#000000">
                    <path
                        d="m256-200-56-56 224-224-224-224 56-56 224 224 224-224 56 56-224 224 224 224-56 56-224-224-224 224Z" />
                </svg>
            </a>
        </body>
        <!-- PIE -->
        <footer class="pie">
            <div class="pie-interno">
                <div class="pie-izq">
                    <div style="font-size:18px; font-weight:700">Cafeteria Nostalgia</div>
                    <small>Copyright © 2025 Todos los derechos reservados</small>
                    <small>Desarrollado por UTPSoft - Desarrolladores
                        Unidos</small>
                </div>
        </footer>

        </html>