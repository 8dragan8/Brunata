USE brunata;


-- INSERT INTO racun(
--     idracun,
--     period,
--     ukupna_kvadratura,
--     ukupno_imp,
--     ukupno_kWh,
--     ukupn0_kWh_po_m2,
--     ukupn0_kWh_po_imp
-- )
-- VALUES(
--     201603,
--     DATE_FORMAT("2016-03-01", "%Y-%m-%d" ),
--     3880.6,
--     6944,
--     19255,
--     5776.5,
--     13478.5
-- );

-- INSERT INTO ocitani_impulsi(
--     idstan,
--     idracun,
--     br_impulsa,
--     stan_kWh_po_m2,
--     stan_kWh_po_imp,
--     stan_kWh
-- )
-- SELECT
--       -- `Kod stana`,
--       (SELECT idstan_novi FROM stan where idstan_stari=`Kod stana`),
--       201603,
--       REPLACE(REPLACE(REPLACE(`Impulsi`, " imp", ""), ".", ""), ",", "."),
--       REPLACE(REPLACE(REPLACE(`Var potrosnja`, " kWh", ""), ".", ""), ",", "."),
--       REPLACE(REPLACE(REPLACE(`Zajedn potrosnja`, " kWh", ""), ".", ""), ",", "."),
--       REPLACE(REPLACE(REPLACE(`Ukupna potrosnja`, " kWh", ""), ".", ""), ",", ".")
-- FROM 2016_03
-- -- ORDER BY Kolona_4 DESC
-- ;

-- SELECT idstan_novi, idstan_stari, `Kod stana`
-- FROM stan inner join 2016_03 on
-- stan.idstan_stari=2016_03.`Kod stana`
-- -- where stan.idstan_stari=2016_03.`Kod stana`
-- ;



-- DROP procedure IF EXISTS Brunata.popuniTabele;


-- CREATE PROCEDURE Brunata.popuniTabele(IN tab_name VARCHAR(64) )
-- BEGIN
-- 	SET @sql = CONCAT('INSERT INTO ocitani_impulsi(
--                             idstan,
--                             idracun,
--                             br_impulsa,
--                             stan_kWh_po_m2,
--                             stan_kWh_po_imp,
--                             stan_kWh
--                         )
--                         SELECT
--                             (SELECT idstan_novi FROM stan where idstan_stari=`Kod stana`),
--                             ', REPLACE(tab_name, "_", ""), ',
--                             REPLACE(REPLACE(REPLACE(`Impulsi`, " imp", ""), ".", ""), ",", "."),
--                             REPLACE(REPLACE(REPLACE(`Var potrosnja`, " kWh", ""), ".", ""), ",", "."),
--                             REPLACE(REPLACE(REPLACE(`Zajedn potrosnja`, " kWh", ""), ".", ""), ",", "."),
--                             REPLACE(REPLACE(REPLACE(`Ukupna potrosnja`, " kWh", ""), ".", ""), ",", ".")
--                         FROM ', tab_name
--                         );
-- 	PREPARE stmt FROM @sql;
-- 	EXECUTE stmt;
-- 	DEALLOCATE PREPARE stmt;
-- END;



-- DROP procedure IF EXISTS Brunata.popuniTabeleNOVO;


-- CREATE PROCEDURE Brunata.popuniTabeleNOVO(IN tab_name VARCHAR(64) )
-- BEGIN
-- 	SET @sql = CONCAT('INSERT INTO ocitani_impulsi(
--                             idstan,
--                             idracun,
--                             br_impulsa,
--                             stan_kWh_po_m2,
--                             stan_kWh_po_imp,
--                             stan_kWh
--                         )
--                         SELECT
--                             id,
--                             ', REPLACE(tab_name, "_", ""), ',
--                             REPLACE(REPLACE(REPLACE(`Impulsi`, " imp", ""), ".", ""), ",", "."),
--                             REPLACE(REPLACE(REPLACE(`kWh_m2`, " kWh", ""), ".", ""), ",", "."),
--                             REPLACE(REPLACE(REPLACE(`kWh_Var`, " kWh", ""), ".", ""), ",", "."),
--                             REPLACE(REPLACE(REPLACE(`kWhSum`, " kWh", ""), ".", ""), ",", ".")
--                         FROM ', tab_name
--                         );
-- 	PREPARE stmt FROM @sql;
-- 	EXECUTE stmt;
-- 	DEALLOCATE PREPARE stmt;
-- END;

-- Show PROCEDURE status;


-- CALL Brunata.popuniTabele('2016_01');
-- CALL Brunata.popuniTabele('2016_02');
-- CALL Brunata.popuniTabele('2016_03');
-- CALL Brunata.popuniTabele('2016_04');
-- CALL Brunata.popuniTabele('2016_10');
-- CALL Brunata.popuniTabele('2016_11');
-- CALL Brunata.popuniTabele('2016_12');
-- CALL Brunata.popuniTabele('2017_01');
-- CALL Brunata.popuniTabele('2017_02');
-- CALL Brunata.popuniTabele('2017_03');
-- CALL Brunata.popuniTabele('2017_04');
-- CALL Brunata.popuniTabeleNOVO('2017_10');
-- CALL Brunata.popuniTabeleNOVO('2017_11');
-- CALL Brunata.popuniTabeleNOVO('2017_12');



-- SELECT
--     date_format(period, "%Y-%M") as Racun,
--     ukupn0_kWh_po_m2 / ukupno_kWh as `Zajednicki deo`
-- from ocitani_impulsi
-- join racun on ocitani_impulsi.idracun=racun.idracun
-- group by period
-- order by PERIOD;

-- najveca ukupna potrosnja kWh

SELECT
    CONCAT_WS(" - ", vlasnik, ulaz, broj_stana) AS Stan,
    idracun as RACUN,
    MAX(stan_kWh) AS `potrosnja UKUPNA`
FROM ocitani_impulsi Join stan on stan.idstan_novi=ocitani_impulsi.idstan
-- izbacivanje januara 2016
where idracun <> "201601"
group by stan.idstan_novi
order by `potrosnja UKUPNA` DESC
limit 20;

-- najveca VAR potrosnja kWh

SELECT
    CONCAT_WS(" - ", vlasnik, ulaz, broj_stana) AS Stan,
    idracun as RACUN,
    MAX(stan_kWh_po_imp) AS `potrosnja VAR`
FROM ocitani_impulsi Join stan on stan.idstan_novi=ocitani_impulsi.idstan
-- izbacivanje januara 2016
where idracun <> "201601"
group by stan.idstan_novi
order by `potrosnja VAR` DESC
limit 20;


-- najveca ZAJED potrosnja kWh

SELECT
    CONCAT_WS(" - ", vlasnik, ulaz, broj_stana) AS Stan,
    idracun as RACUN,
    MAX(stan_kWh_po_m2) AS `potrosnja ZAJED`
FROM ocitani_impulsi Join stan on stan.idstan_novi=ocitani_impulsi.idstan
-- izbacivanje januara 2016
where idracun <> "201601"
group by stan.idstan_novi
order by `potrosnja ZAJED` DESC
limit 20;