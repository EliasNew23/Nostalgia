<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Cafeteria Nostalgia — Servicios</title>
    <link rel="stylesheet" href="../CSS/index.css">
    <link rel="stylesheet" href="../CSS/comun.css" />

    <!-- Tipografías (usa Playfair Display para títulos y Poppins para textos) -->
    <link
        href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@600;700&family=Poppins:wght@300;400;600&display=swap"
        rel="stylesheet">
        <style>

/* --- ESTILOS DE SERVICIOS --- */

.servicios {
    padding: 60px 20px;
    background-color: #fafafa;
    text-align: center;
}

.servicios h3 {
    font-family: 'Playfair Display', serif;
    font-size: 2.2rem;
    margin-bottom: 15px;
    color: #4b2c20;
}

.intro-servicios {
    font-family: 'Poppins', sans-serif;
    font-size: 1rem;
    max-width: 700px;
    margin: 0 auto 40px;
    color: #444;
    line-height: 1.6;
}

/* Rejilla de servicios */
.rejilla-servicios {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
    gap: 30px;
    margin-top: 30px;
}

.item-servicio {
    background: #fff;
    border-radius: 10px;
    box-shadow: 0 3px 6px rgba(0,0,0,0.1);
    padding: 20px;
    transition: transform 0.3s ease;
}

.item-servicio:hover {
    transform: translateY(-5px);
}

.item-servicio img {
    width: 100%;
    height: 200px;
    object-fit: cover;
    border-radius: 8px;
    margin-bottom: 15px;
}

.item-servicio h4 {
    font-family: 'Playfair Display', serif;
    font-size: 1.3rem;
    margin: 10px 0;
    color: #333;
}

.item-servicio p {
    font-family: 'Poppins', sans-serif;
    font-size: 0.95rem;
    color: #555;
    line-height: 1.5;
}

/* Video informativo */
.video-servicios {
    padding: 60px 20px;
    background-color: #fff;
    text-align: center;
}

.video-servicios h3 {
    font-size: 2rem;
    margin-bottom: 15px;
    color: #4b2c20;
    font-family: 'Playfair Display', serif;
}

.video-servicios p {
    max-width: 700px;
    margin: 0 auto 30px;
    font-family: 'Poppins', sans-serif;
    color: #444;
    line-height: 1.6;
}

.contenedor-video {
    max-width: 900px;
    margin: 0 auto;
}

.video-box {
    position: relative;
    padding-bottom: 56.25%;
    height: 0;
    overflow: hidden;
    border-radius: 10px;
    box-shadow: 0 3px 6px rgba(0,0,0,0.15);
}

.video-box iframe {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    border: none;
}


        </style>
</head>

<body>

    <!-- ENCABEZADO -->
               <%@ include file="header.jsp" %>


    <!-- SERVICIOS -->
    <section class="servicios" id="servicios">
        <h3>NUESTROS SERVICIOS</h3>
        <p class="intro-servicios">
            En Cafetería Nostalgia nos esforzamos por ofrecer experiencias únicas que van más allá de una simple taza de
            café.
            Disfruta de nuestros productos y vive un ambiente lleno de calidez, tradición y sabor auténtico.
        </p>

        <div class="rejilla-servicios">
            <div class="item-servicio">
                <img src="https://images.cdn-files-a.com/ready_uploads/media/9462925/400_6391dfee6be86.jpg"
                    alt="Café Gourmet">
                <h4>Café Gourmet</h4>
                <p>Deléitate con nuestras exquisitas opciones de café hecho con granos de calidad excepcional.
                    Desde un espresso intenso hasta un cappuccino espumoso, cada bebida es preparada con pasión.</p>
            </div>
            <div class="item-servicio">
                <img src="https://images.cdn-files-a.com/ready_uploads/media/8741051/400_6373b4f8adf27.jpg"
                    alt="Repostería Artesanal">
                <h4>Repostería Artesanal</h4>
                <p>Acompaña tu café con nuestras delicias dulces y saladas hechas a mano.
                    Croissants, tartas y galletas que evocan recuerdos de hogar en cada bocado.</p>
            </div>
            <div class="item-servicio">
                <img src="https://img.freepik.com/foto-gratis/interior-cafeteria-moderna-estilo-loft_181624-9671.jpg"
                    alt="Espacios de Relajación">
                <h4>Espacios de Relajación</h4>
                <p>No solo servimos café, también ofrecemos un ambiente único.
                    Salas acogedoras, música suave y un espacio ideal para reuniones, lectura o simplemente disfrutar
                    del momento.</p>
            </div>
        </div>
    </section>

    <!-- VIDEO INFORMATIVO -->
    <section class="video-servicios">
        <div class="contenedor-video">
            <h3>EXPERIENCIA NOSTALGIA</h3>
            <p>Descubre cómo transformamos cada visita en una experiencia memorable.
                Nuestro compromiso es combinar tradición, innovación y hospitalidad en cada detalle.</p>
            <div class="video-box">
                <iframe width="100%" height="480"
                    src="https://www.youtube.com/embed/6QgJk1qFIps?autoplay=0&mute=0&loop=1&playlist=6QgJk1qFIps"
                    title="Cafetería Nostalgia - Video Informativo" frameborder="0"
                    allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                    referrerpolicy="strict-origin-when-cross-origin" allowfullscreen>
                </iframe>
            </div>
        </div>
    </section>

   
                <!-- PIE -->
                <%@ include file="footer.jsp" %>


</body>

</html>