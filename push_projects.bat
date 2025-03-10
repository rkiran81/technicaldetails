@echo off

:: List of project directories
set projects=advanced-mongodb-code-challenges-2504707 angular-architecture-playbook batch caching corejava example-config-server ExoPlayer fundamentals-angular gittest1 graphqlservice graphqlserviceclient Hibernate introduction-to-mongodb-4315215 java-persistence-with-JPA-hibernate_5905747 Javatechie javatechiekafka jenkinsbuildtest1 joes-robot-shop joes-robot-shop-old JPATest KafkaProduceConsume KafkaProduceConsumeErrorHandlingDeadLetterTopic KafkaProduceConsumeFromPartition KafkaProduceConsumePojo level-up-sql-3211372 Linkedin lookup-injection ms-identity-msal-java-samples MultipleDBConnection MyData mysocialmedia MyTransactionApp Plural PracticeProjects reactive-exception-handling reactive-streams-jvm reactive-subscriber routerfunction-openapi samplekafka Spoon-Knife spring-kafka-avro spring-kubernetes-demo spring-reactive-mongo-crud spring-transaction spring3-security-mvc-integration-tutorial springbootsslhttpstls springredis springredisbrokerpubsub springrediscache springsecurityjwt springsecurityoauth2 SpringWebfluxDemo springwebfluxtwiliotp springwebfluxvideostreaming stock-trading technicaldetails TestRepo Training tutorials Webclient-StockExample



for %%d in (%projects%) do (
    echo Processing %%d...
	
	:: Remote repository URL
	set remote_repo="https://github.com/rkiran81/%%d.git"
	
    :: Navigate to the project directory
    cd %%d

    :: Initialize git repository if not already initialized
    git init

    :: Add all changes to staging
    git add .

    :: Commit changes with a message
    git commit -m "Initial commit for %%d"

    :: Add remote repository
    git remote add origin %remote_repo%

    :: Push changes to remote repository
    git push -u origin main

    :: Navigate back to the parent directory
    cd ..

    echo %%d processed successfully.
)

echo All projects have been processed.
