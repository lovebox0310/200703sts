package kr.co.persistence;

import java.util.List;

import kr.co.domain.BoardVO;

public interface BoardDAO {
	void insert(BoardVO vo);

	List<BoardVO> list();

	BoardVO read(String bno);

	void readCountPlus1(String bno);

	BoardVO updateui(int bno);

	void update(BoardVO vo);

	void delete(int bno);
}
