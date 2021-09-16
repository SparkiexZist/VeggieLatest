package io.aadeesh.repo;

import io.aadeesh.model.Vegetable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface VegetableRepository extends JpaRepository<Vegetable, String>
{
    @Query("from Vegetable where name is not null")
    public List<Vegetable> getAll();
}
