import dotenv from "dotenv";
import pkg from "pg";

dotenv.config();

const { Pool, types } = pkg;
// return DATE columns (OTD 1082) as plain "YYYY-MM-DD" strings instead of JS dates,
// so JSON serialization doesn't UTC-shift the date for clients in non-UTC zone.

types.setTypeParser(1082, (val)=>val);

const pool = new Pool({
    connectionString: process.env.DATABASE_URL,
    ssl: {
        rejectUnauthorized: false
    }
})


pool.on("connect",()=>{
    console.log("Connected to Neon Postgress");
})

pool.on("error",(err)=>{

    console.error("Unexpected Postgres error",err);
    process.exit(-1);
})


export default pool;