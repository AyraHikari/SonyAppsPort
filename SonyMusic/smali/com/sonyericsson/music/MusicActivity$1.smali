.class Lcom/sonyericsson/music/MusicActivity$1;
.super Ljava/lang/Object;
.source "MusicActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/MusicActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/MusicActivity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/MusicActivity;)V
    .locals 0

    .line 272
    iput-object p1, p0, Lcom/sonyericsson/music/MusicActivity$1;->this$0:Lcom/sonyericsson/music/MusicActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 275
    iget-object v0, p0, Lcom/sonyericsson/music/MusicActivity$1;->this$0:Lcom/sonyericsson/music/MusicActivity;

    invoke-static {v0}, Lcom/sonyericsson/music/MusicActivity;->access$000(Lcom/sonyericsson/music/MusicActivity;)Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask;

    move-result-object v0

    if-nez v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/sonyericsson/music/MusicActivity$1;->this$0:Lcom/sonyericsson/music/MusicActivity;

    const-string v1, "account_cleanup_task_retain_key"

    .line 277
    invoke-static {v0, v1}, Lcom/sonyericsson/music/authentication/GoogleAccount;->accountCleanup(Landroid/app/Activity;Ljava/lang/String;)Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask;

    move-result-object v1

    .line 276
    invoke-static {v0, v1}, Lcom/sonyericsson/music/MusicActivity;->access$002(Lcom/sonyericsson/music/MusicActivity;Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask;)Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask;

    .line 278
    iget-object v0, p0, Lcom/sonyericsson/music/MusicActivity$1;->this$0:Lcom/sonyericsson/music/MusicActivity;

    invoke-static {v0}, Lcom/sonyericsson/music/MusicActivity;->access$000(Lcom/sonyericsson/music/MusicActivity;)Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/music/MusicActivity$1;->this$0:Lcom/sonyericsson/music/MusicActivity;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask;->setListener(Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask$RetainedAsyncTaskListener;)V

    :cond_0
    return-void
.end method
