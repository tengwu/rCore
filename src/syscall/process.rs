//! App management syscalls
use crate::batch::{print_app_info, run_next_app};

/// task exits and submit an exit code
pub fn sys_exit(exit_code: i32) -> ! {
    println!("[kernel] Application exited with code {}", exit_code);
    run_next_app()
}

pub fn sys_get_taskinfo() -> isize {
    print_app_info();
    0
}