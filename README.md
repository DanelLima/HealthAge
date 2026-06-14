# HealthAge

## Inicialização

### Frontend

```bash
npm start
```

### Backend

```bash
npx nodemon src/backend/server.js
```

---

## 🌐 Sistema rodando na seguinte URL

```text
http://localhost:3000/healthage/
```

---

## Banco de Dados

Antes de iniciar o projeto, execute o script SQL do banco de dados **HealthAge** em uma instância MySQL.

> Foi utilizado o MySQL Workbench durante o desenvolvimento, mas pode ser utilizado qualquer gerenciador compatível com MySQL.

⚠️ **Importante:** anote o usuário e a senha configurados no banco, pois eles devem ser os mesmos utilizados no arquivo de configuração do backend.

Local para verificar ou alterar as credenciais:

```text
backend/config/database.js
```

Exemplo:

```javascript
host: 'localhost',
user: 'root',
password: 'sua_senha',
database: 'healthage'
```

---

# HealthAge

Sistema web para controle de pontos, metas e atividades. Possui frontend em React com navegação por rotas, geração de relatórios em PDF, gráficos de produtividade, calendário de atividades e backend em Node.js integrado ao banco de dados MySQL.

---

## Tecnologias Utilizadas

### Frontend

- React
- React Router DOM
- Axios
- Bootstrap
- React Bootstrap
- HTML2PDF.js
- React ChartJS 2
- Chart.js
- FullCalendar

### Backend

- Node.js
- Express
- MySQL2
- CORS
- Nodemon

---

## 📦 Instalação do Projeto

### 1. Clone o Repositório

```bash
git clone https://github.com/DanelLima/HealthAge.git
```

### 2. Acesse a pasta do projeto

```bash
cd C:\Users\Daniel\Documents\HealthAge
```

### 3. Renomeie a pasta clonada

Renomeie a pasta:

```text
healthage → healthage2
```

> Isso será necessário para copiar os arquivos para a nova aplicação React.

---

### 4. Crie um novo projeto React

```bash
npx create-react-app healthage
```

### 5. Entre na pasta do projeto

```bash
cd healthage
```

### 6. Instale as dependências do Frontend

```bash
npm install axios react-router-dom bootstrap react-bootstrap html2pdf.js react-chartjs-2 chart.js
```

### 7. Instale as dependências do calendário

```bash
npm install @fullcalendar/core @fullcalendar/react @fullcalendar/daygrid
```

### 8. Copie os arquivos do projeto

Copie todos os arquivos da pasta:

```text
healthage2
```

para a pasta:

```text
healthage
```

Após a cópia dos arquivos:

```text
Você pode excluir a pasta healthage2.
```

---

## 🖥️ Executando o Frontend

Na pasta raiz do projeto:

```bash
npm start
```

Se tudo estiver correto, o frontend estará disponível em:

```text
http://localhost:3000
```

---

## ⚙️ Configuração do Backend

Acesse a pasta backend:

```bash
cd ..
cd backend
```

### Instale as dependências

```bash
npm install express mysql2 cors
npm install --save-dev nodemon
```

### Inicie o servidor

```bash
npx nodemon src/backend/server.js
```

---

## ⚠️ Observações Importantes

### Banco de Dados

Verifique se o usuário e a senha configurados no banco de dados são os mesmos informados no arquivo:

```text
backend/config/database.js
```

Caso o MySQL tenha sido instalado com credenciais diferentes das utilizadas durante o desenvolvimento, será necessário atualizar o arquivo de configuração.

Exemplo:

```javascript
const db = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: 'sua_senha',
    database: 'healthage'
});
```

---

## 🧠 Funcionalidades

- Registro de ponto de entrada e saída
- Controle de horas trabalhadas
- Cadastro e gerenciamento de projetos
- Cadastro e gerenciamento de tarefas
- Calendário de atividades
- Relatórios de produtividade
- Gráficos de desempenho
- Exportação de relatórios em PDF
- Dashboard com indicadores
- Integração com banco de dados MySQL

---

## 👨‍💻 Autor

Desenvolvido por **Daniel Lima**

GitHub:

https://github.com/DanelLima