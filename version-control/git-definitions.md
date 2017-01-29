# Git Definitions

**Instructions: ** Define each of the following Git concepts.

* What is version control? Why is it useful?
	Version control is a system that allows you to record changes to a file or set of files so that you can track changes throughout a file/files life and recall specific versions later. It's useful, because it keeps everything organized and allows multiple users to work on a file at the same time without actually changing the initial file. It allows you to visit older versions and see changes that have been made throught time.

* What is a branch and why would you use one?
	A branch allows you to make a copy of the 'master file/branch' so that you can make changes/edits without changing the original file/branch. Once you've finished making changes on the new branch and verified that everything is the way you want it, you can merge the new feature brancing with the master branch.

* What is a commit? What makes a good commit message?
	 A commit records changes to the repository. Once you've modified a document and added the file to your staging aread, you run git commit to record the changes in the document, it acts as a save point. 

	 A good commit message is detailed and provides as much information as possible. It should be written in the imperative mode and be easily readable. 

* What is a merge conflict?
	Merge conflict occurs when there are competing changes in a file. Git needs the person's help to decide which changes to incorporate into the final merge. Conflict can occur when people make different changes to the same line in the same file or when one person makes an edit and another person deletes the same file. Before the branches can be merged, the conflict must me resolved. 