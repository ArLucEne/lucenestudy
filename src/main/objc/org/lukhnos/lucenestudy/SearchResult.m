//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: src/main/java/org/lukhnos/lucenestudy/SearchResult.java
//

#include "J2ObjC_source.h"
#include "java/util/List.h"
#include "org/apache/lucene/search/Query.h"
#include "org/apache/lucene/search/ScoreDoc.h"
#include "org/apache/lucene/search/Sort.h"
#include "org/lukhnos/lucenestudy/Document.h"
#include "org/lukhnos/lucenestudy/HighlightingHelper.h"
#include "org/lukhnos/lucenestudy/Indexer.h"
#include "org/lukhnos/lucenestudy/SearchResult.h"

@implementation OrgLukhnosLucenestudySearchResult

- (instancetype)initWithInt:(jint)totalHits
           withJavaUtilList:(id<JavaUtilList>)documents
withOrgApacheLuceneSearchScoreDoc:(OrgApacheLuceneSearchScoreDoc *)lastScoreDoc
withOrgApacheLuceneSearchQuery:(OrgApacheLuceneSearchQuery *)query
withOrgApacheLuceneSearchSort:(OrgApacheLuceneSearchSort *)sort
withOrgLukhnosLucenestudyHighlightingHelper:(OrgLukhnosLucenestudyHighlightingHelper *)highlightingHelper {
  OrgLukhnosLucenestudySearchResult_initWithInt_withJavaUtilList_withOrgApacheLuceneSearchScoreDoc_withOrgApacheLuceneSearchQuery_withOrgApacheLuceneSearchSort_withOrgLukhnosLucenestudyHighlightingHelper_(self, totalHits, documents, lastScoreDoc, query, sort, highlightingHelper);
  return self;
}

- (jboolean)hasMore {
  return lastScoreDoc_ != nil;
}

- (NSString *)getHighlightedTitleWithOrgLukhnosLucenestudyDocument:(OrgLukhnosLucenestudyDocument *)doc {
  return [((OrgLukhnosLucenestudyHighlightingHelper *) nil_chk(highlightingHelper_)) highlightOrOriginalWithNSString:OrgLukhnosLucenestudyIndexer_TITLE_FIELD_NAME_ withNSString:((OrgLukhnosLucenestudyDocument *) nil_chk(doc))->title_];
}

- (NSString *)getHighlightedReviewWithOrgLukhnosLucenestudyDocument:(OrgLukhnosLucenestudyDocument *)doc {
  return [((OrgLukhnosLucenestudyHighlightingHelper *) nil_chk(highlightingHelper_)) highlightOrOriginalWithNSString:OrgLukhnosLucenestudyIndexer_REVIEW_FIELD_NAME_ withNSString:((OrgLukhnosLucenestudyDocument *) nil_chk(doc))->review_];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithInt:withJavaUtilList:withOrgApacheLuceneSearchScoreDoc:withOrgApacheLuceneSearchQuery:withOrgApacheLuceneSearchSort:withOrgLukhnosLucenestudyHighlightingHelper:", "SearchResult", NULL, 0x0, NULL, NULL },
    { "hasMore", NULL, "Z", 0x1, NULL, NULL },
    { "getHighlightedTitleWithOrgLukhnosLucenestudyDocument:", "getHighlightedTitle", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "getHighlightedReviewWithOrgLukhnosLucenestudyDocument:", "getHighlightedReview", "Ljava.lang.String;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "totalHits_", NULL, 0x11, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "documents_", NULL, 0x11, "Ljava.util.List;", NULL, "Ljava/util/List<Lorg/lukhnos/lucenestudy/Document;>;", .constantValue.asLong = 0 },
    { "lastScoreDoc_", NULL, 0x10, "Lorg.apache.lucene.search.ScoreDoc;", NULL, NULL, .constantValue.asLong = 0 },
    { "query_", NULL, 0x10, "Lorg.apache.lucene.search.Query;", NULL, NULL, .constantValue.asLong = 0 },
    { "sort_", NULL, 0x10, "Lorg.apache.lucene.search.Sort;", NULL, NULL, .constantValue.asLong = 0 },
    { "highlightingHelper_", NULL, 0x10, "Lorg.lukhnos.lucenestudy.HighlightingHelper;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgLukhnosLucenestudySearchResult = { 2, "SearchResult", "org.lukhnos.lucenestudy", NULL, 0x1, 4, methods, 6, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgLukhnosLucenestudySearchResult;
}

@end

void OrgLukhnosLucenestudySearchResult_initWithInt_withJavaUtilList_withOrgApacheLuceneSearchScoreDoc_withOrgApacheLuceneSearchQuery_withOrgApacheLuceneSearchSort_withOrgLukhnosLucenestudyHighlightingHelper_(OrgLukhnosLucenestudySearchResult *self, jint totalHits, id<JavaUtilList> documents, OrgApacheLuceneSearchScoreDoc *lastScoreDoc, OrgApacheLuceneSearchQuery *query, OrgApacheLuceneSearchSort *sort, OrgLukhnosLucenestudyHighlightingHelper *highlightingHelper) {
  (void) NSObject_init(self);
  self->totalHits_ = totalHits;
  self->documents_ = documents;
  self->lastScoreDoc_ = lastScoreDoc;
  self->query_ = query;
  self->sort_ = sort;
  self->highlightingHelper_ = highlightingHelper;
}

OrgLukhnosLucenestudySearchResult *new_OrgLukhnosLucenestudySearchResult_initWithInt_withJavaUtilList_withOrgApacheLuceneSearchScoreDoc_withOrgApacheLuceneSearchQuery_withOrgApacheLuceneSearchSort_withOrgLukhnosLucenestudyHighlightingHelper_(jint totalHits, id<JavaUtilList> documents, OrgApacheLuceneSearchScoreDoc *lastScoreDoc, OrgApacheLuceneSearchQuery *query, OrgApacheLuceneSearchSort *sort, OrgLukhnosLucenestudyHighlightingHelper *highlightingHelper) {
  OrgLukhnosLucenestudySearchResult *self = [OrgLukhnosLucenestudySearchResult alloc];
  OrgLukhnosLucenestudySearchResult_initWithInt_withJavaUtilList_withOrgApacheLuceneSearchScoreDoc_withOrgApacheLuceneSearchQuery_withOrgApacheLuceneSearchSort_withOrgLukhnosLucenestudyHighlightingHelper_(self, totalHits, documents, lastScoreDoc, query, sort, highlightingHelper);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgLukhnosLucenestudySearchResult)
