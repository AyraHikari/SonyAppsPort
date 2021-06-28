.class Lcom/sonyericsson/music/search/SearchHandler$1;
.super Ljava/lang/Object;
.source "SearchHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/search/SearchHandler;->startSearch(Ljava/lang/String;Lcom/sonyericsson/music/search/SearchHandler$OnSearch;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/search/SearchHandler;

.field final synthetic val$onSearch:Lcom/sonyericsson/music/search/SearchHandler$OnSearch;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/search/SearchHandler;Lcom/sonyericsson/music/search/SearchHandler$OnSearch;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/sonyericsson/music/search/SearchHandler$1;->this$0:Lcom/sonyericsson/music/search/SearchHandler;

    iput-object p2, p0, Lcom/sonyericsson/music/search/SearchHandler$1;->val$onSearch:Lcom/sonyericsson/music/search/SearchHandler$OnSearch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/sonyericsson/music/search/SearchHandler$1;->val$onSearch:Lcom/sonyericsson/music/search/SearchHandler$OnSearch;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sonyericsson/music/search/SearchHandler$OnSearch;->onSearchComplete(Landroid/database/Cursor;)V

    return-void
.end method
