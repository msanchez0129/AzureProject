SELECT 
    COALESCE(Mobile_phone_use_for_education, 'Unknown') AS Mobile_phone_use_for_education, 
    COALESCE(Usage_distraction, 'No Distraction Reported') AS Usage_distraction, 
    COUNT(*) AS Frequency
FROM StudentsHealth.dbo.Impact_of_Mobile_Phone_on_Students_Health
GROUP BY COALESCE(Mobile_phone_use_for_education, 'Unknown'),
         COALESCE(Usage_distraction, 'No Distraction Reported');
