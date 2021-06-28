.class Lcom/sonyericsson/music/search/SearchHistory$DeleteTask;
.super Landroid/os/AsyncTask;
.source "SearchHistory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/search/SearchHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeleteTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Landroid/content/Context;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final mItem:Lcom/sonyericsson/music/search/SearchItem;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/music/search/SearchItem;)V
    .locals 0

    .line 188
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 189
    iput-object p1, p0, Lcom/sonyericsson/music/search/SearchHistory$DeleteTask;->mItem:Lcom/sonyericsson/music/search/SearchItem;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 194
    aget-object p1, p1, v0

    iget-object v1, p0, Lcom/sonyericsson/music/search/SearchHistory$DeleteTask;->mItem:Lcom/sonyericsson/music/search/SearchItem;

    invoke-static {p1, v1}, Lcom/sonyericsson/music/search/SearchHistory;->delete(Landroid/content/Context;Lcom/sonyericsson/music/search/SearchItem;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 185
    check-cast p1, [Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/search/SearchHistory$DeleteTask;->doInBackground([Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 0

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 185
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/search/SearchHistory$DeleteTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
