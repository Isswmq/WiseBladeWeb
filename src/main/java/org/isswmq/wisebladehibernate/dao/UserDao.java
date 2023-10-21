package org.isswmq.wisebladehibernate.dao;

import org.isswmq.wisebladehibernate.entity.BaseEntity;

import java.io.Serializable;
import java.util.List;
import java.util.Optional;

public class UserDao implements Dao{
    @Override
    public BaseEntity save(BaseEntity entity) {
        return null;
    }

    @Override
    public void delete(Serializable id) {

    }

    @Override
    public void update(BaseEntity entity) {

    }

    @Override
    public Optional findById(Serializable id) {
        return Optional.empty();
    }

    @Override
    public List findAll() {
        return null;
    }
}
