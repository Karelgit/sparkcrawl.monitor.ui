package com.gengyun.dao;

import java.util.List;

import com.gengyun.model.CrawlCount;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;


/**
 * 数据库表t_crawl_count的mapper接口
 * @author luohongjun
 * @date 2016-02-19 15:15:22 中国标准时间
 */
@Transactional
@Repository("CrawlCountMapper")
public interface CrawlCountMapper {

	/**
	 * 插入一条新数据
	 * @param model 添加的数据
	 * @return 改变的行数
	 */
	@Insert("INSERT INTO t_crawl_count ( id , taskid , starttime , crawltime , pass , crawlcount , depth ) VALUES ( #{id} , #{taskid} , #{starttime} , #{crawltime} , #{pass} , #{crawlcount} , #{depth} )")
	int insert(CrawlCount model);
	/**
	 * 根据ID删除
	 * @param id 数据的主键ID
	 * @return 改变的行数
	 */
	@Delete("DELETE FROM t_crawl_count WHERE id=#{id}")
	int delete(@Param("id") Object id);
	/**
	 * 更新一条数据
	 * @param model 更新的数据
	 * @return 改变的行数
	 */
	@Update("UPDATE t_crawl_count SET id=#{id} , taskid=#{taskid} , starttime=#{starttime} , crawltime=#{crawltime} , pass=#{pass} , crawlcount=#{crawlcount} , depth=#{depth} WHERE id=#{id} ")
	int update(CrawlCount model);
	/**
	 * 统计全部出数据
	 * @return 统计数
	 */
	@Select("SELECT COUNT(*) FROM t_crawl_count")
	int countAll();
	/**
	 * 根据ID获取
	 * @param id 主键ID
	 * @return null 或者 主键等于id的数据
	 */
	@Select("SELECT id , taskid , starttime , crawltime , pass , crawlcount , depth FROM t_crawl_count WHERE id=#{id}")
	CrawlCount findById(@Param("id") Object id);
	/**
	 * 获取全部数据
	 * @return 全部数据列表
	 */
	@Select("SELECT id , taskid , starttime , crawltime , pass , crawlcount , depth FROM t_crawl_count ${order}")
	List<CrawlCount> findAll(@Param("order") String order);
	/**
	 * 分页查询数据
	 * @param limit 最大返回
	 * @param start 起始返回
	 * @return 分页列表数据
	 */
	@Select("SELECT id , taskid , starttime , crawltime , pass , crawlcount , depth FROM t_crawl_count ${order} LIMIT ${start},${limit}")
	List<CrawlCount> findByPage(@Param("order") String order, @Param("limit") int limit, @Param("start") int start);
	/**
	 * 选择性删除
	 * @param where SQL条件语句
	 * @return 改变的行数
	 */
	@Delete("DELETE FROM t_crawl_count ${where}")
	int deleteWhere(@Param("where") String where);
	/**
	 * 根据属性值删除
	 * @param propertyName 数据库列名
	 * @param value 值
	 * @return 改变的行数
	 */
	@Delete("DELETE FROM t_crawl_count WHERE ${propertyName}=#{value}")
	int deleteByPropertyName(@Param("propertyName") String propertyName, @Param("value") Object value);
	/**
	 * 选择性统计
	 * @param where SQL条件语句
	 * @return 统计数
	 */
	@Select("SELECT COUNT(*) FROM t_crawl_count ${where}")
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
	@Select("SELECT id , taskid , starttime , crawltime , pass , crawlcount , depth FROM t_crawl_count ${where} ${order}")
	List<CrawlCount> findWhere(@Param("order") String order, @Param("where") String where);
	/**
	 * 选择性分页查询
	 * @param where SQL条件语句
	 * @param limit 最大返回
	 * @param start 起始返回
	 * @return 符合条件的列表数据
	 */
	@Select("SELECT id , taskid , starttime , crawltime , pass , crawlcount , depth FROM t_crawl_count ${where} ${order} LIMIT ${start},${limit}")
	List<CrawlCount> findWhereByPage(@Param("order") String order, @Param("where") String where, @Param("limit") int limit, @Param("start") int start);
	/**
	 * 根据属性查询
	 * @param propertyName 数据库列名
	 * @param value 值
	 * @return 返回符合条件的数据列表
	 */
	@Select("SELECT id , taskid , starttime , crawltime , pass , crawlcount , depth FROM t_crawl_count WHERE ${propertyName}=#{value} ${order}")
	List<CrawlCount> findByPropertyName(@Param("order") String order, @Param("propertyName") String propertyName, @Param("value") Object value);
}