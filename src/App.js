import React, { useState, useEffect } from 'react';
import web3 from './utils/web3';

const abi = /* ABI of your smart contract */;
const address = /* Address of your deployed smart contract */;
const contract = new web3.eth.Contract(abi, address);

function App() {
    const [patientData, setPatientData] = useState(null);

    useEffect(() => {
        contract.methods.getPatient(1).call()
            .then(result => setPatientData(result));
    }, []);

    if (!patientData) {
        return <div>Loading...</div>;
    }

    return (
        <div>
            <h1>Patient Data</h1>
            <p><strong>Name:</strong> {patientData[0]}</p>
            <p><strong>Age:</strong> {patientData[1]}</p>
            <p><strong>Condition:</strong> {patientData[2]}</p>
            <p><strong>Treatment:</strong> {patientData[3]}</p>
        </div>
    );
}

export default App;
