// server.js
const express = require('express');
const cors = require('cors');
const { Client } = require('pg');

const app = express();
const port = 5001;

app.use(cors());
app.use(express.json());

const client = new Client({
  user: 'postgres',
  host: 'localhost',
  database: 'sreenath',
  password: '9848012345',
  port: 5432,
});

client.connect();

app.get('/', (req, res) => {
  res.send('Welcome to the API'); // You can customize this response
});

// API endpoint to get paginated and sorted customer data
app.get('/api/customers', async (req, res) => {
  try {
    const { page = 1, sortBy = 'created_at', sortOrder = 'asc', searchTerm = '' } = req.query;
    const offset = (page - 1) * 20;

    const result = await client.query(
      `SELECT * FROM customers
      WHERE LOWER(customer_name) LIKE LOWER($1) OR LOWER(location) LIKE LOWER($1)
      ORDER BY ${sortBy} ${sortOrder}
      LIMIT 20 OFFSET $2`,
      [`%${searchTerm}%`, offset]
    );

    res.json(result.rows);
  } catch (error) {
    console.error('Error fetching customers', error);
    res.status(500).json({ error: 'Internal Server Error' });
  }
});

app.listen(port, () => {
  console.log(`Server is running on port ${port}`);
});