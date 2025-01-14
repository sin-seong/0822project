package du.db;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

@Mapper
public interface MemberMapper {
	@Select("SELECT COUNT(*) FROM members WHERE email = #{email} AND password = #{password}")
	public int isMember(MemberDto memberDto);

	@Select("select * from members where email = #{email} and password = #{password}")
	public MemberDto findMember(MemberDto memberDto);
	
	@Insert("insert into members(member_id,name, email, password) values(members_seq.nextval,#{name},#{email},#{password})")
	public int regMember(MemberDto memberDto);
	
	@Select("SELECT COUNT(*) FROM members WHERE email = #{email}")
	public int checkEmail(String email);
}
