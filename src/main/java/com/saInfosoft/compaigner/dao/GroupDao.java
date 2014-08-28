package com.saInfosoft.compaigner.dao;

import java.util.List;

import com.saInfosoft.compaigner.entity.GroupAdd;

public interface GroupDao {

    public void save(GroupAdd group);

    public List<GroupAdd> view();

    public List<GroupAdd> deleteView();

    public List<GroupAdd> delete(String[] ids);

}
