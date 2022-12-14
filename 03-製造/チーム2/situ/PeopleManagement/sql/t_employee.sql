/*
 Navicat Premium Data Transfer

 Source Server         : MySQL
 Source Server Type    : MySQL
 Source Server Version : 80030 (8.0.30)
 Source Host           : localhost:3306
 Source Schema         : db1

 Target Server Type    : MySQL
 Target Server Version : 80030 (8.0.30)
 File Encoding         : 65001

 Date: 27/09/2022 00:56:39
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_employee
-- ----------------------------
DROP TABLE IF EXISTS `t_employee`;
CREATE TABLE IF NOT EXISTS `t_employee` (
`employee_id` INT(5) NOT NULL AUTO_INCREMENT=10000 COMMENT '社員ID',
`employee_name` VARCHAR(100) NOT NULL COMMENT '社員名称',
`password` VARCHAR(8) NOT NULL COMMENT 'パスワード',
`dept_id` VARCHAR(10) COMMENT '所属部門ID',
`del_flg` TINYINT(1) DEFAULT '0' COMMENT '削除フラグ',
`create_date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '作成日時',
`create_user_id` INT(5) COMMENT '作成者id',
`update_date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新日時',
`update_user_id` INT(5) COMMENT '更新者id',
`employee_email` VARCHAR(50) DEFAULT NULL COMMENT '社員メールアドレス',
`version` SMALLINT DEFAULT '1' COMMENT '楽観鎖',
PRIMARY KEY (`employee_id`) USING BTREE
) ENGINE=InnoDB DEFAULT AUTO_INCREMENT=1 CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT = Dynamic;
SET FOREIGN_KEY_CHECKS = 1;

-- ----------------------------
-- Records of t_employee
-- ----------------------------
BEGIN;
INSERT INTO `t_employee` (`employee_id`, `employee_name`, `password`, `dept_id`, `del_flg`, `create_date`, `create_user_id`, `update_date`, `update_user_id`, `employee_email`) VALUES (10001, '田中三郎', '12341234', '1', 0, '2022-09-09 00:00:00', 10002, '2022-09-09 00:00:00', 10002, '123@gmail.com');
INSERT INTO `t_employee` (`employee_id`, `employee_name`, `password`, `dept_id`, `del_flg`, `create_date`, `create_user_id`, `update_date`, `update_user_id`, `employee_email`) VALUES (10002, '高橋飛鳥', '12312312', '2', 0, '2022-09-08 00:00:00', 10001, '2022-09-09 00:00:00', 10001, NULL);
INSERT INTO `t_employee` (`employee_id`, `employee_name`, `password`, `dept_id`, `del_flg`, `create_date`, `create_user_id`, `update_date`, `update_user_id`, `employee_email`) VALUES (10003, '佐藤麻衣', '12345678', '1', 0, '2022-09-09 00:00:00', 10001, '2022-09-09 00:00:00', 10001, NULL);
INSERT INTO `t_employee` (`employee_id`, `employee_name`, `password`, `dept_id`, `del_flg`, `create_date`, `create_user_id`, `update_date`, `update_user_id`, `employee_email`) VALUES (10004, '李小路', '12345678', '2', 0, '2022-09-07 00:00:00', 10003, '2022-09-09 00:00:00', 10003, 'xiaolu@gmail.com');
INSERT INTO `t_employee` (`employee_id`, `employee_name`, `password`, `dept_id`, `del_flg`, `create_date`, `create_user_id`, `update_date`, `update_user_id`, `employee_email`) VALUES (10005, '张三', '12345678', '1', 0, '2022-09-09 00:00:00', 10002, '2022-09-09 00:00:00', 10002, 'zhangsan@qq.com');
INSERT INTO `t_employee` (`employee_id`, `employee_name`, `password`, `dept_id`, `del_flg`, `create_date`, `create_user_id`, `update_date`, `update_user_id`, `employee_email`) VALUES (10006, '田中二郎', '12345678', '3', 0, '2022-09-21 15:41:11', 10002, '2022-09-09 00:00:00', 10001, 'abcdefg@gmail.com');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
