import com.psl.space.dao.AuthenticationDao;
import com.psl.space.entity.Authentication;


public class Test {

	@org.junit.Test
	public void test() {
		AuthenticationDao o=new AuthenticationDao();
		Authentication authentication=o.getAuthentication(7);
		authentication.setLocked(true);
		o.updateAuthentication(authentication);
	}

}
