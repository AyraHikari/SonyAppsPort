.class Lcom/sonyericsson/music/search/SearchHandler$2;
.super Ljava/lang/Object;
.source "SearchHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/search/SearchHandler;->search(Ljava/lang/String;Lcom/sonyericsson/music/search/SearchHandler$OnSearch;)V
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

    .line 112
    iput-object p1, p0, Lcom/sonyericsson/music/search/SearchHandler$2;->this$0:Lcom/sonyericsson/music/search/SearchHandler;

    iput-object p2, p0, Lcom/sonyericsson/music/search/SearchHandler$2;->val$onSearch:Lcom/sonyericsson/music/search/SearchHandler$OnSearch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/sonyericsson/music/search/SearchHandler$2;->val$onSearch:Lcom/sonyericsson/music/search/SearchHandler$OnSearch;

    invoke-interface {v0}, Lcom/sonyericsson/music/search/SearchHandler$OnSearch;->onSearching()V

    return-void
.end method
