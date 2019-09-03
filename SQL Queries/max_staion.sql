SELECT Schedule.id_st, COUNT(Schedule.id_sch) AS totalcount;
	FROM schedule;
	GROUP BY Schedule.id_st;
	INTO CURSOR tmp  
SELECT tmp.id_st, totalcount, station.name as Station;
	FROM tmp;
	INNER JOIN station;
    ON tmp.id_st = station.id_st;
	WHERE totalcount= (SELECT MAX(totalcount) FROM tmp)