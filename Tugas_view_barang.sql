CREATE TABLE `table_barang` (
  `id_barang` VARCHAR(100) NOT NULL,
  `nama_barang` VARCHAR(100) DEFAULT NULL,
  `harga_barang` FLOAT DEFAULT NULL,
  `id_jenis` VARCHAR(100) DEFAULT NULL,
  `stok_barang` INT(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4




CREATE TABLE `table_jenis` (
  `id_jenis` VARCHAR(100) NOT NULL,
  `nama_jenis` VARCHAR(100) DEFAULT NULL,
  `keterangan` TEXT DEFAULT NULL,
  PRIMARY KEY (`id_jenis`)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4




SELECT
    `table_barang`.`id_barang`
    , `table_barang`.`nama_barang`
    , `table_barang`.`harga_barang`
    , `table_barang`.`id_jenis`
    , `table_jenis`.`nama_jenis`
FROM
    `db_day26`.`table_jenis`
    INNER JOIN `db_day26`.`table_barang` 
        ON (`table_jenis`.`id_jenis` = `table_barang`.`id_jenis`);
      
        
 
CREATE VIEW lap_barang AS (SELECT
    `table_barang`.`id_barang`
    , `table_barang`.`nama_barang`
    , `table_barang`.`harga_barang`
    , `table_barang`.`id_jenis`
    , `table_jenis`.`nama_jenis`
FROM
    `db_day26`.`table_jenis`
    INNER JOIN `db_day26`.`table_barang` 
        ON (`table_jenis`.`id_jenis` = `table_barang`.`id_jenis`))
        
        
        
SELECT * FROM lap_barang