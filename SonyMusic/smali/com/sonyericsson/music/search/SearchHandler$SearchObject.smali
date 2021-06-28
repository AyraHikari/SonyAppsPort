.class Lcom/sonyericsson/music/search/SearchHandler$SearchObject;
.super Ljava/lang/Object;
.source "SearchHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/search/SearchHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SearchObject"
.end annotation


# instance fields
.field private final mCallback:Lcom/sonyericsson/music/search/SearchHandler$OnSearch;

.field private final mSearchString:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/sonyericsson/music/search/SearchHandler$OnSearch;)V
    .locals 0

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput-object p1, p0, Lcom/sonyericsson/music/search/SearchHandler$SearchObject;->mSearchString:Ljava/lang/String;

    .line 138
    iput-object p2, p0, Lcom/sonyericsson/music/search/SearchHandler$SearchObject;->mCallback:Lcom/sonyericsson/music/search/SearchHandler$OnSearch;

    return-void
.end method


# virtual methods
.method getSearchCallback()Lcom/sonyericsson/music/search/SearchHandler$OnSearch;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/sonyericsson/music/search/SearchHandler$SearchObject;->mCallback:Lcom/sonyericsson/music/search/SearchHandler$OnSearch;

    return-object v0
.end method

.method getSearchString()Ljava/lang/String;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/sonyericsson/music/search/SearchHandler$SearchObject;->mSearchString:Ljava/lang/String;

    return-object v0
.end method
