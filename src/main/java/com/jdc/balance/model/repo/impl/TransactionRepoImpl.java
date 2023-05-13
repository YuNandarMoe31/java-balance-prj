package com.jdc.balance.model.repo.impl;

import java.util.List;
import java.util.Set;
import java.util.function.Predicate;

import com.jdc.balance.model.domain.Transaction;
import com.jdc.balance.model.repo.TransactionRepo;

public class TransactionRepoImpl implements TransactionRepo {

	public TransactionRepoImpl() {
	}

	private Set<Transaction> domain;
	
	private TransactionIdGenerator idGenerator;

	@Override
	public Transaction create(Transaction data) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Transaction update(Transaction data) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Transaction findById(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Transaction> search(Predicate<Transaction> filter) {
		// TODO Auto-generated method stub
		return null;
	}

}