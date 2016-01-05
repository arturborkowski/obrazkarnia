package pl.obrazkarnia.build.repository;

import java.util.List;

import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

import pl.obrazkarnia.build.entity.Blog;
import pl.obrazkarnia.build.entity.Item;

public interface ItemRepository extends JpaRepository<Item, Integer> {
	List<Item> findByBlog(Blog blog, Pageable pageable);
}
