
1. Feladat

	CREATE DATABASE konyvtarak
	DEFAULT CHARACTER SET utf8
	COLLATE utf8_hungarian_ci
	
------------------------------------------------------------------------------------------

2. Feladat
	
	
------------------------------------------------------------------------------------------	
	
3. Feladat

	UPDATE `megyek` SET `megyek`.`megyeNev`="Budapest" WHERE
	`megyek`.`megyeNev`="BP"

------------------------------------------------------------------------------------------

4. Feladat

	SELECT `konyvtarNev`,`irsz` FROM konyvtarak WHERE konyvtarNev LIKE
	"%Szakkönyvtár%

------------------------------------------------------------------------------------------

5. Feladat

	SELECT `konyvtarNev`,`irsz`,`cim` FROM `konyvtarak` WHERE `irsz` LIKE "1%"
	GROUP BY `irsz`

------------------------------------------------------------------------------------------

6. Feladat

	SELECT telepNev, COUNT(konyvtarak.id) AS "konyvtarDarab" FROM konyvtarak
	INNER JOIN telepulesek ON konyvtarak.irsz=telepulesek.irsz GROUP BY
	telepNev HAVING konyvtarDarab >=7

------------------------------------------------------------------------------------------

7. Feladat

	SELECT megyeNev, COUNT(id) AS telepulesDarab FROM telepulesek INNER JOIN
	megyek ON telepulesek.megyeId=megyek.id WHERE irsz NOT LIKE "1%" GROUP
	BY megyeNev ORDER BY telepulesDarab DESC

-------------------------------------------------------------------------------------------






