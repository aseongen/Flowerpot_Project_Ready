package com.flowerPot.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.flowerPot.domain.Criteria;
import com.flowerPot.vo.CustomerCenterVo;

@Repository
public class CustomerCenterDaoImpl implements CustomerCenterDao {

	@Autowired
	private SqlSession session;

	@Override
	public List<CustomerCenterVo> getFaq() {
		// TODO Auto-generated method stub
		return session.selectList("fq_list");
	}

	@Override
	public List<CustomerCenterVo> getEnqList() {
		// TODO Auto-generated method stub
		return session.selectList("EnqList");
	}

	@Override
	public List<CustomerCenterVo> getNotice() {
		// TODO Auto-generated method stub
		return session.selectList("notice");
	}

	@Override
	public List<CustomerCenterVo> searchKeyword(String keyword) {
		// TODO Auto-generated method stub
		return session.selectList("searchKeyword", keyword);
	}

	@Override
	public void wirteEnq(CustomerCenterVo customer) {

		session.insert("wirteEnq", customer);

	}

	@Override
	public void NoImgWirteEnq(CustomerCenterVo customer) {
		session.insert("NoImgWriteEnq", customer);

	}

	@Override
	public CustomerCenterVo getContent(int ccno) {
		// TODO Auto-generated method stub
		return session.selectOne("EnqContent", ccno);
	}

	@Override
	public void editEnq(CustomerCenterVo customer) {
		session.update("EnqUpdate", customer);

	}

	@Override
	public void deleteEnq(CustomerCenterVo customer) {
		session.delete("DeleteEnq", customer);
		
	}

	@Override
	public CustomerCenterVo getNotice(int ccno) {
		// TODO Auto-generated method stub
		return session.selectOne("noticeContent", ccno);
	}

	@Override
	public CustomerCenterVo getResCont(int ccno) {
		// TODO Auto-generated method stub
		return session.selectOne("ResContent",ccno);
	}

	@Override
	public List<CustomerCenterVo> SelectListByCategory(Criteria c) {
		return session.selectList("SelectListByCategory", c);
	}

	@Override
	public int selectCountByCategory(Criteria c) {
		return session.selectOne("cc_selectCountByCategory", c);
	}

}
