package pl.obrazkarnia.build.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import pl.obrazkarnia.build.entity.Blog;
import pl.obrazkarnia.build.entity.User;

public interface BlogRepository extends JpaRepository<Blog, Integer> {
	
	List<Blog> findByUser(User user);
}
