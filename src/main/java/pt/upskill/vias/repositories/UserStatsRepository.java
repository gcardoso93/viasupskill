package pt.upskill.vias.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import pt.upskill.vias.entities.User;
import pt.upskill.vias.models.viasleague.entities.UserStats;

import java.util.List;

@Repository
public interface UserStatsRepository  extends JpaRepository<UserStats, Long> {

    UserStats getUserStatsByUser(User user);
    List<UserStats> findAll();



}