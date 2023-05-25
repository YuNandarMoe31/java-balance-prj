package com.jdc.balance.model.service.impl;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.time.LocalDate;
import java.util.List;
import java.util.function.Predicate;

import com.jdc.balance.model.ServiceManager.LifeCycle;
import com.jdc.balance.model.domain.Transaction;
import com.jdc.balance.model.domain.Transaction.Type;
import com.jdc.balance.model.repo.TransactionRepo;
import com.jdc.balance.model.repo.impl.TransactionRepoImpl;
import com.jdc.balance.model.service.BalanceBusinessException;
import com.jdc.balance.model.service.TransactionService;

public class TransactionServiceImpl implements TransactionService, LifeCycle {

	private TransactionRepo repo;
	private String storage;
	private static final String FILE_NAME = "transactions.dat";
	
	public TransactionServiceImpl(String storage) {
		this.storage = storage;
		repo = new TransactionRepoImpl();
	}

	@Override
	public List<Transaction> search(Type type, LocalDate from, LocalDate to, String category) {
		Predicate<Transaction> filter = data -> true;
		
		if(null != type) {
			filter = filter.and(data -> data.getType() == type);
		}
		
		if(null != from) {
			filter = filter.and(data -> data.getDate().compareTo(from) >= 0);		
		}
		
		if(null != to) {
			filter = filter.and(data -> data.getDate().compareTo(to) <= 0);		
		}	
		
		if(null != category && !category.isEmpty()) {
			filter = filter.and(data -> data.getCategory().toLowerCase().startsWith(category.toLowerCase()));
		}
		return repo.search(filter);
	}

	@Override
	public Transaction findById(int id) {
		return repo.findById(id);
	}

	@Override
	public Transaction save(Transaction data) {
		// Date
		if (null == data.getDate()) {
			throw new BalanceBusinessException("Please enter transaction date");
		}

		// Type
		if (null == data.getType()) {
			throw new BalanceBusinessException("Please enter transaction type");
		}

		// Category
		if (null == data.getCategory() || data.getCategory().isEmpty()) {
			throw new BalanceBusinessException("Please enter category");
		}

		// Employee
		if (null == data.getEmployee()) {
			throw new BalanceBusinessException("Please set employee");
		}

		// Details
		if (null == data.getDetails() || data.getDetails().isEmpty()) {
			throw new BalanceBusinessException("Please enter transaction details");
		}

		if (data.getId() == 0) {
			return repo.create(data);
			
		}
		// TODO check to update
		return repo.update(data);
	}

	@Override
	public void approve(int id) {
		var data = repo.findById(id);
		data.setApproved(true);
		repo.update(data);
		
	}

	@Override
	public void load() {
		try(var input = new ObjectInputStream(new FileInputStream(getDataFile()))) {
			var object = input.readObject();
			
			if(null != object) {
				repo = (TransactionRepo) object;
			}
		} catch (Exception e) {			
			e.printStackTrace();
		} 
	}

	@Override
	public void save() {
		try(var output = new ObjectOutputStream(new FileOutputStream(getDataFile()))) {
			output.writeObject(repo);
		} catch (Exception e) {			
			e.printStackTrace();
		}
	}
	
	private File getDataFile() throws IOException {
		var file = new File(storage, FILE_NAME);
		if(!file.exists()) {
			var fileStorage = new File(storage);
			if(fileStorage.exists()) {
				fileStorage.mkdir();
			}
			file.createNewFile();
		}
		return file;
	}
}