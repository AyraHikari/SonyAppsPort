.class Lcom/sonyericsson/music/playqueue/PlayqueueFragment$2;
.super Ljava/lang/Object;
.source "PlayqueueFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/playqueue/PlayqueueFragment;->savePlaylist()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field displayAdditionalMessage:Z

.field final synthetic this$0:Lcom/sonyericsson/music/playqueue/PlayqueueFragment;

.field final synthetic val$cr:Landroid/content/ContentResolver;

.field final synthetic val$manager:Landroidx/fragment/app/FragmentManager;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/playqueue/PlayqueueFragment;Landroid/content/ContentResolver;Landroidx/fragment/app/FragmentManager;)V
    .locals 0

    .line 437
    iput-object p1, p0, Lcom/sonyericsson/music/playqueue/PlayqueueFragment$2;->this$0:Lcom/sonyericsson/music/playqueue/PlayqueueFragment;

    iput-object p2, p0, Lcom/sonyericsson/music/playqueue/PlayqueueFragment$2;->val$cr:Landroid/content/ContentResolver;

    iput-object p3, p0, Lcom/sonyericsson/music/playqueue/PlayqueueFragment$2;->val$manager:Landroidx/fragment/app/FragmentManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 438
    iput-boolean p1, p0, Lcom/sonyericsson/music/playqueue/PlayqueueFragment$2;->displayAdditionalMessage:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 442
    iget-object v0, p0, Lcom/sonyericsson/music/playqueue/PlayqueueFragment$2;->this$0:Lcom/sonyericsson/music/playqueue/PlayqueueFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 445
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/music/playqueue/PlayqueueFragment$2;->val$cr:Landroid/content/ContentResolver;

    const/4 v3, 0x0

    .line 446
    invoke-static {v3}, Lcom/sonyericsson/music/common/DBUtils;->getPlayQueueProjection(Z)[Ljava/lang/String;

    move-result-object v3

    .line 444
    invoke-static {v1, v2, v3}, Lcom/sonyericsson/music/common/DBUtils;->getPlayqueueCursor(Landroid/content/Context;Landroid/content/ContentResolver;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 448
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_2

    .line 451
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "track_uri"

    .line 454
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 453
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 455
    invoke-static {v3}, Lcom/sonyericsson/music/common/DBUtils;->isMediaStoreUri(Landroid/net/Uri;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 457
    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    .line 456
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    .line 459
    iput-boolean v3, p0, Lcom/sonyericsson/music/playqueue/PlayqueueFragment$2;->displayAdditionalMessage:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 463
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 464
    throw v0

    .line 466
    :cond_2
    :goto_1
    new-instance v1, Lcom/sonyericsson/music/playqueue/PlayqueueFragment$2$1;

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/music/playqueue/PlayqueueFragment$2$1;-><init>(Lcom/sonyericsson/music/playqueue/PlayqueueFragment$2;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_3
    return-void
.end method
