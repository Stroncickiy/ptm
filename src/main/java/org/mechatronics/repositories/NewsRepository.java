package org.mechatronics.repositories;

import org.mechatronics.model.News;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

import java.util.List;

@RepositoryRestResource(collectionResourceRel = "news", path = "news")
public interface NewsRepository extends PagingAndSortingRepository<News, Long> {

    List<News> findTop3ByOrderByCreatedDesc();

}