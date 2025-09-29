<!DOCTYPE html>
<html lang="es">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Cafetería Nostalgia</title>
  <link rel="stylesheet" href="../CSS/publicidad.css">
  <link rel="stylesheet" href="../CSS/comun.css">
  <link rel="stylesheet" href="../CSS/index.css">
  <style>
    /* ===== Estilo base ===== */
body {
  background-color: #f8f4ef !important;
  color: #3e2723;
  text-align: center;
}

.hero,
h2,
p {
  background: linear-gradient(137deg, #f8f4ef, rgb(252, 247, 239)) !important;
  color: #3e2723;
}

header h1 {
  font-size: 2.8em;
  margin: 0 0 15px 0;
}

header p {
  font-size: 1.3em;
  margin: 0;
}

/* ===== Botón principal ===== */
button,
.btn {
  background: #3e2723 !important;
  color: #fff;
  padding: 12px 30px;
  border: none;
  border-radius: 25px;
  font-size: 1.1em;
  cursor: pointer;
  transition: background 0.3s, transform 0.3s;
  margin-top: 20px;
}

button:hover,
.btn:hover {
  background: #8d6e63;
  transform: scale(1.05);
}

/* ===== Sección de galería ===== */
.galeria {
  display: flex;
  justify-content: center;
  gap: 20px;
  flex-wrap: wrap;
  padding: 40px 20px;
  max-width: 1100px;
  margin: auto;
  height: 40vh;
}

.galeria img {
  max-width: 280px;
  width: 100%;
  height: auto;
  object-fit: cover;
  border-radius: 15px;
  box-shadow: 0 4px 12px rgba(0, 0, 0, 0.3);
  transition: transform 0.3s, box-shadow 0.3s;
}

.galeria img:hover {
  transform: scale(1.08);
  box-shadow: 0 8px 20px rgba(0, 0, 0, 0.4);
}

/* ===== Footer ===== */
footer {
  background: #6f4e37;
  color: #fff;
  text-align: left;
  padding: 20px;
  margin-top: 40px;
  font-size: 0.9em;
  box-shadow: 0 -3px 6px rgba(0, 0, 0, 0.3);
}
  </style>
</head>

<body>
            <%@ include file="header.jsp" %>

  <!-- Hero principal -->
  <section class="hero">
    <h2>Un café, mil recuerdos ☕✨</h2>
    <p>Descubre la experiencia única de Cafetería Nostalgia, donde cada taza cuenta una historia.</p>
    <a href="contacto.html"><button>Visítanos Hoy</button></a>
  </section>

  <!-- Galería de publicidad -->
  <section class="publicidad">
    <h2>Nuestro ambiente y sabores</h2>
    <div class="galeria">
      <img src="../../MEDIA/IMAGES/mocca.jpg" alt="Café mocca">
      <img src="../../MEDIA/IMAGES/capuchino.jpeg" alt="Capuchino con arte latte">
      <img src="../../MEDIA/IMAGES/latte.jpeg" alt="Latte servido con espuma cremosa">
    </div>
    <p>Vive la experiencia de una cafetería acogedora, con un aroma que despierta la nostalgia de buenos momentos.</p>
  </section>

  
                <!-- PIE -->
                <%@ include file="footer.jsp" %>

</body>

</html>