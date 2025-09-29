<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="icon" type="image/x-icon" href="favicon.ico" />
    <title>Cafeteria Nostalgia — Nosotros</title>
    <link rel="stylesheet" href="../CSS/index.css" />
    <link rel="stylesheet" href="../CSS/comun.css" />

    <!-- Tipografías (usa Playfair Display para títulos y Poppins para textos) -->
    <link
        href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@600;700&family=Poppins:wght@300;400;600&display=swap"
        rel="stylesheet">
<style>

/* ====== SOBRE NOSOTROS ====== */
.sobre {
    padding: 60px 20px;
    background: #fff;
}

.sobre .interior {
    display: flex;
    flex-wrap: wrap;
    align-items: center;
    justify-content: center;
    gap: 2rem;
    max-width: 1100px;
    margin: 0 auto;
    text-align: center;
}

.imagen-nosotros {
    width: 350px;
    max-width: 100%;
    border-radius: 10px;
    object-fit: cover;
}

.tarjeta {
    flex: 1;
    min-width: 280px;
    background: #fafafa;
    padding: 20px;
    border-radius: 10px;
    box-shadow: 0 3px 6px rgba(0,0,0,0.1);
}

.tarjeta h4 {
    font-family: 'Playfair Display', serif;
    font-size: 1.5rem;
    margin-bottom: 10px;
    color: #4b2c20;
}

.tarjeta p {
    font-family: 'Poppins', sans-serif;
    font-size: 0.95rem;
    line-height: 1.6;
    color: #444;
}

.video iframe {
    width: 100%;
    max-width: 500px;
    height: 280px;
    border-radius: 10px;
    box-shadow: 0 3px 6px rgba(0,0,0,0.15);
}

/* ====== HISTORIA Y VALORES ====== */
.historia, .valores {
    padding: 60px 20px;
    background: #f9f9f9;
    text-align: center;
}

.historia h3, .valores h3 {
    font-size: 2rem;
    font-family: 'Playfair Display', serif;
    margin-bottom: 1rem;
    color: #4b2c20;
}

.historia p, .valores p, .valores ul {
    max-width: 800px;
    margin: 0 auto;
    font-family: 'Poppins', sans-serif;
    font-size: 1rem;
    line-height: 1.6;
    color: #444;
}

.valores ul {
    list-style: none;
    padding: 0;
}

.valores li {
    margin-bottom: 10px;
}

/* ====== EQUIPO ====== */
.equipo {
    padding: 60px 20px;
    background: #fff;
    text-align: center;
}

.equipo h3 {
    font-size: 2rem;
    margin-bottom: 30px;
    font-family: 'Playfair Display', serif;
    color: #4b2c20;
}

.rejilla-equipo {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
    gap: 2rem;
    max-width: 1000px;
    margin: 0 auto;
}

.miembro {
    background: #fafafa;
    border-radius: 10px;
    box-shadow: 0 4px 8px rgba(0,0,0,0.1);
    padding: 1.5rem;
}

.miembro img {
    max-width: 120px;
    border-radius: 50%;
    margin-bottom: 1rem;
}

.miembro h4 {
    margin: 0.5rem 0;
    font-size: 1.2rem;
    font-family: 'Playfair Display', serif;
    color: #333;
}

.miembro p {
    font-size: 0.95rem;
    font-family: 'Poppins', sans-serif;
    color: #555;
}

/* ====== BOTONES FINALES ====== */
.acciones-finales {
    margin-top: 2rem;
    text-align: center;
}

.acciones-finales button {
    padding: 12px 24px;
    margin: 0 10px;
    border-radius: 8px;
    border: none;
    cursor: pointer;
    font-size: 14px;
    font-weight: bold;
    transition: background 0.3s ease;
}

.btn-primary {
    background: #007BFF;
    color: white;
}

.btn-primary:hover {
    background: #0056b3;
}

.btn-secondary {
    background: #6c757d;
    color: white;
}

.btn-secondary:hover {
    background: #5a6268;
}


</style>
</head>

<body>

    <!-- ENCABEZADO -->
               <%@ include file="header.jsp" %>

    <!-- SOBRE NOSOTROS -->
    <section class="sobre" id="sobre-nosotros">
        <div class="interior">
            <img class="imagen-nosotros"
                src="https://images.cdn-files-a.com/ready_uploads/media/61358/2000_5ce4da637457e.jpg"
                alt="Sobre Nosotros">
            <div class="tarjeta">
                <h4>Sobre Nosotros</h4>
                <p>Café Delicioso es más que una cafetería; somos un espacio dedicado a aquellos apasionados por el café
                    y las conversaciones. Con granos seleccionados de las mejores regiones y un ambiente cálido, nos
                    destacamos como un lugar donde cada taza cuenta una historia.</p>
            </div>
            <div class="video">
                <iframe src="https://www.youtube.com/embed/8KLE3hUKR98?autoplay=1&mute=1&loop=1&playlist=8KLE3hUKR98"
                    title="Affogato - Postre/Bebida de café" frameborder="0"
                    allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                    referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
            </div>
        </div>
    </section>

    <!-- NUESTRA HISTORIA -->
    <section class="historia" id="historia">
        <h3>NUESTRA HISTORIA</h3>
        <p>La Cafetería Nostalgia nació en el 2010 con la idea de ofrecer un lugar acogedor
            donde el café y la tradición se unan. Desde entonces, hemos crecido junto a nuestros clientes,
            manteniendo siempre la pasión por la calidad y la calidez en cada detalle.</p>
    </section>

    <!-- NUESTROS VALORES -->
    <section class="valores" id="valores">
        <h3>NUESTROS VALORES</h3>
        <ul>
            <li><strong>Calidad:</strong> utilizamos granos cuidadosamente seleccionados.</li>
            <li><strong>Tradición:</strong> mantenemos recetas artesanales que evocan recuerdos.</li>
            <li><strong>Innovación:</strong> combinamos lo clásico con nuevas tendencias en café.</li>
            <li><strong>Calidez:</strong> brindamos un ambiente familiar y acogedor.</li>
        </ul>
    </section>

    <!-- EQUIPO -->
    <section class="equipo" id="equipo">
        <h3>NUESTRO EQUIPO</h3>
        <div class="rejilla-equipo">
            <div class="miembro">

                <h4>Ana Martínez</h4>
                <p>Fundadora y Barista principal. Apasionada del café de origen.</p>
            </div>
            <div class="miembro">

                <h4>Carlos López</h4>
                <p>Chef pastelero. Encargado de crear postres artesanales únicos.</p>
            </div>
            <div class="miembro">

                <h4>Lucía Torres</h4>
                <p>Atención al cliente. Siempre con una sonrisa para recibirte.</p>
            </div>
        </div>
        <div class="acciones-finales">
            <a href="metricas.html">
                <button class="btn btn-primary" type="button">Nuestras Métricas</button>
            </a>
            <a href="publicidad.html">
                <button class="btn btn-secondary" type="button">Publicidades</button>
            </a>
        </div>
    </section>



    
                <!-- PIE -->
                <%@ include file="footer.jsp" %>


</body>

</html>