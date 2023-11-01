/*
 Navicat Premium Data Transfer

 Source Server         : ConexionDB
 Source Server Type    : MySQL
 Source Server Version : 80030 (8.0.30)
 Source Host           : localhost:3306
 Source Schema         : bd_libros

 Target Server Type    : MySQL
 Target Server Version : 80030 (8.0.30)
 File Encoding         : 65001

 Date: 31/10/2023 23:03:07
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for categoria
-- ----------------------------
DROP TABLE IF EXISTS `categoria`;
CREATE TABLE `categoria`  (
  `ID` int NOT NULL AUTO_INCREMENT,
  `CATEGORIA` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of categoria
-- ----------------------------
INSERT INTO `categoria` VALUES (1, 'HISTORIA');
INSERT INTO `categoria` VALUES (2, 'CUENTO');
INSERT INTO `categoria` VALUES (3, 'DRAMA');
INSERT INTO `categoria` VALUES (4, 'ARTICULOS CIENTIFICOS');
INSERT INTO `categoria` VALUES (5, 'BIOGRAFIAS');
INSERT INTO `categoria` VALUES (6, 'GEOGRAFICO');
INSERT INTO `categoria` VALUES (7, 'ENSAYO');

-- ----------------------------
-- Table structure for libros
-- ----------------------------
DROP TABLE IF EXISTS `libros`;
CREATE TABLE `libros`  (
  `ID` int NOT NULL AUTO_INCREMENT,
  `TITULO` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `AUTOR` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `DISPONIBLE` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `CATEGORIA` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of libros
-- ----------------------------
INSERT INTO `libros` VALUES (1, 'El muro de Berlin', 'Mohamedd', 'SI', 'Historia');
INSERT INTO `libros` VALUES (2, 'CONOCIENOD LA GEOGRAFIA', 'LA HOGUERA', 'NO', 'GEOGRAFICO');
INSERT INTO `libros` VALUES (3, 'LA CAPERUCITA ROJA', 'ANDALUZ', 'SI', 'CUENTO');
INSERT INTO `libros` VALUES (4, 'EL CHATBOT EN NUESTROS DIAS', 'REDALYC', 'SI', 'ARTICULOS');
INSERT INTO `libros` VALUES (5, 'CONOCIENOD LA GEOGRAFIA', 'LA HOGUERA', 'NO', 'GEOGRAFICO');
INSERT INTO `libros` VALUES (6, 'LA CAPERUCITA ROJA', 'ANDALUZ', 'SI', 'CUENTO');
INSERT INTO `libros` VALUES (7, 'CONOCIENDO A SIMON BOLIVAR', 'JOSE', 'SI', 'HISTORIA');

SET FOREIGN_KEY_CHECKS = 1;
