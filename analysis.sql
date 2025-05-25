-- ================================================================
-- Top 10 Countries by Total Medals
-- ================================================================
SELECT 
  TeamCountry,
  Total
FROM TokyoOlympicDB.dbo.medals
ORDER BY Total DESC
OFFSET 0 ROWS FETCH NEXT 10 ROWS ONLY;

-- ================================================================
-- Medal Breakdown per Country
-- ================================================================
SELECT 
  TeamCountry,
  Gold,
  Silver,
  Bronze
FROM TokyoOlympicDB.dbo.medals
ORDER BY Gold DESC, Silver DESC, Bronze DESC;

-- ================================================================
-- Number of Events per Discipline
-- ================================================================
SELECT 
  Discipline, 
  COUNT(DISTINCT Event) AS NumEvents
FROM TokyoOlympicDB.dbo.teams
GROUP BY Discipline
ORDER BY NumEvents DESC;

-- ================================================================
-- Gender Participation by Discipline
-- ================================================================
SELECT 
  Discipline,
  Male,
  Female,
  Total
FROM TokyoOlympicDB.dbo.entriesgender
ORDER BY Total DESC;

-- ================================================================
-- Top 5 Disciplines by Athlete Count
-- ================================================================
SELECT 
  Discipline, 
  COUNT(*) AS AthleteCount
FROM TokyoOlympicDB.dbo.athletes
GROUP BY Discipline
ORDER BY AthleteCount DESC
OFFSET 0 ROWS FETCH NEXT 5 ROWS ONLY;

-- ================================================================
-- Coaches per Discipline
-- ================================================================
SELECT 
  Discipline, 
  COUNT(*) AS CoachCount
FROM TokyoOlympicDB.dbo.coaches
GROUP BY Discipline
ORDER BY CoachCount DESC;
