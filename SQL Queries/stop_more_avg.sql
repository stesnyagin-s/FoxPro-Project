SELECT station.id_st, station.name, AVG(schedule.stop) as average;
	FROM station, schedule;
	WHERE station.id_st = schedule.id_st;
	GROUP BY station.id_st, station.name;
	INTO CURSOR tmp
SELECT tmp.id_st, tmp.name, average;
	FROM tmp;
	WHERE average > (SELECT AVG(schedule.stop) FROM schedule)