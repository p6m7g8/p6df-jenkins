######################################################################
#<
#
# Function: p6df::modules::jenkins::version()
#
#>
######################################################################
p6df::modules::jenkins::version() { echo "0.0.1" }

######################################################################
#<
#
# Function: p6df::modules::jenkins::deps()
#
#>
######################################################################
p6df::modules::jenkins::deps() {
    ModuleDeps=(
        p6m7g8/p6df-java
        p6m7g8/p6jenkins
    )
}

######################################################################
#<
#
# Function: p6df::modules::jenkins::langs()
#
#>
######################################################################
p6df::modules::jenkins::langs() {

    p6df::modules::jenkins::cli::get
}

######################################################################
#<
#
# Function: p6df::modules::jenkins::init()
#
#>
######################################################################
p6df::modules::jenkins::init() {

    JENKINS_HOST=$P6_JENKINS_HOST

    alias p6jl=p6_jenkins_jobs_list
    alias p6jg=p6_jenkins_job_get
    alias p6jc=p6_jenkins_job_create
    alias p6ju=p6_jenkins_jobs_update
}

######################################################################
#<
#
# Function: p6df::modules::jenkins::prompt::line()
#
#>
######################################################################
p6df::modules::jenkins::prompt::line() {

    p6_jenkins_prompt_info
}

######################################################################
#<
#
# Function: p6df::modules::jenkins::cli::get()
#
#>
######################################################################
p6df::modules::jenkins::cli::get() {

    mkdir -p $P6_DFZ_SRC_DIR/p6m7g8/p6df-jenkins/libexec/
    curl -o $P6_DFZ_SRC_DIR/p6m7g8/p6df-jenkins/libexec/jenkins-cli.jar http://$JENKINS_HOST/jnlpJars/jenkins-cli.jar
}