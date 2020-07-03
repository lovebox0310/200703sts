package kr.co.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.domain.DepartDTO;
import kr.co.persistence.DepartDAO;

@Service
public class DepartServiceImpl implements DepartService {

	@Inject
	private DepartDAO departDao;
	
	@Override
	public void insert(DepartDTO dto) {
		departDao.insert(dto);
	}

	@Override
	public List<DepartDTO> list() {
		return departDao.list();
	}

	@Override
	public DepartDTO read(String did) {
		return departDao.read(did);
	}

	@Override
	public DepartDTO updateui(String did) {
		return departDao.updateui(did);
	}

	@Override
	public void update(DepartDTO dto) {
		departDao.update(dto);
	}

	@Override
	public void delete(String did) {
		departDao.delete(did);
	}
	
}
