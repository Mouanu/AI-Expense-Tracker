# 💰 AI Expense Tracker

An AI-powered full-stack expense management application that helps users track income and expenses, manage budgets, and receive personalized financial insights using Google Gemini AI.

## 🚀 Features

- 🔐 Secure user authentication with JWT & Bcrypt
- 💵 Track income and expense transactions
- 📂 Custom expense categories
- 📊 Interactive dashboard with financial analytics
- 🎯 Monthly budget management
- 🤖 AI-generated spending insights using Google Gemini AI
- 📈 Monthly income vs expense trends
- 💾 PostgreSQL database with normalized relational schema
- 🌐 Responsive and modern user interface

---

## 🛠️ Tech Stack

### Frontend
- React.js
- Vite
- Tailwind CSS
- React Router
- Axios

### Backend
- Node.js
- Express.js
- PostgreSQL (Neon)
- JWT Authentication
- Bcrypt
- Google Gemini AI API

### Database
- PostgreSQL
- SQL Migrations
- Relational Database Design

---

## 📁 Project Structure

```text
AIExpenseTracker/
│
├── backend/
│   ├── controllers/
│   ├── middleware/
│   ├── models/
│   ├── routes/
│   ├── scripts/
│   ├── sql/
│   ├── utils/
│   └── server.js
│
├── frontend/
│   └── AIExpenseTracker/
│       ├── src/
│       ├── public/
│       └── package.json
│
└── README.md
```

---

## ⚙️ Installation

### 1. Clone the repository

```bash
git clone https://github.com/Mouanu/AI-Expense-Tracker.git
cd AI-Expense-Tracker
```

---

### 2. Backend Setup

```bash
cd backend
npm install
```

Create a `.env` file inside the backend directory.

Example:

```env
DATABASE_URL=your_postgresql_database_url
JWT_SECRET=your_secret_key
GEMINI_API_KEY=your_google_gemini_api_key
```

Run database migrations:

```bash
npm run migrate
```

(Optional)

```bash
npm run seed
```

Start the backend:

```bash
npm run dev
```

---

### 3. Frontend Setup

```bash
cd ../frontend/AIExpenseTracker
npm install
```

Create a `.env` file:

```env
VITE_API_URL=http://localhost:5000
```

Start the frontend:

```bash
npm run dev
```

---

## 🤖 AI Features

The application uses **Google Gemini AI** to provide:

- Personalized monthly financial summaries
- Spending pattern analysis
- Budget recommendations
- Savings suggestions
- Expense trend analysis

---

## 📊 Database Schema

Main tables:

- Users
- Categories
- Transactions
- Budgets
- AI Insights

The database follows a normalized relational design with:

- Foreign Keys
- Constraints
- Indexes
- Cascading Deletes
- SQL Migrations

---

## 🔒 Authentication

- JWT Authentication
- Password hashing using Bcrypt
- Protected API routes
- Secure authorization middleware

---

## 📸 Screenshots

Add screenshots of your application here.

Example:

```
screenshots/
    dashboard.png
    transactions.png
    budget.png
```

---

## 📈 Future Improvements

- Email notifications
- Multi-currency support
- CSV/Excel export
- Dark mode
- Recurring transactions
- Mobile application
- OAuth (Google Login)

---

## 👨‍💻 Author

**Anushila Biswas**

GitHub: https://github.com/Mouanu

LinkedIn: *(Add your LinkedIn profile here)*

---

## ⭐ If you like this project

Give it a ⭐ on GitHub!