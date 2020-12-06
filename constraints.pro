% Ensure all workspaces are using the ISC license
gen_enforced_field(WorkspaceCwd, 'license', 'ISC').

% Ensure all published packages contain a homepage URL.
gen_enforced_field(WorkspaceCwd, 'homepage', Homepage) :-
  % Ignore the root workspace
  workspace_field(WorkspaceCwd, 'version', _),
  % Construct the homepage url using the package directory
  atom_concat('https://github.com/mskelton/yarn-constraints-example/tree/main/', WorkspaceCwd, Homepage).

gen_enforced_dependency(WorkspaceCwd, 'react', null, dependencies) :-
  % Ignore the root workspace
  workspace_field(WorkspaceCwd, 'version', _).
