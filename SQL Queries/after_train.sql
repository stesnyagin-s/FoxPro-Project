SELECT DISTINCT b.id_train;
	FROM schedule as a, schedule as b;
	WHERE (a.id_st = b.id_st);
	AND (a.id_train = 2);
	AND (a.end_time < b.end_time);