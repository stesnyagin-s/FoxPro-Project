SELECT DISTINCT Train.id_train, Train.passport;
 FROM  train;
LEFT OUTER JOIN schedule;
ON  Train.id_train = Schedule.id_train;
WHERE schedule.id_route <> (3) OR schedule.id_route IS NULL
