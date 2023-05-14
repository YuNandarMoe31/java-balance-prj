package com.jdc.balance.model.repo.impl;

import java.util.List;
import java.util.Map;
import java.util.function.Predicate;

import com.jdc.balance.model.domain.Transaction;
import com.jdc.balance.model.repo.TransactionRepo;

public class TransactionRepoImpl implements TransactionRepo {

	private Map<Integer, Transaction> domain;
	private TransactionIdGenerator idGenerator;

	@Override
	public Transaction create(Transaction data) {
		var id = idGenerator.next();
		data.setId(id);
		domain.put(id, data);
		return data;
	}

	@Override
	public Transaction update(Transaction data) {
		domain.put(data.getId(), data);
		return data;
	}

	@Override
	public Transaction findById(int id) {
		return domain.get(id);
	}

	@Override
	public List<Transaction> search(Predicate<Transaction> filter) {		
		return domain.values().stream().filter(filter).toList();
	}

}