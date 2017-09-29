package org.mechatronics.repositories;

import org.mechatronics.model.Direction;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

@RepositoryRestResource(collectionResourceRel = "directions", path = "directions")
public interface DirectionRepository extends PagingAndSortingRepository<Direction, Long> {

}