package com.example.app.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.example.app.domain.Home;

@Mapper
public interface HomeMapper {
List<Home> selectAll();
}
