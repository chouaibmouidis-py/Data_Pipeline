--duckdb dw_marts.duckdb -c ".read build_dw_marts.sql"

--Step 1 : DW - Create star schema tables

.read create_tables_dw.sql

-- Step 2: Load data from CSV files into tables

.read load_schema_dw.sql

-- Step 3: Mart - Create flat mart table

.read create_flat_mart.sql

-- Step 4: Mart - Create skills demand mart (dimensional mart)

.read create_skills_mart.sql

-- Step 5: Mart - Create priority roles mart

.read create_priority_mart.sql

-- Step 6: Mart - Update priority roles mart

.read update_priority_mart.sql