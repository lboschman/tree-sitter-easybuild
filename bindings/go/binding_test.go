package tree_sitter_easybuild_test

import (
	"testing"

	tree_sitter "github.com/tree-sitter/go-tree-sitter"
	tree_sitter_easybuild "github.com/lboschman/tree-sitter-easybuild/bindings/go"
)

func TestCanLoadGrammar(t *testing.T) {
	language := tree_sitter.NewLanguage(tree_sitter_easybuild.Language())
	if language == nil {
		t.Errorf("Error loading Easybuild grammar")
	}
}
