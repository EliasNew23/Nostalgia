<%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>Gestión</title>
            <link
                href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@600;700&family=Poppins:wght@300;400;600&display=swap"
                rel="stylesheet">
            <style>
                html,
                body {
                    height: 100%;
                    margin: 0;
                    background-color: #f8f4ef !important;
                    color: var(--panel);
                    font-family: "Poppins", system-ui, Arial, Helvetica, sans-serif
                }

                .container {
                    max-width: 1100px;
                    margin: 0 auto;
                    padding: 20px;
                }

                /* Navegación */
                .main-nav {
                    display: flex;
                    gap: 8px;
                }

                .main-nav a {
                    color: rgb(17, 14, 14);
                    text-decoration: none;
                    padding: 8px 12px;
                    border-radius: 6px;
                    font-size: 14px;
                }

                .main-nav a:hover {
                    background: rgba(40, 37, 37, 0.2);
                }

                /* Tarjetas */
                .card {
                    background: #fff;
                    border-radius: 8px;
                    padding: 16px;
                    margin: 16px 0;
                    border: 1px solid #ddd;
                    color: #7c7979;
                }

                /* Métricas */
                .metrics {
                    display: grid;
                    grid-template-columns: repeat(4, 1fr);
                    gap: 12px;
                }

                .metric-title {
                    font-size: 13px;
                    color: #2e2929;
                }

                .metric-value {
                    font-weight: bold;
                    font-size: 18px;
                    margin-top: 6px;
                }

                /* Formularios */
                .form-grid {
                    display: grid;
                    grid-template-columns: repeat(2, 1fr);
                    gap: 12px;
                }

                input,
                select,
                textarea {
                    width: 90%;
                    padding: 8px;
                    border: 1px solid #353232;
                    border-radius: 6px;
                    margin-bottom: 12px;
                }

                label {
                    display: block;
                    margin-bottom: 4px;
                    font-size: 13px;
                    color: #312e2e;
                }

                .actions {
                    display: flex;
                    gap: 8px;
                }

                .btn {
                    padding: 8px 12px;
                    border-radius: 6px;
                    border: 1px solid #ccc;
                    background: white;
                    cursor: pointer;
                }

                .btn-primary {
                    background: #6f4e37;
                    color: white;
                    border: none;
                }

                /* Listas */
                .list ul {
                    margin: 8px 0 0 18px;
                    color: #666;
                }

                /* Diagrama de flujo */
                .flow-diagram {
                    display: flex;
                    gap: 8px;
                    flex-wrap: wrap;
                    align-items: center;
                    margin-top: 12px;
                }

                .box {
                    background: #fff7ed;
                    padding: 8px 12px;
                    border-radius: 6px;
                    border: 1px solid #f3e1c8;
                    color: #6b3f10;
                }

                .arrow {
                    font-size: 18px;
                    color: #312f2f;
                }


                /* ============================ */
                /* ENCABEZADO */
                /* ============================ */
                header.encabezado {
                    position: sticky;
                    top: 0;
                    z-index: 999;
                    background: var(--principal);
                    border-bottom: 3px solid rgba(0, 0, 0, 0.4);
                }

                .contenedor {
                    max-width: 1500px;
                    margin: 0 auto;
                    padding: 18px 22px;
                    display: flex;
                    align-items: center;
                    gap: 12px
                }

                .marca {
                    font-family: "Playfair Display", serif;
                    font-weight: 700;
                    color: var(--blanco);
                    font-size: 18px;
                }

                nav.navegacion {
                    margin-left: auto
                }

                nav.navegacion ul {
                    display: flex;
                    gap: 22px;
                    list-style: none;
                    margin: 0;
                    padding: 0;
                }

                nav.navegacion a {
                    color: var(--blanco);
                    font-size: 13px;
                    text-transform: uppercase;
                    letter-spacing: .08em;
                    opacity: .95;
                }

                nav.navegacion a:hover {
                    opacity: 1;
                    color: var(--acento)
                }


                .usuario-icono {
                    margin-left: 50px;
                    display: flex;
                    align-items: center;
                    justify-content: center;
                }

                .usuario-icono:hover {
                    cursor: pointer;
                    color: var(--acento);
                    opacity: 0.8;
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

                <main class="container">
                    <section id="dashboard" class="card">
                        <h2>Panel de Control (Visión General)</h2>
                        <p class="muted">Indicadores de soporte para el proceso principal de ventas: inventario,
                            abastecimiento, calidad y
                            atención al cliente.</p>

                        <div class="metrics">
                            <div class="metric card small">
                                <div class="metric-title">Inventario (rotación)</div>
                                <div class="metric-value">7.2</div>
                            </div>
                            <div class="metric card small">
                                <div class="metric-title">OTIF Proveedores</div>
                                <div class="metric-value">91%</div>
                            </div>
                            <div class="metric card small">
                                <div class="metric-title">Uptime Equipos</div>
                                <div class="metric-value">98.5%</div>
                            </div>
                            <div class="metric card small">
                                <div class="metric-title">Capacitación Baristas</div>
                                <div class="metric-value">80%</div>
                            </div>
                        </div>
                    </section>

                    <section id="compra" class="card">
                        <h2>Compra de Insumos</h2>
                        <p class="muted">Subproceso: selección de proveedores, pedidos y control de calidad.</p>

                        <form class="form-grid" onsubmit="return false;">
                            <div>
                                <label for="prov-nombre">Proveedor</label>
                                <input id="prov-nombre" type="text" placeholder="Nombre del proveedor" />
                            </div>
                            <div>
                                <label for="prov-contacto">Contacto</label>
                                <input id="prov-contacto" type="text" placeholder="Email o teléfono" />
                            </div>
                            <div>
                                <label for="prov-rt">Lead time estimado (días)</label>
                                <input id="prov-rt" type="number" min="0" placeholder="Ej. 5" />
                            </div>
                            <div class="actions">
                                <button class="btn btn-primary" type="button">Agregar Proveedor</button>
                                <button class="btn" type="button">Limpiar</button>
                            </div>
                        </form>

                        <div class="list card small">
                            <h3>Proveedores registrados</h3>
                            <ul>
                                <li>Granos & Co. — Contacto: 987-654-321</li>
                                <li>Dulce Masa — Contacto: ventas@dulcemasa.pe</li>
                            </ul>
                        </div>
                    </section>

                    <section id="produccion" class="card">
                        <h2>Producción (Tortas y Cafés)</h2>
                        <p class="muted">Subproceso: recetas, programación de producción y control de calidad.</p>

                        <div class="row">
                            <div class="card half">
                                <h3>Programación</h3>
                                <label for="prod-item">Producto</label>
                                <select id="prod-item">
                                    <option>Café espresso</option>
                                    <option>Café capuchino</option>
                                    <option>Torta de chocolate</option>
                                    <option>Torta de limón</option>
                                </select>

                                <label for="prod-cant">Cantidad</label>
                                <input id="prod-cant" type="number" min="1" value="10" />

                                <div class="actions">
                                    <button class="btn btn-primary" type="button">Programar Producción</button>
                                    <button class="btn" type="button">Cancelar</button>
                                </div>
                            </div>

                            <div class="card half">
                                <h3>Recetas y control</h3>
                                <p class="muted">Verificar ingredientes y tiempos de preparación para mantener calidad.
                                </p>
                                <button class="btn" type="button">Ver Receta</button>
                                <button class="btn" type="button">Registrar Nota de Calidad</button>
                            </div>
                        </div>
                    </section>

                    <section id="ventas" class="card">
                        <h2>Ventas</h2>
                        <p class="muted">Subproceso: punto de venta, combos, pedidos online y caja.</p>

                        <div class="row">
                            <div class="card half">
                                <h3>Registrar venta</h3>
                                <label for="venta-item">Producto</label>
                                <select id="venta-item">
                                    <option>Café + Torta (Combo)</option>
                                    <option>Café solo</option>
                                    <option>Torta por porción</option>
                                </select>
                                <label for="venta-cant">Cantidad</label>
                                <input id="venta-cant" type="number" min="1" value="1" />
                                <div class="actions">
                                    <button class="btn btn-primary" type="button">Registrar Venta</button>
                                    <button class="btn" type="button">Imprimir Ticket</button>
                                </div>
                            </div>

                            <div class="card half">
                                <h3>Promociones</h3>
                                <p class="muted">Crear y visualizar promociones (no funcional).</p>
                                <button class="btn" type="button">Nueva Promoción</button>
                                <button class="btn" type="button">Editar Promoción</button>
                            </div>
                        </div>
                    </section>

                    <section id="atencion" class="card">
                        <h2>Atención al Cliente</h2>
                        <p class="muted">Subproceso: servicio en mesa, pedidos para llevar y gestión de reclamos.</p>

                        <div class="card small">
                            <h3>Registro de reclamos</h3>
                            <label for="rec-nombre">Cliente</label>
                            <input id="rec-nombre" placeholder="Nombre del cliente" />
                            <label for="rec-detalle">Detalle</label>
                            <textarea id="rec-detalle" rows="3" placeholder="Describa el reclamo"></textarea>
                            <div class="actions">
                                <button class="btn btn-primary" type="button">Registrar Reclamo</button>
                                <button class="btn" type="button">Marcar Resuelto</button>
                            </div>
                        </div>
                    </section>

                    <section id="control" class="card">
                        <h2>Control y Evaluación</h2>
                        <p class="muted">KPIs, reportes y control de desperdicios y costos.</p>

                        <div class="card small">
                            <h3>KPIs</h3>
                            <ul>
                                <li>Rotación inventario: <strong>7.2</strong></li>
                                <li>Merma mensual: <strong>3.1%</strong></li>
                                <li>Ventas diarias (prom.): <strong>120</strong></li>
                            </ul>
                            <div class="actions">
                                <button class="btn" type="button">Exportar Reporte (CSV)</button>
                                <button class="btn" type="button">Ver Históricos</button>
                            </div>
                        </div>
                    </section>
                </main>


                <!-- PIE -->
                <%@ include file="footer.jsp" %>

        </body>

        </html>