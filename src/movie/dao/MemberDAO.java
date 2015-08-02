package movie.dao;

import java.util.List;

import movie.model.Member;

public interface MemberDAO {
      public List<Member> findAll();
      public Member findByID(String id);
      public void update(Member n_member);
      public String save(Member n_member);
}
