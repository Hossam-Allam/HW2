# 🔧 SysOps Automation at DataPulse Inc.

**🧠 Story: Managing Processes and Automating Logs**

You just joined **DataPulse Inc.**, a data analytics company that
monitors multiple background services and processes. Your supervisor has asked you to automate several tasks to ensure the system runs
efficiently and the logs are well-documented.

---

## 📂 Filesystem Overview

    ls -R datapulse/
    datapulse/:
    scripts  services  logs

    datapulse/scripts:
    analyze.sh
    backup.sh

    datapulse/services:
    analytics.service
    backup.service

    datapulse/logs:
    (old logs here)

---

## ⚙️ Phase 1: Process Management

Your first task is to manage running processes related to analytics and
backups.

1.  Run both scripts (`analyze.sh` and `backup.sh`) as **background jobs**. You can run a script by simply writing './analyze.sh' Make sure to redirect the output of **both** scripts to **separate** files in the log folder. For example, analyze_output.log
2.  Use `ps` or `top` to verify they're running and note down their
    **PIDs**.
3.  Increase the priority of `analyze.sh` (give it more CPU time) using
    the **nice/renice** command.
4.  Send the output of `ps -l` to a file called `process_report.txt`
    inside the `logs` folder.
    _(Hint: Use redirection `>`)_

---

## 🧭 Phase 2: Service Monitoring

Your company uses **systemd** to manage services.

1.  Use `systemctl status` to check whether `analytics.service` and
    `backup.service` are active (Don't panic if the service can't be found).
2.  Redirect both outputs (stdout + stderr) into a single file called
    `service_status.log` in the `logs` folder (Make sure not to overwrite).
3.  Append today's date (using 'Date' command) to the end of `service_status.log` using a
    redirection operator.

---

## 🧩 Phase 3: Log Processing

Now it's time to organize and analyze your logs.

1.  Combine the contents of `process_report.txt` and
    `service_status.log` into a single file called `daily_summary.txt`
    using **pipes**.
    _(Hint: `cat` and `tee` are useful here.)_

2.  Use a **here-document** to write the following message into
    `report_header.txt`:

        DataPulse Daily System Report
        Generated on: $(date)

3.  Concatenate `report_header.txt` and `daily_summary.txt` into a new
    file called `final_report.txt`.

4.  Count the number of lines in `final_report.txt` using a pipeline
    (`cat | wc -l`) and append the result to the same file.

---

## 📝 Phase 4: Documentation

Inside the `logs` directory:

1.  Create a new text file called `command_history.txt`.
2.  Paste all the commands you used to complete the previous phases.

**Please make sure that you pushed all the generated log files not just command_history.txt**
