job('Node Job-dSL EXample') {
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
        shell("npm install")
    }
    steps {
        dockerBuildAndPublish {
            repositoryName('ikaushik96/nodeapp')
            tag('${BUILD_TIMESTAMP}-${GIT_REVISION,length=7}')
            registryCredentials('docker-hub')
            forcePull(false)
            createFingerprints(false)
            skipDecorate()
        }
    }
}
