package org.devmasters.wisebladeweb.isswmq.dao;

import java.util.Optional;

public interface Dao<K, T> {

    Optional<T> findById(K id);

    T save(T entity);
}
