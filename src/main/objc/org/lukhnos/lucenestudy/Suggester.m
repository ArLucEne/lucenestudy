//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: src/main/java/org/lukhnos/lucenestudy/Suggester.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/CharSequence.h"
#include "java/lang/Exception.h"
#include "java/util/ArrayList.h"
#include "java/util/HashSet.h"
#include "java/util/List.h"
#include "java/util/Set.h"
#include "org/apache/lucene/analysis/Analyzer.h"
#include "org/apache/lucene/index/DirectoryReader.h"
#include "org/apache/lucene/index/IndexReader.h"
#include "org/apache/lucene/search/suggest/DocumentDictionary.h"
#include "org/apache/lucene/search/suggest/InputIterator.h"
#include "org/apache/lucene/search/suggest/Lookup.h"
#include "org/apache/lucene/search/suggest/analyzing/AnalyzingInfixSuggester.h"
#include "org/apache/lucene/store/Directory.h"
#include "org/apache/lucene/store/FSDirectory.h"
#include "org/apache/lucene/util/BytesRef.h"
#include "org/lukhnos/lucenestudy/Indexer.h"
#include "org/lukhnos/lucenestudy/Suggester.h"
#include "org/lukhnos/lucenestudy/Util.h"
#include "org/lukhnos/portmobile/file/Files.h"
#include "org/lukhnos/portmobile/file/Path.h"
#include "org/lukhnos/portmobile/file/Paths.h"

NSString *OrgLukhnosLucenestudySuggester_INDEX_NAME_ = @"suggestion";

@implementation OrgLukhnosLucenestudySuggester

- (instancetype)initWithNSString:(NSString *)indexRoot {
  OrgLukhnosLucenestudySuggester_initWithNSString_(self, indexRoot);
  return self;
}

+ (OrgLukhnosPortmobileFilePath *)getSuggestionIndexPathWithOrgLukhnosPortmobileFilePath:(OrgLukhnosPortmobileFilePath *)indexRoot {
  return OrgLukhnosLucenestudySuggester_getSuggestionIndexPathWithOrgLukhnosPortmobileFilePath_(indexRoot);
}

+ (void)rebuildWithNSString:(NSString *)indexRoot {
  OrgLukhnosLucenestudySuggester_rebuildWithNSString_(indexRoot);
}

- (id<JavaUtilList>)suggestWithNSString:(NSString *)query {
  id<JavaUtilList> results = [((OrgApacheLuceneSearchSuggestAnalyzingAnalyzingInfixSuggester *) nil_chk(suggester_)) lookupWithJavaLangCharSequence:query withInt:suggestionCount_ withBoolean:NO withBoolean:YES];
  id<JavaUtilList> suggestions = new_JavaUtilArrayList_init();
  for (OrgApacheLuceneSearchSuggestLookup_LookupResult * __strong result in nil_chk(results)) {
    if ([((OrgApacheLuceneSearchSuggestLookup_LookupResult *) nil_chk(result))->highlightKey_ isKindOfClass:[NSString class]]) {
      [suggestions addWithId:(NSString *) check_class_cast(result->highlightKey_, [NSString class])];
    }
    else {
      [suggestions addWithId:[((id<JavaLangCharSequence>) nil_chk(result->key_)) description]];
    }
  }
  return suggestions;
}

