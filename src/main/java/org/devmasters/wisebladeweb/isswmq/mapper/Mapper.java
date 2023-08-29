package org.devmasters.wisebladeweb.isswmq.mapper;

public interface Mapper<F, T> {

    T mapFrom(F object);
}
