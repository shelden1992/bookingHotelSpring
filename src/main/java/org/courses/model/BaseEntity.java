package org.courses.model;

import javax.persistence.*;

@MappedSuperclass
public abstract class BaseEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(unique = true, nullable = false)
    protected int id;

    public abstract int getEntityId();

    public abstract void setEntityId(int id);
}
