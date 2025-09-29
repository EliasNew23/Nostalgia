<%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

        <!DOCTYPE html>
        <html lang="es">

        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>Catálogo - Cafetería</title>
            <link href="../CSS/catalogo.css" rel="stylesheet">
            <link rel="stylesheet" href="../CSS/comun.css">
            <link rel="stylesheet" href="../CSS/index.css">
            <style>
                body {
                    font-family: Arial, sans-serif;
                    background-color: #f8f4ef !important;
                    margin: 0;
                    padding: 0;
                }


                main {
                    max-width: 1000px;
                    margin: 2rem auto;
                    padding: 1rem;
                    background-color: #f8f4ef !important;
                    height: 80vh;
                }

                h2 {
                    color: #6f4e37;
                    margin: 1rem 0;
                }

                #filtro-categoria {
                    display: flex;
                    align-items: center;
                    margin-bottom: 1rem;
                    padding: 0.5rem;
                    border: 1px solid #ccc;
                    border-radius: 5px;
                    width: 200px;
                }

                .catalogo {
                    margin-top: 1rem;
                    display: grid;
                    grid-template-columns: repeat(auto-fit, minmax(220px, 1fr));
                    gap: 1.5rem;
                }

                .card {
                    background: white;
                    border-radius: 10px;
                    box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
                    overflow: hidden;
                    text-align: center;
                    transition: transform 0.3s;
                }

                .card:hover {
                    transform: translateY(-5px);
                }

                .card img {
                    width: 100%;
                    height: 180px;
                    object-fit: cover;
                }

                .card h3 {
                    margin: 0.5rem 0;
                    color: #6f4e37;
                }

                .card p {
                    margin: 0.3rem 0;
                    color: #333;
                }

                .card button {
                    margin: 0.8rem 0;
                    padding: 0.6rem 1rem;
                    border: none;
                    border-radius: 5px;
                    background-color: #6f4e37;
                    color: white;
                    cursor: pointer;
                    transition: background 0.3s;
                }

                .card button:hover {
                    background-color: #8b5a2b;
                }

                /* ============================ */
                /* Variables / Reset ligero */
                /* ============================ */
                :root {
                    --bg: #000;
                    --panel: #0e1313;
                    --principal: #24333a;
                    --secundario: #aeb6b7;
                    --acento: #dbc7a6;
                    --blanco: #f7f6f5;
                    --radio: 12px;
                    --maxw: 1200px;
                }

                * {
                    box-sizing: border-box
                }

                html,
                body {
                    height: 100%;
                    margin: 0;
                    background: var(--bg);
                    color: var(--blanco);
                    font-family: "Poppins", system-ui, Arial, Helvetica, sans-serif
                }

                a {
                    color: inherit;
                    text-decoration: none
                }

                img {
                    display: block;
                    max-width: 100%
                }

                /* ============================ */
                /* HERO */
                /* ============================ */
                .hero {
                    background: #030303;
                    padding: 54px 22px 28px;
                }

                .hero .contenedor {
                    max-width: var(--maxw);
                    margin: 0 auto;
                    display: flex;
                    gap: 28px;
                    align-items: center
                }

                .hero-izq-container {
                    display: flex;
                    flex-direction: column;
                    gap: 12px;
                }

                .hero-izq {
                    width: 30%;
                    min-width: 400px;
                    background: #0f1112;
                    border-radius: 10px;
                    padding: 32px 30px;
                }

                .hero-izq h1 {
                    font-family: "Playfair Display", serif;
                    font-size: 32px;
                    margin: 0 0 12px;
                }


                .hero-izq p {
                    color: var(--secundario);
                    margin: 0 0 18px;
                }

                .boton-principal {
                    display: inline-block;
                    background: var(--acento);
                    color: #0b0b0b;
                    padding: 10px 16px;
                    border-radius: 8px;
                    font-weight: 600;
                }

                .hero-der .imagen-hero {
                    width: 100%;
                    max-width: 1000px;
                    border-radius: 10px;
                    overflow: hidden;
                }

                .hero-der .imagen-hero img {
                    width: 100%;
                    height: 100%;
                    object-fit: cover;
                }

                /* ============================ */
                /* EXPERIENCIA */
                /* ============================ */
                .experiencia {
                    display: flex;
                    max-width: 2000;
                    margin: 44px auto;
                    align-items: stretch;
                }

                .experiencia .izq {
                    background: var(--principal);
                    color: var(--blanco);
                    padding: 48px;
                    width: 30%;
                    min-width: 320px;
                    display: flex;
                    flex-direction: column;
                    justify-content: center;
                }

                .experiencia .izq h2 {
                    font-family: "Playfair Display", serif;
                    font-size: 45px;
                }

                .experiencia .izq h2::after {
                    content: "";
                    display: block;
                    width: 80px;
                    height: 7px;
                    background: var(--acento);
                    margin-top: 12px;
                }

                .experiencia .izq p {
                    color: var(--secundario);
                    font-weight: 600;
                }

                .experiencia .der {
                    flex: 1;
                }

                .experiencia .der img {
                    width: 100%;
                    height: 100%;
                    min-height: 280px;
                    object-fit: cover;
                }

                /* ============================ */
                /* PRODUCTOS */
                /* ============================ */
                .productos {
                    background: #000;
                    padding: 56px 22px;
                    text-align: center;
                }

                .productos .titulo {
                    font-family: "Playfair Display", serif;
                    font-size: 35px;
                    letter-spacing: .05em;
                    margin-bottom: 18px;
                }

                .productos .linea {
                    width: 48px;
                    height: 4px;
                    border-radius: 7px;
                    background: var(--acento);
                    margin: 0 auto 30px;
                }

                .rejilla-productos {
                    display: flex;
                    justify-content: center;
                }

                .tarjeta-producto {
                    width: 300px;
                    height: 300px;
                    position: relative;
                }

                .tarjeta-producto img {
                    width: 100%;
                    height: 100%;
                    object-fit: cover;
                }

                .producto-1 {
                    border-radius: 20px 0 0 20px;
                }

                .tarjeta-producto:hover {
                    filter: brightness(0.8);

                }

                .producto-2 {
                    border-radius: 0 20px 20px 0;
                }

                .tarjeta-producto .overlay {
                    position: absolute;
                    inset: 0;
                    display: flex;
                    align-items: center;
                    justify-content: center;
                    color: var(--blanco);
                    font-weight: 700;
                    background: rgba(0, 0, 0, 0.3);
                    font-family: "Playfair Display", serif;
                    font-size: 16px;
                    text-align: center;
                    padding: 10px;
                }

                /* ============================ */
                /* SERVICIOS */
                /* ============================ */
                .servicios {
                    color: var(--blanco);
                    padding: 80px 22px;
                    text-align: center;
                    background: linear-gradient(135deg, rgba(2, 11, 13, 0.95), rgba(13, 24, 27, 0.95));
                    min-height: 100vh;
                    display: flex;
                    flex-direction: column;
                    justify-content: center;
                }

                .servicios h3 {
                    font-family: "Playfair Display", serif;
                    letter-spacing: 0.1em;
                    font-size: 38px;
                    margin-bottom: 1.5rem;
                    color: var(--acento);
                    position: relative;
                    display: inline-block;
                }

                .servicios h3::after {
                    content: "";
                    display: block;
                    width: 80px;
                    height: 4px;
                    background: var(--acento);
                    margin: 12px auto 0;
                    border-radius: 2px;
                }

                .intro-servicios {
                    max-width: 800px;
                    margin: 0 auto 3rem;
                    font-size: 17px;
                    color: var(--secundario);
                    line-height: 1.6;
                }

                .rejilla-servicios {
                    display: flex;
                    gap: 50px;
                    justify-content: center;
                    flex-wrap: wrap;
                }

                .item-servicio {
                    background: rgba(255, 255, 255, 0.05);
                    border-radius: 15px;
                    padding: 30px 20px;
                    text-align: center;
                    max-width: 320px;
                    transition: transform 0.3s ease, box-shadow 0.3s ease;
                    backdrop-filter: blur(6px);
                }

                .item-servicio:hover {
                    transform: translateY(-10px);
                    box-shadow: 0 12px 25px rgba(0, 0, 0, 0.3);
                }

                .item-servicio img {
                    width: 120px;
                    height: 120px;
                    border-radius: 50%;
                    object-fit: cover;
                    margin: 0 auto 18px;
                    border: 3px solid var(--acento);
                    transition: transform 0.3s ease;
                }

                .item-servicio:hover img {
                    transform: scale(1.05);
                }

                .item-servicio h4 {
                    font-family: "Playfair Display", serif;
                    font-size: 22px;
                    margin-bottom: 12px;
                    color: var(--blanco);
                }

                .item-servicio p {
                    color: var(--secundario);
                    font-size: 15px;
                    font-weight: 400;
                    line-height: 1.6;
                }

                /* ============================ */
                /* VIDEO SERVICIOS */
                /* ============================ */
                .video-servicios {
                    background: var(--blanco);
                    color: var(--principal);
                    text-align: center;
                    padding: 80px 20px;
                }

                .video-servicios h3 {
                    font-family: "Playfair Display", serif;
                    font-size: 32px;
                    margin-bottom: 15px;
                    color: var(--principal);
                }

                .video-servicios p {
                    max-width: 750px;
                    margin: 0 auto 35px;
                    font-size: 17px;
                    line-height: 1.6;
                    color: #444;
                }

                .video-box {
                    max-width: 900px;
                    margin: 0 auto;
                    border-radius: 12px;
                    overflow: hidden;
                    box-shadow: 0 10px 30px rgba(0, 0, 0, 0.2);
                }


                /* ============================ */
                /* SOBRE NOSOTROS */
                /* ============================ */
                .sobre {
                    padding: 100px 0;
                    position: relative;
                    overflow: hidden;
                    height: 100vh;

                }

                .sobre .interior {
                    max-width: var(--maxw);
                    margin: 0 auto;
                    display: flex;
                    gap: 30px;
                    align-items: center;
                    position: relative;
                    min-height: 400px;
                }

                .sobre::before {
                    content: '';
                    position: absolute;
                    top: 0;
                    left: 0;
                    width: 100%;
                    height: 100%;
                    background: linear-gradient(rgba(0, 0, 0, 0.115), rgba(0, 0, 0, 0.241)),
                        url('https://images.cdn-files-a.com/ready_uploads/media/61358/2000_5ce4da637457e.jpg') center/cover no-repeat;
                    z-index: 1;
                }

                .sobre .interior>* {
                    position: relative;
                    z-index: 2;
                    display: flex;
                    flex-direction: column;
                    justify-content: center;
                    align-items: center;
                    margin: 0 auto;
                }

                .sobre .tarjeta {
                    width: 800px;
                    background: #1c282de5;
                    padding: 26px;
                    border-radius: 8px;
                    box-shadow: 0 10px 25px rgba(0, 0, 0, 0.34);
                    display: flex;
                    flex-direction: column;
                    gap: 12px;
                }

                .sobre .tarjeta h4 {
                    margin: 0 0 10px;
                    font-size: 30px;
                    color: #fff;
                }

                .sobre .tarjeta p {
                    color: var(--secundario);
                    font-size: 18px;
                    line-height: 1.5;
                }

                /* Ocultar la imagen original ya que ahora es de fondo */
                .sobre .imagen-nosotros {
                    display: none;
                }

                /* --- VIDEO --- */
                .sobre .video {
                    margin-left: 30px;
                    border-radius: 12px;
                    overflow: hidden;
                    box-shadow: 0 6px 18px rgba(0, 0, 0, 0.5);
                    width: 350px;
                }

                .sobre .video iframe {
                    width: 100%;
                    height: 100%;
                    height: 620px;
                    border: none;
                    display: block;
                }

                /* --- HISTORIA --- */
                .historia {
                    padding: 70px 30rem;
                    text-align: center;
                    background: var(--blanco);
                    color: var(--principal);
                }

                .historia h3 {
                    font-family: "Playfair Display", serif;
                    font-size: 30px;
                    margin-bottom: 2rem;
                }


                /* --- VALORES --- */
                .valores {
                    background: var(--principal);
                    color: var(--blanco);
                    padding: 70px 20px;
                    text-align: center;
                }

                .valores h3 {
                    font-family: "Playfair Display", serif;
                    font-size: 30px;
                    margin-bottom: 30px;
                }

                .valores ul {
                    list-style: none;
                    padding: 0;
                    max-width: 600px;
                    margin: 0 auto;
                    text-align: left;
                }

                .valores li {
                    margin-bottom: 15px;
                    font-size: 16px;
                    position: relative;
                    padding-left: 20px;
                }

                .valores li::before {
                    content: "✔";
                    color: var(--acento);
                    position: absolute;
                    left: 0;
                }

                /* --- EQUIPO --- */
                .equipo {
                    background: var(--blanco);
                    color: var(--principal);
                    padding: 70px 20px;
                    text-align: center;
                }

                .rejilla-equipo {
                    display: flex;
                    justify-content: center;
                    flex-wrap: wrap;
                    gap: 40px;
                    margin-top: 30px;
                }

                .miembro {
                    max-width: 250px;
                    background: #f7f7f7;
                    padding: 20px;
                    border-radius: 15px;
                    box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
                    transition: transform .3s;
                }

                .miembro:hover {
                    transform: translateY(-8px);
                }

                .miembro img {
                    width: 120px;
                    height: 120px;
                    border-radius: 50%;
                    object-fit: cover;
                    margin-bottom: 15px;
                }

                /*extra METRICAS*/
                .acciones-finales {
                    margin-top: 3rem;
                    cursor: pointer;
                }

                .btn-primary {
                    background: #91613f;
                    color: white;
                    border: 1px dotted #7f7f7e;
                    padding: 8px 12px;
                    border-radius: 5px;
                }

                .btn-secondary {
                    background: #a45e2d;
                    color: white;
                    border: 1px dotted #7f7f7e;
                    padding: 8px 12px;
                    border-radius: 5px;
                }
            </style>
        </head>

        <body>
            <!-- ENCABEZADO -->
            <%@ include file="header.jsp" %>
                <main>
                    <h2>Catálogo</h2>
                    <label for="filtro-categoria"><strong>Filtrar por categoría:</strong></label>
                    <select id="filtro-categoria">
                        <option value="todas">Todas</option>
                        <option value="Café">Café</option>
                        <option value="Pasteles">Pasteles</option>
                    </select>

                    <div class="catalogo">
                        <div class="card" data-categoria="Café">
                            <img src="https://files.cdn-files-a.com/uploads/11164728/800_68b11f2733afc.png"
                                alt="Capuccino">
                            <h3>Capuccino</h3>
                            <p>Delicioso café con espuma cremosa.</p>
                            <p><strong>S/ 12.00</strong></p>
                            <button>Agregar al carrito</button>
                        </div>
                        <div class="card" data-categoria="Pasteles">
                            <img src="https://files.cdn-files-a.com/uploads/11164728/800_68b11ec5abcaf.png"
                                alt="Pastel de Fresa">
                            <h3>Pastel de Fresa</h3>
                            <p>Pastel fresco con trozos de fresa natural.</p>
                            <p><strong>S/ 8.50</strong></p>
                            <button>Agregar al carrito</button>
                        </div>
                        <!-- Podemos agregar mas prodcutos - pero el profe pide 1 por miestras -->
                    </div>
                </main>
        </body>
        <!-- PIE -->
        <%@ include file="footer.jsp" %>

        </html>