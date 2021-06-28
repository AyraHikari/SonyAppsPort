.class Lcom/sonyericsson/music/search/SearchHandler$3;
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

.field final synthetic val$c:Landroid/database/Cursor;

.field final synthetic val$onSearch:Lcom/sonyericsson/music/search/SearchHandler$OnSearch;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/search/SearchHandler;Lcom/sonyericsson/music/search/SearchHandler$OnSearch;Landroid/database/Cursor;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/sonyericsson/music/search/SearchHandler$3;->this$0:Lcom/sonyericsson/music/search/SearchHandler;

    iput-object p2, p0, Lcom/sonyericsson/music/search/SearchHandler$3;->val$onSearch:Lcom/sonyericsson/music/search/SearchHandler$OnSearch;

    iput-object p3, p0, Lcom/sonyericsson/music/search/SearchHandler$3;->val$c:Landroid/database/Cursor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 124
    iget-object v0, p0, Lcom/sonyericsson/music/search/SearchHandler$3;->val$onSearch:Lcom/sonyericsson/music/search/SearchHandler$OnSearch;

    iget-object v1, p0, Lcom/sonyericsson/music/search/SearchHandler$3;->val$c:Landroid/database/Cursor;

    invoke-interface {v0, v1}, Lcom/sonyericsson/music/search/SearchHandler$OnSearch;->onSearchComplete(Landroid/database/Cursor;)V

    return-void
.end method
