/*どのカラムのデータを取得するか*/
SELECT name

/*SELECTで選んだカラムが、どのテーブルのカラムかをFROMで指定*/
FROM purchases;
/* セミコロン;で、ここまでがクエリ */

/*複数のカラムからデータを取得*/
SELECT name, price, character_name, category, purchased_at;
/*全てのカラム*/
SELECT *

/*特定のデータ（どこのレコード：横の行）を取得*/
SELECT *
FROM purchases
WHERE category = "食費";

/*商品の価格が1000円*/
SELECT *
FROM purchases
WHERE price = 1000;

SELECT *
FROM purchases
WHERE purchased_at = "2024-01-01";

SELECT *
FROM purchases
WHERE price >= 1000;

SELECT *
FROM purchases
WHERE purchased_at <= "2024-01-01";

/*LIKE演算子：ある文字を含むデータ*/
SELECT *
FROM purchases
WHERE name LIKE 文字列;

/*ワイルドカード*/
SELECT *
FROM purchases
WHERE name LIKE "%プリン%";

/*前方一致*/
SELECT *
FROM purchases
WHERE name LIKE "プリン%";

/*後方一致*/
SELECT *
FROM purchases
WHERE  name LIKE "%プリン"

/*NOT演算子*/
SELECT *
FROM purchases
WHERE NOT price > 1000;

SELECT *
FROM purchases
WHERE NOT name LIKE "%プリン%";

/*NULL:何も保存されていない. = NULLという使い方は不可*/
SELECT *
FROM purchases
WHERE price IS NULL;

SELECT *
FROM purchases
WHERE price IS NOT NULL;

/*AND演算子*/
SELECT * FROM purchases
WHERE character_name = "ひつじ仙人"
AND category = "食費";

/*OR演算子*/
SELECT * FROM purchases
WHERE character_name = "ひつじ仙人"
OR character_name = "にんじゃわんこ";

/*ORDER BY ：並べ替え*/
ORDER BY 並べ替えたいカラム名 並べ方;
/*ASC（昇順）：　1, 2, 3...*/
/*DESC（降順）： 100, 99, 98...*/
/*ORDER BYはWHEREと併用可能*/
SELECT *
FROM purchases
WHERE 条件
ORDER BY price DESC;

/*LIMIT：最大で何件取得するか*/
LIMIT データの件数;

SELECT *
FROM purchases
WHERE 条件
LIMIT 5;

/*ORDER BYとLIMITの併用*/
/*LIMITは末尾に！*/
SELECT *
FROM purchases
ORDER BY price DESC
LIMIT 5;

/*INSERT*/
INSERT INTO students (id, name, course)
VALUES(4, "Kate", "Java");

/*AUTO INCREMENT：データが作成されるときに自動で値が割り当てられる*/
/*AUTO INCREMENTのカラムは省略できる*/
INSERT INTO students ( name, course)
VALUES("Kate", "Java");

/*UPDATE：更新　複数あるときはカンマ（,）で区切る*/
UPDATE students
/*指定カラムを新しい値にする*/
SET name = "Jordan", course = "HTML"
/*更新するレコードをWHEREで指定*/
WHERE id = 6;
/*WHEREで指定しないとカラムの全データが更新。元には戻せない*/

/*DELETE：レコードを削除。元には戻せない*/
DELETE FROM students
/*削除するレコードをWHEREで指定*/
WHERE id = 7;