# healthage
# Inicialização

npm start
node src/backend/server.js

# Sistema rodando na seguinte requisição

http://localhost:3000/healthage/

# Banco de dados

host: localhost
user: root
password: masterkey
database name: notimetodie

# 🕵️‍♂️ healthage

Sistema web para controle de pontos, metas e atividades. Possui frontend em React com navegação por rotas, calendário de atividades, e backend em Node.js com banco de dados MySQL.

---

## 🚀 Tecnologias Utilizadas

- **Frontend**:  
  - React  
  - React Router DOM  
  - Axios  
  - React Bootstrap  
  - FullCalendar  
- **Backend**:  
  - Node.js  
  - Express  
  - MySQL2  
  - CORS  
  - Nodemon

- **Estilização**:  
  - Bootstrap  

---

## 📦 Instalação do Projeto

### 1. Clone o repositório

```bash
git clone https://github.com/DanelLima/healthage
cd healthage
```

### 2. Instale as dependências

```bash
# React
npx create-react-app healthage
npm install axios react-router-dom bootstrap react-bootstrap html2pdf.js react-chartjs-2 chart.js

# Calendário -> React
npm install @fullcalendar/core @fullcalendar/react @fullcalendar/daygrid

# Backend
npm install express mysql2 cors 
```

---

## 🖥️ Inicialização

### Iniciar o Frontend

```bash
npm src/react/start
```

### Iniciar o Backend

```bash
nodemon src/backend/server.js
```

> ⚠️ Certifique-se de que o backend está escutando na porta `3001` ou a definida em `server.js`.

---

## 🌐 URL de Acesso

A aplicação estará disponível em:

```
http://localhost:3000/healthage/

```



## 🧠 Funcionalidades

- Bater ponto com controle de entrada/saída
- Visualizar pontos do dia
- Calendário de atividades
- Metas e lembretes de pausa
- Projetos e atividades relacionadas

---
