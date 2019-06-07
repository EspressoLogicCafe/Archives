//
//  APIController.h
//  Customers
//
//  This file was automatically generated by APIMATIC BETA v2.0 on 09/17/2014
//
#import <Foundation/Foundation.h>
#import "Configuration.h"
#import "APIHelper.h"
#import "APIException.h"
#import "Unirest.h"
#import "CustomersModel.h"

@interface APIController : NSObject

/**
* Completion block definition for asynchronous call to getCustomers */
typedef void (^CompletedGetCustomers)(BOOL success, CustomersModel* response, NSError* error);

/**
* Get zero or more objects from table Customers
* @param    filter    Optional parameter: Arbitrary search criteria
*/
- (void) GetCustomersAsyncWithFilter:(NSString*) filter
                completionBlock:(CompletedGetCustomers) onCompleted;

/**
* Completion block definition for asynchronous call to insertCustomers */
typedef void (^CompletedPostInsertCustomers)(BOOL success, CustomersModel* response, NSError* error);

/**
* Insert one or more objects
*/
- (void) postInsertCustomersWithCompletionBlock:(CompletedPostInsertCustomers) onCompleted;

/**
* Completion block definition for asynchronous call to updateCustomers */
typedef void (^CompletedPutUpdateCustomers)(BOOL success, CustomersModel* response, NSError* error);

/**
* Update one or more objects
*/
- (void) putUpdateCustomersWithCompletionBlock:(CompletedPutUpdateCustomers) onCompleted;

/**
* Completion block definition for asynchronous call to getOneCustomers */
typedef void (^CompletedGetOneCustomers)(BOOL success, CustomersModel* response, NSError* error);

/**
* Get one object
* @param    pk    Required parameter: CustomerID
*/
- (void) GetOneCustomersAsyncWithPk:(NSString*) pk
                completionBlock:(CompletedGetOneCustomers) onCompleted;

/**
* Completion block definition for asynchronous call to updateOneCustomers */
typedef void (^CompletedPutUpdateOneCustomers)(BOOL success, CustomersModel* response, NSError* error);

/**
* Update one object
* @param    pk    Required parameter: CustomerID
*/
- (void) putUpdateOneCustomersAsyncWithPk:(NSString*) pk
                completionBlock:(CompletedPutUpdateOneCustomers) onCompleted;

/**
* Completion block definition for asynchronous call to deleteOneCustomers */
typedef void (^CompletedDeleteOneCustomers)(BOOL success, CustomersModel* response, NSError* error);

/**
* Delete one object
* @param    pk    Required parameter: CustomerID
*/
- (void) DeleteOneCustomersAsyncWithPk:(NSString*) pk
                completionBlock:(CompletedDeleteOneCustomers) onCompleted;

@end