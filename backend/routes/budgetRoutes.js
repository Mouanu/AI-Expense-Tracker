import express from 'express';
import {
    getBudgets,
    createBudget,
    deleteBudget,
    updateBudget,
    analyzeBudgets
} from '../controllers/budgetController.js';


import {protect} from '../middleware/authmiddleware.js';

const router = express.Router();

router.use(protect);

router.get("/",getBudgets);
router.post("/",createBudget);
router.put("/:id",updateBudget);
router.delete("/:id",deleteBudget);
router.post("/analyze",analyzeBudgets);



export default router;