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

INSERT INTO ocitani_impulsi(
    idstan,
    idracun,
    br_impulsa,
    stan_kWh_po_m2,
    stan_kWh_po_imp,
    stan_kWh
)
SELECT
      -- `Kod stana`,
      (SELECT idstan_novi FROM stan where idstan_stari=`Kod stana`),
      201603,
      REPLACE(REPLACE(REPLACE(`Impulsi`, " imp", ""), ".", ""), ",", "."),
      REPLACE(REPLACE(REPLACE(`Var potrosnja`, " kWh", ""), ".", ""), ",", "."),
      REPLACE(REPLACE(REPLACE(`Zajedn potrosnja`, " kWh", ""), ".", ""), ",", "."),
      REPLACE(REPLACE(REPLACE(`Ukupna potrosnja`, " kWh", ""), ".", ""), ",", ".")
FROM 2016_03
-- ORDER BY Kolona_4 DESC
;

-- SELECT idstan_novi, idstan_stari, `Kod stana`
-- FROM stan inner join 2016_03 on
-- stan.idstan_stari=2016_03.`Kod stana`
-- -- where stan.idstan_stari=2016_03.`Kod stana`
-- ;