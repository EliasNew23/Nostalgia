<!DOCTYPE html>
<html lang="es">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Cafetería Nostalgia</title>
  <link rel="stylesheet" href="../CSS/metricas.css">
  <link rel="stylesheet" href="../CSS/comun.css">
  <link rel="stylesheet" href="../CSS/index.css">
  <style>
    /* ===== Estilo base ===== */
body {
  background-color: #f8f4ef !important;
  color: #3e2723;
  text-align: center;
}

h2 {
  color: #4a2d2d;
  margin-bottom: 20px;
  font-size: 2em;
  font-weight: bold;
}

.metricas {
  padding: 50px 20px;
  text-align: center;
  height: 80vh;
}

.cards {
  display: flex;
  justify-content: center;
  gap: 40px;
  flex-wrap: wrap;
}

.card {
  background: white;
  border-radius: 15px;
  box-shadow: 0 4px 12px rgba(0, 0, 0, 0.2);
  padding: 20px;
  text-align: center;
  transition: transform 0.3s, box-shadow 0.3s;
  max-width: 350px;
}

.card:hover {
  transform: translateY(-8px);
  box-shadow: 0 8px 16px rgba(0, 0, 0, 0.3);
}

.card img {
  max-width: 100%;
  height: auto;
  object-fit: cover;
  margin-bottom: 15px;
  border-radius: 10px;
}

.card h3 {
  margin: 10px 0;
  color: #3e2723;
}

.card p {
  font-size: 1.2em;
  font-weight: bold;
  color: #6f4e37;
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

  <section class="metricas">
    <h2>Nuestras Métricas</h2>
    <div class="cards">
      <div class="card">
        <img src="../../MEDIA/IMAGES/cafe-espresso.jpeg" alt="Taza de café espresso">
        <h3>☕ 1,200+</h3>
        <p>Tazas servidas cada semana</p>
      </div>
      <div class="card">
        <img src="../../MEDIA/IMAGES/clientes-cafe.jpg" alt="Clientes disfrutando café">
        <h3>👥 800+</h3>
        <p>Clientes satisfechos</p>
      </div>
      <div class="card">
        <img src="../../MEDIA/IMAGES/capuchino-arte.jpeg" alt="Capuchino con arte latte en mesa">
        <h3>⭐ 4.8/5</h3>
        <p>Calificación promedio</p>
      </div>
    </div>
  </section>

                <!-- PIE -->
                <%@ include file="footer.jsp" %>

</body>

</html>