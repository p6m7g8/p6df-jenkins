p6df::modules::jenkins::version() { echo "0.0.1" }
p6df::modules::jenkins::deps() { ModuleDeps=() }

p6df::modules::jenkins::langs() {

    p6df::modules::jenkins::cli::get
}

p6df::modules::jenkins::init() {

    JENKINS_HOST=$P6_JENKINS_HOST

    alias p6jl=p6_jenkins_jobs_list
    alias p6jg=p6_jenkins_job_get
    alias p6jc=p6_jenkins_job_create
    alias p6ju=p6_jenkins_jobs_update
}

p6df::prompt::jenkins::line() {

    if [ -f Jenkinsfile ]; then
	echo "jenkins:$JENKINS_HOST"
    fi
}

p6df::modules::jenkins::cli::get() {

    curl -o $P6_DFZ_SRC_DIR/p6m7g8/p6df-jenkins/libexec/jenkins-cli-$JENKINS_HOST.jar https://$JENKINS_HOST/jnlpJars/jenkins-cli.jar
}

p6_jenkins_cli_wrapper() {

    java -jar $P6_DFZ_SRC_DIR/p6m7g8/p6df-jenkins/libexec/jenkins-cli-$JENKINS_HOST.jar -s https://$JENKINS_HOST "$@"
}

p6_jenkins_jobs_list() {

    p6_jenkins_cli_wrapper list-jobs
}

p6_jenkins_job_get() {
    local job_name="$1"

    p6_jenkins_cli_wrapper get-job $job_name
}

p6_jenkins_job_create() {
    local job_name="$1"
    local job_xml="$2"

    cat $job_xml | p6_jenkins_cli_wrapper create-job $job_name
}

p6_jenkins_job_update() {
    local job_name="$1"
    local job_xml="$2"

    cat $job_xml | p6_jenkins_cli_wrapper update-job $job_name
}
