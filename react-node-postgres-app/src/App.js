import React, { useState, useEffect } from 'react';
import axios from 'axios';
import 'C:/Users/dell/Desktop/my-react-node-app/react-node-postgres-app/src/App.css';

const App = () => {
  const [customers, setCustomers] = useState([]);
  const [searchTerm, setSearchTerm] = useState('');
  const [sortBy, setSortBy] = useState('created_at');
  const [sortOrder, setSortOrder] = useState('asc');
  const [currentPage, setCurrentPage] = useState(1);

  useEffect(() => {
    axios.get(`http://localhost:5001/api/customers?page=${currentPage}&sortBy=${sortBy}&sortOrder=${sortOrder}&searchTerm=${searchTerm}`)
      .then(response => setCustomers(response.data))
      .catch(error => console.error('Error fetching data', error));
  }, [currentPage, sortBy, sortOrder, searchTerm]);

  const handlePageChange = (newPage) => {
    setCurrentPage(newPage);
  };

  const handleSortChange = (newSortBy) => {
    // If clicking the same sort option, toggle the order
    setSortOrder((prevOrder) => (prevOrder === 'asc' ? 'desc' : 'asc'));
    setSortBy(newSortBy);
    setCurrentPage(1); // Reset current page when changing the sorting
  };

  return (
    <div>
      <h1>Sai Sreenath's App</h1>
      <input
        type="text"
        placeholder="Search by name or location"
        value={searchTerm}
        onChange={(e) => setSearchTerm(e.target.value)}
      />
      <select onChange={(e) => handleSortChange(e.target.value)}>
        <option value="created_at">Sort by Date (Asc)</option>
        <option value="created_at">Sort by Date (Desc)</option>
      </select>
      <table>
        {/* Table headers */}
        <thead>
          <tr>
            <th>Sno</th>
            <th>Customer Name</th>
            <th>Age</th>
            <th>Phone</th>
            <th>Location</th>
            <th>Date</th>
            <th>Time</th>
          </tr>
        </thead>
        {/* Table body */}
        <tbody>
          {customers.map(customer => (
            <tr key={customer.sno}>
              <td>{customer.sno}</td>
              <td>{customer.customer_name}</td>
              <td>{customer.age}</td>
              <td>{customer.phone}</td>
              <td>{customer.location}</td>
              <td>{new Date(customer.created_at).toLocaleDateString()}</td>
              <td>{new Date(customer.created_at).toLocaleTimeString()}</td>
            </tr>
          ))}
        </tbody>
      </table>
      {/* Pagination */}
      <div>
        <button onClick={() => handlePageChange(currentPage - 1)} disabled={currentPage === 1}>Previous</button>
        <span>{currentPage}</span>
        <button onClick={() => handlePageChange(currentPage + 1)}>Next</button>
      </div>
    </div>
  );
};

export default App;