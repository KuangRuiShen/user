package com.app.view.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Param;

import com.app.view.entry.Setmeal;

/**
 * @author krs
 * @date 创建时间  2018年6月22日 下午6:58:34
 * @describe
 */
public interface SetmealMapper {

	List<Setmeal> list(Setmeal sm);

	@Delete(" delete from code_meal where code_id =#{id}")
	void delete(@Param("id") String id);

	void add(Setmeal sm);

	Setmeal findByRole(@Param("id")String role_id);

}
