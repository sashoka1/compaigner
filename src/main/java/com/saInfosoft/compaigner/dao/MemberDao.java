package com.saInfosoft.compaigner.dao;

import java.util.List;

import com.saInfosoft.compaigner.entity.GroupAdd;
import com.saInfosoft.compaigner.entity.MemberAdd;

public interface MemberDao {

    public List<GroupAdd> dropDownFetch();

    public void save(MemberAdd member);

    public List<MemberAdd> view();

}