- (void)close {
  [((OrgApacheLuceneSearchSuggestAnalyzingAnalyzingInfixSuggester *) nil_chk(suggester_)) close];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithNSString:", "Suggester", NULL, 0x1, "Ljava.io.IOException;", NULL },
    { "getSuggestionIndexPathWithOrgLukhnosPortmobileFilePath:", "getSuggestionIndexPath", "Lorg.lukhnos.portmobile.file.Path;", 0x8, NULL, NULL },
    { "rebuildWithNSString:", "rebuild", "V", 0x9, "Ljava.io.IOException;", NULL },
    { "suggestWithNSString:", "suggest", "Ljava.util.List;", 0x1, "Ljava.io.IOException;", NULL },
    { "close", NULL, "V", 0x1, "Ljava.lang.Exception;", NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "DEFAULT_SUGGESTION_COUNT", "DEFAULT_SUGGESTION_COUNT", 0x18, "I", NULL, NULL, .constantValue.asInt = OrgLukhnosLucenestudySuggester_DEFAULT_SUGGESTION_COUNT },
    { "INDEX_NAME_", NULL, 0x18, "Ljava.lang.String;", &OrgLukhnosLucenestudySuggester_INDEX_NAME_, NULL, .constantValue.asLong = 0 },
    { "indexRootPath_", NULL, 0x10, "Lorg.lukhnos.portmobile.file.Path;", NULL, NULL, .constantValue.asLong = 0 },
    { "suggester_", NULL, 0x10, "Lorg.apache.lucene.search.suggest.analyzing.AnalyzingInfixSuggester;", NULL, NULL, .constantValue.asLong = 0 },
    { "suggestionCount_", NULL, 0x0, "I", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgLukhnosLucenestudySuggester = { 2, "Suggester", "org.lukhnos.lucenestudy", NULL, 0x1, 5, methods, 5, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgLukhnosLucenestudySuggester;
}

@end

void OrgLukhnosLucenestudySuggester_initWithNSString_(OrgLukhnosLucenestudySuggester *self, NSString *indexRoot) {
  (void) NSObject_init(self);
  self->indexRootPath_ = OrgLukhnosPortmobileFilePaths_getWithNSString_(indexRoot);
  OrgApacheLuceneAnalysisAnalyzer *analyzer = OrgLukhnosLucenestudyIndexer_getAnalyzer();
  OrgApacheLuceneStoreDirectory *suggestionDir = OrgApacheLuceneStoreFSDirectory_openWithOrgLukhnosPortmobileFilePath_(OrgLukhnosLucenestudySuggester_getSuggestionIndexPathWithOrgLukhnosPortmobileFilePath_(self->indexRootPath_));
  self->suggester_ = new_OrgApacheLuceneSearchSuggestAnalyzingAnalyzingInfixSuggester_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneAnalysisAnalyzer_(suggestionDir, analyzer);
  self->suggestionCount_ = OrgLukhnosLucenestudySuggester_DEFAULT_SUGGESTION_COUNT;
}

OrgLukhnosLucenestudySuggester *new_OrgLukhnosLucenestudySuggester_initWithNSString_(NSString *indexRoot) {
  OrgLukhnosLucenestudySuggester *self = [OrgLukhnosLucenestudySuggester alloc];
  OrgLukhnosLucenestudySuggester_initWithNSString_(self, indexRoot);
  return self;
}

OrgLukhnosPortmobileFilePath *OrgLukhnosLucenestudySuggester_getSuggestionIndexPathWithOrgLukhnosPortmobileFilePath_(OrgLukhnosPortmobileFilePath *indexRoot) {
  OrgLukhnosLucenestudySuggester_initialize();
  return [((OrgLukhnosPortmobileFilePath *) nil_chk(indexRoot)) resolveWithNSString:OrgLukhnosLucenestudySuggester_INDEX_NAME_];
}

void OrgLukhnosLucenestudySuggester_rebuildWithNSString_(NSString *indexRoot) {
  OrgLukhnosLucenestudySuggester_initialize();
  OrgLukhnosPortmobileFilePath *indexRootPath = OrgLukhnosPortmobileFilePaths_getWithNSString_(indexRoot);
  OrgLukhnosPortmobileFilePath *suggestionPath = OrgLukhnosLucenestudySuggester_getSuggestionIndexPathWithOrgLukhnosPortmobileFilePath_(indexRootPath);
  if (OrgLukhnosPortmobileFileFiles_existsWithOrgLukhnosPortmobileFilePath_(suggestionPath)) {
    OrgLukhnosLucenestudyUtil_deletePathWithOrgLukhnosPortmobileFilePath_(suggestionPath);
  }
  OrgApacheLuceneAnalysisAnalyzer *analyzer = OrgLukhnosLucenestudyIndexer_getAnalyzer();
  OrgApacheLuceneStoreDirectory *suggestionDir = OrgApacheLuceneStoreFSDirectory_openWithOrgLukhnosPortmobileFilePath_(OrgLukhnosLucenestudySuggester_getSuggestionIndexPathWithOrgLukhnosPortmobileFilePath_(indexRootPath));
  OrgApacheLuceneSearchSuggestAnalyzingAnalyzingInfixSuggester *suggester = new_OrgApacheLuceneSearchSuggestAnalyzingAnalyzingInfixSuggester_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneAnalysisAnalyzer_(suggestionDir, analyzer);
  OrgApacheLuceneStoreDirectory *indexDir = OrgApacheLuceneStoreFSDirectory_openWithOrgLukhnosPortmobileFilePath_(OrgLukhnosLucenestudyIndexer_getMainIndexPathWithOrgLukhnosPortmobileFilePath_(indexRootPath));
  OrgApacheLuceneIndexIndexReader *reader = OrgApacheLuceneIndexDirectoryReader_openWithOrgApacheLuceneStoreDirectory_(indexDir);
  OrgApacheLuceneSearchSuggestDocumentDictionary *docDict = new_OrgApacheLuceneSearchSuggestDocumentDictionary_initWithOrgApacheLuceneIndexIndexReader_withNSString_withNSString_(reader, OrgLukhnosLucenestudyIndexer_TITLE_FIELD_NAME_, nil);
  id<OrgApacheLuceneSearchSuggestInputIterator> iterator = [docDict getEntryIterator];
  id<JavaUtilSet> titleSet = new_JavaUtilHashSet_init();
  OrgApacheLuceneUtilBytesRef *next;
  while ((next = [((id<OrgApacheLuceneSearchSuggestInputIterator>) nil_chk(iterator)) next]) != nil) {
    if ([titleSet containsWithId:next]) {
      continue;
    }
    [titleSet addWithId:next];
    [suggester addWithOrgApacheLuceneUtilBytesRef:next withJavaUtilSet:nil withLong:0 withOrgApacheLuceneUtilBytesRef:nil];
  }
  [((OrgApacheLuceneIndexIndexReader *) nil_chk(reader)) close];
  [suggester commit];
  [suggester close];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgLukhnosLucenestudySuggester)
