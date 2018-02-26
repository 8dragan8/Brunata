use saniko;
-- select
--     id,
--     Left(_name, 9),
--     Datum_prijema,
--     Kupac,
--     Naziv_posla,
--     Kolicina,
--     Jed_mere
-- from `table 1`
-- where Masina = "Adast";

select
    Faktura,
    COUNT(*) as STAVKI,
    id,
    DATE_FORMAT(DATE(CONCAT_WS("-", Right(Datum_prijema,4), Replace(Mid(Datum_prijema, Locate(".", Datum_prijema)+1,2), ".", ""), Left(Datum_prijema, Locate(".", Datum_prijema)-1))), "%Y-%m-%d") AS Datum,
    Kupac,
    Left(_name, 9) as Sifra,
    Trim(Left(Naziv_posla, 35)) as `Naziv posla`,
    Kolicina,
    Jed_mere,
    SUM(FORMAT(Cena, 2)) as Iznos,
    din_eur as Valuta
from `table 1`
Group by Faktura, id
-- where Kupac LIKE "%knjaz%"
WITH ROLLUP
;



select
    Faktura,
    id,
    DATE_FORMAT(DATE(CONCAT_WS("-", Right(Datum_prijema,4), Replace(Mid(Datum_prijema, Locate(".", Datum_prijema)+1,2), ".", ""), Left(Datum_prijema, Locate(".", Datum_prijema)-1))), "%Y-%m-%d") AS Datum,
    Kupac,
    Left(_name, 9) as Sifra,
    Trim(Left(Naziv_posla, 35)) as `Naziv posla`,
    Kolicina,
    Jed_mere,
    SUM(FORMAT(Cena, 2)) as Iznos,
    din_eur as Valuta
from `table 1`
where Faktura = "079-16"
Group by Faktura, id
-- where Kupac LIKE "%knjaz%"
WITH ROLLUP
;