/*
 * ----------------------------------------------------------------
 * --- WARNING: THIS FILE IS GENERATED AND WILL BE OVERWRITTEN!
 * --- Generated at 2-Sep-2015 12:47:21 PM
 * ----------------------------------------------------------------
 *
 * [y] hybris Platform
 *
 * Copyright (c) 2000-2013 hybris AG
 * All rights reserved.
 *
 * This software is the confidential and proprietary information of hybris
 * ("Confidential Information"). You shall not disclose such Confidential
 * Information and shall use it only in accordance with the terms of the
 * license agreement you entered into with hybris.
 *
 *
 */
package com.hybris.mobile.lib.commerce.data.error;

import com.hybris.mobile.lib.commerce.data.error.Error;
import java.util.List;

/**
 * List of errors
 */
public class ErrorList  implements java.io.Serializable 
{

	/** <i>Generated property</i> for <code>ErrorList.errors</code> property defined at extension <code>commercewebservicescommons</code>. */
	private List<Error> errors;
		
	public ErrorList()
	{
		// default constructor
	}
	
		
	public void setErrors(final List<Error> errors)
	{
		this.errors = errors;
	}
	
		
	public List<Error> getErrors() 
	{
		return errors;
	}
		
	
}