package vn.poly.sof305.sonphph05134.record.repository;

import java.util.List;

import vn.poly.sof305.sonphph05134.common.bases.BaseRepositoryInterface;
import vn.poly.sof305.sonphph05134.common.entities.Record;

/**
 * @author Hoai Son
 *
 */
public interface RecordRepository extends BaseRepositoryInterface {
    /**
     * Search department by code
     * @param code depatment code
     * @return
     */
    List<Record> searchByCode(String code);
	
    Long count(Long employeeId, String code, String reason);

    List<Record> select(Long employeeId, String code, String reason, int offset, int limit);

    Record select(Long id);

    Long insert(Record record);

    Long update(Record record);

    Long remove(Record record);
}
