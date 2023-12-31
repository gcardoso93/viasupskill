package pt.upskill.vias.repositories;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import pt.upskill.vias.entities.user.User;
import pt.upskill.vias.models.routes.Leg;

import java.util.List;

@Repository
public interface LegRepository extends JpaRepository<Leg, Long> {

    Leg getLegById(long id);
    List<Leg> findAllByUser(User user);
    @Query("SELECT l FROM Leg l WHERE l.trip_completed = true AND l.user= :user ORDER BY l.id DESC")
    List<Leg> getAllByTrip_completedAndUserOrderById(User user);

}
