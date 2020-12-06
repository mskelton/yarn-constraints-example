% Ensure all workspaces are using the ISC license
gen_enforced_field(WorkspaceCwd, 'license', 'ISC').

% Ensure all published packages contain a homepage URL.
gen_enforced_field(WorkspaceCwd, 'homepage', Homepage) :-
  workspace_field(WorkspaceCwd, 'version', _),
  atom_concat('https://github.com/mskelton/yarn-constraints-example/tree/main/', WorkspaceCwd, Homepage).
