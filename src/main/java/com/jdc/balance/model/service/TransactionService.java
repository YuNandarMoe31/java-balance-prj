package com.jdc.balance.model.service;

import java.util.Date;
import java.util.List;

import com.jdc.balance.model.domain.Transaction;
import com.jdc.balance.model.domain.Transaction.Type;

public interface TransactionService {

	public List<Transaction> search(Type type, Date from, Date to, String category);

	public Transaction findById(int id);

	public Transaction save(Transaction date);

	public void approve(int id);

}