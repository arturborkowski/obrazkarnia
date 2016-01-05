package pl.obrazkarnia.build.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import pl.obrazkarnia.build.entity.Role;

public interface RoleRepository extends JpaRepository<Role, Integer> {

}
