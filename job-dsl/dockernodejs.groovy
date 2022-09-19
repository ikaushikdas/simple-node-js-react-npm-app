job('Node docker EXample') {
    scm {
        git('https://github.com/ikaushikdas/simple-node-js-react-npm-app.git') {  node -> // is hudson.plugins.git.GitSCM
            node / gitConfigName('Kaushik Das')
            node / gitConfigEmail('kaushik.das@codeclouds.in')
        }
    }
    triggers {
        scm('H/5 * * * *')
    }
    wrappers {
        nodejs('nodejs') // this is the name of the NodeJS installation in 
                         // Manage Jenkins -> Configure Tools -> NodeJS Installations -> Name
    }
    steps {     
        dockerBuildAndPublish {
            repositoryName('ikaushik96/nodeapp')
            tag('${GIT_REVISION,length=9}')
            registryCredentials('docker-hub')
            forcePull(false)
            createFingerprints(false)
            skipDecorate()
        }
    
    }
    
    
}

job('Node docker EXample') {
    
}