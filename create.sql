DROP DATABASE IF EXISTS nyc_311_db;
CREATE DATABASE nyc_311_db; 
USE nyc_311_db;

CREATE TABLE nyc_311_service_requests (
    unique_key INT PRIMARY KEY,
    created_date VARCHAR(30),
    agency VARCHAR(30),
    agency_name VARCHAR(100),
    complaint_type TEXT,
    descriptor VARCHAR(500),
    location_type VARCHAR(50),
    incident_zip VARCHAR(255),
    incident_address VARCHAR(255),
    street_name VARCHAR(200),
    cross_street_1 VARCHAR(200),
    cross_street_2 VARCHAR(200),
    intersection_street_1 VARCHAR(200),
    intersection_street_2 VARCHAR(200),
    address_type VARCHAR(30),
    city VARCHAR(100),
    landmark VARCHAR(200),
    status_ VARCHAR(200),
    community_board VARCHAR(200),
    bbl VARCHAR(200),
    borough VARCHAR(50),
    x_coordinate_state_plane VARCHAR(20),
    y_coordinate_state_plane VARCHAR(20),
    open_data_channel_type VARCHAR(20),            
    park_facility_name VARCHAR(200),                
    park_borough VARCHAR(20),                      
    latitude VARCHAR(100),                         
    longitude VARCHAR(100),                         
    location_  VARCHAR(200),                         
    location_address VARCHAR(200),                  
    location_city VARCHAR(200),                     
    location_state VARCHAR(200),                    
    location_zip VARCHAR(200),                      
    computed_region_efsh_h5xi VARCHAR(200),       
    computed_region_f5dn_yrer VARCHAR(200),       
    computed_region_yeji_bk3q VARCHAR(200),       
    computed_region_92fq_4b7q VARCHAR(200),       
    computed_region_sbqj_enih VARCHAR(200),       
    computed_region_7mpf_4k6g VARCHAR(200),       
    taxi_pick_up_location VARCHAR(200),             
    resolution_action_updated_date  VARCHAR(50),    
    closed_date VARCHAR(50),                      
    resolution_description TEXT,            
    vehicle_type VARCHAR(20),                      
    facility_type VARCHAR(200),                     
    due_date VARCHAR(50),                          
    bridge_highway_name VARCHAR(200),               
    bridge_highway_direction VARCHAR(200),          
    road_ramp VARCHAR(200),                         
    bridge_highway_segment VARCHAR(200)            
);

LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\nyc_311_service_requests.csv'
INTO TABLE nyc_311_service_requests
FIELDS TERMINATED BY ','
ENCLOSED BY '"' 
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
