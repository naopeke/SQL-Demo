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



