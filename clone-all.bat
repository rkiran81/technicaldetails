@echo off

:: List of repository URLs
set repos=https://github.com/rkiran81/PracticeProjects.git https://github.com/rkiran81/MyData.git https://github.com/rkiran81/technicaldetails.git https://github.com/rkiran81/corejava.git https://github.com/rkiran81/example-config-server.git https://github.com/rkiran81/springrediscache.git https://github.com/rkiran81/springredisbrokerpubsub.git https://github.com/rkiran81/springredis.git https://github.com/rkiran81/springbootsslhttpstls.git https://github.com/rkiran81/samplekafka.git https://github.com/rkiran81/KafkaProduceConsumeErrorHandlingDeadLetterTopi.git https://github.com/rkiran81/KafkaProduceConsumePojo.git https://github.com/rkiran81/KafkaProduceConsumeFromPartition.git https://github.com/rkiran81/KafkaProduceConsume.git https://github.com/rkiran81/javatechiekafka.git https://github.com/rkiran81/graphqlserviceclient.git https://github.com/rkiran81/graphqlservice.git https://github.com/rkiran81/level-up-sql-3211372.git https://github.com/rkiran81/jenkinsbuildtest1.git https://github.com/rkiran81/introduction-to-mongodb-4315215.git https://github.com/rkiran81/ms-identity-msal-java-samples.git https://github.com/rkiran81/advanced-mongodb-code-challenges-2504707.git https://github.com/rkiran81/Training.git https://github.com/rkiran81/gittest1.git https://github.com/rkiran81/spring-kubernetes-demo.git https://github.com/rkiran81/Spoon-Knife.git https://github.com/rkiran81/TestRepo.git https://github.com/rkiran81/spring3-security-mvc-integration-tutorial.git https://github.com/rkiran81/tutorials.git https://github.com/rkiran81/ExoPlayer.git

:: Directory to clone the repositories into
set clone_dir=E:\rkiran81github

:: Change to the clone directory
cd /d %clone_dir%

for %%r in (%repos%) do (
    echo Cloning %%r...
    git clone %%r
    if errorlevel 1 (
        echo Failed to clone %%r
    ) else (
        echo %%r cloned successfully.
    )
)

echo All repositories have been cloned.
pause