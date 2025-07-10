-- List All Recipients and Their Blood Groups
SELECT 
    reci_name, 
    reci_Brgp 
FROM 
    Recipient;

-- Find all recipients who need blood group 'A+' and display their names and IDs.
SELECT 
    reci_ID, 
    reci_name 
FROM 
    Recipient 
WHERE 
    reci_Brgp = 'A+';

-- Count the Number of Blood Donors in Each City
SELECT 
    City_ID, 
    COUNT(bd_ID) AS donor_count 
FROM 
    Blood_Donor 
GROUP BY 
    City_ID;

-- Retrieve a list of all hospitals along with the names of their managers.
SELECT 
    Hospital_Info_1.hosp_name, 
    BB_Manager.mName 
FROM 
    Hospital_Info_1
INNER JOIN 
    BB_Manager ON Hospital_Info_1.M_id = BB_Manager.M_id;

-- Retrieve all blood specimens along with their status and blood group.
SELECT 
    specimen_number, 
    b_group, 
    status 
FROM 
    BloodSpecimen;

-- Find all recipients handled by the BB_Manager with ID 101 and display their names and blood groups.
SELECT 
    Recipient.reci_name, 
    Recipient.reci_Brgp 
FROM 
    Recipient 
WHERE 
    M_id = 101;

-- Retrieve a list of blood donors who have donated blood in the last year.
SELECT 
    bd_name, 
    bd_reg_date 
FROM 
    Blood_Donor 
WHERE 
    bd_reg_date >= DATE_SUB(CURDATE(), INTERVAL 1 YEAR);

-- Retrieve a list of all BB Managers along with their contact numbers.
SELECT 
    M_id, 
    mName, 
    m_phNo 
FROM 
    BB_Manager;

-- Find all recipients who do not have a specified blood group requirement.
SELECT 
    reci_ID, 
    reci_name 
FROM 
    Recipient 
WHERE 
    reci_Brgp IS NULL;
