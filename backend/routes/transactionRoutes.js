import express from 'express';
import {
    getTransactionById,
    getTransactions,
    createTransactions,
    updateTransaction,
    deleteTransaction,
    analyzeTransactions
} from '../controllers/transactionController.js';
import {protect} from '../middleware/authmiddleware.js';


const router= express.Router();

router.use(protect);

router.get('/',getTransactions);
router.post('/',createTransactions);
router.get('/:id',getTransactionById);
router.put('/:id',updateTransaction);
router.delete('/:id',deleteTransaction);
router.post('/analyze',analyzeTransactions);

export default router;
