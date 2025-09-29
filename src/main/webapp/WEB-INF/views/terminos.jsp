<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Cafeteria Nostalgia — Términos y Condiciones</title>

    <link rel="stylesheet" href="../CSS/index.css">
    <link rel="stylesheet" href="../CSS/comun.css">
    <link rel="stylesheet" href="../CSS/terminos.css">
    <!-- Tipografías (usa Playfair Display para títulos y Poppins para textos) -->
    <link
        href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@600;700&family=Poppins:wght@300;400;600&display=swap"
        rel="stylesheet">
<style>
    /* SECCIÓN TÉRMINOS */
.terminos {
    padding: 60px 20px;
    text-align: center;
    background: #faf9f7;
    height: 90vh;
    max-height: 900px;
}

.contenedor-terminos {
    max-width: 800px;
    margin: 0 auto;
}

.titulo-terminos {
    font-family: 'Playfair Display', serif;
    font-size: 2.2rem;
    margin-bottom: 20px;
    color: #5a4634;
}

.descripcion-terminos {
    font-family: 'Poppins', sans-serif;
    font-size: 1rem;
    color: #444;
    margin-bottom: 40px;
    line-height: 1.6;
}

.bloques-descarga {
    display: flex;
    justify-content: center;
    gap: 20px;
    flex-wrap: wrap;
}

.bloque-descarga {
    display: inline-block;
    padding: 18px 28px;
    border-radius: 10px;
    text-decoration: none;
    font-weight: 600;
    color: white;
    transition: transform 0.2s, opacity 0.2s;
}

.bloque-descarga span {
    font-size: 1rem;
}

.bloque-descarga.docs {
    background: #2a73d9;
}

.bloque-descarga.pdf {
    background: #d93025;
}

.bloque-descarga:hover {
    transform: scale(1.05);
    opacity: 0.9;
}
</style>
</head>

<body>

    <!-- ENCABEZADO -->
              <%@ include file="header.jsp" %>


    <!-- SECCIÓN TÉRMINOS -->
    <section class="terminos">
        <div class="contenedor-terminos">
            <h2 class="titulo-terminos">Términos y Condiciones</h2>
            <p class="descripcion-terminos">
                Aquí podrás descargar los términos y condiciones de Cafetería Nostalgia
                en el formato que prefieras. Revisa el documento para conocer más
                sobre nuestras políticas y servicios.
            </p>

            <div class="bloques-descarga">
                <a href="documentos/terminos.docx" class="bloque-descarga docs" download>
                    <span>Descargar en Word</span>
                </a>
                <a href="documentos/terminos.pdf" class="bloque-descarga pdf" download>
                    <span>Descargar en PDF</span>
                </a>
            </div>
        </div>
    </section>





                <!-- PIE -->
                <%@ include file="footer.jsp" %>


</body>

</html>