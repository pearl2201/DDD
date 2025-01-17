### Domain-Driven Design example

This project is an example of a .NET implementation of a medical prescription model using the "Domain-Driven Design" (DDD) approach  and the "Command and Query Responsibility Segregation" (CQRS) architectural pattern.

**Points of interest**

This project has been created to test an implementation in .NET of the core concepts of DDD (entities, value objects, domain events, ...) and CQRS (commands, queries, command and query handlers, ...) on the basis of a concrete model.

The final goal of the project is to develop, for personal use, the main components of a message-based architecture that combines the benefits of the Hexagonal Architecture, CQRS and DDD, namely :

-	reusability of the application code
-	isolation of the business and application logic from external dependencies
-	reduction of complexity by splitting the system into smaller parts with high cohesion and low coupling
-	maintainability, testability and readability of code
-	encapsulation of the business logic and rules in domain objects if necessary

The scalability of the system is important, but is not the main concern. I want to develop a solution that combines the above-mentioned benefits, but that is accessible to small development teams and that can be deployed in different types of environment. For this reason, only a light version of CQRS (no data projection, one data store) has been considered and no messaging framework (like Apache Kafka or NServiceBus) has been used.

The main components are developed from technologies commonly used by .NET developers :

-	a relational database
-	an ORM framework
-	an Ioc container


**Model**

The model considered is a simplified model reflecting the life cycle of a medical prescription and, in particular, of a pharmaceutical prescription. This life cycle can be summarized by the following diagram.

![Alt Prescription Lifecycle](https://github.com/draphyz/DDD/blob/entityframework/Doc/PrescriptionLifecycle.png)

The current model only takes into account the use cases related to the prescriber : the creation and revocation of a prescription.

_Command Model_

On the write side, a rich domain model has been used to encapsulate the business logic and to control the creation of domain events. This model represents the business model. It incorporates both behavior and data, and is composed of entities and value objects. 

The domain modeling has been focused on two important aspects :
-	Encapsulation (to ensure that the aggregate is in a consistent state at all times)
-	Separation of concerns (also known as persistence ignorance)

Therefore, the domain model has been implemented as an object model without public setters and by hiding some information (like database identifiers for the value objects).  Entity inheritance and value object inheritance has been used and some value types like enumerations has been implemented as value objects.

Two options has been considered to map the domain objects to the database tables :
-	Mapping the domain model directly to the database by using a flexible and mature ORM like NHibernate 5 (branch nhibernate).

![Alt NHibernate Mapping](https://github.com/draphyz/DDD/blob/entityframework/Doc/NHibernateMapping.png)

-	Mapping the domain model to an intermediate model (state or persistence model) and then mapping the intermediate model to the database by using a less flexible and mature ORM like Entity Framework Core (branch entityframework).

![Alt Entity Framework Mapping](https://github.com/draphyz/DDD/blob/entityframework/Doc/EntityFrameworkMapping.png)

By comparing the purity/complexity ratios of the two options, the first option is preferred to map the domain model to the database. In the branch "NHibernate", some minor changes have been made to the domain model, such as adding protected constructors or private setters.

The interactions between the main components on the write side can be represented as follows :

![Alt Command Components](https://github.com/draphyz/DDD/blob/entityframework/Doc/CommandComponents.png)

_Query Model_

As mentioned above, the command and query data stores are not differentiated but the architecture on the query side is simplified (as shown on the following diagram). The query side is composed of simple Data Transfer Objects mapped to the database by using the Micro ORM Dapper.

![Alt Query Components](https://github.com/draphyz/DDD/blob/entityframework/Doc/QueryComponents.png)

**Projects**

The libraries are distributed by component (bounded context) :

- The "Core" libraries include the core components (Entity, ValueObject, CommandHandler, ...) necessary to implement the DDD approach according to the CQRS architectural pattern.
- The "Common" libraries include common components (EmailAddress, FullName, ...) that can be reused in multiple bounded contexts (shared kernel).
- The "HealthcareDelivery" libraries include components related to the context of healthcare delivery.

The application layer can be tested by using the "DDD.HealthcareDelivery.IntegrationTests" project.

**Cross-cutting concerns**

The decorator pattern is especially useful in CQRS to handle cross-cutting concerns such as logging or error handling. Command or query handlers (small interfaces) can be easily decorated. You will find some examples of decorators in the "DDD.Core.Polly" and "DDD.Core" projects.

Exception chaining (or exception wrapping) has been used. Each abstraction has its own set of exceptions :

- ISerializer throws a SerializationException
- IObjectMapper or IObjectTranslator throws a MappingException
- IRepository throws a RepositoryException
- IQueryHandler throws a QueryException
- ICommandHandler throws a CommandException

The Domain and Application layers have their own base exception class (respectively DomainException and ApplicationException). These classes defines a property IsTransient indicating whether the exception is transient.
