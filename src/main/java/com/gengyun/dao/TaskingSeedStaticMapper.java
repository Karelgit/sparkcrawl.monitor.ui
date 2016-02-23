package com.gengyun.dao;

import java.util.List;

import com.gengyun.model.TaskingSeedStatic;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;



/**
 * 数据库表t_tasking_seed_static的mapper接口
 * @author luohongjun
 * @date 2016-02-19 15:15:22 中国标准时间
 */
public interface TaskingSeedStaticMapper {

	/**
	 * 插入一条新数据
	 * @param model 添加的数据
	 * @return 改变的行数
	 */
	@Insert("INSERT INTO t_tasking_seed_static ( id , taskid , starttime , url , seedsynccount , writeinhbasecount , time , pass ) VALUES ( #{id} , #{taskid} , #{starttime} , #{url} , #{seedsynccount} , #{writeinhbasecount} , #{time} , #{pass} )")
	int insert(TaskingSeedStatic model);
	/**
	 * 根据ID删除
	 * @param id 数据的主键ID
	 * @return 改变的行数
	 */
	@Delete("DELETE FROM t_tasking_seed_static WHERE id=#{id}")
	int delete(@Param("id") Object id);
	/**
	 * 更新一条数据
	 * @param model 更新的数据
	 * @return 改变的行数
	 */
	@Update("UPDATE t_tasking_seed_static SET id=#{id} , taskid=#{taskid} , starttime=#{starttime} , url=#{url} , seedsynccount=#{seedsynccount} , writeinhbasecount=#{writeinhbasecount} , time=#{time} , pass=#{pass} WHERE id=#{id} ")
	int update(TaskingSeedStatic model);
	/**
	 * 统计全部出数据
	 * @return 统计数
	 */
	@Select("SELECT COUNT(*) FROM t_tasking_seed_static")
	int countAll();
	/**
	 * 根据ID获取
	 * @param id 主键ID
	 * @return null 或者 主键等于id的数据
	 */
	@Select("SELECT id , taskid , starttime , url , seedsynccount , writeinhbasecount , time , pass FROM t_tasking_seed_static WHERE id=#{id}")
	TaskingSeedStatic findById(@Param("id") Object id);
	/**
	 * 获取全部数据
	 * @return 全部数据列表
	 */
	@Select("SELECT id , taskid , starttime , url , seedsynccount , writeinhbasecount , time , pass FROM t_tasking_seed_static ${order}")
	List<TaskingSeedStatic> findAll(@Param("order") String order);
	/**
	 * 分页查询数据
	 * @param limit 最大返回
	 * @param start 起始返回
	 * @return 分页列表数据
	 */
	@Select("SELECT id , taskid , starttime , url , seedsynccount , writeinhbasecount , time , pass FROM t_tasking_seed_static ${order} LIMIT ${start},${limit}")
	List<TaskingSeedStatic> findByPage(@Param("order") String order, @Param("limit") int limit, @Param("start") int start);
	/**
	 * 选择性删除
	 * @param where SQL条件语句
	 * @return 改变的行数
	 */
	@Delete("DELETE FROM t_tasking_seed_static ${where}")
	int deleteWhere(@Param("where") String where);
	/**
	 * 根据属性值删除
	 * @param propertyName 数据库列名
	 * @param value 值
	 * @return 改变的行数
	 */
	@Delete("DELETE FROM t_tasking_seed_static WHERE ${propertyName}=#{value}")
	int deleteByPropertyName(@Param("propertyName") String propertyName, @Param("value") Object value);
	/**
	 * 选择性统计
	 * @param where SQL条件语句
	 * @return 统计数
	 */
	@Select("SELECT COUNT(*) FROM t_tasking_seed_static ${where}")
	int countWhere(@Param("where") String where);
	/**
	 * 根据属性统计
	 * @param propertyName 数据库列名
	 * @param value 值
	 * @return 统计数
	 */
	@Select("SELECT COUNT(*) FROM WHERE ${propertyName}=#{value}")
	int countByPropertyName(@Param("propertyName") String propertyName, @Param("value") Object value);
	/**
	 * 选择性查询
	 * @param where SQL条件语句
	 * @return 符合条件的列表数据
	 */
	@Select("SELECT id , taskid , starttime , url , seedsynccount , writeinhbasecount , time , pass FROM t_tasking_seed_static ${where} ${order}")
	List<TaskingSeedStatic> findWhere(@Param("order") String order, @Param("where") String where);
	/**
	 * 选择性分页查询
	 * @param where SQL条件语句
	 * @param limit 最大返回
	 * @param start 起始返回
	 * @return 符合条件的列表数据
	 */
	@Select("SELECT id , taskid , starttime , url , seedsynccount , writeinhbasecount , time , pass FROM t_tasking_seed_static ${where} ${order} LIMIT ${start},${limit}")
	List<TaskingSeedStatic> findWhereByPage(@Param("order") String order, @Param("where") String where, @Param("limit") int limit, @Param("start") int start);
	/**
	 * 根据属性查询
	 * @param propertyName 数据库列名
	 * @param value 值
	 * @return 返回符合条件的数据列表
	 */
	@Select("SELECT id , taskid , starttime , url , seedsynccount , writeinhbasecount , time , pass FROM t_tasking_seed_static WHERE ${propertyName}=#{value} ${order}")
	List<TaskingSeedStatic> findByPropertyName(@Param("order") String order, @Param("propertyName") String propertyName, @Param("value") Object value);
}