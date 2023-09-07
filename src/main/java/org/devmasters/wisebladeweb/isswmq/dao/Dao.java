package org.devmasters.wisebladeweb.isswmq.dao;

import java.util.Optional;

public interface Dao<K, T> {
    T save(T entity);
}
