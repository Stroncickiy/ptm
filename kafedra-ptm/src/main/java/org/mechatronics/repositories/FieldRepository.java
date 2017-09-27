package org.mechatronics.repositories;

import org.mechatronics.model.Field;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

@RepositoryRestResource(collectionResourceRel = "fields", path = "fields")
public interface FieldRepository extends PagingAndSortingRepository<Field, Long> {

}